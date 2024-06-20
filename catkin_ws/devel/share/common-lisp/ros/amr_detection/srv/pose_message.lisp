; Auto-generated. Do not edit!


(cl:in-package amr_detection-srv)


;//! \htmlinclude pose_message-request.msg.html

(cl:defclass <pose_message-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pose_message-request (<pose_message-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_message-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_message-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_detection-srv:<pose_message-request> is deprecated: use amr_detection-srv:pose_message-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_message-request>) ostream)
  "Serializes a message object of type '<pose_message-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_message-request>) istream)
  "Deserializes a message object of type '<pose_message-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_message-request>)))
  "Returns string type for a service object of type '<pose_message-request>"
  "amr_detection/pose_messageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_message-request)))
  "Returns string type for a service object of type 'pose_message-request"
  "amr_detection/pose_messageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_message-request>)))
  "Returns md5sum for a message object of type '<pose_message-request>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_message-request)))
  "Returns md5sum for a message object of type 'pose_message-request"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_message-request>)))
  "Returns full string definition for message of type '<pose_message-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_message-request)))
  "Returns full string definition for message of type 'pose_message-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_message-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_message-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_message-request
))
;//! \htmlinclude pose_message-response.msg.html

(cl:defclass <pose_message-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass pose_message-response (<pose_message-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_message-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_message-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amr_detection-srv:<pose_message-response> is deprecated: use amr_detection-srv:pose_message-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <pose_message-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amr_detection-srv:pose-val is deprecated.  Use amr_detection-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_message-response>) ostream)
  "Serializes a message object of type '<pose_message-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_message-response>) istream)
  "Deserializes a message object of type '<pose_message-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_message-response>)))
  "Returns string type for a service object of type '<pose_message-response>"
  "amr_detection/pose_messageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_message-response)))
  "Returns string type for a service object of type 'pose_message-response"
  "amr_detection/pose_messageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_message-response>)))
  "Returns md5sum for a message object of type '<pose_message-response>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_message-response)))
  "Returns md5sum for a message object of type 'pose_message-response"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_message-response>)))
  "Returns full string definition for message of type '<pose_message-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose       # pose between the base link and europallet center frame~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_message-response)))
  "Returns full string definition for message of type 'pose_message-response"
  (cl:format cl:nil "geometry_msgs/Pose pose       # pose between the base link and europallet center frame~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_message-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_message-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_message-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pose_message)))
  'pose_message-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pose_message)))
  'pose_message-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_message)))
  "Returns string type for a service object of type '<pose_message>"
  "amr_detection/pose_message")