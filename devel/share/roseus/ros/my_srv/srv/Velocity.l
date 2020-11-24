;; Auto-generated. Do not edit!


(when (boundp 'my_srv::Velocity)
  (if (not (find-package "MY_SRV"))
    (make-package "MY_SRV"))
  (shadow 'Velocity (find-package "MY_SRV")))
(unless (find-package "MY_SRV::VELOCITY")
  (make-package "MY_SRV::VELOCITY"))
(unless (find-package "MY_SRV::VELOCITYREQUEST")
  (make-package "MY_SRV::VELOCITYREQUEST"))
(unless (find-package "MY_SRV::VELOCITYRESPONSE")
  (make-package "MY_SRV::VELOCITYRESPONSE"))

(in-package "ROS")





(defclass my_srv::VelocityRequest
  :super ros::object
  :slots (_x ))

(defmethod my_srv::VelocityRequest
  (:init
   (&key
    ((:x __x) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_srv::VelocityResponse
  :super ros::object
  :slots (_x ))

(defmethod my_srv::VelocityResponse
  (:init
   (&key
    ((:x __x) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_srv::Velocity
  :super ros::object
  :slots ())

(setf (get my_srv::Velocity :md5sum-) "40ea698aabf8704efca157e322fec61c")
(setf (get my_srv::Velocity :datatype-) "my_srv/Velocity")
(setf (get my_srv::Velocity :request) my_srv::VelocityRequest)
(setf (get my_srv::Velocity :response) my_srv::VelocityResponse)

(defmethod my_srv::VelocityRequest
  (:response () (instance my_srv::VelocityResponse :init)))

(setf (get my_srv::VelocityRequest :md5sum-) "40ea698aabf8704efca157e322fec61c")
(setf (get my_srv::VelocityRequest :datatype-) "my_srv/VelocityRequest")
(setf (get my_srv::VelocityRequest :definition-)
      "float32 x
---
float32 x

")

(setf (get my_srv::VelocityResponse :md5sum-) "40ea698aabf8704efca157e322fec61c")
(setf (get my_srv::VelocityResponse :datatype-) "my_srv/VelocityResponse")
(setf (get my_srv::VelocityResponse :definition-)
      "float32 x
---
float32 x

")



(provide :my_srv/Velocity "40ea698aabf8704efca157e322fec61c")


