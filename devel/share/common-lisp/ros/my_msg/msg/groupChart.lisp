; Auto-generated. Do not edit!


(cl:in-package my_msg-msg)


;//! \htmlinclude groupChart.msg.html

(cl:defclass <groupChart> (roslisp-msg-protocol:ros-message)
  ((numHuman
    :reader numHuman
    :initarg :numHuman
    :type cl:integer
    :initform 0)
   (riskFactor
    :reader riskFactor
    :initarg :riskFactor
    :type cl:float
    :initform 0.0))
)

(cl:defclass groupChart (<groupChart>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <groupChart>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'groupChart)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msg-msg:<groupChart> is deprecated: use my_msg-msg:groupChart instead.")))

(cl:ensure-generic-function 'numHuman-val :lambda-list '(m))
(cl:defmethod numHuman-val ((m <groupChart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:numHuman-val is deprecated.  Use my_msg-msg:numHuman instead.")
  (numHuman m))

(cl:ensure-generic-function 'riskFactor-val :lambda-list '(m))
(cl:defmethod riskFactor-val ((m <groupChart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:riskFactor-val is deprecated.  Use my_msg-msg:riskFactor instead.")
  (riskFactor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <groupChart>) ostream)
  "Serializes a message object of type '<groupChart>"
  (cl:let* ((signed (cl:slot-value msg 'numHuman)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'riskFactor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <groupChart>) istream)
  "Deserializes a message object of type '<groupChart>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numHuman) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'riskFactor) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<groupChart>)))
  "Returns string type for a message object of type '<groupChart>"
  "my_msg/groupChart")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'groupChart)))
  "Returns string type for a message object of type 'groupChart"
  "my_msg/groupChart")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<groupChart>)))
  "Returns md5sum for a message object of type '<groupChart>"
  "97d4b5d0a9eee48cf3fa2d456080f40e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'groupChart)))
  "Returns md5sum for a message object of type 'groupChart"
  "97d4b5d0a9eee48cf3fa2d456080f40e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<groupChart>)))
  "Returns full string definition for message of type '<groupChart>"
  (cl:format cl:nil "int64 numHuman~%float64 riskFactor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'groupChart)))
  "Returns full string definition for message of type 'groupChart"
  (cl:format cl:nil "int64 numHuman~%float64 riskFactor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <groupChart>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <groupChart>))
  "Converts a ROS message object to a list"
  (cl:list 'groupChart
    (cl:cons ':numHuman (numHuman msg))
    (cl:cons ':riskFactor (riskFactor msg))
))
