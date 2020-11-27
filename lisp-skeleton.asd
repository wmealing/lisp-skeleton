
(asdf/defsystem:defsystem :lisp-skeleton/client
  :author "Wade Mealing"
  :description "The skeleton system i wish i had when i first started"
  :version "0.0.1"
  :license "MIT"
  :depends-on ("usocket"
               "bordeaux-threads")
  :pathname "src"
  :components ((:file "config")
               (:file "client" :depends-on ("config"))))

(asdf/defsystem:defsystem :lisp-skeleton
  :author "Wade Mealing"
  :description "An experimental skeleton irc-like"
  :version "0.0.1"
  :license "MIT"
  :depends-on ("lisp-skeleton/client" ))
