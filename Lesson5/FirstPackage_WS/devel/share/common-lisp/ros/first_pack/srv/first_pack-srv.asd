
(cl:in-package :asdf)

(defsystem "first_pack-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "multiple" :depends-on ("_package_multiple"))
    (:file "_package_multiple" :depends-on ("_package"))
  ))