; Auto-generated. Do not edit!


(cl:in-package my_msg-msg)


;//! \htmlinclude group.msg.html

(cl:defclass <group> (roslisp-msg-protocol:ros-message)
  ((eps
    :reader eps
    :initarg :eps
    :type cl:float
    :initform 0.0)
   (minpts
    :reader minpts
    :initarg :minpts
    :type cl:integer
    :initform 0))
)

(cl:defclass group (<group>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <group>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'group)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msg-msg:<group> is deprecated: use my_msg-msg:group instead.")))

(cl:ensure-generic-function 'eps-val :lambda-list '(m))
(cl:defmethod eps-val ((m <group>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:eps-val is deprecated.  Use my_msg-msg:eps instead.")
  (eps m))

(cl:ensure-generic-function 'minpts-val :lambda-list '(m))
(cl:defmethod minpts-val ((m <group>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:minpts-val is deprecated.  Use my_msg-msg:minpts instead.")
  (minpts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <group>) ostream)
  "Serializes a message object of type '<group>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'eps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'minpts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <group>) istream)
  "Deserializes a message object of type '<group>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'minpts) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<group>)))
  "Returns string type for a message object of type '<group>"
  "my_msg/group")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'group)))
  "Returns string type for a message object of type 'group"
  "my_msg/group")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<group>)))
  "Returns md5sum for a message object of type '<group>"
  "8b8807b2a10657febff20e77600c08cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'group)))
  "Returns md5sum for a message object of type 'group"
  "8b8807b2a10657febff20e77600c08cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<group>)))
  "Returns full string definition for message of type '<group>"
  (cl:format cl:nil "float64 eps~%int64 minpts~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'group)))
  "Returns full string definition for message of type 'group"
  (cl:format cl:nil "float64 eps~%int64 minpts~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <group>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <group>))
  "Converts a ROS message object to a list"
  (cl:list 'group
    (cl:cons ':eps (eps msg))
    (cl:cons ':minpts (minpts msg))
))
