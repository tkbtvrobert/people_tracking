#! /usr/bin/env python
#! coding:utf-8
'''
    Implement the DBSCAN algorithm
    Publish risk factor and bounding box markers to rviz
    Output the report csv file
    Publish AMR goal position (NOT finish yet)
'''
# ROS
import rospy
import rospkg
import message_filters
from my_msg.msg import group, groupChart
from my_msg.msg import kdanger, kdangerArray
from hdl_people_tracking.msg import Track, TrackArray
from geometry_msgs.msg import PoseArray
from geometry_msgs.msg import Quaternion
from visualization_msgs.msg import MarkerArray, Marker
from tf.transformations import quaternion_from_euler

import numpy as np
import math
import time # set timer
from prettytable import PrettyTable # plot table
from sklearn.cluster import DBSCAN # scikit-learn
from datetime import datetime
import csv


# Output csv file name
open_date = datetime.now().strftime('%Y-%m-%d %H:%M')
path = rospkg.RosPack().get_path('hdl_people_tracking')+ "/report/" + open_date +".csv"

# Write the first row
with open(path, 'a+') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['Time', 'Number of Pedestrian', 'Danger groups', 'Risk Factor'])

# Calculate the radian
def get_radian(position1, position2):
    x1 = position1[0]
    y1 = position1[1]
    x2 = position2[0]
    y2 = position2[1]
    radian = math.atan2(y2-y1, x2-x1) + math.pi/2
    return radian

# Record the danger groups to csv
def write_csv(human_num,  danger_group_num, risk_factor):
    str = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    # path  = "/home/lab315/Desktop/report.csv"
    with open(path,'a+') as f:
        csv_write = csv.writer(f)
        csv_write.writerow([str, human_num, danger_group_num, risk_factor])

# Callback function of ROS subscriber
def callback(human_msg, DBSCAN_msg, marker_array_msg):
    # print(human_msg)
    if human_msg.tracks==[]:
        return
    # Put the received human_msg into human_array
    human_array = []
    for i in range(len(human_msg.tracks)):
        human_array.append([human_msg.tracks[i].pos.x, human_msg.tracks[i].pos.y])
    # DBSCAN algorithm
    epsilon = DBSCAN_msg.eps if DBSCAN_msg.eps!=0 else 2
    minipoints = DBSCAN_msg.minpts if DBSCAN_msg.minpts!=0 else 2
    clustering = DBSCAN(eps=epsilon, min_samples=minipoints, algorithm="kd_tree").fit(human_array)
    # try:
    #     clustering = DBSCAN(eps=epsilon, min_samples=minipoints, algorithm="kd_tree").fit(human_array)
    # except:
    #     # print("null")
    #     pass
    # print("DBSCAN output labels: ", clustering.labels_)
    

    # Set up danger table
    group_num = np.unique(clustering.labels_) # number of groups
    # print("Number of danger groups: ", group_num)
    danger_table=[]
    for i in range(-1, len(group_num)):
        danger_table.append([])
        class_member_mask = (clustering.labels_ == i)
        for j in range(len(class_member_mask)):
            if class_member_mask[j]:
                # danger_table[i+1].append(j)
                danger_table[i+1].append(human_msg.tracks[j].id)
    # print("danger_table : {d}".format(d=danger_table))

    danger_sum = 0
    # rviz_msg = kdangerArray()
    rviz_msg = TrackArray()
    table = PrettyTable()
    table.field_names = ["k-danger", "id"]
    for i in range(1,len(danger_table)):
        danger_group_msg = Track()
        table.add_row(["{k}-danger".format(k=len(danger_table[i])), danger_table[i]])
        danger_group_msg.k = len(danger_table[i])
        danger_group_msg.ids = danger_table[i]
        rviz_msg.tracks.append(danger_group_msg)
        danger_sum = danger_sum + len(danger_table[i])
    # print(table)
    table_pub.publish(rviz_msg)
    
    # The risk factor and number of human msg
    chart_msg = groupChart()
    chart_msg.numHuman = len(human_msg.tracks)
    chart_msg.riskFactor = float(danger_sum) / float(len(human_msg.tracks))
    # if (len(human_msg.tracks)<=0):
    #     chart_msg.riskFactor = 0
    # else:
    #     chart_msg.riskFactor = float(danger_sum) / float(len(human_msg.tracks))
    risk_factor_pub.publish(chart_msg)
    # print("場域人數{n}, 危險係數{r}".format(n=chart_msg.numHuman, r=chart_msg.riskFactor))
    
    # Publish the bounding box markers and mesh markers
    # clustering.labels_ == -1 代表離群值
    class_member_mask = (clustering.labels_ == -1)
    # print(class_member_mask)
    # print(len(marker_array_msg.markers))
    marker_array = MarkerArray()
    mesh_array = MarkerArray()
    # print(len(marker_array_msg.markers))
    counter = 0
    for i in range(len(marker_array_msg.markers)):
        marker_msg = Marker()
        marker_msg.header = marker_array_msg.markers[i].header
        marker_msg.ns = marker_array_msg.markers[i].ns
        marker_msg.id = marker_array_msg.markers[i].id
        marker_msg.lifetime = marker_array_msg.markers[i].lifetime
        # marker_msg.lifetime = rospy.Duration(100)
        marker_msg.type = marker_array_msg.markers[i].type
        marker_msg.points = marker_array_msg.markers[i].points
        marker_msg.scale.x = marker_array_msg.markers[i].scale.x
        marker_msg.scale.y = marker_array_msg.markers[i].scale.y
        marker_msg.scale.z = marker_array_msg.markers[i].scale.z
        marker_msg.color.a = marker_array_msg.markers[i].color.a
        # marker_msg.text = marker_array_msg.markers[i].text
        # marker_msg.pose.position.x = marker_array_msg.markers[i].pose.position.x
        # marker_msg.pose.position.y = marker_array_msg.markers[i].pose.position.y
        # marker_msg.pose.position.z = marker_array_msg.markers[i].pose.position.z
        # print(class_member_mask[i])
        try:
            if not class_member_mask[i]:
                marker_msg.color.r = 1.0
                marker_msg.color.g = 0.0
                marker_msg.color.b = 0.0
                marker_msg.color.a = 1.0
                # print("X")
            else:
                marker_msg.color.r = marker_array_msg.markers[i].color.r
                marker_msg.color.g = marker_array_msg.markers[i].color.g
                marker_msg.color.b = marker_array_msg.markers[i].color.b
                marker_msg.color.a = marker_array_msg.markers[i].color.a
                # marker_msg.color.r = 0.0
                # marker_msg.color.g = 1.0
                # marker_msg.color.b = 0.0
                # marker_msg.color.a = 1.0
                # print("O")
                # pass
        except:
            marker_msg.color.r = marker_array_msg.markers[i].color.r
            marker_msg.color.g = marker_array_msg.markers[i].color.g
            marker_msg.color.b = marker_array_msg.markers[i].color.b
            marker_msg.color.a = marker_array_msg.markers[i].color.a
            # marker_msg.color.r = 0.0
            # marker_msg.color.g = 1.0
            # marker_msg.color.b = 0.0
            # marker_msg.color.a = 1.0
            # pass
        
        marker_array.markers.append(marker_msg)
        # text
        
        # counter=counter+1
        
        
    #     mesh_msg = Marker()
    #     mesh_msg.header = marker_array_msg.markers[i].header
    #     mesh_msg.ns =  marker_array_msg.markers[i].ns
    #     mesh_msg.id =  marker_array_msg.markers[i].id
    #     mesh_msg.lifetime =  marker_array_msg.markers[i].lifetime
    #     mesh_msg.type = 10
    #     # mesh_msg.pose.position.x = human_msg.tracks[i].pos.x + 0.256
    #     mesh_msg.pose.position.x = marker_array_msg.markers[i].pose.position.x + 0.256
    #     # mesh_msg.pose.position.y = human_msg.tracks[i].pos.y - 0.1
    #     mesh_msg.pose.position.y = marker_array_msg.markers[i].pose.position.y - 0.1
    #     mesh_msg.pose.position.z = -2.5
    #     radian = get_radian([mesh_msg.pose.position.x, mesh_msg.pose.position.y], [0, 0])
    #     q = quaternion_from_euler(0.0, 0.0, radian, axes='sxyz')
    #     mesh_msg.pose.orientation = Quaternion(*q)
    #     mesh_msg.scale.x = 0.15
    #     mesh_msg.scale.y = 0.15
    #     mesh_msg.scale.z = 0.15
    #     mesh_msg.color.r = 0.75
    #     mesh_msg.color.g = 0.75
    #     mesh_msg.color.b = 0.75
    #     mesh_msg.color.a = 1
    #     mesh_msg.mesh_resource = "package://lidar_simulator/meshes/goku-support-free-remix-robin-3dverse2.stl"
    #     mesh_array.markers.append(mesh_msg)
    danger_pedestrian_pub.publish(marker_array)
    # mesh_pub.publish(mesh_array)
    
    # If danger group exists, record to csv file
    if len(group_num) > 2:
        write_csv(len(human_msg.tracks), group_num-1, chart_msg.riskFactor)
    
    # print(counter)

if __name__=="__main__":
    rospy.init_node('danger_table_node') # ROS node
    human_sub = message_filters.Subscriber("/hdl_people_tracking_nodelet/tracks", TrackArray) # Subscribe pedestrian positions
    parameter_sub = message_filters.Subscriber("DBSCAN", group) # Subscribe DBSCAN parameters
    marker_sub = message_filters.Subscriber("/hdl_people_tracking_nodelet/markers", MarkerArray) # subscribe DBSCAN parameters
    sync = message_filters.ApproximateTimeSynchronizer([human_sub, parameter_sub, marker_sub], 10, 0.1, allow_headerless=True)
    sync.registerCallback(callback) # When the three subscribers receive message, execute the callback function
    table_pub = rospy.Publisher("danger_table", TrackArray, queue_size=1) # Publish the danger table to rviz
    risk_factor_pub = rospy.Publisher("group_chart", groupChart, queue_size=1) # Publish the risk factor to rviz
    danger_pedestrian_pub = rospy.Publisher("danger_marker", MarkerArray, queue_size=1) # Publish the bounding box marker
    # text_pub = rospy.Publisher("text_marker", MarkerArray, queue_size=1) # Publish the text marker
    # mesh_pub = rospy.Publisher("mesh_marker", MarkerArray, queue_size=1) # Publish the mesh marker
    rospy.spin()