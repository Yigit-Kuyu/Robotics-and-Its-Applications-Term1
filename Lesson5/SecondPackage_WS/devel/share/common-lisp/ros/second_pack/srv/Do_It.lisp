; Auto-generated. Do not edit!


(cl:in-package second_pack-srv)


;//! \htmlinclude Do_It-request.msg.html

(cl:defclass <Do_It-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass Do_It-request (<Do_It-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Do_It-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Do_It-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_pack-srv:<Do_It-request> is deprecated: use second_pack-srv:Do_It-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Do_It-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_pack-srv:a-val is deprecated.  Use second_pack-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Do_It-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_pack-srv:b-val is deprecated.  Use second_pack-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Do_It-request>) ostream)
  "Serializes a message object of type '<Do_It-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Do_It-request>) istream)
  "Deserializes a message object of type '<Do_It-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Do_It-request>)))
  "Returns string type for a service object of type '<Do_It-request>"
  "second_pack/Do_ItRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Do_It-request)))
  "Returns string type for a service object of type 'Do_It-request"
  "second_pack/Do_ItRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Do_It-request>)))
  "Returns md5sum for a message object of type '<Do_It-request>"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Do_It-request)))
  "Returns md5sum for a message object of type 'Do_It-request"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Do_It-request>)))
  "Returns full string definition for message of type '<Do_It-request>"
  (cl:format cl:nil "# Request~%int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Do_It-request)))
  "Returns full string definition for message of type 'Do_It-request"
  (cl:format cl:nil "# Request~%int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Do_It-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Do_It-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Do_It-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude Do_It-response.msg.html

(cl:defclass <Do_It-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass Do_It-response (<Do_It-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Do_It-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Do_It-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name second_pack-srv:<Do_It-response> is deprecated: use second_pack-srv:Do_It-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Do_It-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader second_pack-srv:result-val is deprecated.  Use second_pack-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Do_It-response>) ostream)
  "Serializes a message object of type '<Do_It-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Do_It-response>) istream)
  "Deserializes a message object of type '<Do_It-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Do_It-response>)))
  "Returns string type for a service object of type '<Do_It-response>"
  "second_pack/Do_ItResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Do_It-response)))
  "Returns string type for a service object of type 'Do_It-response"
  "second_pack/Do_ItResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Do_It-response>)))
  "Returns md5sum for a message object of type '<Do_It-response>"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Do_It-response)))
  "Returns md5sum for a message object of type 'Do_It-response"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Do_It-response>)))
  "Returns full string definition for message of type '<Do_It-response>"
  (cl:format cl:nil "# Response~%int64 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Do_It-response)))
  "Returns full string definition for message of type 'Do_It-response"
  (cl:format cl:nil "# Response~%int64 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Do_It-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Do_It-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Do_It-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Do_It)))
  'Do_It-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Do_It)))
  'Do_It-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Do_It)))
  "Returns string type for a service object of type '<Do_It>"
  "second_pack/Do_It")