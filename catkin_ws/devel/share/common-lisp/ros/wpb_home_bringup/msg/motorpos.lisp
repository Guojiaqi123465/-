; Auto-generated. Do not edit!


(cl:in-package wpb_home_bringup-msg)


;//! \htmlinclude motorpos.msg.html

(cl:defclass <motorpos> (roslisp-msg-protocol:ros-message)
  ((motorpos1
    :reader motorpos1
    :initarg :motorpos1
    :type cl:integer
    :initform 0)
   (motorpos2
    :reader motorpos2
    :initarg :motorpos2
    :type cl:integer
    :initform 0)
   (motorpos3
    :reader motorpos3
    :initarg :motorpos3
    :type cl:integer
    :initform 0)
   (nParseCount
    :reader nParseCount
    :initarg :nParseCount
    :type cl:integer
    :initform 0)
   (fPosDiff1
    :reader fPosDiff1
    :initarg :fPosDiff1
    :type cl:float
    :initform 0.0)
   (fPosDiff2
    :reader fPosDiff2
    :initarg :fPosDiff2
    :type cl:float
    :initform 0.0)
   (fPosDiff3
    :reader fPosDiff3
    :initarg :fPosDiff3
    :type cl:float
    :initform 0.0))
)

(cl:defclass motorpos (<motorpos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorpos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorpos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wpb_home_bringup-msg:<motorpos> is deprecated: use wpb_home_bringup-msg:motorpos instead.")))

(cl:ensure-generic-function 'motorpos1-val :lambda-list '(m))
(cl:defmethod motorpos1-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:motorpos1-val is deprecated.  Use wpb_home_bringup-msg:motorpos1 instead.")
  (motorpos1 m))

(cl:ensure-generic-function 'motorpos2-val :lambda-list '(m))
(cl:defmethod motorpos2-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:motorpos2-val is deprecated.  Use wpb_home_bringup-msg:motorpos2 instead.")
  (motorpos2 m))

(cl:ensure-generic-function 'motorpos3-val :lambda-list '(m))
(cl:defmethod motorpos3-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:motorpos3-val is deprecated.  Use wpb_home_bringup-msg:motorpos3 instead.")
  (motorpos3 m))

(cl:ensure-generic-function 'nParseCount-val :lambda-list '(m))
(cl:defmethod nParseCount-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:nParseCount-val is deprecated.  Use wpb_home_bringup-msg:nParseCount instead.")
  (nParseCount m))

(cl:ensure-generic-function 'fPosDiff1-val :lambda-list '(m))
(cl:defmethod fPosDiff1-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:fPosDiff1-val is deprecated.  Use wpb_home_bringup-msg:fPosDiff1 instead.")
  (fPosDiff1 m))

(cl:ensure-generic-function 'fPosDiff2-val :lambda-list '(m))
(cl:defmethod fPosDiff2-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:fPosDiff2-val is deprecated.  Use wpb_home_bringup-msg:fPosDiff2 instead.")
  (fPosDiff2 m))

(cl:ensure-generic-function 'fPosDiff3-val :lambda-list '(m))
(cl:defmethod fPosDiff3-val ((m <motorpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wpb_home_bringup-msg:fPosDiff3-val is deprecated.  Use wpb_home_bringup-msg:fPosDiff3 instead.")
  (fPosDiff3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorpos>) ostream)
  "Serializes a message object of type '<motorpos>"
  (cl:let* ((signed (cl:slot-value msg 'motorpos1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorpos2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motorpos3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'nParseCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fPosDiff1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fPosDiff2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fPosDiff3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorpos>) istream)
  "Deserializes a message object of type '<motorpos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorpos1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorpos2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motorpos3) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nParseCount) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fPosDiff1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fPosDiff2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fPosDiff3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorpos>)))
  "Returns string type for a message object of type '<motorpos>"
  "wpb_home_bringup/motorpos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorpos)))
  "Returns string type for a message object of type 'motorpos"
  "wpb_home_bringup/motorpos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorpos>)))
  "Returns md5sum for a message object of type '<motorpos>"
  "c4efa34688fb890a2741cdd11f6591d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorpos)))
  "Returns md5sum for a message object of type 'motorpos"
  "c4efa34688fb890a2741cdd11f6591d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorpos>)))
  "Returns full string definition for message of type '<motorpos>"
  (cl:format cl:nil "int64 motorpos1~%int64 motorpos2~%int64 motorpos3~%int64 nParseCount~%float64 fPosDiff1~%float64 fPosDiff2~%float64 fPosDiff3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorpos)))
  "Returns full string definition for message of type 'motorpos"
  (cl:format cl:nil "int64 motorpos1~%int64 motorpos2~%int64 motorpos3~%int64 nParseCount~%float64 fPosDiff1~%float64 fPosDiff2~%float64 fPosDiff3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorpos>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorpos>))
  "Converts a ROS message object to a list"
  (cl:list 'motorpos
    (cl:cons ':motorpos1 (motorpos1 msg))
    (cl:cons ':motorpos2 (motorpos2 msg))
    (cl:cons ':motorpos3 (motorpos3 msg))
    (cl:cons ':nParseCount (nParseCount msg))
    (cl:cons ':fPosDiff1 (fPosDiff1 msg))
    (cl:cons ':fPosDiff2 (fPosDiff2 msg))
    (cl:cons ':fPosDiff3 (fPosDiff3 msg))
))
