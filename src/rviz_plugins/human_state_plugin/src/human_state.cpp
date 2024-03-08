#include <stdio.h>
#include "human_state.h"
#include <math.h>
// QT
#include <QPainter>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QTimer>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/qheaderview.h>
#include <QDebug>
// ROS msg file
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseArray.h>
#include <hdl_people_tracking/Track.h>
#include <hdl_people_tracking/TrackArray.h>
#include <my_msg/group.h>
#include <my_msg/Human.h>
#include <my_msg/HumanGazebo.h>
#include <my_msg/HumanArray.h>

namespace humanState
{
  Human::Human( QWidget* parent)
    : rviz::Panel( parent )
{
  // ROS Subscriber
  human_array_sub_= nh_.subscribe<hdl_people_tracking::TrackArray>("/hdl_people_tracking_nodelet/tracks", 1, boost::bind(&Human::callback, this, _1));
  // Danger Table
  poseArray_table_ = new QTableWidget;
  initTable();
  QHBoxLayout* layout = new QHBoxLayout;
  layout->addWidget( poseArray_table_ );
  setLayout( layout );
}

void Human::initTable()
{
  ROS_INFO("Initialize");
  poseArray_table_->clear();
  poseArray_table_->setRowCount(5);
  poseArray_table_->setColumnCount(2);
  // poseArray_table_->setStyleSheet("QTableWidget { alternate-background-color: white; background: gray; }");
  poseArray_table_->setStyleSheet("color:black ; alternate-background-color:#E0E0E0 ; background: white");
  poseArray_table_->setAlternatingRowColors(true);
  poseArray_table_->setEditTriggers(QAbstractItemView::NoEditTriggers);
  poseArray_table_->horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch);
  poseArray_table_->verticalHeader()->setVisible(false); 
  QStringList pose_header;
  pose_header << "ID" << "position";
  poseArray_table_->setHorizontalHeaderLabels(pose_header);
  poseArray_table_->show();
}

// Subscriber callback function
void Human::callback(const hdl_people_tracking::TrackArray::ConstPtr &human_array_msg)
{
  poseArray_table_->setRowCount(human_array_msg->tracks.size());
  poseArray_table_->setAlternatingRowColors(true);
  poseArray_table_->setStyleSheet("color:black ; alternate-background-color:#E0E0E0 ; background: white");
  QStringList pose_header;
  pose_header << "ID" << "position";
  poseArray_table_->setHorizontalHeaderLabels(pose_header);
  poseArray_table_->setEditTriggers(QAbstractItemView::NoEditTriggers);
  poseArray_table_->horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch);
  poseArray_table_->verticalHeader()->setVisible(false); 
  for(int i = 0 ; i < human_array_msg->tracks.size() ; i++)
  {
    float x = round(human_array_msg->tracks[i].pos.x*10)/10;
    float y = round(human_array_msg->tracks[i].pos.y*10)/10;
    std::ostringstream out;
    out << "( " << x << ", " << y << ")";
    std::string human_pose(out.str());
    //poseArray_table_->setItem(i, 0, new QTableWidgetItem(QString::number(i)));
    poseArray_table_->setItem(i, 0, new QTableWidgetItem(QString::number(human_array_msg->tracks[i].id)));
    poseArray_table_->setItem(i, 1, new QTableWidgetItem(QString::fromStdString(human_pose)));
    // poseArray_table_->setItem(i, 2, new QTableWidgetItem(QString::number(1)));
  }
  //kdanger table
  poseArray_table_->show();
}

} // end namespace humanState

// Rviz Plugin
#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(humanState::Human,rviz::Panel )
// END
