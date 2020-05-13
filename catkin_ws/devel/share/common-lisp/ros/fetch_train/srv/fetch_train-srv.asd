
(cl:in-package :asdf)

(defsystem "fetch_train-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "EePose" :depends-on ("_package_EePose"))
    (:file "_package_EePose" :depends-on ("_package"))
    (:file "EeRpy" :depends-on ("_package_EeRpy"))
    (:file "_package_EeRpy" :depends-on ("_package"))
    (:file "EeTraj" :depends-on ("_package_EeTraj"))
    (:file "_package_EeTraj" :depends-on ("_package"))
    (:file "JointTraj" :depends-on ("_package_JointTraj"))
    (:file "_package_JointTraj" :depends-on ("_package"))
  ))