;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_controller::Vel)
  (if (not (find-package "TURTLEBOT_CONTROLLER"))
    (make-package "TURTLEBOT_CONTROLLER"))
  (shadow 'Vel (find-package "TURTLEBOT_CONTROLLER")))
(unless (find-package "TURTLEBOT_CONTROLLER::VEL")
  (make-package "TURTLEBOT_CONTROLLER::VEL"))

(in-package "ROS")
;;//! \htmlinclude Vel.msg.html


(defclass turtlebot_controller::Vel
  :super ros::object
  :slots (_name _vel ))

(defmethod turtlebot_controller::Vel
  (:init
   (&key
    ((:name __name) "")
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _vel (float __vel))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlebot_controller::Vel :md5sum-) "0cf99747c25a22990a63da10629b2c8c")
(setf (get turtlebot_controller::Vel :datatype-) "turtlebot_controller/Vel")
(setf (get turtlebot_controller::Vel :definition-)
      "string name
float32 vel
")



(provide :turtlebot_controller/Vel "0cf99747c25a22990a63da10629b2c8c")


