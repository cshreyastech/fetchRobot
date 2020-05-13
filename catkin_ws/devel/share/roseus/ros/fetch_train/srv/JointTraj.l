;; Auto-generated. Do not edit!


(when (boundp 'fetch_train::JointTraj)
  (if (not (find-package "FETCH_TRAIN"))
    (make-package "FETCH_TRAIN"))
  (shadow 'JointTraj (find-package "FETCH_TRAIN")))
(unless (find-package "FETCH_TRAIN::JOINTTRAJ")
  (make-package "FETCH_TRAIN::JOINTTRAJ"))
(unless (find-package "FETCH_TRAIN::JOINTTRAJREQUEST")
  (make-package "FETCH_TRAIN::JOINTTRAJREQUEST"))
(unless (find-package "FETCH_TRAIN::JOINTTRAJRESPONSE")
  (make-package "FETCH_TRAIN::JOINTTRAJRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass fetch_train::JointTrajRequest
  :super ros::object
  :slots (_point ))

(defmethod fetch_train::JointTrajRequest
  (:init
   (&key
    ((:point __point) (instance trajectory_msgs::JointTrajectoryPoint :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectoryPoint _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectoryPoint _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectoryPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass fetch_train::JointTrajResponse
  :super ros::object
  :slots (_success _message ))

(defmethod fetch_train::JointTrajResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass fetch_train::JointTraj
  :super ros::object
  :slots ())

(setf (get fetch_train::JointTraj :md5sum-) "3fc8a9e27b55b9b20a2c846f9e053a5c")
(setf (get fetch_train::JointTraj :datatype-) "fetch_train/JointTraj")
(setf (get fetch_train::JointTraj :request) fetch_train::JointTrajRequest)
(setf (get fetch_train::JointTraj :response) fetch_train::JointTrajResponse)

(defmethod fetch_train::JointTrajRequest
  (:response () (instance fetch_train::JointTrajResponse :init)))

(setf (get fetch_train::JointTrajRequest :md5sum-) "3fc8a9e27b55b9b20a2c846f9e053a5c")
(setf (get fetch_train::JointTrajRequest :datatype-) "fetch_train/JointTrajRequest")
(setf (get fetch_train::JointTrajRequest :definition-)
      "trajectory_msgs/JointTrajectoryPoint point

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
bool success
string message
")

(setf (get fetch_train::JointTrajResponse :md5sum-) "3fc8a9e27b55b9b20a2c846f9e053a5c")
(setf (get fetch_train::JointTrajResponse :datatype-) "fetch_train/JointTrajResponse")
(setf (get fetch_train::JointTrajResponse :definition-)
      "trajectory_msgs/JointTrajectoryPoint point

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
bool success
string message
")



(provide :fetch_train/JointTraj "3fc8a9e27b55b9b20a2c846f9e053a5c")


