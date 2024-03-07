; Auto-generated. Do not edit!


(cl:in-package hdl_people_tracking-msg)


;//! \htmlinclude ClusterArray.msg.html

(cl:defclass <ClusterArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (clusters
    :reader clusters
    :initarg :clusters
    :type (cl:vector hdl_people_tracking-msg:Cluster)
   :initform (cl:make-array 0 :element-type 'hdl_people_tracking-msg:Cluster :initial-element (cl:make-instance 'hdl_people_tracking-msg:Cluster))))
)

(cl:defclass ClusterArray (<ClusterArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdl_people_tracking-msg:<ClusterArray> is deprecated: use hdl_people_tracking-msg:ClusterArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:header-val is deprecated.  Use hdl_people_tracking-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'clusters-val :lambda-list '(m))
(cl:defmethod clusters-val ((m <ClusterArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:clusters-val is deprecated.  Use hdl_people_tracking-msg:clusters instead.")
  (clusters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterArray>) ostream)
  "Serializes a message object of type '<ClusterArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterArray>) istream)
  "Deserializes a message object of type '<ClusterArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hdl_people_tracking-msg:Cluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterArray>)))
  "Returns string type for a message object of type '<ClusterArray>"
  "hdl_people_tracking/ClusterArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterArray)))
  "Returns string type for a message object of type 'ClusterArray"
  "hdl_people_tracking/ClusterArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterArray>)))
  "Returns md5sum for a message object of type '<ClusterArray>"
  "b23ec4e450d08e7542ddda353cf34257")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterArray)))
  "Returns md5sum for a message object of type 'ClusterArray"
  "b23ec4e450d08e7542ddda353cf34257")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterArray>)))
  "Returns full string definition for message of type '<ClusterArray>"
  (cl:format cl:nil "Header header~%~%Cluster[] clusters~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdl_people_tracking/Cluster~%bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterArray)))
  "Returns full string definition for message of type 'ClusterArray"
  (cl:format cl:nil "Header header~%~%Cluster[] clusters~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdl_people_tracking/Cluster~%bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterArray
    (cl:cons ':header (header msg))
    (cl:cons ':clusters (clusters msg))
))
