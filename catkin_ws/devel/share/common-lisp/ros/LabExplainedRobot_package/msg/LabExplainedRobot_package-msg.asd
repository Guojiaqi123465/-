
(cl:in-package :asdf)

(defsystem "LabExplainedRobot_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "face_detect" :depends-on ("_package_face_detect"))
    (:file "_package_face_detect" :depends-on ("_package"))
  ))