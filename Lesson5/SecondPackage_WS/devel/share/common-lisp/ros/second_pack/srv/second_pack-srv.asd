
(cl:in-package :asdf)

(defsystem "second_pack-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Do_It" :depends-on ("_package_Do_It"))
    (:file "_package_Do_It" :depends-on ("_package"))
  ))