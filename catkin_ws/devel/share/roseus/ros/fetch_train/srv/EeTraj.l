;; Auto-generated. Do not edit!


(when (boundp 'fetch_train::EeTraj)
  (if (not (find-package "FETCH_TRAIN"))
    (make-package "FETCH_TRAIN"))
  (shadow 'EeTraj (find-package "FETCH_TRAIN")))
(unless (find-package "FETCH_TRAIN::EETRAJ")
  (make-package "FETCH_TRAIN::EETRAJ"))
(unless (find-package "FETCH_TRAIN::EETRAJREQUEST")
  (make-package "FETCH_TRAIN::EETRAJREQUEST"))
(unless (find-package "FETCH_TRAIN::EETRAJRESPONSE")
  (make-package "FETCH_TRAIN::EETRAJRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass fetch_train::EeTrajRequest
  :super ros::object
  :slots (_pose ))

(defmethod fetch_train::EeTrajRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass fetch_train::EeTrajResponse
  :super ros::object
  :slots (_success _message ))

(defmethod fetch_train::EeTrajResponse
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

(defclass fetch_train::EeTraj
  :super ros::object
  :slots ())

(setf (get fetch_train::EeTraj :md5sum-) "28e4dd667b29bd35b516ba1d379b7529")
(setf (get fetch_train::EeTraj :datatype-) "fetch_train/EeTraj")
(setf (get fetch_train::EeTraj :request) fetch_train::EeTrajRequest)
(setf (get fetch_train::EeTraj :response) fetch_train::EeTrajResponse)

(defmethod fetch_train::EeTrajRequest
  (:response () (instance fetch_train::EeTrajResponse :init)))

(setf (get fetch_train::EeTrajRequest :md5sum-) "28e4dd667b29bd35b516ba1d379b7529")
(setf (get fetch_train::EeTrajRequest :datatype-) "fetch_train/EeTrajRequest")
(setf (get fetch_train::EeTrajRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
string message
")

(setf (get fetch_train::EeTrajResponse :md5sum-) "28e4dd667b29bd35b516ba1d379b7529")
(setf (get fetch_train::EeTrajResponse :datatype-) "fetch_train/EeTrajResponse")
(setf (get fetch_train::EeTrajResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
string message
")



(provide :fetch_train/EeTraj "28e4dd667b29bd35b516ba1d379b7529")


