; Auto-generated. Do not edit!


(cl:in-package hdl_people_tracking-msg)


;//! \htmlinclude Cluster.msg.html

(cl:defclass <Cluster> (roslisp-msg-protocol:ros-message)
  ((is_human
    :reader is_human
    :initarg :is_human
    :type cl:boolean
    :initform cl:nil)
   (min_pt
    :reader min_pt
    :initarg :min_pt
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (max_pt
    :reader max_pt
    :initarg :max_pt
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (size
    :reader size
    :initarg :size
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Cluster (<Cluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdl_people_tracking-msg:<Cluster> is deprecated: use hdl_people_tracking-msg:Cluster instead.")))

(cl:ensure-generic-function 'is_human-val :lambda-list '(m))
(cl:defmethod is_human-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:is_human-val is deprecated.  Use hdl_people_tracking-msg:is_human instead.")
  (is_human m))

(cl:ensure-generic-function 'min_pt-val :lambda-list '(m))
(cl:defmethod min_pt-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:min_pt-val is deprecated.  Use hdl_people_tracking-msg:min_pt instead.")
  (min_pt m))

(cl:ensure-generic-function 'max_pt-val :lambda-list '(m))
(cl:defmethod max_pt-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:max_pt-val is deprecated.  Use hdl_people_tracking-msg:max_pt instead.")
  (max_pt m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:size-val is deprecated.  Use hdl_people_tracking-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_people_tracking-msg:centroid-val is deprecated.  Use hdl_people_tracking-msg:centroid instead.")
  (centroid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster>) ostream)
  "Serializes a message object of type '<Cluster>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_human) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min_pt) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_pt) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster>) istream)
  "Deserializes a message object of type '<Cluster>"
    (cl:setf (cl:slot-value msg 'is_human) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min_pt) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_pt) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster>)))
  "Returns string type for a message object of type '<Cluster>"
  "hdl_people_tracking/Cluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster)))
  "Returns string type for a message object of type 'Cluster"
  "hdl_people_tracking/Cluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster>)))
  "Returns md5sum for a message object of type '<Cluster>"
  "8bbe286e65ded24df1e6c701b484c2d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster)))
  "Returns md5sum for a message object of type 'Cluster"
  "8bbe286e65ded24df1e6c701b484c2d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster>)))
  "Returns full string definition for message of type '<Cluster>"
  (cl:format cl:nil "bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster)))
  "Returns full string definition for message of type 'Cluster"
  (cl:format cl:nil "bool is_human~%~%geometry_msgs/Point min_pt~%geometry_msgs/Point max_pt~%geometry_msgs/Vector3 size~%geometry_msgs/Point centroid~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min_pt))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_pt))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster
    (cl:cons ':is_human (is_human msg))
    (cl:cons ':min_pt (min_pt msg))
    (cl:cons ':max_pt (max_pt msg))
    (cl:cons ':size (size msg))
    (cl:cons ':centroid (centroid msg))
))
