; Auto-generated. Do not edit!


(cl:in-package first_pack-srv)


;//! \htmlinclude multiple-request.msg.html

(cl:defclass <multiple-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass multiple-request (<multiple-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multiple-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multiple-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_pack-srv:<multiple-request> is deprecated: use first_pack-srv:multiple-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <multiple-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pack-srv:a-val is deprecated.  Use first_pack-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <multiple-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pack-srv:b-val is deprecated.  Use first_pack-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multiple-request>) ostream)
  "Serializes a message object of type '<multiple-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multiple-request>) istream)
  "Deserializes a message object of type '<multiple-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multiple-request>)))
  "Returns string type for a service object of type '<multiple-request>"
  "first_pack/multipleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiple-request)))
  "Returns string type for a service object of type 'multiple-request"
  "first_pack/multipleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multiple-request>)))
  "Returns md5sum for a message object of type '<multiple-request>"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multiple-request)))
  "Returns md5sum for a message object of type 'multiple-request"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multiple-request>)))
  "Returns full string definition for message of type '<multiple-request>"
  (cl:format cl:nil "# Inputs/Request~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multiple-request)))
  "Returns full string definition for message of type 'multiple-request"
  (cl:format cl:nil "# Inputs/Request~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multiple-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multiple-request>))
  "Converts a ROS message object to a list"
  (cl:list 'multiple-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude multiple-response.msg.html

(cl:defclass <multiple-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass multiple-response (<multiple-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multiple-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multiple-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_pack-srv:<multiple-response> is deprecated: use first_pack-srv:multiple-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <multiple-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_pack-srv:result-val is deprecated.  Use first_pack-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multiple-response>) ostream)
  "Serializes a message object of type '<multiple-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multiple-response>) istream)
  "Deserializes a message object of type '<multiple-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multiple-response>)))
  "Returns string type for a service object of type '<multiple-response>"
  "first_pack/multipleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiple-response)))
  "Returns string type for a service object of type 'multiple-response"
  "first_pack/multipleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multiple-response>)))
  "Returns md5sum for a message object of type '<multiple-response>"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multiple-response)))
  "Returns md5sum for a message object of type 'multiple-response"
  "a7d7d7065d45755acef7d4dcf908162a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multiple-response>)))
  "Returns full string definition for message of type '<multiple-response>"
  (cl:format cl:nil "# Output/Response~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multiple-response)))
  "Returns full string definition for message of type 'multiple-response"
  (cl:format cl:nil "# Output/Response~%int32 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multiple-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multiple-response>))
  "Converts a ROS message object to a list"
  (cl:list 'multiple-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'multiple)))
  'multiple-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'multiple)))
  'multiple-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multiple)))
  "Returns string type for a service object of type '<multiple>"
  "first_pack/multiple")