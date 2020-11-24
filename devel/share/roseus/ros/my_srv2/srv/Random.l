;; Auto-generated. Do not edit!


(when (boundp 'my_srv2::Random)
  (if (not (find-package "MY_SRV2"))
    (make-package "MY_SRV2"))
  (shadow 'Random (find-package "MY_SRV2")))
(unless (find-package "MY_SRV2::RANDOM")
  (make-package "MY_SRV2::RANDOM"))
(unless (find-package "MY_SRV2::RANDOMREQUEST")
  (make-package "MY_SRV2::RANDOMREQUEST"))
(unless (find-package "MY_SRV2::RANDOMRESPONSE")
  (make-package "MY_SRV2::RANDOMRESPONSE"))

(in-package "ROS")





(defclass my_srv2::RandomRequest
  :super ros::object
  :slots (_min _max ))

(defmethod my_srv2::RandomRequest
  (:init
   (&key
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float32 _min
    4
    ;; float32 _max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_srv2::RandomResponse
  :super ros::object
  :slots (_x _y ))

(defmethod my_srv2::RandomResponse
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

(defclass my_srv2::Random
  :super ros::object
  :slots ())

(setf (get my_srv2::Random :md5sum-) "a8aaa1c47035b235557a85c38913cbf8")
(setf (get my_srv2::Random :datatype-) "my_srv2/Random")
(setf (get my_srv2::Random :request) my_srv2::RandomRequest)
(setf (get my_srv2::Random :response) my_srv2::RandomResponse)

(defmethod my_srv2::RandomRequest
  (:response () (instance my_srv2::RandomResponse :init)))

(setf (get my_srv2::RandomRequest :md5sum-) "a8aaa1c47035b235557a85c38913cbf8")
(setf (get my_srv2::RandomRequest :datatype-) "my_srv2/RandomRequest")
(setf (get my_srv2::RandomRequest :definition-)
      "float32 min
float32 max
---
float32 x
float32 y

")

(setf (get my_srv2::RandomResponse :md5sum-) "a8aaa1c47035b235557a85c38913cbf8")
(setf (get my_srv2::RandomResponse :datatype-) "my_srv2/RandomResponse")
(setf (get my_srv2::RandomResponse :definition-)
      "float32 min
float32 max
---
float32 x
float32 y

")



(provide :my_srv2/Random "a8aaa1c47035b235557a85c38913cbf8")


