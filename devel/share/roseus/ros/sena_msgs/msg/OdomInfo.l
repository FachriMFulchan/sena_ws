;; Auto-generated. Do not edit!


(when (boundp 'sena_msgs::OdomInfo)
  (if (not (find-package "SENA_MSGS"))
    (make-package "SENA_MSGS"))
  (shadow 'OdomInfo (find-package "SENA_MSGS")))
(unless (find-package "SENA_MSGS::ODOMINFO")
  (make-package "SENA_MSGS::ODOMINFO"))

(in-package "ROS")
;;//! \htmlinclude OdomInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sena_msgs::OdomInfo
  :super ros::object
  :slots (_header _Vx _Vy _w _RobotStuck _PowerState ))

(defmethod sena_msgs::OdomInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Vx __Vx) 0.0)
    ((:Vy __Vy) 0.0)
    ((:w __w) 0.0)
    ((:RobotStuck __RobotStuck) nil)
    ((:PowerState __PowerState) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Vx (float __Vx))
   (setq _Vy (float __Vy))
   (setq _w (float __w))
   (setq _RobotStuck __RobotStuck)
   (setq _PowerState __PowerState)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Vx
   (&optional __Vx)
   (if __Vx (setq _Vx __Vx)) _Vx)
  (:Vy
   (&optional __Vy)
   (if __Vy (setq _Vy __Vy)) _Vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:RobotStuck
   (&optional (__RobotStuck :null))
   (if (not (eq __RobotStuck :null)) (setq _RobotStuck __RobotStuck)) _RobotStuck)
  (:PowerState
   (&optional (__PowerState :null))
   (if (not (eq __PowerState :null)) (setq _PowerState __PowerState)) _PowerState)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _Vx
    4
    ;; float32 _Vy
    4
    ;; float32 _w
    4
    ;; bool _RobotStuck
    1
    ;; bool _PowerState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _Vx
       (sys::poke _Vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vy
       (sys::poke _Vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _RobotStuck
       (if _RobotStuck (write-byte -1 s) (write-byte 0 s))
     ;; bool _PowerState
       (if _PowerState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _Vx
     (setq _Vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vy
     (setq _Vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _RobotStuck
     (setq _RobotStuck (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _PowerState
     (setq _PowerState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sena_msgs::OdomInfo :md5sum-) "b4f534aa8c080899ef112a410cc2c113")
(setf (get sena_msgs::OdomInfo :datatype-) "sena_msgs/OdomInfo")
(setf (get sena_msgs::OdomInfo :definition-)
      "Header header
float32 Vx
float32 Vy
float32 w
bool    RobotStuck
bool    PowerState

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sena_msgs/OdomInfo "b4f534aa8c080899ef112a410cc2c113")


