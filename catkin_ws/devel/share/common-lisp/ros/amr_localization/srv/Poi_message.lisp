; Auto-generated. Do not edit!


(cl:in-package amr_localization-srv)


;//! \htmlinclude Poi_message-request.msg.html

(cl:defclass <Poi_message-request> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass Poi_message-request (<Poi_message-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Poi_message-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Poi_message-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_localization-srv:<Poi_message-request> is deprecated: use amr_localization-srv:Poi_message-request instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <Poi_message-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_localization-srv:label-val is deprecated.  Use amr_localization-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Poi_message-request>) ostream)
  "Serializes a message object of type '<Poi_message-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Poi_message-request>) istream)
  "Deserializes a message object of type '<Poi_message-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Poi_message-request>)))
  "Returns string type for a service object of type '<Poi_message-request>"
  "amr_localization/Poi_messageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Poi_message-request)))
  "Returns string type for a service object of type 'Poi_message-request"
  "amr_localization/Poi_messageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Poi_message-request>)))
  "Returns md5sum for a message object of type '<Poi_message-request>"
  "ebb8801b9a503fdd5d709f43edb7318f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Poi_message-request)))
  "Returns md5sum for a message object of type 'Poi_message-request"
  "ebb8801b9a503fdd5d709f43edb7318f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Poi_message-request>)))
  "Returns full string definition for message of type '<Poi_message-request>"
  (cl:format cl:nil "string label # may be the label of the position or the \"end\" command to save the pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Poi_message-request)))
  "Returns full string definition for message of type 'Poi_message-request"
  (cl:format cl:nil "string label # may be the label of the position or the \"end\" command to save the pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Poi_message-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Poi_message-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Poi_message-request
    (cl:cons ':label (label msg))
))
;//! \htmlinclude Poi_message-response.msg.html

(cl:defclass <Poi_message-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass Poi_message-response (<Poi_message-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Poi_message-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Poi_message-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_localization-srv:<Poi_message-response> is deprecated: use amr_localization-srv:Poi_message-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <Poi_message-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_localization-srv:output-val is deprecated.  Use amr_localization-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Poi_message-response>) ostream)
  "Serializes a message object of type '<Poi_message-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Poi_message-response>) istream)
  "Deserializes a message object of type '<Poi_message-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Poi_message-response>)))
  "Returns string type for a service object of type '<Poi_message-response>"
  "amr_localization/Poi_messageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Poi_message-response)))
  "Returns string type for a service object of type 'Poi_message-response"
  "amr_localization/Poi_messageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Poi_message-response>)))
  "Returns md5sum for a message object of type '<Poi_message-response>"
  "ebb8801b9a503fdd5d709f43edb7318f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Poi_message-response)))
  "Returns md5sum for a message object of type 'Poi_message-response"
  "ebb8801b9a503fdd5d709f43edb7318f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Poi_message-response>)))
  "Returns full string definition for message of type '<Poi_message-response>"
  (cl:format cl:nil "string output # indicate the file poi.yaml saved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Poi_message-response)))
  "Returns full string definition for message of type 'Poi_message-response"
  (cl:format cl:nil "string output # indicate the file poi.yaml saved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Poi_message-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Poi_message-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Poi_message-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Poi_message)))
  'Poi_message-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Poi_message)))
  'Poi_message-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Poi_message)))
  "Returns string type for a service object of type '<Poi_message>"
  "amr_localization/Poi_message")