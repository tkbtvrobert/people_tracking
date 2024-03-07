#include <stdio.h>
#include <cmath>
#include <QPainter>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QTimer>
#include <QtWidgets/QTableWidget>
#include <QThread>

#include <geometry_msgs/Twist.h>
#include <QDebug>
#include <QPainter>
#include <QPen>

#include "group_chart.h"
#include <my_msg/Human.h>
#include <my_msg/HumanGazebo.h>
#include <my_msg/HumanArray.h>
#include <my_msg/groupChart.h>

namespace group_chart
{

// 构造函数，初始化变量
GroupChart::GroupChart( QWidget* parent )
  : rviz::Panel( parent )
  , n(0)
  , risk(0)
{
  group_chart_sub_= nh_.subscribe<my_msg::groupChart>("/group_chart", 1, boost::bind(&GroupChart::callback, this, _1));
}

void GroupChart::callback(const my_msg::groupChart::ConstPtr &group_chart_msg)
{
  n = group_chart_msg->numHuman;
  risk = group_chart_msg->riskFactor;
}

void GroupChart::paintEvent(QPaintEvent* event)
{
  QWidget::paintEvent(event);
  QPainter painter(this);
  painter.setRenderHint(QPainter::Antialiasing);
  painter.translate(this->width() / 2, this->height() / 2);
  painter.setPen(Qt::NoPen);
  painter.setBrush(Qt::NoBrush);
  // draw_tachometer(painter);
  // draw_speedometer(painter);
  // static QColor normal_color(0, 0, 0, 255);
  static QColor normal_color(0, 163, 90, 255);
  static QColor overrun_color(245, 64, 64, 225);
  static QColor white_color(255, 255, 255, 225);

  // painter.save();
  // painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  // QRect rect(-110, -110, 220, 220);
  // painter.drawArc(rect, 0, 360 * 16);
  // painter.restore();

  painter.save();
  painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  QLinearGradient rect(-110, -110, 220, 220);
  rect.setColorAt(0.0,Qt::white);
  rect.setColorAt(0.8,QColor(80, 197, 183, 255));
  rect.setColorAt(1.0,Qt::black);
  painter.setBrush(rect);
  painter.drawEllipse(-110, -110, 220, 220);
  painter.setBrush(QColor(0, 0, 0, 255));
  painter.drawEllipse(QPoint(0,0),100,100);
  painter.restore();

  // painter.save();
  // static QRectF rectangle_outer(-110, -110, 220, 220);
  // static QRectF rectangle_inner(-102, -102, 204, 204);
  // painter.setBrush(overrun_color);
  // QPainterPath path;
  // path.arcTo(rectangle_outer, 0.0, 72.0);
  // path.arcTo(rectangle_inner, 72, -72);
  // painter.drawPath(path);
  // painter.restore();

  // painter.save();
  // painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  // painter.rotate(180);
  // for (int i = 0; i < 10; ++i) {
  //   painter.drawLine(102, 0, 109, 0);
  //   painter.rotate(18);
  // }
  // painter.restore();

  // painter.save();
  // painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  // painter.rotate(180);
  // for (int i = 0; i < 100; ++i) {
  //   painter.drawLine(105, 0, 109, 0);
  //   painter.rotate(1.8);
  // }
  // painter.restore();
  painter.save();
  painter.setPen(QPen(normal_color, 1, Qt::SolidLine));

  double startRad = (270 - 60) * (3.14 / 180); 
  double deltaRad = (360 - 60 - 60) * (3.14 / 180) / 10; 
  double sina,cosa; 
  int x, y; 
  QFontMetricsF fm(font()); 
  double w, h, tmpVal; 
  QString str;
 
  for (int i = 0; i <= 10; i++){
    if (i > 6) {
      painter.setPen(overrun_color);
    }
    sina = sin(startRad - i * deltaRad);
    cosa = cos(startRad - i * deltaRad);

    tmpVal = 1.0 * i *((100 - 0) / 10) + 0;
    // tmpVal = 50;
    str = QString( "%1" ).arg(tmpVal);  //%1作为占位符   arg()函数比起 sprintf()来是类型安全的
    w = fm.size(Qt::TextSingleLine,str).width();
    h = fm.size(Qt::TextSingleLine,str).height();
    x = 82 * cosa - w / 2;
    y = -82 * sina + h / 4;
    painter.drawText(x, y, str); //函数的前两个参数是显示的坐标位置，后一个是显示的内容，是字元类型""
  
  }
  painter.restore();


  painter.save(); 
  painter.rotate(60); 
  int steps = (10 * 10); //相乘后的值是分的份数 
  double angleStep = (360.0 - 60 - 60) / steps; //每一个份数的角度
  
  // painter->setPen(m_foreground); //m_foreground是颜色的设置 
  // QPen pen = painter->pen(); //第一种方法 
  QPen pen ; 
  pen.setColor(Qt::green); //推荐使用第二种方式 
  for (int i = 0; i <= steps; i++) { 
    if (i % 10 == 0){//整数刻度显示加粗 
      pen.setWidth(1); //设置线宽 
      painter.setPen(pen); //使用面向对象的思想，把画笔关联上画家。通过画家画出来
      painter.drawLine(0, 62, 0, 72); //两个参数应该是两个坐标值
    }
    else{
      pen.setWidth(0);
      painter.setPen(pen);
      painter.drawLine(0, 67, 0, 72);
    }
    painter.rotate(angleStep);
  }
  painter.restore();

  // painter.save();
  // painter.rotate(180);
  // painter.setPen(normal_color);
  // painter.setFont(QFont("Times", 12));
  // for (int i = 0; i < 11; ++i) {
  //   painter.save();
  //   if (i > 6) {
  //     painter.setPen(overrun_color);
  //   }
  //   painter.rotate(18.0 * i);
  //   painter.translate(88, 0);
  //   painter.rotate(180 - 18.0 * i);
  //   painter.drawText(QRect(-11, -11, 20, 20), Qt::AlignCenter,
  //                    QString::number(i*10));
  //   painter.restore();
  // }
  // painter.restore();

  // static const QPoint hand[] = {QPoint(0, 4), QPoint(-110, 0), QPoint(0, -4), QPoint(6, 0)};
  // // static QColor hand_color(135, 206, 235 ,255);
  // QRadialGradient haloGradient(0, 0, 60, 0, 0);  //辐射渐变
  // haloGradient.setColorAt(0, QColor(60,60,60));
  // haloGradient.setColorAt(1, QColor(160,160,160)); //灰
  // painter.setPen(Qt::white); //定义线条純文字颜色  设置线条的颜色
  // painter.setBrush(haloGradient);//刷子定义形状如何填满 填充后的颜色
  // painter.save();

  // // painter.save();
  // // painter.setPen(Qt::NoPen);
  // // painter.setBrush(hand_color);
  // painter.rotate(1.8 * (risk * 100));
  // painter.drawConvexPolygon(hand, 4);
  // painter.restore();

  // painter.save();
  // //绘制旋转中心
  // QRadialGradient rg(0,0,10);
  // rg.setColorAt(0.0,Qt::darkGray);
  // rg.setColorAt(0.5,Qt::white);
  // rg.setColorAt(1.0,Qt::darkGray);
  // painter.setPen(Qt::NoPen);
  // painter.setBrush(rg);
  // painter.drawEllipse(QPoint(0,0),6,6);
  // painter.restore();

  painter.save();
	QPolygon pts;
	pts.setPoints(3, -2, 0, 2, 0, 0, 60);	/* (-2,0)/(2,0)/(0,60) *///第一个参数是 ，坐标的个数。后边的是坐标
 
	painter.rotate(60);
	double degRotate = (360.0 - 60 - 60) / (100 - 0);
 
	//画指针
  painter.rotate(degRotate * (risk * 100));  //顺时针旋转坐标系统
	QRadialGradient haloGradient(0, 0, 60, 0, 0);  //辐射渐变
	haloGradient.setColorAt(0, QColor(60, 60, 60));
	haloGradient.setColorAt(1, QColor(160, 160, 160)); //灰
	painter.setPen(Qt::white); //定义线条純文字颜色  设置线条的颜色
	painter.setBrush(haloGradient);//刷子定义形状如何填满 填充后的颜色
	painter.drawConvexPolygon(pts); //这是个重载函数，绘制多边形。
	painter.restore();
 
	//画中心点
	QColor niceBlue(150, 150, 200);
	QConicalGradient coneGradient(0, 0, -90.0);  //角度渐变
	coneGradient.setColorAt(0.0, Qt::darkGray);
	coneGradient.setColorAt(0.2, niceBlue);
	coneGradient.setColorAt(0.5, Qt::white);
	coneGradient.setColorAt(1.0, Qt::darkGray);
	painter.setPen(Qt::NoPen);  //没有线，填满没有边界
	painter.setBrush(coneGradient);
	painter.drawEllipse(-5, -5, 10, 10);

  painter.save();
  QRect rect2(-150, 40, 300, 30);
  painter.setPen(QPen(white_color, 1, Qt::SolidLine));
  QString str1 = "Risk Indicator: " + QString::number(risk*100) + "%";
  painter.setFont(QFont("Times New Roman", 14));
  painter.drawText(rect2, Qt::AlignCenter, str1);
  painter.restore();
  painter.save();
  QRect rect3(-100, 60, 200,30);
  painter.setPen(QPen(white_color, 1, Qt::SolidLine));
  QString str2 = "Pedestrians: " + QString::number(n);
  painter.setFont(QFont("Times New Roman", 14));
  painter.drawText(rect3, Qt::AlignCenter, str2);
  painter.restore();

this->update();
}

void GroupChart::draw_tachometer(QPainter& painter) {

  // painter.rotate(45);
  static QColor normal_color(26, 245, 245, 245);
  // static QColor normal_color(172, 172, 172, 245);
  static QColor overrun_color(245, 64, 64, 225);
  // static QColor overrun_color(77, 77, 77, 225);


  // 绘制表盘外檐
  painter.save();
  painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  QRect rect(-95, -95, 190, 190);
  painter.drawArc(rect, 0, 270 * 16);
  painter.restore();

  // 绘制红色区域
  painter.save();
  static QRectF rectangle_outer(-95, -95, 190, 190);
  static QRectF rectangle_inner(-87, -87, 174, 174);
  painter.setBrush(overrun_color);
  QPainterPath path;
  path.arcTo(rectangle_outer, 0.0, 108.0);
  path.arcTo(rectangle_inner, 108, -108);
  painter.drawPath(path);
  painter.restore();

  // 绘制大刻度
  painter.save();
  painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  painter.rotate(90);
  for (int i = 0; i < 21; ++i) {
    painter.drawLine(88, 0, 94, 0);
    painter.rotate(13.5);
  }
  painter.restore();

  // 绘制小刻度
  painter.save();
  painter.setPen(QPen(normal_color, 1, Qt::SolidLine));
  painter.rotate(90);
  for (int i = 0; i < 100; ++i) {
    painter.drawLine(91, 0, 94, 0);
    painter.rotate(2.7);
  }
  painter.restore();

  // 绘制表盘数字
  painter.save();
  painter.rotate(90);
  painter.setPen(normal_color);
  painter.setFont(QFont("Times", 14));
  for (int i = 0; i < 11; ++i) {
    painter.save();
    if (i > 6) {
      painter.setPen(overrun_color);
    }
    painter.rotate(27.0 * i);
    painter.translate(76, 0);
    painter.rotate(270 - 27.0 * i);
    painter.drawText(QRect(-20, -10, 40, 20), Qt::AlignCenter,
                     QString::number(i));
    painter.restore();
  }
  painter.restore();

  // 绘制指针
  static const QPoint hand[] = {QPoint(-4, 0), QPoint(0, 94), QPoint(4, 0),
                                QPoint(0, -6)};
  static QColor hand_color(26, 245, 245, 176);
  painter.save();
  painter.setPen(Qt::NoPen);
  painter.setBrush(hand_color);
  painter.rotate(27.0 * (1 / 10.0));
  painter.drawConvexPolygon(hand, 4);
  painter.restore();

  // 绘制文字
  painter.save();
  painter.setPen(normal_color);
  painter.setFont(QFont("DejaVu Sans", 8));
  painter.drawText(QRect(-50, -70, 100, 50), Qt::AlignCenter, "×10");
  painter.setFont(QFont("DejaVu Sans", 8, 50, true));
  painter.drawText(QRect(-50, 34, 32, 16), Qt::AlignCenter, "CM/S");
  painter.restore();
}

void GroupChart::draw_speedometer(QPainter& painter) {
  painter.save();

  painter.setPen(QColor(64, 64, 245));
  painter.setFont(QFont("DejaVu Sans", 6, 50, true));
  painter.drawText(QRect(80, 50, 70, 20), Qt::AlignCenter, "SPEED");

  painter.setPen(QColor(26, 245, 245));
  painter.setFont(QFont("DejaVu Sans", 24, 63, true));
  painter.drawText(QRect(80, 50, 70, 50), Qt::AlignBottom | Qt::AlignLeft,
                   QString("%0").arg(QString::number(1), 3, '0'));

  painter.setPen(QColor(26, 245, 245));
  painter.setFont(QFont("DejaVu Sans", 8, 63, true));
  painter.drawText(QRect(145, 75, 40, 20), Qt::AlignBottom | Qt::AlignLeft,
                   "cm/s");

  painter.restore();
}


} // end namespace group_chart
// 声明此类是一个rviz的插件
#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(group_chart::GroupChart,rviz::Panel )
// END
