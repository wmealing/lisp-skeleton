(defparameter *compression* 9 "Compression level of the executable binary.")
(defparameter *debug* nil "Debug information")

(eval-when (:execute)
  (pushnew (truename (sb-unix:posix-getcwd/)) ql:*local-project-directories*)
  (ql:register-local-projects)
  (ql:quickload '(:lisp-skeleton usocket)))

(defmacro debug-format (&rest body)
  (when *debug*
    `(format t ,@body)))

(defun main()
  (lisp-skeleton/client:main))

(eval-when (:execute)
  ;; close currently foreign libraries loaded
  (sb-ext:save-lisp-and-die "lisp-skeleton"
                            :toplevel #'main
                            :executable t
                            :compression *compression*))
