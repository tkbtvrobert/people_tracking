#include "danger_table.h"

#include <stdio.h>
#include <string>
// QT
#include <QtWidgets/qheaderview.h>

#include <QDebug>
#include <QHBoxLayout>
#include <QLabel>
#include <QLineEdit>
#include <QPainter>
#include <QTimer>
#include <QVBoxLayout>
#include <QtWidgets/QTableWidget>
// ROS msg file
#include <geometry_msgs/Twist.h>
#include <hdl_people_tracking/Track.h>
#include <hdl_people_tracking/TrackArray.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <my_msg/Human.h>
#include <my_msg/HumanArray.h>
#include <my_msg/HumanGazebo.h>
#include <my_msg/group.h>
#include <my_msg/kdanger.h>
#include <my_msg/kdangerArray.h>

namespace danger {
DangerTable::DangerTable(QWidget* parent)
    : rviz::Panel(parent) {
    // Subscribe the Human position
    // human_array_sub_ = nh_.subscribe<my_msg::kdangerArray>("/danger_table", 1, boost::bind(&DangerTable::callback, this, _1));
    human_array_sub_ = nh_.subscribe<hdl_people_tracking::TrackArray>("/danger_table", 1, boost::bind(&DangerTable::callback, this, _1));
    // message_filters::Subscriber<my_msg::kdangerArray> human_array_sub_(nh_, "/danger_table", 1);
    // message_filters::Subscriber<hdl_people_tracking::TrackArray> human_array_sub_2(nh_, "/hdl_people_tracking_nodelet/tracks", 1);

    // human_array_sub_.subscribe(nh_, "/danger_table", 1);
    // human_array_sub_2.subscribe(nh_, "/hdl_people_tracking_nodelet/tracks", 1);

    // sync_.reset(new Sync(human_array_sync_(10), human_array_sub_, human_array_sub_2));
    // sync_->registerCallback(boost::bind(&DangerTable::callback, this, _1, _2));

    // message_filters::Synchronizer<human_array_sync_> sync(human_array_sync_(10), human_array_sub_, human_array_sub_2);

    // message_filters::TimeSynchronizer<my_msg::kdangerArray, hdl_people_tracking::TrackArray> sync(human_array_sub_, human_array_sub_2, 10);
    // sync.registerCallback(boost::bind(&DangerTable::callback, this, _1, _2));

    // Danger table
    poseArray_table_ = new QTableWidget;
    initTable();
    QHBoxLayout* layout = new QHBoxLayout;
    layout->addWidget(poseArray_table_);
    setLayout(layout);
}

void DangerTable::initTable() {
    ROS_INFO("Initialize the danger table");
    poseArray_table_->clear();
    poseArray_table_->setRowCount(5);
    poseArray_table_->setColumnCount(3);
    poseArray_table_->setEditTriggers(QAbstractItemView::NoEditTriggers);
    poseArray_table_->horizontalHeader()->setSectionResizeMode(QHeaderView::Stretch);
    poseArray_table_->verticalHeader()->setVisible(false);
    QStringList pose_header;
    pose_header << "k-danger"
                << "ID"
                << "Rank";
    poseArray_table_->setHorizontalHeaderLabels(pose_header);
    poseArray_table_->show();
}

// ROS callback function
void DangerTable::callback(const hdl_people_tracking::TrackArray::ConstPtr &human_array_msg) {
    poseArray_table_->setRowCount(human_array_msg->tracks.size());
    QStringList pose_header;
    pose_header << "k-danger"
                << "ID"
                << "Rank";
    poseArray_table_->setHorizontalHeaderLabels(pose_header);
    poseArray_table_->verticalHeader()->setVisible(false);
    for (int i = 0; i < human_array_msg->tracks.size(); i++) {
        std::ostringstream out;
        out << "( ";
        for (int c : human_array_msg->tracks[i].ids) {
            out << c << ", ";
        }
        out << ")";
        std::string ids(out.str());
        poseArray_table_->setItem(i, 0, new QTableWidgetItem(QString::number(human_array_msg->tracks[i].k)));
        poseArray_table_->setItem(i, 1, new QTableWidgetItem(QString::fromStdString(ids)));
        // poseArray_table_->setItem(i, 1, new QTableWidgetItem(QString::number(human_array_msg->tracks[i].id)));
        poseArray_table_->setItem(i, 2, new QTableWidgetItem(QString::number(1)));
    }
    poseArray_table_->show();
}

// ROS callback function
// void DangerTable::callback(const my_msg::kdangerArray::ConstPtr &danger_table_msg, const hdl_people_tracking::TrackArray::ConstPtr &human_array_msg) {
//     poseArray_table_->setRowCount(danger_table_msg->items.size());
//     QStringList pose_header;
//     pose_header << "k-danger"
//                 << "ID"
//                 << "Rank";
//     poseArray_table_->setHorizontalHeaderLabels(pose_header);
//     poseArray_table_->verticalHeader()->setVisible(false);
//     for (int i = 0; i < danger_table_msg->items.size(); i++) {
//         std::ostringstream out;
//         out << "( ";
//         for (int c : danger_table_msg->items[i].ids) {
//             out << c << ", ";
//         }
//         out << ")";
//         std::string ids(out.str());
//         poseArray_table_->setItem(i, 0, new QTableWidgetItem(QString::number(danger_table_msg->items[i].k)));
//         poseArray_table_->setItem(i, 1, new QTableWidgetItem(QString::fromStdString(ids)));
//         // poseArray_table_->setItem(i, 1, new QTableWidgetItem(QString::number(human_array_msg->tracks[i].id)));
//         poseArray_table_->setItem(i, 2, new QTableWidgetItem(QString::number(1)));
//     }
//     poseArray_table_->show();
// }

// void DangerTable::save( rviz::Config config ) const
// {
//   rviz::Panel::save( config );
// }

// void DangerTable::load( const rviz::Config& config )
// {
//   rviz::Panel::load( config );
//   QString topic;
//   if( config.mapGetString( "Topic", &topic ))
//   {
//   }
// }

}  // end namespace danger

// Rviz plgin
#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(danger::DangerTable, rviz::Panel)
// END
