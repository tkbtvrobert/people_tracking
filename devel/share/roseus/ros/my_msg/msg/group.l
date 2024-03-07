;; Auto-generated. Do not edit!


(when (boundp 'my_msg::group)
  (if (not (find-package "MY_MSG"))
    (make-package "MY_MSG"))
  (shadow 'group (find-package "MY_MSG")))
(unless (find-package "MY_MSG::GROUP")
  (make-package "MY_MSG::GROUP"))

(in-package "ROS")
;;//! \htmlinclude group.msg.html


(defclass my_msg::group
  :super ros::object
  :slots (_eps _minpts ))

(defmethod my_msg::group
  (:init
   (&key
    ((:eps __eps) 0.0)
    ((:minpts __minpts) 0)
    )
   (send-super :init)
   (setq _eps (float __eps))
   (setq _minpts (round __minpts))
   self)
  (:eps
   (&optional __eps)
   (if __eps (setq _eps __eps)) _eps)
  (:minpts
   (&optional __minpts)
   (if __minpts (setq _minpts __minpts)) _minpts)
  (:serialization-length
   ()
   (+
    ;; float64 _eps
    8
    ;; int64 _minpts
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _eps
       (sys::poke _eps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _minpts
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _minpts (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _minpts) (= (length (_minpts . bv)) 2)) ;; bignum
              (write-long (ash (elt (_minpts . bv) 0) 0) s)
              (write-long (ash (elt (_minpts . bv) 1) -1) s))
             ((and (class _minpts) (= (length (_minpts . bv)) 1)) ;; big1
              (write-long (elt (_minpts . bv) 0) s)
              (write-long (if (>= _minpts 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _minpts s)(write-long (if (>= _minpts 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _eps
     (setq _eps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _minpts
#+(or :alpha :irix6 :x86_64)
      (setf _minpts (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _minpts (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get my_msg::group :md5sum-) "8b8807b2a10657febff20e77600c08cb")
(setf (get my_msg::group :datatype-) "my_msg/group")
(setf (get my_msg::group :definition-)
      "float64 eps
int64 minpts
")



(provide :my_msg/group "8b8807b2a10657febff20e77600c08cb")


