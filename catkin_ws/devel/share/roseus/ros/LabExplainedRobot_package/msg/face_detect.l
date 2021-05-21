;; Auto-generated. Do not edit!


(when (boundp 'LabExplainedRobot_package::face_detect)
  (if (not (find-package "LABEXPLAINEDROBOT_PACKAGE"))
    (make-package "LABEXPLAINEDROBOT_PACKAGE"))
  (shadow 'face_detect (find-package "LABEXPLAINEDROBOT_PACKAGE")))
(unless (find-package "LABEXPLAINEDROBOT_PACKAGE::FACE_DETECT")
  (make-package "LABEXPLAINEDROBOT_PACKAGE::FACE_DETECT"))

(in-package "ROS")
;;//! \htmlinclude face_detect.msg.html


(defclass LabExplainedRobot_package::face_detect
  :super ros::object
  :slots (_face_num ))

(defmethod LabExplainedRobot_package::face_detect
  (:init
   (&key
    ((:face_num __face_num) 0)
    )
   (send-super :init)
   (setq _face_num (round __face_num))
   self)
  (:face_num
   (&optional __face_num)
   (if __face_num (setq _face_num __face_num)) _face_num)
  (:serialization-length
   ()
   (+
    ;; int64 _face_num
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _face_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _face_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _face_num) (= (length (_face_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_face_num . bv) 0) 0) s)
              (write-long (ash (elt (_face_num . bv) 1) -1) s))
             ((and (class _face_num) (= (length (_face_num . bv)) 1)) ;; big1
              (write-long (elt (_face_num . bv) 0) s)
              (write-long (if (>= _face_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _face_num s)(write-long (if (>= _face_num 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _face_num
#+(or :alpha :irix6 :x86_64)
      (setf _face_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _face_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get LabExplainedRobot_package::face_detect :md5sum-) "9e0e4a51140140eb557dc5a65700eebd")
(setf (get LabExplainedRobot_package::face_detect :datatype-) "LabExplainedRobot_package/face_detect")
(setf (get LabExplainedRobot_package::face_detect :definition-)
      "int64 face_num
")



(provide :LabExplainedRobot_package/face_detect "9e0e4a51140140eb557dc5a65700eebd")


