; Auto-generated. Do not edit!


(cl:in-package amr_description-srv)


;//! \htmlinclude ElevatorServiceMessage-request.msg.html

(cl:defclass <ElevatorServiceMessage-request> (roslisp-msg-protocol:ros-message)
  ((elevator
    :reader elevator
    :initarg :elevator
    :type cl:string
    :initform ""))
)

(cl:defclass ElevatorServiceMessage-request (<ElevatorServiceMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorServiceMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorServiceMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_description-srv:<ElevatorServiceMessage-request> is deprecated: use amr_description-srv:ElevatorServiceMessage-request instead.")))

(cl:ensure-generic-function 'elevator-val :lambda-list '(m))
(cl:defmethod elevator-val ((m <ElevatorServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_description-srv:elevator-val is deprecated.  Use amr_description-srv:elevator instead.")
  (elevator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorServiceMessage-request>) ostream)
  "Serializes a message object of type '<ElevatorServiceMessage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorServiceMessage-request>) istream)
  "Deserializes a message object of type '<ElevatorServiceMessage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorServiceMessage-request>)))
  "Returns string type for a service object of type '<ElevatorServiceMessage-request>"
  "amr_description/ElevatorServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorServiceMessage-request)))
  "Returns string type for a service object of type 'ElevatorServiceMessage-request"
  "amr_description/ElevatorServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorServiceMessage-request>)))
  "Returns md5sum for a message object of type '<ElevatorServiceMessage-request>"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorServiceMessage-request)))
  "Returns md5sum for a message object of type 'ElevatorServiceMessage-request"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorServiceMessage-request>)))
  "Returns full string definition for message of type '<ElevatorServiceMessage-request>"
  (cl:format cl:nil "string elevator   # use \"up\" or \"down\" ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorServiceMessage-request)))
  "Returns full string definition for message of type 'ElevatorServiceMessage-request"
  (cl:format cl:nil "string elevator   # use \"up\" or \"down\" ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorServiceMessage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'elevator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorServiceMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorServiceMessage-request
    (cl:cons ':elevator (elevator msg))
))
;//! \htmlinclude ElevatorServiceMessage-response.msg.html

(cl:defclass <ElevatorServiceMessage-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElevatorServiceMessage-response (<ElevatorServiceMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorServiceMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorServiceMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_description-srv:<ElevatorServiceMessage-response> is deprecated: use amr_description-srv:ElevatorServiceMessage-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ElevatorServiceMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_description-srv:success-val is deprecated.  Use amr_description-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorServiceMessage-response>) ostream)
  "Serializes a message object of type '<ElevatorServiceMessage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorServiceMessage-response>) istream)
  "Deserializes a message object of type '<ElevatorServiceMessage-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorServiceMessage-response>)))
  "Returns string type for a service object of type '<ElevatorServiceMessage-response>"
  "amr_description/ElevatorServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorServiceMessage-response)))
  "Returns string type for a service object of type 'ElevatorServiceMessage-response"
  "amr_description/ElevatorServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorServiceMessage-response>)))
  "Returns md5sum for a message object of type '<ElevatorServiceMessage-response>"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorServiceMessage-response)))
  "Returns md5sum for a message object of type 'ElevatorServiceMessage-response"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorServiceMessage-response>)))
  "Returns full string definition for message of type '<ElevatorServiceMessage-response>"
  (cl:format cl:nil "bool success      # task reached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorServiceMessage-response)))
  "Returns full string definition for message of type 'ElevatorServiceMessage-response"
  (cl:format cl:nil "bool success      # task reached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorServiceMessage-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorServiceMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorServiceMessage-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElevatorServiceMessage)))
  'ElevatorServiceMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElevatorServiceMessage)))
  'ElevatorServiceMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorServiceMessage)))
  "Returns string type for a service object of type '<ElevatorServiceMessage>"
  "amr_description/ElevatorServiceMessage")