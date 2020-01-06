; Auto-generated. Do not edit!


(cl:in-package attitude_message-msg)


;//! \htmlinclude attitude.msg.html

(cl:defclass <attitude> (roslisp-msg-protocol:ros-message)
  ((pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass attitude (<attitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <attitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'attitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name attitude_message-msg:<attitude> is deprecated: use attitude_message-msg:attitude instead.")))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attitude_message-msg:pitch-val is deprecated.  Use attitude_message-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader attitude_message-msg:roll-val is deprecated.  Use attitude_message-msg:roll instead.")
  (roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <attitude>) ostream)
  "Serializes a message object of type '<attitude>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <attitude>) istream)
  "Deserializes a message object of type '<attitude>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<attitude>)))
  "Returns string type for a message object of type '<attitude>"
  "attitude_message/attitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'attitude)))
  "Returns string type for a message object of type 'attitude"
  "attitude_message/attitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<attitude>)))
  "Returns md5sum for a message object of type '<attitude>"
  "b1f10c59316744f5ae4c3db11604b74f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'attitude)))
  "Returns md5sum for a message object of type 'attitude"
  "b1f10c59316744f5ae4c3db11604b74f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<attitude>)))
  "Returns full string definition for message of type '<attitude>"
  (cl:format cl:nil "float32 pitch~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'attitude)))
  "Returns full string definition for message of type 'attitude"
  (cl:format cl:nil "float32 pitch~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <attitude>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <attitude>))
  "Converts a ROS message object to a list"
  (cl:list 'attitude
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
))
