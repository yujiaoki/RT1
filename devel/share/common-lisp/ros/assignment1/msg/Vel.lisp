; Auto-generated. Do not edit!


(cl:in-package assignment1-msg)


;//! \htmlinclude Vel.msg.html

(cl:defclass <Vel> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0))
)

(cl:defclass Vel (<Vel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment1-msg:<Vel> is deprecated: use assignment1-msg:Vel instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment1-msg:name-val is deprecated.  Use assignment1-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment1-msg:vx-val is deprecated.  Use assignment1-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <Vel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment1-msg:vy-val is deprecated.  Use assignment1-msg:vy instead.")
  (vy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vel>) ostream)
  "Serializes a message object of type '<Vel>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vel>) istream)
  "Deserializes a message object of type '<Vel>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vel>)))
  "Returns string type for a message object of type '<Vel>"
  "assignment1/Vel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vel)))
  "Returns string type for a message object of type 'Vel"
  "assignment1/Vel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vel>)))
  "Returns md5sum for a message object of type '<Vel>"
  "6d833d480c3eb8ae23bf95ade0fb8ca0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vel)))
  "Returns md5sum for a message object of type 'Vel"
  "6d833d480c3eb8ae23bf95ade0fb8ca0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vel>)))
  "Returns full string definition for message of type '<Vel>"
  (cl:format cl:nil "string name~%float32 vx~%float32 vy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vel)))
  "Returns full string definition for message of type 'Vel"
  (cl:format cl:nil "string name~%float32 vx~%float32 vy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vel>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vel>))
  "Converts a ROS message object to a list"
  (cl:list 'Vel
    (cl:cons ':name (name msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
))
