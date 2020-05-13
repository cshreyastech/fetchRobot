; Auto-generated. Do not edit!


(cl:in-package fetch_train-srv)


;//! \htmlinclude EeRpy-request.msg.html

(cl:defclass <EeRpy-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EeRpy-request (<EeRpy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeRpy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeRpy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fetch_train-srv:<EeRpy-request> is deprecated: use fetch_train-srv:EeRpy-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeRpy-request>) ostream)
  "Serializes a message object of type '<EeRpy-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeRpy-request>) istream)
  "Deserializes a message object of type '<EeRpy-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeRpy-request>)))
  "Returns string type for a service object of type '<EeRpy-request>"
  "fetch_train/EeRpyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeRpy-request)))
  "Returns string type for a service object of type 'EeRpy-request"
  "fetch_train/EeRpyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeRpy-request>)))
  "Returns md5sum for a message object of type '<EeRpy-request>"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeRpy-request)))
  "Returns md5sum for a message object of type 'EeRpy-request"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeRpy-request>)))
  "Returns full string definition for message of type '<EeRpy-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeRpy-request)))
  "Returns full string definition for message of type 'EeRpy-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeRpy-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeRpy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EeRpy-request
))
;//! \htmlinclude EeRpy-response.msg.html

(cl:defclass <EeRpy-response> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (p
    :reader p
    :initarg :p
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass EeRpy-response (<EeRpy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EeRpy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EeRpy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fetch_train-srv:<EeRpy-response> is deprecated: use fetch_train-srv:EeRpy-response instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <EeRpy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_train-srv:r-val is deprecated.  Use fetch_train-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <EeRpy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_train-srv:p-val is deprecated.  Use fetch_train-srv:p instead.")
  (p m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <EeRpy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_train-srv:y-val is deprecated.  Use fetch_train-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EeRpy-response>) ostream)
  "Serializes a message object of type '<EeRpy-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EeRpy-response>) istream)
  "Deserializes a message object of type '<EeRpy-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EeRpy-response>)))
  "Returns string type for a service object of type '<EeRpy-response>"
  "fetch_train/EeRpyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeRpy-response)))
  "Returns string type for a service object of type 'EeRpy-response"
  "fetch_train/EeRpyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EeRpy-response>)))
  "Returns md5sum for a message object of type '<EeRpy-response>"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EeRpy-response)))
  "Returns md5sum for a message object of type 'EeRpy-response"
  "cfb6f20560ab4d9cc1d682755cf3b5d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EeRpy-response>)))
  "Returns full string definition for message of type '<EeRpy-response>"
  (cl:format cl:nil "float32 r~%float32 p~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EeRpy-response)))
  "Returns full string definition for message of type 'EeRpy-response"
  (cl:format cl:nil "float32 r~%float32 p~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EeRpy-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EeRpy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EeRpy-response
    (cl:cons ':r (r msg))
    (cl:cons ':p (p msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EeRpy)))
  'EeRpy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EeRpy)))
  'EeRpy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EeRpy)))
  "Returns string type for a service object of type '<EeRpy>"
  "fetch_train/EeRpy")