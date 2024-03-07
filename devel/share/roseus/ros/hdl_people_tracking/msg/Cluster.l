;; Auto-generated. Do not edit!


(when (boundp 'hdl_people_tracking::Cluster)
  (if (not (find-package "HDL_PEOPLE_TRACKING"))
    (make-package "HDL_PEOPLE_TRACKING"))
  (shadow 'Cluster (find-package "HDL_PEOPLE_TRACKING")))
(unless (find-package "HDL_PEOPLE_TRACKING::CLUSTER")
  (make-package "HDL_PEOPLE_TRACKING::CLUSTER"))

(in-package "ROS")
;;//! \htmlinclude Cluster.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hdl_people_tracking::Cluster
  :super ros::object
  :slots (_is_human _min_pt _max_pt _size _centroid ))

(defmethod hdl_people_tracking::Cluster
  (:init
   (&key
    ((:is_human __is_human) nil)
    ((:min_pt __min_pt) (instance geometry_msgs::Point :init))
    ((:max_pt __max_pt) (instance geometry_msgs::Point :init))
    ((:size __size) (instance geometry_msgs::Vector3 :init))
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _is_human __is_human)
   (setq _min_pt __min_pt)
   (setq _max_pt __max_pt)
   (setq _size __size)
   (setq _centroid __centroid)
   self)
  (:is_human
   (&optional __is_human)
   (if __is_human (setq _is_human __is_human)) _is_human)
  (:min_pt
   (&rest __min_pt)
   (if (keywordp (car __min_pt))
       (send* _min_pt __min_pt)
     (progn
       (if __min_pt (setq _min_pt (car __min_pt)))
       _min_pt)))
  (:max_pt
   (&rest __max_pt)
   (if (keywordp (car __max_pt))
       (send* _max_pt __max_pt)
     (progn
       (if __max_pt (setq _max_pt (car __max_pt)))
       _max_pt)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:serialization-length
   ()
   (+
    ;; bool _is_human
    1
    ;; geometry_msgs/Point _min_pt
    (send _min_pt :serialization-length)
    ;; geometry_msgs/Point _max_pt
    (send _max_pt :serialization-length)
    ;; geometry_msgs/Vector3 _size
    (send _size :serialization-length)
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_human
       (if _is_human (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _min_pt
       (send _min_pt :serialize s)
     ;; geometry_msgs/Point _max_pt
       (send _max_pt :serialize s)
     ;; geometry_msgs/Vector3 _size
       (send _size :serialize s)
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_human
     (setq _is_human (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _min_pt
     (send _min_pt :deserialize buf ptr-) (incf ptr- (send _min_pt :serialization-length))
   ;; geometry_msgs/Point _max_pt
     (send _max_pt :deserialize buf ptr-) (incf ptr- (send _max_pt :serialization-length))
   ;; geometry_msgs/Vector3 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;;
   self)
  )

(setf (get hdl_people_tracking::Cluster :md5sum-) "8bbe286e65ded24df1e6c701b484c2d7")
(setf (get hdl_people_tracking::Cluster :datatype-) "hdl_people_tracking/Cluster")
(setf (get hdl_people_tracking::Cluster :definition-)
      "bool is_human

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



(provide :hdl_people_tracking/Cluster "8bbe286e65ded24df1e6c701b484c2d7")


