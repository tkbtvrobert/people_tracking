;; Auto-generated. Do not edit!


(when (boundp 'my_msg::kdanger)
  (if (not (find-package "MY_MSG"))
    (make-package "MY_MSG"))
  (shadow 'kdanger (find-package "MY_MSG")))
(unless (find-package "MY_MSG::KDANGER")
  (make-package "MY_MSG::KDANGER"))

(in-package "ROS")
;;//! \htmlinclude kdanger.msg.html


(defclass my_msg::kdanger
  :super ros::object
  :slots (_k _ids ))

(defmethod my_msg::kdanger
  (:init
   (&key
    ((:k __k) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _k (round __k))
   (setq _ids __ids)
   self)
  (:k
   (&optional __k)
   (if __k (setq _k __k)) _k)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; int64 _k
    8
    ;; int64[] _ids
    (* 8    (length _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _k
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _k (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _k) (= (length (_k . bv)) 2)) ;; bignum
              (write-long (ash (elt (_k . bv) 0) 0) s)
              (write-long (ash (elt (_k . bv) 1) -1) s))
             ((and (class _k) (= (length (_k . bv)) 1)) ;; big1
              (write-long (elt (_k . bv) 0) s)
              (write-long (if (>= _k 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _k s)(write-long (if (>= _k 0) 0 #xffffffff) s)))
     ;; int64[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _ids i) . bv) 1) -1) s))
             ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _ids i) . bv) 0) s)
              (write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _ids i) s)(write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _k
#+(or :alpha :irix6 :x86_64)
      (setf _k (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _k (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get my_msg::kdanger :md5sum-) "a04d1d0f8657453cc420eb9b555ea1a2")
(setf (get my_msg::kdanger :datatype-) "my_msg/kdanger")
(setf (get my_msg::kdanger :definition-)
      "int64 k
int64[] ids
")



(provide :my_msg/kdanger "a04d1d0f8657453cc420eb9b555ea1a2")


