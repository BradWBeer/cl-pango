(in-package #:cl-cairo2) 

(defmacro with-surface ((surface &optional surface-name) &body body)
  (let ((var-name (or surface-name '*surface*)))
    `(let ((,var-name ,surface))
       (unwind-protect
	    (progn ,@body)
       
	 (progn (surface-finish ,var-name)
		(destroy ,var-name))))))

(defmacro with-context-from-surface ((surface) &body body)
  (let ((context (gensym "context")))
    `(let ((,context (create-context ,surface)))
       (unwind-protect
	    (with-context (,context)
	      ,@body)	      
	 (destroy ,context)))))


(defmacro with-surface-and-context ((surface &optional surface-name) &body body)
  (let ((var-name (or surface-name '*surface*)))
    `(with-surface (,surface ,var-name)
       (with-context-from-surface (,var-name)
	 ,@body))))

(export '(with-surface with-context-from-surface with-surface-and-context))
