;; Auto-generated. Do not edit!


(when (boundp 'hdl_people_tracking::ClusterArray)
  (if (not (find-package "HDL_PEOPLE_TRACKING"))
    (make-package "HDL_PEOPLE_TRACKING"))
  (shadow 'ClusterArray (find-package "HDL_PEOPLE_TRACKING")))
(unless (find-package "HDL_PEOPLE_TRACKING::CLUSTERARRAY")
  (make-package "HDL_PEOPLE_TRACKING::CLUSTERARRAY"))

(in-package "ROS")
;;//! \htmlinclude ClusterArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdl_people_tracking::ClusterArray
  :super ros::object
  :slots (_header _clusters ))

(defmethod hdl_people_tracking::ClusterArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:clusters __clusters) (let (r) (dotimes (i 0) (push (instance hdl_people_tracking::Cluster :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _clusters __clusters)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:clusters
   (&rest __clusters)
   (if (keywordp (car __clusters))
       (send* _clusters __clusters)
     (progn
       (if __clusters (setq _clusters (car __clusters)))
       _clusters)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hdl_people_tracking/Cluster[] _clusters
    (apply #'+ (send-all _clusters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hdl_people_tracking/Cluster[] _clusters
     (write-long (length _clusters) s)
     (dolist (elem _clusters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hdl_people_tracking/Cluster[] _clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusters (let (r) (dotimes (i n) (push (instance hdl_people_tracking::Cluster :init) r)) r))
     (dolist (elem- _clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hdl_people_tracking::ClusterArray :md5sum-) "b23ec4e450d08e7542ddda353cf34257")
(setf (get hdl_people_tracking::ClusterArray :datatype-) "hdl_people_tracking/ClusterArray")
(setf (get hdl_people_tracking::ClusterArray :definition-)
      "Header header

Cluster[] clusters

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
MSG: hdl_people_tracking/Cluster
bool is_human

geometry_msgs/Point min_pt
geometry_msgs/Point max_pt
geometry_msgs/Vector3 size
geometry_msgs/Point centroid

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
")



(provide :hdl_people_tracking/ClusterArray "b23ec4e450d08e7542ddda353cf34257")


