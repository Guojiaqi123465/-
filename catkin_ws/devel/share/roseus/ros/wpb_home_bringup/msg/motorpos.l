;; Auto-generated. Do not edit!


(when (boundp 'wpb_home_bringup::motorpos)
  (if (not (find-package "WPB_HOME_BRINGUP"))
    (make-package "WPB_HOME_BRINGUP"))
  (shadow 'motorpos (find-package "WPB_HOME_BRINGUP")))
(unless (find-package "WPB_HOME_BRINGUP::MOTORPOS")
  (make-package "WPB_HOME_BRINGUP::MOTORPOS"))

(in-package "ROS")
;;//! \htmlinclude motorpos.msg.html


(defclass wpb_home_bringup::motorpos
  :super ros::object
  :slots (_motorpos1 _motorpos2 _motorpos3 _nParseCount _fPosDiff1 _fPosDiff2 _fPosDiff3 ))

(defmethod wpb_home_bringup::motorpos
  (:init
   (&key
    ((:motorpos1 __motorpos1) 0)
    ((:motorpos2 __motorpos2) 0)
    ((:motorpos3 __motorpos3) 0)
    ((:nParseCount __nParseCount) 0)
    ((:fPosDiff1 __fPosDiff1) 0.0)
    ((:fPosDiff2 __fPosDiff2) 0.0)
    ((:fPosDiff3 __fPosDiff3) 0.0)
    )
   (send-super :init)
   (setq _motorpos1 (round __motorpos1))
   (setq _motorpos2 (round __motorpos2))
   (setq _motorpos3 (round __motorpos3))
   (setq _nParseCount (round __nParseCount))
   (setq _fPosDiff1 (float __fPosDiff1))
   (setq _fPosDiff2 (float __fPosDiff2))
   (setq _fPosDiff3 (float __fPosDiff3))
   self)
  (:motorpos1
   (&optional __motorpos1)
   (if __motorpos1 (setq _motorpos1 __motorpos1)) _motorpos1)
  (:motorpos2
   (&optional __motorpos2)
   (if __motorpos2 (setq _motorpos2 __motorpos2)) _motorpos2)
  (:motorpos3
   (&optional __motorpos3)
   (if __motorpos3 (setq _motorpos3 __motorpos3)) _motorpos3)
  (:nParseCount
   (&optional __nParseCount)
   (if __nParseCount (setq _nParseCount __nParseCount)) _nParseCount)
  (:fPosDiff1
   (&optional __fPosDiff1)
   (if __fPosDiff1 (setq _fPosDiff1 __fPosDiff1)) _fPosDiff1)
  (:fPosDiff2
   (&optional __fPosDiff2)
   (if __fPosDiff2 (setq _fPosDiff2 __fPosDiff2)) _fPosDiff2)
  (:fPosDiff3
   (&optional __fPosDiff3)
   (if __fPosDiff3 (setq _fPosDiff3 __fPosDiff3)) _fPosDiff3)
  (:serialization-length
   ()
   (+
    ;; int64 _motorpos1
    8
    ;; int64 _motorpos2
    8
    ;; int64 _motorpos3
    8
    ;; int64 _nParseCount
    8
    ;; float64 _fPosDiff1
    8
    ;; float64 _fPosDiff2
    8
    ;; float64 _fPosDiff3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _motorpos1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motorpos1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motorpos1) (= (length (_motorpos1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motorpos1 . bv) 0) 0) s)
              (write-long (ash (elt (_motorpos1 . bv) 1) -1) s))
             ((and (class _motorpos1) (= (length (_motorpos1 . bv)) 1)) ;; big1
              (write-long (elt (_motorpos1 . bv) 0) s)
              (write-long (if (>= _motorpos1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motorpos1 s)(write-long (if (>= _motorpos1 0) 0 #xffffffff) s)))
     ;; int64 _motorpos2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motorpos2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motorpos2) (= (length (_motorpos2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motorpos2 . bv) 0) 0) s)
              (write-long (ash (elt (_motorpos2 . bv) 1) -1) s))
             ((and (class _motorpos2) (= (length (_motorpos2 . bv)) 1)) ;; big1
              (write-long (elt (_motorpos2 . bv) 0) s)
              (write-long (if (>= _motorpos2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motorpos2 s)(write-long (if (>= _motorpos2 0) 0 #xffffffff) s)))
     ;; int64 _motorpos3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motorpos3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motorpos3) (= (length (_motorpos3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motorpos3 . bv) 0) 0) s)
              (write-long (ash (elt (_motorpos3 . bv) 1) -1) s))
             ((and (class _motorpos3) (= (length (_motorpos3 . bv)) 1)) ;; big1
              (write-long (elt (_motorpos3 . bv) 0) s)
              (write-long (if (>= _motorpos3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motorpos3 s)(write-long (if (>= _motorpos3 0) 0 #xffffffff) s)))
     ;; int64 _nParseCount
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _nParseCount (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _nParseCount) (= (length (_nParseCount . bv)) 2)) ;; bignum
              (write-long (ash (elt (_nParseCount . bv) 0) 0) s)
              (write-long (ash (elt (_nParseCount . bv) 1) -1) s))
             ((and (class _nParseCount) (= (length (_nParseCount . bv)) 1)) ;; big1
              (write-long (elt (_nParseCount . bv) 0) s)
              (write-long (if (>= _nParseCount 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _nParseCount s)(write-long (if (>= _nParseCount 0) 0 #xffffffff) s)))
     ;; float64 _fPosDiff1
       (sys::poke _fPosDiff1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fPosDiff2
       (sys::poke _fPosDiff2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fPosDiff3
       (sys::poke _fPosDiff3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _motorpos1
#+(or :alpha :irix6 :x86_64)
      (setf _motorpos1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motorpos1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _motorpos2
#+(or :alpha :irix6 :x86_64)
      (setf _motorpos2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motorpos2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _motorpos3
#+(or :alpha :irix6 :x86_64)
      (setf _motorpos3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motorpos3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _nParseCount
#+(or :alpha :irix6 :x86_64)
      (setf _nParseCount (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _nParseCount (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _fPosDiff1
     (setq _fPosDiff1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fPosDiff2
     (setq _fPosDiff2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fPosDiff3
     (setq _fPosDiff3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get wpb_home_bringup::motorpos :md5sum-) "c4efa34688fb890a2741cdd11f6591d7")
(setf (get wpb_home_bringup::motorpos :datatype-) "wpb_home_bringup/motorpos")
(setf (get wpb_home_bringup::motorpos :definition-)
      "int64 motorpos1
int64 motorpos2
int64 motorpos3
int64 nParseCount
float64 fPosDiff1
float64 fPosDiff2
float64 fPosDiff3

")



(provide :wpb_home_bringup/motorpos "c4efa34688fb890a2741cdd11f6591d7")


