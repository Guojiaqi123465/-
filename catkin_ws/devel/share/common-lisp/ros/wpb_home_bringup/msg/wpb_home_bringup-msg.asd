
(cl:in-package :asdf)

(defsystem "wpb_home_bringup-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motorpos" :depends-on ("_package_motorpos"))
    (:file "_package_motorpos" :depends-on ("_package"))
  ))