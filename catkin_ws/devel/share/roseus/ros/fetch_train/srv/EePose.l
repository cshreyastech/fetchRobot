;; Auto-generated. Do not edit!


(when (boundp 'fetch_train::EePose)
  (if (not (find-package "FETCH_TRAIN"))
    (make-package "FETCH_TRAIN"))
  (shadow 'EePose (find-package "FETCH_TRAIN")))
(unless (find-package "FETCH_TRAIN::EEPOSE")
  (make-package "FETCH_TRAIN::EEPOSE"))
(unless (find-package "FETCH_TRAIN::EEPOSEREQUEST")
  (make-package "FETCH_TRAIN::EEPOSEREQUEST"))
(unless (find-package "FETCH_TRAIN::EEPOSERESPONSE")
  (make-package "FETCH_TRAIN::EEPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass fetch_train::EePoseRequest
  :super ros::object
  :slots ())

(defmethod fetch_train::EePoseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass fetch_train::EePoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod fetch_train::EePoseResponse
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

(defclass fetch_train::EePose
  :super ros::object
  :slots ())

(setf (get fetch_train::EePose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get fetch_train::EePose :datatype-) "fetch_train/EePose")
(setf (get fetch_train::EePose :request) fetch_train::EePoseRequest)
(setf (get fetch_train::EePose :response) fetch_train::EePoseResponse)

(defmethod fetch_train::EePoseRequest
  (:response () (instance fetch_train::EePoseResponse :init)))

(setf (get fetch_train::EePoseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get fetch_train::EePoseRequest :datatype-) "fetch_train/EePoseRequest")
(setf (get fetch_train::EePoseRequest :definition-)
      "
---
geometry_msgs/Pose pose

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
")

(setf (get fetch_train::EePoseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get fetch_train::EePoseResponse :datatype-) "fetch_train/EePoseResponse")
(setf (get fetch_train::EePoseResponse :definition-)
      "
---
geometry_msgs/Pose pose

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
")



(provide :fetch_train/EePose "f192399f711a48924df9a394d37edd67")


