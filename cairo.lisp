(in-package #:cl-cairo2) 

(defun has-current-point (&optional (context *context*))
  (with-context-pointer (context pointer)
    (= 1 (cairo_has_current_point pointer))))

(export 'has-current-point)
