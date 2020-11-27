;; Common Lisp Script
;; Manoel Vilela

(defpackage :lisp-skeleton/client
  (:use #:usocket
        #:cl
        #:lisp-skeleton/config
        #:bordeaux-threads)
  (:export :main))

(in-package :lisp-skeleton/client)


(defun main (&key (host *host*) (port *port*))
	(print host)
	(print port) 
)
