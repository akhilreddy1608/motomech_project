
(cl:in-package :asdf)

(defsystem "amr_localization-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Poi_message" :depends-on ("_package_Poi_message"))
    (:file "_package_Poi_message" :depends-on ("_package"))
  ))