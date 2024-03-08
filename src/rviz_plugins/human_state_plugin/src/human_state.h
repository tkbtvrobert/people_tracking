#ifndef HUAMN_H
#define HUMAN_H
// QT
#include <QPushButton>
#include <QTableWidget>
// ROS
#include <ros/ros.h>
#include <ros/console.h>
#include <rviz/panel.h>   // Rviz plugin
#include <std_msgs/String.h>
#include <geometry_msgs/PoseArray.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <my_msg/Human.h>
#include <my_msg/HumanArray.h>
#include <my_msg/HumanGazebo.h>
#include <hdl_people_tracking/Track.h>
#include <hdl_people_tracking/TrackArray.h>

class QLineEdit;

namespace humanState
{
class Human: public rviz::Panel
{
  Q_OBJECT
  public:
    Human( QWidget* parent = 0 );

  protected Q_SLOTS:
    // ROS callback function
    void callback(const hdl_people_tracking::TrackArray::ConstPtr &pedestrian_array_msg);  //goal count sub callback function
    void initTable();

  protected:
    // Danger table
    QTableWidget *poseArray_table_;

    // ROS Subscriber
    ros::Subscriber human_array_sub_;

    // The ROS node handle.
    ros::NodeHandle nh_;
};

} // end namespace humanState

#endif // HUAMN_H