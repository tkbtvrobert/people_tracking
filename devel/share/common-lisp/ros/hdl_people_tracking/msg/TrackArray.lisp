; Auto-generated. Do not edit!


(cl:in-package hdl_people_tracking-msg)


;//! \htmlinclude TrackArray.msg.html

(cl:defclass <TrackArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracks
    :reader tracks
    :initarg :tracks
    :type (cl:vector hdl_people_tracking-msg:Track)
   :initform (cl:make-array 0 :element-type 'hdl_people_tracking-msg:Track :initial-element (cl:make-instance 'hdl_people_tracking-msg:Track))))
)

(cl:defclass TrackArray (<TrackArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdl_people_tracking-msg:<TrackArray> is deprecated: use hdl_people_tracking-msg:TrackArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:header-val is deprecated.  Use hdl_people_tracking-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracks-val :lambda-list '(m))
(cl:defmethod tracks-val ((m <TrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:tracks-val is deprecated.  Use hdl_people_tracking-msg:tracks instead.")
  (tracks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackArray>) ostream)
  "Serializes a message object of type '<TrackArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackArray>) istream)
  "Deserializes a message object of type '<TrackArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hdl_people_tracking-msg:Track))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackArray>)))
  "Returns string type for a message object of type '<TrackArray>"
  "hdl_people_tracking/TrackArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackArray)))
  "Returns string type for a message object of type 'TrackArray"
  "hdl_people_tracking/TrackArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackArray>)))
  "Returns md5sum for a message object of type '<TrackArray>"
  "f2c238b988c43cb09ac3d9dbe063b799")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackArray)))
  "Returns md5sum for a message object of type 'TrackArray"
  "f2c238b988c43cb09ac3d9dbe063b799")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackArray>)))
  "Returns full string definition for message of type '<TrackArray>"
  (cl:format cl:nil "Header header~%~%Track[] tracks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdl_people_tracking/Track~%int32 id~%float64 age~%geometry_msgs/Point pos~%geometry_msgs/Vector3 vel~%~%float64[9] pos_cov~%float64[9] vel_cov~%~%int64 k~%int64[] ids~%~%hdl_people_tracking/Cluster[] associated~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: hdl_people_tracking/Cluster~%bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackArray)))
  "Returns full string definition for message of type 'TrackArray"
  (cl:format cl:nil "Header header~%~%Track[] tracks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdl_people_tracking/Track~%int32 id~%float64 age~%geometry_msgs/Point pos~%geometry_msgs/Vector3 vel~%~%float64[9] pos_cov~%float64[9] vel_cov~%~%int64 k~%int64[] ids~%~%hdl_people_tracking/Cluster[] associated~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: hdl_people_tracking/Cluster~%bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackArray
    (cl:cons ':header (header msg))
    (cl:cons ':tracks (tracks msg))
))
