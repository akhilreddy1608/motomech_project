; Auto-generated. Do not edit!


(cl:in-package amr_description-srv)


;//! \htmlinclude elevator_service_message-request.msg.html

(cl:defclass <elevator_service_message-request> (roslisp-msg-protocol:ros-message)
  ((elevator
    :reader elevator
    :initarg :elevator
    :type cl:string
    :initform ""))
)

(cl:defclass elevator_service_message-request (<elevator_service_message-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <elevator_service_message-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'elevator_service_message-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_description-srv:<elevator_service_message-request> is deprecated: use amr_description-srv:elevator_service_message-request instead.")))

(cl:ensure-generic-function 'elevator-val :lambda-list '(m))
(cl:defmethod elevator-val ((m <elevator_service_message-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_description-srv:elevator-val is deprecated.  Use amr_description-srv:elevator instead.")
  (elevator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <elevator_service_message-request>) ostream)
  "Serializes a message object of type '<elevator_service_message-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <elevator_service_message-request>) istream)
  "Deserializes a message object of type '<elevator_service_message-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<elevator_service_message-request>)))
  "Returns string type for a service object of type '<elevator_service_message-request>"
  "amr_description/elevator_service_messageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'elevator_service_message-request)))
  "Returns string type for a service object of type 'elevator_service_message-request"
  "amr_description/elevator_service_messageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<elevator_service_message-request>)))
  "Returns md5sum for a message object of type '<elevator_service_message-request>"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'elevator_service_message-request)))
  "Returns md5sum for a message object of type 'elevator_service_message-request"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<elevator_service_message-request>)))
  "Returns full string definition for message of type '<elevator_service_message-request>"
  (cl:format cl:nil "string elevator   # use \"up\" or \"down\" ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'elevator_service_message-request)))
  "Returns full string definition for message of type 'elevator_service_message-request"
  (cl:format cl:nil "string elevator   # use \"up\" or \"down\" ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <elevator_service_message-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'elevator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <elevator_service_message-request>))
  "Converts a ROS message object to a list"
  (cl:list 'elevator_service_message-request
    (cl:cons ':elevator (elevator msg))
))
;//! \htmlinclude elevator_service_message-response.msg.html

(cl:defclass <elevator_service_message-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass elevator_service_message-response (<elevator_service_message-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <elevator_service_message-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'elevator_service_message-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_description-srv:<elevator_service_message-response> is deprecated: use amr_description-srv:elevator_service_message-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <elevator_service_message-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_description-srv:success-val is deprecated.  Use amr_description-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <elevator_service_message-response>) ostream)
  "Serializes a message object of type '<elevator_service_message-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <elevator_service_message-response>) istream)
  "Deserializes a message object of type '<elevator_service_message-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<elevator_service_message-response>)))
  "Returns string type for a service object of type '<elevator_service_message-response>"
  "amr_description/elevator_service_messageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'elevator_service_message-response)))
  "Returns string type for a service object of type 'elevator_service_message-response"
  "amr_description/elevator_service_messageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<elevator_service_message-response>)))
  "Returns md5sum for a message object of type '<elevator_service_message-response>"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'elevator_service_message-response)))
  "Returns md5sum for a message object of type 'elevator_service_message-response"
  "0ac04e9a8dcf75f07af625da2a4fd966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<elevator_service_message-response>)))
  "Returns full string definition for message of type '<elevator_service_message-response>"
  (cl:format cl:nil "bool success      # task reached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'elevator_service_message-response)))
  "Returns full string definition for message of type 'elevator_service_message-response"
  (cl:format cl:nil "bool success      # task reached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <elevator_service_message-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <elevator_service_message-response>))
  "Converts a ROS message object to a list"
  (cl:list 'elevator_service_message-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'elevator_service_message)))
  'elevator_service_message-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'elevator_service_message)))
  'elevator_service_message-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'elevator_service_message)))
  "Returns string type for a service object of type '<elevator_service_message>"
  "amr_description/elevator_service_message")