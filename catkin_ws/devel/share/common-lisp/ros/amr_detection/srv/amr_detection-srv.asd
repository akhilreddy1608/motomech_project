
(cl:in-package :asdf)

(defsystem "amr_detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Pose_message" :depends-on ("_package_Pose_message"))
    (:file "_package_Pose_message" :depends-on ("_package"))
  ))