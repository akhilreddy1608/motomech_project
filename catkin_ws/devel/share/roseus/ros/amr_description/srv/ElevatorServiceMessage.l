;; Auto-generated. Do not edit!


(when (boundp 'amr_description::ElevatorServiceMessage)
  (if (not (find-package "AMR_DESCRIPTION"))
    (make-package "AMR_DESCRIPTION"))
  (shadow 'ElevatorServiceMessage (find-package "AMR_DESCRIPTION")))
(unless (find-package "AMR_DESCRIPTION::ELEVATORSERVICEMESSAGE")
  (make-package "AMR_DESCRIPTION::ELEVATORSERVICEMESSAGE"))
(unless (find-package "AMR_DESCRIPTION::ELEVATORSERVICEMESSAGEREQUEST")
  (make-package "AMR_DESCRIPTION::ELEVATORSERVICEMESSAGEREQUEST"))
(unless (find-package "AMR_DESCRIPTION::ELEVATORSERVICEMESSAGERESPONSE")
  (make-package "AMR_DESCRIPTION::ELEVATORSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass amr_description::ElevatorServiceMessageRequest
  :super ros::object
  :slots (_elevator ))

(defmethod amr_description::ElevatorServiceMessageRequest
  (:init
   (&key
    ((:elevator __elevator) "")
    )
   (send-super :init)
   (setq _elevator (string __elevator))
   self)
  (:elevator
   (&optional __elevator)
   (if __elevator (setq _elevator __elevator)) _elevator)
  (:serialization-length
   ()
   (+
    ;; string _elevator
    4 (length _elevator)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _elevator
       (write-long (length _elevator) s) (princ _elevator s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _elevator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass amr_description::ElevatorServiceMessageResponse
  :super ros::object
  :slots (_success ))

(defmethod amr_description::ElevatorServiceMessageResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass amr_description::ElevatorServiceMessage
  :super ros::object
  :slots ())

(setf (get amr_description::ElevatorServiceMessage :md5sum-) "0ac04e9a8dcf75f07af625da2a4fd966")
(setf (get amr_description::ElevatorServiceMessage :datatype-) "amr_description/ElevatorServiceMessage")
(setf (get amr_description::ElevatorServiceMessage :request) amr_description::ElevatorServiceMessageRequest)
(setf (get amr_description::ElevatorServiceMessage :response) amr_description::ElevatorServiceMessageResponse)

(defmethod amr_description::ElevatorServiceMessageRequest
  (:response () (instance amr_description::ElevatorServiceMessageResponse :init)))

(setf (get amr_description::ElevatorServiceMessageRequest :md5sum-) "0ac04e9a8dcf75f07af625da2a4fd966")
(setf (get amr_description::ElevatorServiceMessageRequest :datatype-) "amr_description/ElevatorServiceMessageRequest")
(setf (get amr_description::ElevatorServiceMessageRequest :definition-)
      "string elevator   # use \"up\" or \"down\" 
---
bool success      # task reached

")

(setf (get amr_description::ElevatorServiceMessageResponse :md5sum-) "0ac04e9a8dcf75f07af625da2a4fd966")
(setf (get amr_description::ElevatorServiceMessageResponse :datatype-) "amr_description/ElevatorServiceMessageResponse")
(setf (get amr_description::ElevatorServiceMessageResponse :definition-)
      "string elevator   # use \"up\" or \"down\" 
---
bool success      # task reached

")



(provide :amr_description/ElevatorServiceMessage "0ac04e9a8dcf75f07af625da2a4fd966")


