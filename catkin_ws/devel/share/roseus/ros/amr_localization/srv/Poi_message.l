;; Auto-generated. Do not edit!


(when (boundp 'amr_localization::Poi_message)
  (if (not (find-package "AMR_LOCALIZATION"))
    (make-package "AMR_LOCALIZATION"))
  (shadow 'Poi_message (find-package "AMR_LOCALIZATION")))
(unless (find-package "AMR_LOCALIZATION::POI_MESSAGE")
  (make-package "AMR_LOCALIZATION::POI_MESSAGE"))
(unless (find-package "AMR_LOCALIZATION::POI_MESSAGEREQUEST")
  (make-package "AMR_LOCALIZATION::POI_MESSAGEREQUEST"))
(unless (find-package "AMR_LOCALIZATION::POI_MESSAGERESPONSE")
  (make-package "AMR_LOCALIZATION::POI_MESSAGERESPONSE"))

(in-package "ROS")





(defclass amr_localization::Poi_messageRequest
  :super ros::object
  :slots (_label ))

(defmethod amr_localization::Poi_messageRequest
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass amr_localization::Poi_messageResponse
  :super ros::object
  :slots (_output ))

(defmethod amr_localization::Poi_messageResponse
  (:init
   (&key
    ((:output __output) "")
    )
   (send-super :init)
   (setq _output (string __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass amr_localization::Poi_message
  :super ros::object
  :slots ())

(setf (get amr_localization::Poi_message :md5sum-) "ebb8801b9a503fdd5d709f43edb7318f")
(setf (get amr_localization::Poi_message :datatype-) "amr_localization/Poi_message")
(setf (get amr_localization::Poi_message :request) amr_localization::Poi_messageRequest)
(setf (get amr_localization::Poi_message :response) amr_localization::Poi_messageResponse)

(defmethod amr_localization::Poi_messageRequest
  (:response () (instance amr_localization::Poi_messageResponse :init)))

(setf (get amr_localization::Poi_messageRequest :md5sum-) "ebb8801b9a503fdd5d709f43edb7318f")
(setf (get amr_localization::Poi_messageRequest :datatype-) "amr_localization/Poi_messageRequest")
(setf (get amr_localization::Poi_messageRequest :definition-)
      "string label # may be the label of the position or the \"end\" command to save the pose
---
string output # indicate the file poi.yaml saved
")

(setf (get amr_localization::Poi_messageResponse :md5sum-) "ebb8801b9a503fdd5d709f43edb7318f")
(setf (get amr_localization::Poi_messageResponse :datatype-) "amr_localization/Poi_messageResponse")
(setf (get amr_localization::Poi_messageResponse :definition-)
      "string label # may be the label of the position or the \"end\" command to save the pose
---
string output # indicate the file poi.yaml saved
")



(provide :amr_localization/Poi_message "ebb8801b9a503fdd5d709f43edb7318f")


