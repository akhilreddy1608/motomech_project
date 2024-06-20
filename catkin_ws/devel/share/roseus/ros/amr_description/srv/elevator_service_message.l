;; Auto-generated. Do not edit!


(when (boundp 'amr_description::elevator_service_message)
  (if (not (find-package "AMR_DESCRIPTION"))
    (make-package "AMR_DESCRIPTION"))
  (shadow 'elevator_service_message (find-package "AMR_DESCRIPTION")))
(unless (find-package "AMR_DESCRIPTION::ELEVATOR_SERVICE_MESSAGE")
  (make-package "AMR_DESCRIPTION::ELEVATOR_SERVICE_MESSAGE"))
(unless (find-package "AMR_DESCRIPTION::ELEVATOR_SERVICE_MESSAGEREQUEST")
  (make-package "AMR_DESCRIPTION::ELEVATOR_SERVICE_MESSAGEREQUEST"))
(unless (find-package "AMR_DESCRIPTION::ELEVATOR_SERVICE_MESSAGERESPONSE")
  (make-package "AMR_DESCRIPTION::ELEVATOR_SERVICE_MESSAGERESPONSE"))

(in-package "ROS")





(defclass amr_description::elevator_service_messageRequest
  :super ros::object
  :slots (_elevator ))

(defmethod amr_description::elevator_service_messageRequest
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

(defclass amr_description::elevator_service_messageResponse
  :super ros::object
  :slots (_success ))

(defmethod amr_description::elevator_service_messageResponse
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

(defclass amr_description::elevator_service_message
  :super ros::object
  :slots ())

(setf (get amr_description::elevator_service_message :md5sum-) "0ac04e9a8dcf75f07af625da2a4fd966")
(setf (get amr_description::elevator_service_message :datatype-) "amr_description/elevator_service_message")
(setf (get amr_description::elevator_service_message :request) amr_description::elevator_service_messageRequest)
(setf (get amr_description::elevator_service_message :response) amr_description::elevator_service_messageResponse)

(defmethod amr_description::elevator_service_messageRequest
  (:response () (instance amr_description::elevator_service_messageResponse :init)))

(setf (get amr_description::elevator_service_messageRequest :md5sum-) "0ac04e9a8dcf75f07af625da2a4fd966")
(setf (get amr_description::elevator_service_messageRequest :datatype-) "amr_description/elevator_service_messageRequest")
(setf (get amr_description::elevator_service_messageRequest :definition-)
      "string elevator   # use \"up\" or \"down\" 
---
bool success      # task reached

")

(setf (get amr_description::elevator_service_messageResponse :md5sum-) "0ac04e9a8dcf75f07af625da2a4fd966")
(setf (get amr_description::elevator_service_messageResponse :datatype-) "amr_description/elevator_service_messageResponse")
(setf (get amr_description::elevator_service_messageResponse :definition-)
      "string elevator   # use \"up\" or \"down\" 
---
bool success      # task reached

")



(provide :amr_description/elevator_service_message "0ac04e9a8dcf75f07af625da2a4fd966")


