;; Auto-generated. Do not edit!


(when (boundp 'my_msg::kdangerArray)
  (if (not (find-package "MY_MSG"))
    (make-package "MY_MSG"))
  (shadow 'kdangerArray (find-package "MY_MSG")))
(unless (find-package "MY_MSG::KDANGERARRAY")
  (make-package "MY_MSG::KDANGERARRAY"))

(in-package "ROS")
;;//! \htmlinclude kdangerArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass my_msg::kdangerArray
  :super ros::object
  :slots (_header _items ))

(defmethod my_msg::kdangerArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:items __items) (let (r) (dotimes (i 0) (push (instance my_msg::kdanger :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _items __items)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:items
   (&rest __items)
   (if (keywordp (car __items))
       (send* _items __items)
     (progn
       (if __items (setq _items (car __items)))
       _items)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; my_msg/kdanger[] _items
    (apply #'+ (send-all _items :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; my_msg/kdanger[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; my_msg/kdanger[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (let (r) (dotimes (i n) (push (instance my_msg::kdanger :init) r)) r))
     (dolist (elem- _items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get my_msg::kdangerArray :md5sum-) "e8821c94651dec6ba6e5aa740d245c31")
(setf (get my_msg::kdangerArray :datatype-) "my_msg/kdangerArray")
(setf (get my_msg::kdangerArray :definition-)
      "Header header

my_msg/kdanger[] items
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: my_msg/kdanger
int64 k
int64[] ids
")



(provide :my_msg/kdangerArray "e8821c94651dec6ba6e5aa740d245c31")


