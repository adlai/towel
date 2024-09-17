(cl:in-package #:towel.public-domain-utils)

;;; (cerror "quit, please")(in-package #:scalpl.net)

;;; poached out of cjhunt; useful for debugging the sewage flooded by exchanges
;;; it only works for the alist representation, because that is least ambiguous

(defun pprint-json (*standard-output* json)
  (typecase json ; see cl-json's source, or at least util.lisp, for the format
    (complex (error "Congratulations, you are wasting your own time."))
    (real (format t "~A" json))  ; TODO: error instead of exceeding JS precision
    (list (pprint-logical-block (*standard-output* json :prefix "{" :suffix "}")
            (loop for (key . value) = (pop json) while key do
                 (pprint-logical-block (*standard-output* ())
                   (format t "\"~(~A~)\": ~@_" key)
                   (pprint-json *standard-output* value))
                 (when json (format t ", ") (pprint-newline :fill)))))
    (string (format t "~S" json))
    (vector (pprint-logical-block (nil nil :prefix "[" :suffix "]")
              (let ((end (length json)) (i 0))
                (when (plusp end)
                  (loop
                     (pprint-json *standard-output* (aref json i))
                     (if (= (incf i) end) (return nil))
                     (format t ", ")
                     (pprint-newline :fill))))))
    (t (format t "~(~A~)" json))))

;; ;;; BRING_IT

;; (defgeneric luhn-checksum (payload)
;;   (:method ((payload vector) &aux (length (length payload)))
;;     (flet ((droot1 (vingty)
;;              (multiple-value-bind (ones tens)
;;                  (floor vingty 10)
;;                (+ ones tens))))
;;       (- 10 (mod (loop for place from length above 0
;;                        for parity = (1+ (mod place 2))
;;                        for digit across payload
;;                        sum (droot1 (* digit parity)))
;;                  10)))))

;;; CINGULAR
