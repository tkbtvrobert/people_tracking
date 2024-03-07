; Auto-generated. Do not edit!


(cl:in-package my_msg-msg)


;//! \htmlinclude HumanGazebo.msg.html

(cl:defclass <HumanGazebo> (roslisp-msg-protocol:ros-message)
  ((item_name
    :reader item_name
    :initarg :item_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass HumanGazebo (<HumanGazebo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanGazebo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanGazebo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msg-msg:<HumanGazebo> is deprecated: use my_msg-msg:HumanGazebo instead.")))

(cl:ensure-generic-function 'item_name-val :lambda-list '(m))
(cl:defmethod item_name-val ((m <HumanGazebo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:item_name-val is deprecated.  Use my_msg-msg:item_name instead.")
  (item_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <HumanGazebo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:pose-val is deprecated.  Use my_msg-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanGazebo>) ostream)
  "Serializes a message object of type '<HumanGazebo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'item_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'item_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanGazebo>) istream)
  "Deserializes a message object of type '<HumanGazebo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'item_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'item_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanGazebo>)))
  "Returns string type for a message object of type '<HumanGazebo>"
  "my_msg/HumanGazebo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanGazebo)))
  "Returns string type for a message object of type 'HumanGazebo"
  "my_msg/HumanGazebo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanGazebo>)))
  "Returns md5sum for a message object of type '<HumanGazebo>"
  "d6a602bef3cc30802df3048df084e986")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanGazebo)))
  "Returns md5sum for a message object of type 'HumanGazebo"
  "d6a602bef3cc30802df3048df084e986")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanGazebo>)))
  "Returns full string definition for message of type '<HumanGazebo>"
  (cl:format cl:nil "string item_name~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanGazebo)))
  "Returns full string definition for message of type 'HumanGazebo"
  (cl:format cl:nil "string item_name~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanGazebo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'item_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanGazebo>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanGazebo
    (cl:cons ':item_name (item_name msg))
    (cl:cons ':pose (pose msg))
))
