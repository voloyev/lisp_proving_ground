(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller()
  (setf *small* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger()
  (setf *big* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))

;; local vars
(let ((a 5)
      (b 6))
  (+ a b))

;; local functions
(flet ((f (n)
         (+ n 1)))
  (f 5))

;; labels Why what
(labels ((a (n)
           (+ n 5))
         (b (n))))
