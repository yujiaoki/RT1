;; Auto-generated. Do not edit!


(when (boundp 'my_srv2::Velocity2)
  (if (not (find-package "MY_SRV2"))
    (make-package "MY_SRV2"))
  (shadow 'Velocity2 (find-package "MY_SRV2")))
(unless (find-package "MY_SRV2::VELOCITY2")
  (make-package "MY_SRV2::VELOCITY2"))
(unless (find-package "MY_SRV2::VELOCITY2REQUEST")
  (make-package "MY_SRV2::VELOCITY2REQUEST"))
(unless (find-package "MY_SRV2::VELOCITY2RESPONSE")
  (make-package "MY_SRV2::VELOCITY2RESPONSE"))

(in-package "ROS")





(defclass my_srv2::Velocity2Request
  :super ros::object
  :slots (_x _y _xt _yt ))

(defmethod my_srv2::Velocity2Request
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:xt __xt) 0.0)
    ((:yt __yt) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _xt (float __xt))
   (setq _yt (float __yt))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:xt
   (&optional __xt)
   (if __xt (setq _xt __xt)) _xt)
  (:yt
   (&optional __yt)
   (if __yt (setq _yt __yt)) _yt)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _xt
    4
    ;; float32 _yt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xt
       (sys::poke _xt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yt
       (sys::poke _yt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xt
     (setq _xt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yt
     (setq _yt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_srv2::Velocity2Response
  :super ros::object
  :slots (_x _y ))

(defmethod my_srv2::Velocity2Response
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_srv2::Velocity2
  :super ros::object
  :slots ())

(setf (get my_srv2::Velocity2 :md5sum-) "383299a41e921f0911e14981849d6e64")
(setf (get my_srv2::Velocity2 :datatype-) "my_srv2/Velocity2")
(setf (get my_srv2::Velocity2 :request) my_srv2::Velocity2Request)
(setf (get my_srv2::Velocity2 :response) my_srv2::Velocity2Response)

(defmethod my_srv2::Velocity2Request
  (:response () (instance my_srv2::Velocity2Response :init)))

(setf (get my_srv2::Velocity2Request :md5sum-) "383299a41e921f0911e14981849d6e64")
(setf (get my_srv2::Velocity2Request :datatype-) "my_srv2/Velocity2Request")
(setf (get my_srv2::Velocity2Request :definition-)
      "float32 x
float32 y
float32 xt
float32 yt
---
float32 x
float32 y

")

(setf (get my_srv2::Velocity2Response :md5sum-) "383299a41e921f0911e14981849d6e64")
(setf (get my_srv2::Velocity2Response :datatype-) "my_srv2/Velocity2Response")
(setf (get my_srv2::Velocity2Response :definition-)
      "float32 x
float32 y
float32 xt
float32 yt
---
float32 x
float32 y

")



(provide :my_srv2/Velocity2 "383299a41e921f0911e14981849d6e64")


