#ifndef DANGER_TABLE_H
#define DANGER_TABLE_H

// QT
#include <QPushButton>
#include <QTableWidget>
// ROS
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <ros/console.h>
#include <ros/ros.h>
#include <rviz/panel.h>  //rviz plugin panel
#include <std_msgs/String.h>
// ROS msg file
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseArray.h>
#include <hdl_people_tracking/Track.h>
#include <hdl_people_tracking/TrackArray.h>
#include <my_msg/Human.h>
#include <my_msg/HumanArray.h>
#include <my_msg/HumanGazebo.h>
#include <my_msg/group.h>
#include <my_msg/kdanger.h>
#include <my_msg/kdangerArray.h>

class QLineEdit;

namespace danger {
class DangerTable : public rviz::Panel {
    Q_OBJECT
   public:
    DangerTable(QWidget *parent = 0);

    // virtual void load( const rviz::Config& config );
    // virtual void save( rviz::Config config ) const;

   protected Q_SLOTS:
    void callback(const hdl_people_tracking::TrackArray::ConstPtr &human_array_msg);  // Subscribe callback function
    // void callback(const my_msg::kdangerArray::ConstPtr &danger_table_msg, const hdl_people_tracking::TrackArray::ConstPtr &human_array_msg);  // Subscribe callback function                                                              // Subscribe callback function
    void initTable();

   protected:
    QTableWidget *poseArray_table_;

    // ROS Publisher
    ros::Subscriber human_array_sub_;
    // ros::Subscriber human_array_sub_2;
    // message_filters::Subscriber<my_msg::kdangerArray> human_array_sub_;
    // message_filters::Subscriber<hdl_people_tracking::TrackArray> human_array_sub_2;

    // typedef message_filters::sync_policies::ApproximateTime<my_msg::kdangerArray, hdl_people_tracking::TrackArray> human_array_sync_;
    // typedef message_filters::Synchronizer<human_array_sync_> Sync;
    // boost::shared_ptr<Sync> sync_;

    // message_filters::Subscriber<my_msg::kdangerArray> human_array_sub_;
    // message_filters::Subscriber<hdl_people_tracking::TrackArray> human_array_sub_2;

    // The ROS node handle.
    ros::NodeHandle nh_;
};
}  // end namespace danger
#endif  // DANGER_TABLE_H