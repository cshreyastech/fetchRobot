;; Auto-generated. Do not edit!


(when (boundp 'fetch_train::EeRpy)
  (if (not (find-package "FETCH_TRAIN"))
    (make-package "FETCH_TRAIN"))
  (shadow 'EeRpy (find-package "FETCH_TRAIN")))
(unless (find-package "FETCH_TRAIN::EERPY")
  (make-package "FETCH_TRAIN::EERPY"))
(unless (find-package "FETCH_TRAIN::EERPYREQUEST")
  (make-package "FETCH_TRAIN::EERPYREQUEST"))
(unless (find-package "FETCH_TRAIN::EERPYRESPONSE")
  (make-package "FETCH_TRAIN::EERPYRESPONSE"))

(in-package "ROS")





(defclass fetch_train::EeRpyRequest
  :super ros::object
  :slots ())

(defmethod fetch_train::EeRpyRequest
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

(defclass fetch_train::EeRpyResponse
  :super ros::object
  :slots (_r _p _y ))

(defmethod fetch_train::EeRpyResponse
  (:init
   (&key
    ((:r __r) 0.0)
    ((:p __p) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _r (float __r))
   (setq _p (float __p))
   (setq _y (float __y))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _r
    4
    ;; float32 _p
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass fetch_train::EeRpy
  :super ros::object
  :slots ())

(setf (get fetch_train::EeRpy :md5sum-) "cfb6f20560ab4d9cc1d682755cf3b5d4")
(setf (get fetch_train::EeRpy :datatype-) "fetch_train/EeRpy")
(setf (get fetch_train::EeRpy :request) fetch_train::EeRpyRequest)
(setf (get fetch_train::EeRpy :response) fetch_train::EeRpyResponse)

(defmethod fetch_train::EeRpyRequest
  (:response () (instance fetch_train::EeRpyResponse :init)))

(setf (get fetch_train::EeRpyRequest :md5sum-) "cfb6f20560ab4d9cc1d682755cf3b5d4")
(setf (get fetch_train::EeRpyRequest :datatype-) "fetch_train/EeRpyRequest")
(setf (get fetch_train::EeRpyRequest :definition-)
      "
---
float32 r
float32 p
float32 y
")

(setf (get fetch_train::EeRpyResponse :md5sum-) "cfb6f20560ab4d9cc1d682755cf3b5d4")
(setf (get fetch_train::EeRpyResponse :datatype-) "fetch_train/EeRpyResponse")
(setf (get fetch_train::EeRpyResponse :definition-)
      "
---
float32 r
float32 p
float32 y
")



(provide :fetch_train/EeRpy "cfb6f20560ab4d9cc1d682755cf3b5d4")


