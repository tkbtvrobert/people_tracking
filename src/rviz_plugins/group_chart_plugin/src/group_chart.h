#ifndef GROUPCHART_H
#define GROUPCHART_H

// ROS
#include <ros/ros.h>
#include <ros/console.h>
#include <rviz/panel.h>
#include <my_msg/Human.h>
#include <my_msg/HumanArray.h>
#include <my_msg/HumanGazebo.h>
#include <my_msg/groupChart.h>
// QT
#include <QTableWidget>
#include <QApplication>
#include <QLabel>
#include <QDoubleSpinBox>
#include <QPainter>
#include <QWidget>

class QLineEdit;

namespace group_chart
{
// 所有的plugin都必须是rviz::Panel的子类
class GroupChart: public rviz::Panel
{
// 后边需要用到Qt的信号和槽，都是QObject的子类，所以需要声明Q_OBJECT宏
Q_OBJECT
public:
  // 构造函数，在类中会用到QWidget的实例来实现GUI界面，这里先初始化为0即可
  GroupChart( QWidget* parent = 0 );

  // 重载rviz::Panel积累中的函数，用于保存、加载配置文件中的数据，在我们这个plugin
  // 中，数据就是topic的名称
  // virtual void load( const rviz::Config& config );
  // virtual void save( rviz::Config config ) const;
  // virtual void paintEvent( QPaintEvent* event );

  // Q_SIGNALS:
  // void outputRisk( int numHuman, float riskFactor );
  // 公共槽.
public Q_SLOTS:
  // 当用户输入topic的命名并按下回车后，回调用此槽来创建一个相应名称的topic publisher
  void setTopic( const QString& topic );
  // void updateNum(int numHuman, float riskFactor);

  // 内部槽.
protected Q_SLOTS:
  void callback(const my_msg::groupChart::ConstPtr &group_chart_msg);  //goal count sub callback function


  // 内部变量.
protected:
  void paintEvent(QPaintEvent* event);
  QLabel *label;
    QLineEdit* output_topic_editor_;
  QString output_topic_;
  // ROS的publisher，用来发布速度topic
  ros::Subscriber group_chart_sub_;

  // The ROS node handle.
  ros::NodeHandle nh_;

  // 当前保存的线速度和角速度值
  int n;
  float risk;

private:
  void draw_tachometer(QPainter& painter);   // 转速表
  void draw_speedometer(QPainter& painter);   // 转速表

  
};

} // end namespace group_chart

#endif // TELEOP_PANEL_H
