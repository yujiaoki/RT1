
(cl:in-package :asdf)

(defsystem "assignment1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Vel" :depends-on ("_package_Vel"))
    (:file "_package_Vel" :depends-on ("_package"))
  ))