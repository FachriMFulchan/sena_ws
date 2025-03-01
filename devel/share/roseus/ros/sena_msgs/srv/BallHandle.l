;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::BallHandle)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'BallHandle (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::BALLHANDLE")
  (make-package "SENA_MSGS::BALLHANDLE"))
(unless (find-package "SENA_MSGS::BALLHANDLEREQUEST")
  (make-package "SENA_MSGS::BALLHANDLEREQUEST"))
(unless (find-package "SENA_MSGS::BALLHANDLERESPONSE")
  (make-package "SENA_MSGS::BALLHANDLERESPONSE"))

(in-package "ROS")





(defclass sena_msgs::BallHandleRequest
  :super ros::object
  :slots (_enable ))

(defmethod sena_msgs::BallHandleRequest
  (:init
   (&key
    ((:enable __enable) 0)
    )
   (send-super :init)
   (setq _enable (round __enable))
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; int64 _enable
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _enable
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _enable (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _enable) (= (length (_enable . bv)) 2)) ;; bignum
              (write-long (ash (elt (_enable . bv) 0) 0) s)
              (write-long (ash (elt (_enable . bv) 1) -1) s))
             ((and (class _enable) (= (length (_enable . bv)) 1)) ;; big1
              (write-long (elt (_enable . bv) 0) s)
              (write-long (if (>= _enable 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _enable s)(write-long (if (>= _enable 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _enable
#+(or :alpha :irix6 :x86_64)
      (setf _enable (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _enable (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass sena_msgs::BallHandleResponse
  :super ros::object
  :slots (_BallIsHolding ))

(defmethod sena_msgs::BallHandleResponse
  (:init
   (&key
    ((:BallIsHolding __BallIsHolding) 0)
    )
   (send-super :init)
   (setq _BallIsHolding (round __BallIsHolding))
   self)
  (:BallIsHolding
   (&optional __BallIsHolding)
   (if __BallIsHolding (setq _BallIsHolding __BallIsHolding)) _BallIsHolding)
  (:serialization-length
   ()
   (+
    ;; int64 _BallIsHolding
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _BallIsHolding
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _BallIsHolding (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _BallIsHolding) (= (length (_BallIsHolding . bv)) 2)) ;; bignum
              (write-long (ash (elt (_BallIsHolding . bv) 0) 0) s)
              (write-long (ash (elt (_BallIsHolding . bv) 1) -1) s))
             ((and (class _BallIsHolding) (= (length (_BallIsHolding . bv)) 1)) ;; big1
              (write-long (elt (_BallIsHolding . bv) 0) s)
              (write-long (if (>= _BallIsHolding 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _BallIsHolding s)(write-long (if (>= _BallIsHolding 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _BallIsHolding
#+(or :alpha :irix6 :x86_64)
      (setf _BallIsHolding (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _BallIsHolding (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass sena_msgs::BallHandle
  :super ros::object
  :slots ())

(setf (get sena_msgs::BallHandle :md5sum-) "f352f0080766880a151542e750a50ea8")
(setf (get sena_msgs::BallHandle :datatype-) "sena_msgs/BallHandle")
(setf (get sena_msgs::BallHandle :request) sena_msgs::BallHandleRequest)
(setf (get sena_msgs::BallHandle :response) sena_msgs::BallHandleResponse)

(defmethod sena_msgs::BallHandleRequest
  (:response () (instance sena_msgs::BallHandleResponse :init)))

(setf (get sena_msgs::BallHandleRequest :md5sum-) "f352f0080766880a151542e750a50ea8")
(setf (get sena_msgs::BallHandleRequest :datatype-) "sena_msgs/BallHandleRequest")
(setf (get sena_msgs::BallHandleRequest :definition-)
      "int64 enable
---
int64 BallIsHolding

")

(setf (get sena_msgs::BallHandleResponse :md5sum-) "f352f0080766880a151542e750a50ea8")
(setf (get sena_msgs::BallHandleResponse :datatype-) "sena_msgs/BallHandleResponse")
(setf (get sena_msgs::BallHandleResponse :definition-)
      "int64 enable
---
int64 BallIsHolding

")



(provide :sena_msgs/BallHandle "f352f0080766880a151542e750a50ea8")


