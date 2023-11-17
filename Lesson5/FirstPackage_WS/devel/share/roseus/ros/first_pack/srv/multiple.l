;; Auto-generated. Do not edit!


(when (boundp 'first_pack::multiple)
  (if (not (find-package "FIRST_PACK"))
    (make-package "FIRST_PACK"))
  (shadow 'multiple (find-package "FIRST_PACK")))
(unless (find-package "FIRST_PACK::MULTIPLE")
  (make-package "FIRST_PACK::MULTIPLE"))
(unless (find-package "FIRST_PACK::MULTIPLEREQUEST")
  (make-package "FIRST_PACK::MULTIPLEREQUEST"))
(unless (find-package "FIRST_PACK::MULTIPLERESPONSE")
  (make-package "FIRST_PACK::MULTIPLERESPONSE"))

(in-package "ROS")





(defclass first_pack::multipleRequest
  :super ros::object
  :slots (_a _b ))

(defmethod first_pack::multipleRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass first_pack::multipleResponse
  :super ros::object
  :slots (_result ))

(defmethod first_pack::multipleResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass first_pack::multiple
  :super ros::object
  :slots ())

(setf (get first_pack::multiple :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get first_pack::multiple :datatype-) "first_pack/multiple")
(setf (get first_pack::multiple :request) first_pack::multipleRequest)
(setf (get first_pack::multiple :response) first_pack::multipleResponse)

(defmethod first_pack::multipleRequest
  (:response () (instance first_pack::multipleResponse :init)))

(setf (get first_pack::multipleRequest :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get first_pack::multipleRequest :datatype-) "first_pack/multipleRequest")
(setf (get first_pack::multipleRequest :definition-)
      "# Inputs/Request
int32 a
int32 b
---
# Output/Response
int32 result
")

(setf (get first_pack::multipleResponse :md5sum-) "a7d7d7065d45755acef7d4dcf908162a")
(setf (get first_pack::multipleResponse :datatype-) "first_pack/multipleResponse")
(setf (get first_pack::multipleResponse :definition-)
      "# Inputs/Request
int32 a
int32 b
---
# Output/Response
int32 result
")



(provide :first_pack/multiple "a7d7d7065d45755acef7d4dcf908162a")


