; Auto-generated. Do not edit!


(cl:in-package my_msg-msg)


;//! \htmlinclude kdangerArray.msg.html

(cl:defclass <kdangerArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (items
    :reader items
    :initarg :items
    :type (cl:vector my_msg-msg:kdanger)
   :initform (cl:make-array 0 :element-type 'my_msg-msg:kdanger :initial-element (cl:make-instance 'my_msg-msg:kdanger))))
)

(cl:defclass kdangerArray (<kdangerArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kdangerArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kdangerArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msg-msg:<kdangerArray> is deprecated: use my_msg-msg:kdangerArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <kdangerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:header-val is deprecated.  Use my_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'items-val :lambda-list '(m))
(cl:defmethod items-val ((m <kdangerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:items-val is deprecated.  Use my_msg-msg:items instead.")
  (items m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kdangerArray>) ostream)
  "Serializes a message object of type '<kdangerArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'items))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'items))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kdangerArray>) istream)
  "Deserializes a message object of type '<kdangerArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'items) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'items)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'my_msg-msg:kdanger))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kdangerArray>)))
  "Returns string type for a message object of type '<kdangerArray>"
  "my_msg/kdangerArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kdangerArray)))
  "Returns string type for a message object of type 'kdangerArray"
  "my_msg/kdangerArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kdangerArray>)))
  "Returns md5sum for a message object of type '<kdangerArray>"
  "e8821c94651dec6ba6e5aa740d245c31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kdangerArray)))
  "Returns md5sum for a message object of type 'kdangerArray"
  "e8821c94651dec6ba6e5aa740d245c31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kdangerArray>)))
  "Returns full string definition for message of type '<kdangerArray>"
  (cl:format cl:nil "Header header~%~%my_msg/kdanger[] items~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: my_msg/kdanger~%int64 k~%int64[] ids~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kdangerArray)))
  "Returns full string definition for message of type 'kdangerArray"
  (cl:format cl:nil "Header header~%~%my_msg/kdanger[] items~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: my_msg/kdanger~%int64 k~%int64[] ids~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kdangerArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'items) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kdangerArray>))
  "Converts a ROS message object to a list"
  (cl:list 'kdangerArray
    (cl:cons ':header (header msg))
    (cl:cons ':items (items msg))
))
