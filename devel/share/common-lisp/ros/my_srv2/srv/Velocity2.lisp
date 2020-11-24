; Auto-generated. Do not edit!


(cl:in-package my_srv2-srv)


;//! \htmlinclude Velocity2-request.msg.html

(cl:defclass <Velocity2-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (xt
    :reader xt
    :initarg :xt
    :type cl:float
    :initform 0.0)
   (yt
    :reader yt
    :initarg :yt
    :type cl:float
    :initform 0.0))
)

(cl:defclass Velocity2-request (<Velocity2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Velocity2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Velocity2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_srv2-srv:<Velocity2-request> is deprecated: use my_srv2-srv:Velocity2-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Velocity2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_srv2-srv:x-val is deprecated.  Use my_srv2-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Velocity2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_srv2-srv:y-val is deprecated.  Use my_srv2-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'xt-val :lambda-list '(m))
(cl:defmethod xt-val ((m <Velocity2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_srv2-srv:xt-val is deprecated.  Use my_srv2-srv:xt instead.")
  (xt m))

(cl:ensure-generic-function 'yt-val :lambda-list '(m))
(cl:defmethod yt-val ((m <Velocity2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_srv2-srv:yt-val is deprecated.  Use my_srv2-srv:yt instead.")
  (yt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Velocity2-request>) ostream)
  "Serializes a message object of type '<Velocity2-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Velocity2-request>) istream)
  "Deserializes a message object of type '<Velocity2-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Velocity2-request>)))
  "Returns string type for a service object of type '<Velocity2-request>"
  "my_srv2/Velocity2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Velocity2-request)))
  "Returns string type for a service object of type 'Velocity2-request"
  "my_srv2/Velocity2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Velocity2-request>)))
  "Returns md5sum for a message object of type '<Velocity2-request>"
  "383299a41e921f0911e14981849d6e64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Velocity2-request)))
  "Returns md5sum for a message object of type 'Velocity2-request"
  "383299a41e921f0911e14981849d6e64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Velocity2-request>)))
  "Returns full string definition for message of type '<Velocity2-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 xt~%float32 yt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Velocity2-request)))
  "Returns full string definition for message of type 'Velocity2-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 xt~%float32 yt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Velocity2-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Velocity2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Velocity2-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':xt (xt msg))
    (cl:cons ':yt (yt msg))
))
;//! \htmlinclude Velocity2-response.msg.html

(cl:defclass <Velocity2-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Velocity2-response (<Velocity2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Velocity2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Velocity2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_srv2-srv:<Velocity2-response> is deprecated: use my_srv2-srv:Velocity2-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Velocity2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_srv2-srv:x-val is deprecated.  Use my_srv2-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Velocity2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_srv2-srv:y-val is deprecated.  Use my_srv2-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Velocity2-response>) ostream)
  "Serializes a message object of type '<Velocity2-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Velocity2-response>) istream)
  "Deserializes a message object of type '<Velocity2-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Velocity2-response>)))
  "Returns string type for a service object of type '<Velocity2-response>"
  "my_srv2/Velocity2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Velocity2-response)))
  "Returns string type for a service object of type 'Velocity2-response"
  "my_srv2/Velocity2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Velocity2-response>)))
  "Returns md5sum for a message object of type '<Velocity2-response>"
  "383299a41e921f0911e14981849d6e64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Velocity2-response)))
  "Returns md5sum for a message object of type 'Velocity2-response"
  "383299a41e921f0911e14981849d6e64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Velocity2-response>)))
  "Returns full string definition for message of type '<Velocity2-response>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Velocity2-response)))
  "Returns full string definition for message of type 'Velocity2-response"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Velocity2-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Velocity2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Velocity2-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Velocity2)))
  'Velocity2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Velocity2)))
  'Velocity2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Velocity2)))
  "Returns string type for a service object of type '<Velocity2>"
  "my_srv2/Velocity2")