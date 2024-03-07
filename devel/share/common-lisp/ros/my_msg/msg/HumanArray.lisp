; Auto-generated. Do not edit!


(cl:in-package my_msg-msg)


;//! \htmlinclude HumanArray.msg.html

(cl:defclass <HumanArray> (roslisp-msg-protocol:ros-message)
  ((humans
    :reader humans
    :initarg :humans
    :type (cl:vector my_msg-msg:Human)
   :initform (cl:make-array 0 :element-type 'my_msg-msg:Human :initial-element (cl:make-instance 'my_msg-msg:Human))))
)

(cl:defclass HumanArray (<HumanArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msg-msg:<HumanArray> is deprecated: use my_msg-msg:HumanArray instead.")))

(cl:ensure-generic-function 'humans-val :lambda-list '(m))
(cl:defmethod humans-val ((m <HumanArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:humans-val is deprecated.  Use my_msg-msg:humans instead.")
  (humans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanArray>) ostream)
  "Serializes a message object of type '<HumanArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'humans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'humans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanArray>) istream)
  "Deserializes a message object of type '<HumanArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'humans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'humans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'my_msg-msg:Human))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanArray>)))
  "Returns string type for a message object of type '<HumanArray>"
  "my_msg/HumanArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanArray)))
  "Returns string type for a message object of type 'HumanArray"
  "my_msg/HumanArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanArray>)))
  "Returns md5sum for a message object of type '<HumanArray>"
  "9aafaa8337ab2dec54a94b020f2289a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanArray)))
  "Returns md5sum for a message object of type 'HumanArray"
  "9aafaa8337ab2dec54a94b020f2289a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanArray>)))
  "Returns full string definition for message of type '<HumanArray>"
  (cl:format cl:nil "my_msg/Human[] humans~%================================================================================~%MSG: my_msg/Human~%int64 id~%int64 type~%int64 state~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanArray)))
  "Returns full string definition for message of type 'HumanArray"
  (cl:format cl:nil "my_msg/Human[] humans~%================================================================================~%MSG: my_msg/Human~%int64 id~%int64 type~%int64 state~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'humans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanArray>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanArray
    (cl:cons ':humans (humans msg))
))
