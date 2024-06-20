
(cl:in-package :asdf)

(defsystem "amr_description-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ElevatorServiceMessage" :depends-on ("_package_ElevatorServiceMessage"))
    (:file "_package_ElevatorServiceMessage" :depends-on ("_package"))
  ))