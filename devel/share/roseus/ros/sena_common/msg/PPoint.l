;; Auto-generated. Do not edit!


(when (boundp 'sena_common::PPoint)
  (if (not (find-package "SENA_COMMON"))
    (make-package "SENA_COMMON"))
  (shadow 'PPoint (find-package "SENA_COMMON")))
(unless (find-package "SENA_COMMON::PPOINT")
  (make-package "SENA_COMMON::PPOINT"))

(in-package "ROS")
;;//! \htmlinclude PPoint.msg.html


(defclass sena_common::PPoint
  :super ros::object
  :slots (_angle _radius ))

(defmethod sena_common::PPoint
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _radius (float __radius))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sena_common::PPoint :md5sum-) "29d7d0dfcbdb558f82b1c2caff948161")
(setf (get sena_common::PPoint :datatype-) "sena_common/PPoint")
(setf (get sena_common::PPoint :definition-)
      "float32 angle
float32 radius

")



(provide :sena_common/PPoint "29d7d0dfcbdb558f82b1c2caff948161")


