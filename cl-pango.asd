(asdf:defsystem #:cl-pango
  :depends-on (cffi cl-cairo2 xmls)
  :description "Bindings to the pango text layout library."
  :author "Brad Beer (WarWeasle)"
  :license "MIT"
  :version "0.5"
  :serial t
  :components ((:file "package")
	       (:file "library")
	       (:file "pango")))
			       
