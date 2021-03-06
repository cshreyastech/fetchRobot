; Auto-generated. Do not edit!


(cl:in-package fetch_train-srv)


;//! \htmlinclude JointTraj-request.msg.html

(cl:defclass <JointTraj-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type trajectory_msgs-msg:JointTrajectoryPoint
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint)))
)

(cl:defclass JointTraj-request (<JointTraj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointTraj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointTraj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fetch_train-srv:<JointTraj-request> is deprecated: use fetch_train-srv:JointTraj-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <JointTraj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_train-srv:point-val is deprecated.  Use fetch_train-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointTraj-request>) ostream)
  "Serializes a message object of type '<JointTraj-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointTraj-request>) istream)
  "Deserializes a message object of type '<JointTraj-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointTraj-request>)))
  "Returns string type for a service object of type '<JointTraj-request>"
  "fetch_train/JointTrajRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointTraj-request)))
  "Returns string type for a service object of type 'JointTraj-request"
  "fetch_train/JointTrajRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointTraj-request>)))
  "Returns md5sum for a message object of type '<JointTraj-request>"
  "3fc8a9e27b55b9b20a2c846f9e053a5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointTraj-request)))
  "Returns md5sum for a message object of type 'JointTraj-request"
  "3fc8a9e27b55b9b20a2c846f9e053a5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointTraj-request>)))
  "Returns full string definition for message of type '<JointTraj-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint point~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointTraj-request)))
  "Returns full string definition for message of type 'JointTraj-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint point~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointTraj-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointTraj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointTraj-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude JointTraj-response.msg.html

(cl:defclass <JointTraj-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass JointTraj-response (<JointTraj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointTraj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointTraj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fetch_train-srv:<JointTraj-response> is deprecated: use fetch_train-srv:JointTraj-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <JointTraj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_train-srv:success-val is deprecated.  Use fetch_train-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <JointTraj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fetch_train-srv:message-val is deprecated.  Use fetch_train-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointTraj-response>) ostream)
  "Serializes a message object of type '<JointTraj-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointTraj-response>) istream)
  "Deserializes a message object of type '<JointTraj-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointTraj-response>)))
  "Returns string type for a service object of type '<JointTraj-response>"
  "fetch_train/JointTrajResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointTraj-response)))
  "Returns string type for a service object of type 'JointTraj-response"
  "fetch_train/JointTrajResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointTraj-response>)))
  "Returns md5sum for a message object of type '<JointTraj-response>"
  "3fc8a9e27b55b9b20a2c846f9e053a5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointTraj-response)))
  "Returns md5sum for a message object of type 'JointTraj-response"
  "3fc8a9e27b55b9b20a2c846f9e053a5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointTraj-response>)))
  "Returns full string definition for message of type '<JointTraj-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointTraj-response)))
  "Returns full string definition for message of type 'JointTraj-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointTraj-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointTraj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointTraj-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointTraj)))
  'JointTraj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointTraj)))
  'JointTraj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointTraj)))
  "Returns string type for a service object of type '<JointTraj>"
  "fetch_train/JointTraj")