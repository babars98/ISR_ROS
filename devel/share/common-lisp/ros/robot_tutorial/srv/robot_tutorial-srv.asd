
(cl:in-package :asdf)

(defsystem "robot_tutorial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageAngle" :depends-on ("_package_ImageAngle"))
    (:file "_package_ImageAngle" :depends-on ("_package"))
    (:file "OddEvenCheck" :depends-on ("_package_OddEvenCheck"))
    (:file "_package_OddEvenCheck" :depends-on ("_package"))
  ))