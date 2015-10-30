(asdf:defsystem #:cl-pango
  :depends-on (cffi cl-cairo2 xmls)
  :version "0.0.1"
  :serial t
  :components ((:file "package")
	       (:file "library")
	       (:file "pango")
	       (:file "cairo")))
			       
