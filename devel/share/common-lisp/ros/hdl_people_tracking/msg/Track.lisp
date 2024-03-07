; Auto-generated. Do not edit!


(cl:in-package hdl_people_tracking-msg)


;//! \htmlinclude Track.msg.html

(cl:defclass <Track> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:float
    :initform 0.0)
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pos_cov
    :reader pos_cov
    :initarg :pos_cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (vel_cov
    :reader vel_cov
    :initarg :vel_cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (k
    :reader k
    :initarg :k
    :type cl:integer
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (associated
    :reader associated
    :initarg :associated
    :type (cl:vector hdl_people_tracking-msg:Cluster)
   :initform (cl:make-array 0 :element-type 'hdl_people_tracking-msg:Cluster :initial-element (cl:make-instance 'hdl_people_tracking-msg:Cluster))))
)

(cl:defclass Track (<Track>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Track>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Track)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdl_people_tracking-msg:<Track> is deprecated: use hdl_people_tracking-msg:Track instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:id-val is deprecated.  Use hdl_people_tracking-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:age-val is deprecated.  Use hdl_people_tracking-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:pos-val is deprecated.  Use hdl_people_tracking-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:vel-val is deprecated.  Use hdl_people_tracking-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'pos_cov-val :lambda-list '(m))
(cl:defmethod pos_cov-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:pos_cov-val is deprecated.  Use hdl_people_tracking-msg:pos_cov instead.")
  (pos_cov m))

(cl:ensure-generic-function 'vel_cov-val :lambda-list '(m))
(cl:defmethod vel_cov-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:vel_cov-val is deprecated.  Use hdl_people_tracking-msg:vel_cov instead.")
  (vel_cov m))

(cl:ensure-generic-function 'k-val :lambda-list '(m))
(cl:defmethod k-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:k-val is deprecated.  Use hdl_people_tracking-msg:k instead.")
  (k m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:ids-val is deprecated.  Use hdl_people_tracking-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'associated-val :lambda-list '(m))
(cl:defmethod associated-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:associated-val is deprecated.  Use hdl_people_tracking-msg:associated instead.")
  (associated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Track>) ostream)
  "Serializes a message object of type '<Track>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pos_cov))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'vel_cov))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'associated))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'associated))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Track>) istream)
  "Deserializes a message object of type '<Track>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'age) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
  (cl:setf (cl:slot-value msg 'pos_cov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'pos_cov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'vel_cov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'vel_cov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'associated) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'associated)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hdl_people_tracking-msg:Cluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Track>)))
  "Returns string type for a message object of type '<Track>"
  "hdl_people_tracking/Track")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Track)))
  "Returns string type for a message object of type 'Track"
  "hdl_people_tracking/Track")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Track>)))
  "Returns md5sum for a message object of type '<Track>"
  "d83e95598dbec66cab50a208fafde776")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Track)))
  "Returns md5sum for a message object of type 'Track"
  "d83e95598dbec66cab50a208fafde776")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Track>)))
  "Returns full string definition for message of type '<Track>"
  (cl:format cl:nil "int32 id~%float64 age~%geometry_msgs/Point pos~%geometry_msgs/Vector3 vel~%~%float64[9] pos_cov~%float64[9] vel_cov~%~%int64 k~%int64[] ids~%~%hdl_people_tracking/Cluster[] associated~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: hdl_people_tracking/Cluster~%bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Track)))
  "Returns full string definition for message of type 'Track"
  (cl:format cl:nil "int32 id~%float64 age~%geometry_msgs/Point pos~%geometry_msgs/Vector3 vel~%~%float64[9] pos_cov~%float64[9] vel_cov~%~%int64 k~%int64[] ids~%~%hdl_people_tracking/Cluster[] associated~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: hdl_people_tracking/Cluster~%bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Track>))
  (cl:+ 0
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pos_cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vel_cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'associated) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Track>))
  "Converts a ROS message object to a list"
  (cl:list 'Track
    (cl:cons ':id (id msg))
    (cl:cons ':age (age msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':pos_cov (pos_cov msg))
    (cl:cons ':vel_cov (vel_cov msg))
    (cl:cons ':k (k msg))
    (cl:cons ':ids (ids msg))
    (cl:cons ':associated (associated msg))
))
