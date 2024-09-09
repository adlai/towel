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
