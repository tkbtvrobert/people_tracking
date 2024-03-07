;; Auto-generated. Do not edit!


(when (boundp 'hdl_people_tracking::TrackArray)
  (if (not (find-package "HDL_PEOPLE_TRACKING"))
    (make-package "HDL_PEOPLE_TRACKING"))
  (shadow 'TrackArray (find-package "HDL_PEOPLE_TRACKING")))
(unless (find-package "HDL_PEOPLE_TRACKING::TRACKARRAY")
  (make-package "HDL_PEOPLE_TRACKING::TRACKARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrackArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdl_people_tracking::TrackArray
  :super ros::object
  :slots (_header _tracks ))

(defmethod hdl_people_tracking::TrackArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracks __tracks) (let (r) (dotimes (i 0) (push (instance hdl_people_tracking::Track :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracks __tracks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracks
   (&rest __tracks)
   (if (keywordp (car __tracks))
       (send* _tracks __tracks)
     (progn
       (if __tracks (setq _tracks (car __tracks)))
       _tracks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hdl_people_tracking/Track[] _tracks
    (apply #'+ (send-all _tracks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hdl_people_tracking/Track[] _tracks
     (write-long (length _tracks) s)
     (dolist (elem _tracks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hdl_people_tracking/Track[] _tracks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracks (let (r) (dotimes (i n) (push (instance hdl_people_tracking::Track :init) r)) r))
     (dolist (elem- _tracks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hdl_people_tracking::TrackArray :md5sum-) "f2c238b988c43cb09ac3d9dbe063b799")
(setf (get hdl_people_tracking::TrackArray :datatype-) "hdl_people_tracking/TrackArray")
(setf (get hdl_people_tracking::TrackArray :definition-)
      "Header header

Track[] tracks

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
MSG: hdl_people_tracking/Track
int32 id
float64 age
geometry_msgs/Point pos
geometry_msgs/Vector3 vel

float64[9] pos_cov
float64[9] vel_cov

int64 k
int64[] ids

hdl_people_tracking/Cluster[] associated

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: hdl_people_tracking/Cluster
bool is_human

geometry_msgs/Point min_pt
geometry_msgs/Point max_pt
geometry_msgs/Vector3 size
geometry_msgs/Point centroid

")



(provide :hdl_people_tracking/TrackArray "f2c238b988c43cb09ac3d9dbe063b799")


