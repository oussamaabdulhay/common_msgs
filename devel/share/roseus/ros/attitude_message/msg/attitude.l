;; Auto-generated. Do not edit!


(when (boundp 'attitude_message::attitude)
  (if (not (find-package "ATTITUDE_MESSAGE"))
    (make-package "ATTITUDE_MESSAGE"))
  (shadow 'attitude (find-package "ATTITUDE_MESSAGE")))
(unless (find-package "ATTITUDE_MESSAGE::ATTITUDE")
  (make-package "ATTITUDE_MESSAGE::ATTITUDE"))

(in-package "ROS")
;;//! \htmlinclude attitude.msg.html


(defclass attitude_message::attitude
  :super ros::object
  :slots (_pitch _roll ))

(defmethod attitude_message::attitude
  (:init
   (&key
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get attitude_message::attitude :md5sum-) "b1f10c59316744f5ae4c3db11604b74f")
(setf (get attitude_message::attitude :datatype-) "attitude_message/attitude")
(setf (get attitude_message::attitude :definition-)
      "float32 pitch
float32 roll

")



(provide :attitude_message/attitude "b1f10c59316744f5ae4c3db11604b74f")


