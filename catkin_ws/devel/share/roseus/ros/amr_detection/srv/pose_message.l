;; Auto-generated. Do not edit!


(when (boundp 'amr_detection::pose_message)
  (if (not (find-package "AMR_DETECTION"))
    (make-package "AMR_DETECTION"))
  (shadow 'pose_message (find-package "AMR_DETECTION")))
(unless (find-package "AMR_DETECTION::POSE_MESSAGE")
  (make-package "AMR_DETECTION::POSE_MESSAGE"))
(unless (find-package "AMR_DETECTION::POSE_MESSAGEREQUEST")
  (make-package "AMR_DETECTION::POSE_MESSAGEREQUEST"))
(unless (find-package "AMR_DETECTION::POSE_MESSAGERESPONSE")
  (make-package "AMR_DETECTION::POSE_MESSAGERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass amr_detection::pose_messageRequest
  :super ros::object
  :slots ())

(defmethod amr_detection::pose_messageRequest
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

(defclass amr_detection::pose_messageResponse
  :super ros::object
  :slots (_pose ))

(defmethod amr_detection::pose_messageResponse
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

(defclass amr_detection::pose_message
  :super ros::object
  :slots ())

(setf (get amr_detection::pose_message :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get amr_detection::pose_message :datatype-) "amr_detection/pose_message")
(setf (get amr_detection::pose_message :request) amr_detection::pose_messageRequest)
(setf (get amr_detection::pose_message :response) amr_detection::pose_messageResponse)

(defmethod amr_detection::pose_messageRequest
  (:response () (instance amr_detection::pose_messageResponse :init)))

(setf (get amr_detection::pose_messageRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get amr_detection::pose_messageRequest :datatype-) "amr_detection/pose_messageRequest")
(setf (get amr_detection::pose_messageRequest :definition-)
      "
---
geometry_msgs/Pose pose       # pose between the base link and europallet center frame




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

(setf (get amr_detection::pose_messageResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get amr_detection::pose_messageResponse :datatype-) "amr_detection/pose_messageResponse")
(setf (get amr_detection::pose_messageResponse :definition-)
      "
---
geometry_msgs/Pose pose       # pose between the base link and europallet center frame




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



(provide :amr_detection/pose_message "f192399f711a48924df9a394d37edd67")


