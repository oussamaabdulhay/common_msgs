
(cl:in-package :asdf)

(defsystem "attitude_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "attitude" :depends-on ("_package_attitude"))
    (:file "_package_attitude" :depends-on ("_package"))
  ))