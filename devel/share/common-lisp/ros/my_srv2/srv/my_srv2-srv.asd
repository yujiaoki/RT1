
(cl:in-package :asdf)

(defsystem "my_srv2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Random" :depends-on ("_package_Random"))
    (:file "_package_Random" :depends-on ("_package"))
  ))