;; Auto-generated. Do not edit!


(when (boundp 'robot_tutorial::OddEvenCheck)
  (if (not (find-package "ROBOT_TUTORIAL"))
    (make-package "ROBOT_TUTORIAL"))
  (shadow 'OddEvenCheck (find-package "ROBOT_TUTORIAL")))
(unless (find-package "ROBOT_TUTORIAL::ODDEVENCHECK")
  (make-package "ROBOT_TUTORIAL::ODDEVENCHECK"))
(unless (find-package "ROBOT_TUTORIAL::ODDEVENCHECKREQUEST")
  (make-package "ROBOT_TUTORIAL::ODDEVENCHECKREQUEST"))
(unless (find-package "ROBOT_TUTORIAL::ODDEVENCHECKRESPONSE")
  (make-package "ROBOT_TUTORIAL::ODDEVENCHECKRESPONSE"))

(in-package "ROS")





(defclass robot_tutorial::OddEvenCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod robot_tutorial::OddEvenCheckRequest
  (:init
   (&key
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_tutorial::OddEvenCheckResponse
  :super ros::object
  :slots (_answer ))

(defmethod robot_tutorial::OddEvenCheckResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_tutorial::OddEvenCheck
  :super ros::object
  :slots ())

(setf (get robot_tutorial::OddEvenCheck :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get robot_tutorial::OddEvenCheck :datatype-) "robot_tutorial/OddEvenCheck")
(setf (get robot_tutorial::OddEvenCheck :request) robot_tutorial::OddEvenCheckRequest)
(setf (get robot_tutorial::OddEvenCheck :response) robot_tutorial::OddEvenCheckResponse)

(defmethod robot_tutorial::OddEvenCheckRequest
  (:response () (instance robot_tutorial::OddEvenCheckResponse :init)))

(setf (get robot_tutorial::OddEvenCheckRequest :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get robot_tutorial::OddEvenCheckRequest :datatype-) "robot_tutorial/OddEvenCheckRequest")
(setf (get robot_tutorial::OddEvenCheckRequest :definition-)
      "int32 number
---
string answer

")

(setf (get robot_tutorial::OddEvenCheckResponse :md5sum-) "4ff0b0ab1ed04611e3a2b4090af9ee4f")
(setf (get robot_tutorial::OddEvenCheckResponse :datatype-) "robot_tutorial/OddEvenCheckResponse")
(setf (get robot_tutorial::OddEvenCheckResponse :definition-)
      "int32 number
---
string answer

")



(provide :robot_tutorial/OddEvenCheck "4ff0b0ab1ed04611e3a2b4090af9ee4f")


