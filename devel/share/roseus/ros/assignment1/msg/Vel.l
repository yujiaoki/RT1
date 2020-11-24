;; Auto-generated. Do not edit!


(when (boundp 'assignment1::Vel)
  (if (not (find-package "ASSIGNMENT1"))
    (make-package "ASSIGNMENT1"))
  (shadow 'Vel (find-package "ASSIGNMENT1")))
(unless (find-package "ASSIGNMENT1::VEL")
  (make-package "ASSIGNMENT1::VEL"))

(in-package "ROS")
;;//! \htmlinclude Vel.msg.html


(defclass assignment1::Vel
  :super ros::object
  :slots (_name _vx _vy ))

(defmethod assignment1::Vel
  (:init
   (&key
    ((:name __name) "")
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment1::Vel :md5sum-) "6d833d480c3eb8ae23bf95ade0fb8ca0")
(setf (get assignment1::Vel :datatype-) "assignment1/Vel")
(setf (get assignment1::Vel :definition-)
      "string name
float32 vx
float32 vy
")



(provide :assignment1/Vel "6d833d480c3eb8ae23bf95ade0fb8ca0")


