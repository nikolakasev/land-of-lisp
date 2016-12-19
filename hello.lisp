
(defun square (x)
  (* x x))

(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(let ((a 5)
      (b 6))
  (+ a b))

(flet ((f (n) (+ n 10))
       (g (n) (- n 3)))
      (g (f 5)))

;b knows about a and call itself as well (recursion)
(labels ((a (n) 
            (+ n 5))
         (b (n)
            (+ (a n) 6)))
        (b 10))

