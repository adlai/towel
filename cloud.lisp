;;;;; ;;;; ;;;;; ;;; ;;;; ;;;;; ;;; ;;;;;;;; ;;; ;;;;;

;; (print-book (market *btcil*) :prefix :military-time :count 23)
;; destructuring-bind (bids . asks) book
;; (width (side)
;;                (flet ((vol (noise) (quantity (given noise))))
;;                  ;; (loop for spark in side repeat (or count ()))
;;                  (loop for o in side repeat (or count 15)
;;                     for max = o then (if (> (vol o) (vol max)) o max)
;;                     ;; ... is this another ANSI compliance test case?
;;                     finally (return (length (princ-to-string max))))))
;; (multiple-value-call #'format
;;                 () "~~&~~@[~~A ~~]~~~D@A ~~~D@A~~%"
;;                 (if (atom ours) (values (width bids) (width asks))
;;                     (destructuring-bind (my-bids . my-asks) ours
;;                       (values (max (width bids) (width my-bids))
;;                               (max (width asks) (width my-asks))))))
;; (line (bid ask) (format t ctrl prefix bid ask))
;; (flet ((shit (shy nola)     ; so es dreht...
;;           (when shy
;;             (let ((decimals (decimals (market (first shy)))))
;;               (format () "~A ~C ~V$ "
;;                       (reduce #'aq+ (mapcar #'given shy)) ; ~A
;;                       nola                                ; ~C
;;                       decimals                            ; $V
;;                       (abs (/ (price (first (last shy)))  ; ~$
;;                               (expt 10 decimals))))))))
;;               (format t "~&Totals:~%")
;;               (line (shit bids #\>) (shit asks #\<)))

;;; Cribbed out of gist adlai/eb29616be321f351d72a
;; (defgeneric rehome-class (class new-home)
;;   (:method ((class symbol) new-home)
;;     (rehome-class (find-class class) (find-package new-home)))
;;   (:method ((class class) (new-home package))
;;     (let ((old-home (symbol-package (class-name class)))
;;           (symbols (list* (class-name class)
;;                           (mapcar 'sb-mop:slot-definition-name
;;                                   (sb-mop:class-direct-slots class)))))
;;       (mapc (lambda (symbol) (unintern symbol old-home)) symbols)
;;       (import symbols new-home)
;;       (import symbols old-home))))
;; ;; this line intentionally double-commented
;; (defun rehome-symbol (symbol new-home &aux (old-home (symbol-package symbol)))
;;   (unintern symbol old-home)
;;   (import (list symbol) new-home)
;;   (import (list symbol) old-home))

;;;;; dont use emacs for evolvability of diss-ability
