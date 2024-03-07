; Auto-generated. Do not edit!


(cl:in-package my_msg-msg)


;//! \htmlinclude kdanger.msg.html

(cl:defclass <kdanger> (roslisp-msg-protocol:ros-message)
  ((k
    :reader k
    :initarg :k
    :type cl:integer
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass kdanger (<kdanger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kdanger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kdanger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_msg-msg:<kdanger> is deprecated: use my_msg-msg:kdanger instead.")))

(cl:ensure-generic-function 'k-val :lambda-list '(m))
(cl:defmethod k-val ((m <kdanger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:k-val is deprecated.  Use my_msg-msg:k instead.")
  (k m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <kdanger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_msg-msg:ids-val is deprecated.  Use my_msg-msg:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kdanger>) ostream)
  "Serializes a message object of type '<kdanger>"
  (cl:let* ((signed (cl:slot-value msg 'k)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kdanger>) istream)
  "Deserializes a message object of type '<kdanger>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'k) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kdanger>)))
  "Returns string type for a message object of type '<kdanger>"
  "my_msg/kdanger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kdanger)))
  "Returns string type for a message object of type 'kdanger"
  "my_msg/kdanger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kdanger>)))
  "Returns md5sum for a message object of type '<kdanger>"
  "a04d1d0f8657453cc420eb9b555ea1a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kdanger)))
  "Returns md5sum for a message object of type 'kdanger"
  "a04d1d0f8657453cc420eb9b555ea1a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kdanger>)))
  "Returns full string definition for message of type '<kdanger>"
  (cl:format cl:nil "int64 k~%int64[] ids~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kdanger)))
  "Returns full string definition for message of type 'kdanger"
  (cl:format cl:nil "int64 k~%int64[] ids~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kdanger>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kdanger>))
  "Converts a ROS message object to a list"
  (cl:list 'kdanger
    (cl:cons ':k (k msg))
    (cl:cons ':ids (ids msg))
))
