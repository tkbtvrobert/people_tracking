;; Auto-generated. Do not edit!


(when (boundp 'my_msg::Human)
  (if (not (find-package "MY_MSG"))
    (make-package "MY_MSG"))
  (shadow 'Human (find-package "MY_MSG")))
(unless (find-package "MY_MSG::HUMAN")
  (make-package "MY_MSG::HUMAN"))

(in-package "ROS")
;;//! \htmlinclude Human.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass my_msg::Human
  :super ros::object
  :slots (_id _type _state _pose ))

(defmethod my_msg::Human
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) 0)
    ((:state __state) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _state (round __state))
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; int64 _type
    8
    ;; int64 _state
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int64 _type
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _type (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _type) (= (length (_type . bv)) 2)) ;; bignum
              (write-long (ash (elt (_type . bv) 0) 0) s)
              (write-long (ash (elt (_type . bv) 1) -1) s))
             ((and (class _type) (= (length (_type . bv)) 1)) ;; big1
              (write-long (elt (_type . bv) 0) s)
              (write-long (if (>= _type 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _type s)(write-long (if (>= _type 0) 0 #xffffffff) s)))
     ;; int64 _state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _state) (= (length (_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_state . bv) 0) 0) s)
              (write-long (ash (elt (_state . bv) 1) -1) s))
             ((and (class _state) (= (length (_state . bv)) 1)) ;; big1
              (write-long (elt (_state . bv) 0) s)
              (write-long (if (>= _state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _state s)(write-long (if (>= _state 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _type
#+(or :alpha :irix6 :x86_64)
      (setf _type (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _type (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _state
#+(or :alpha :irix6 :x86_64)
      (setf _state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get my_msg::Human :md5sum-) "65b15ba1b364de60fbcac285c6b79d13")
(setf (get my_msg::Human :datatype-) "my_msg/Human")
(setf (get my_msg::Human :definition-)
      "int64 id
int64 type
int64 state
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :my_msg/Human "65b15ba1b364de60fbcac285c6b79d13")


