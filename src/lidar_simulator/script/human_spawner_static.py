#!/usr/bin/env python2
#! coding:utf-8
'''
發布行人位置及資訊至gazebo
'''
# ROS
import rospy
import roslib; roslib.load_manifest('visualization_marker_tutorials')
import sys
import rospkg 
import random
import argparse
import math
from geometry_msgs.msg import Quaternion
from gazebo_msgs.srv import DeleteModel, SpawnModel
from geometry_msgs.msg import Pose
from visualization_msgs.msg import MarkerArray
from hdl_people_tracking.msg import Track, TrackArray
from my_msg.msg import HumanGazebo, Human, HumanArray
from tf.transformations import quaternion_from_euler

def publish_human_array(markerArray):
    topic = 'visualization_marker_array'
    publisher = rospy.Publisher(topic, MarkerArray, queue_size=100)
    publisher.publish(markerArray)

def get_radian(position1, position2):
    x1 = position1[0]
    y1 = position1[1]
    x2 = position2[0]
    y2 = position2[1]
    radian = math.atan2(y2-y1, x2-x1) + math.pi/2
    return radian

human_position_array=[]

#random human position
# for i in range(10):
#     x = round(random.uniform(-6, 5),3)
#     y = round(random.uniform(-9,9),3)
#     human_position_array.append([x, y])
    

# situation 1
# human_position_array = [[0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 10], [0, 11], [0, 12], [0, 20], [1, 20]]

# situation 2
# human_position_array = [[0, 0], [0, 1], [1, 1], [1, 0], [3, 0], [4, 0], [4, 4], [-3, 7], [-5, 3], [-5, 4], [-4, 2]]
human_position_array = [[0, -2], [0, -3], [1, -3], [1, -2], [3, 0], [4, 0], [4, 4], [0, 7], [-5, 3], [-4, 4], [-4, 2], [-7, 1], [-8, 0], [-8, -1], [-6, -1], [-6, 0]]
# human_position_array = [[0, -2], [0, -3], [1, -3], [1, -2], [3, 0], [4, 0], [-5, 3], [-4, 4], [-4, 2], [-7, 1], [-8, 0], [-8, -1], [-6, -1], [-6, 0]]
# human_position_array = [[4, 4], [0, 7]]
# human_position_array = [[5, 9]]

# situation 3
# for x in range(-7, 10):
#     human_position_array.append([(x+0.156), (8.5+0.08)])
#     human_position_array.append([(x+0.156), (9.5+0.08)])

# situation 4
# human_position_array.append([(-5+0.156), (8.5+0.08)])
# human_position_array.append([(-5+0.156), (9.5+0.08)])


if __name__ == '__main__':
    rospy.init_node("human_spawner")

    delete_model = rospy.ServiceProxy("gazebo/delete_model", DeleteModel)
    spawn_model = rospy.ServiceProxy("gazebo/spawn_urdf_model", SpawnModel)

    with open(rospkg.RosPack().get_path('lidar_simulator')+"/urdf/human3.urdf", "r") as f:
        product_xml = f.read()

    for num in range(0,len(human_position_array)):
        item_name = "human_{0}".format(num)
        print("Deleting model:" + str(item_name))
        delete_model(item_name)

    # create gazebo object
    humanGazeboArray = []
    for num in range(0,len(human_position_array)):

        initial_pose = Pose()
        initial_pose.position.x = human_position_array[num][0] 
        initial_pose.position.y = human_position_array[num][1]
        radian = get_radian([initial_pose.position.x, initial_pose.position.y], [-9, 9])
        q = quaternion_from_euler(0.0, 0.0, radian, axes='sxyz')
        initial_pose.orientation = Quaternion(*q)

        item_name = "human_{0}".format(num)
        human_gazebo = HumanGazebo(item_name, initial_pose)
        humanGazeboArray.append(human_gazebo)
        print("Spawning model:" + str(item_name))
        spawn_model(item_name, product_xml, "", initial_pose, "world")

    # create rviz object
    humanArray = HumanArray()
    for num in range(0,len(human_position_array)):
        human_gazebo = humanGazeboArray[num]
        human = Human(id=num, type=0, state=0)
        human.pose = human_gazebo.pose
        humanArray.humans.append(human)

    publisher = rospy.Publisher("human_array", HumanArray, queue_size=10)

    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        publisher.publish(humanArray)