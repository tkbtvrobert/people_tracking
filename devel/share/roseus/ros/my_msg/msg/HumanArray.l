;; Auto-generated. Do not edit!


(when (boundp 'my_msg::HumanArray)
  (if (not (find-package "MY_MSG"))
    (make-package "MY_MSG"))
  (shadow 'HumanArray (find-package "MY_MSG")))
(unless (find-package "MY_MSG::HUMANARRAY")
  (make-package "MY_MSG::HUMANARRAY"))

(in-package "ROS")
;;//! \htmlinclude HumanArray.msg.html


(defclass my_msg::HumanArray
  :super ros::object
  :slots (_humans ))

(defmethod my_msg::HumanArray
  (:init
   (&key
    ((:humans __humans) (let (r) (dotimes (i 0) (push (instance my_msg::Human :init) r)) r))
    )
   (send-super :init)
   (setq _humans __humans)
   self)
  (:humans
   (&rest __humans)
   (if (keywordp (car __humans))
       (send* _humans __humans)
     (progn
       (if __humans (setq _humans (car __humans)))
       _humans)))
  (:serialization-length
   ()
   (+
    ;; my_msg/Human[] _humans
    (apply #'+ (send-all _humans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; my_msg/Human[] _humans
     (write-long (length _humans) s)
     (dolist (elem _humans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; my_msg/Human[] _humans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _humans (let (r) (dotimes (i n) (push (instance my_msg::Human :init) r)) r))
     (dolist (elem- _humans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get my_msg::HumanArray :md5sum-) "9aafaa8337ab2dec54a94b020f2289a8")
(setf (get my_msg::HumanArray :datatype-) "my_msg/HumanArray")
(setf (get my_msg::HumanArray :definition-)
      "my_msg/Human[] humans
================================================================================
MSG: my_msg/Human
int64 id
int64 type
int64 state
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



(provide :my_msg/HumanArray "9aafaa8337ab2dec54a94b020f2289a8")


