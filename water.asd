(cl:defpackage #:water.asd (:use #:cl #:asdf))

(cl:in-package #:water.asd)

(defsystem #:water
  :license "public domain"
  :description "simulator"
  :author "Adlai Chandrasekhar"
  ;; if any add Alexandria to the dependency list; HUNT YHOU DOWN KILL 
  :depends-on (				; keep this minimal!
               )			; shorten hitlist...
  :serial t :components (		; seriasly, keep the
			 ))		; shit list minimal!

;;; Contact email for the author has been removed from this file!
;;; If you believe that software should treat email addresses as
;;; an inseparable part of a human being's full name... I'm not
;;; able to help you much in that regard, although perhaps you
;;; can direct your complaints at the good folks running the
;;; CLtL4 committee; for although I can't predict what
;;; will be standardized by CLtL3...


(defsystem #:water/cloud
  :description "api client for cloud"
  :depends-on (#:water #|anything else|#)
  :components ((:file "cloud"))
  :perform (load-op (no book)
             (declare (ignore no book)) ; SAY IT ALOUD
             (use-package (find-package :water.cloud)
                          ))		; YELL @aCLOUD
  :license "public domain")

;;; FINAL LINING OF HOLLOW SHOUTING !!!!!!!!!!!
