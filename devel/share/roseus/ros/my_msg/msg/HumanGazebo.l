;; Auto-generated. Do not edit!


(when (boundp 'my_msg::HumanGazebo)
  (if (not (find-package "MY_MSG"))
    (make-package "MY_MSG"))
  (shadow 'HumanGazebo (find-package "MY_MSG")))
(unless (find-package "MY_MSG::HUMANGAZEBO")
  (make-package "MY_MSG::HUMANGAZEBO"))

(in-package "ROS")
;;//! \htmlinclude HumanGazebo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass my_msg::HumanGazebo
  :super ros::object
  :slots (_item_name _pose ))

(defmethod my_msg::HumanGazebo
  (:init
   (&key
    ((:item_name __item_name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _item_name (string __item_name))
   (setq _pose __pose)
   self)
  (:item_name
   (&optional __item_name)
   (if __item_name (setq _item_name __item_name)) _item_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _item_name
    4 (length _item_name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _item_name
       (write-long (length _item_name) s) (princ _item_name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _item_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _item_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get my_msg::HumanGazebo :md5sum-) "d6a602bef3cc30802df3048df084e986")
(setf (get my_msg::HumanGazebo :datatype-) "my_msg/HumanGazebo")
(setf (get my_msg::HumanGazebo :definition-)
      "string item_name
geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :my_msg/HumanGazebo "d6a602bef3cc30802df3048df084e986")


