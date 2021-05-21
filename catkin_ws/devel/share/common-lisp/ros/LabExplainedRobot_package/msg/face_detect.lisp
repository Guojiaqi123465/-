; Auto-generated. Do not edit!


(cl:in-package LabExplainedRobot_package-msg)


;//! \htmlinclude face_detect.msg.html

(cl:defclass <face_detect> (roslisp-msg-protocol:ros-message)
  ((face_num
    :reader face_num
    :initarg :face_num
    :type cl:integer
    :initform 0))
)

(cl:defclass face_detect (<face_detect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <face_detect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'face_detect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name LabExplainedRobot_package-msg:<face_detect> is deprecated: use LabExplainedRobot_package-msg:face_detect instead.")))

(cl:ensure-generic-function 'face_num-val :lambda-list '(m))
(cl:defmethod face_num-val ((m <face_detect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader LabExplainedRobot_package-msg:face_num-val is deprecated.  Use LabExplainedRobot_package-msg:face_num instead.")
  (face_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <face_detect>) ostream)
  "Serializes a message object of type '<face_detect>"
  (cl:let* ((signed (cl:slot-value msg 'face_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <face_detect>) istream)
  "Deserializes a message object of type '<face_detect>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'face_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<face_detect>)))
  "Returns string type for a message object of type '<face_detect>"
  "LabExplainedRobot_package/face_detect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_detect)))
  "Returns string type for a message object of type 'face_detect"
  "LabExplainedRobot_package/face_detect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<face_detect>)))
  "Returns md5sum for a message object of type '<face_detect>"
  "9e0e4a51140140eb557dc5a65700eebd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'face_detect)))
  "Returns md5sum for a message object of type 'face_detect"
  "9e0e4a51140140eb557dc5a65700eebd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<face_detect>)))
  "Returns full string definition for message of type '<face_detect>"
  (cl:format cl:nil "int64 face_num~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'face_detect)))
  "Returns full string definition for message of type 'face_detect"
  (cl:format cl:nil "int64 face_num~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <face_detect>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <face_detect>))
  "Converts a ROS message object to a list"
  (cl:list 'face_detect
    (cl:cons ':face_num (face_num msg))
))
