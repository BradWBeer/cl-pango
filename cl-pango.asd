;;;; sdl2.asd

(asdf:defsystem #:sdl2
  :serial t
  :description "Bindings for SDL2 using c2ffi."
  :author "Chip Collier <photex@lofidelitygames.com>, Ryan Pavlik <rpavlik@gmail.com>, Peter Keller <psilord@cs.wisc.edu>"
  :license "MIT"

  :depends-on (:alexandria
               :cl-autowrap
               :cl-plus-c
	       :cffi 
	       :cl-cairo2
	       :xmls)
  :serial t

  :components
  ((:module autowrap-spec
    :pathname "spec"
    :components
    ((:static-file "pango.h")
     (:static-file "pango.arm-pc-linux-gnu.spec")
     (:static-file "pango.i386-unknown-freebsd.spec")
     (:static-file "pango.i386-unknown-openbsd.spec")
     (:static-file "pango.i686-apple-darwin9.spec")
     (:static-file "pango.i686-pc-linux-gnu.spec")
     (:static-file "pango.i686-pc-windows-msvc.spec")
     (:static-file "pango.x86_64-apple-darwin9.spec")
     (:static-file "pango.x86_64-pc-linux-gnu.spec")
     (:static-file "pango.x86_64-pc-windows-msvc.spec")
     (:static-file "pango.x86_64-unknown-freebsd.spec")
     (:static-file "pango.x86_64-unknown-openbsd.spec")

     (:static-file "pangocairo.h")
     (:static-file "pangocairo.arm-pc-linux-gnu.spec")
     (:static-file "pangocairo.i386-unknown-freebsd.spec")
     (:static-file "pangocairo.i386-unknown-openbsd.spec")
     (:static-file "pangocairo.i686-apple-darwin9.spec")
     (:static-file "pangocairo.i686-pc-linux-gnu.spec")
     (:static-file "pangocairo.i686-pc-windows-msvc.spec")
     (:static-file "pangocairo.x86_64-apple-darwin9.spec")
     (:static-file "pangocairo.x86_64-pc-linux-gnu.spec")
     (:static-file "pangocairo.x86_64-pc-windows-msvc.spec")
     (:static-file "pangocairo.x86_64-unknown-freebsd.spec")
     (:static-file "pangocairo.x86_64-unknown-openbsd.spec")))
   (:file "package")
   (:file "library")
   (:file "autowrap")
   (:file "pango")))

(asdf:defsystem #:sdl2/examples
  :description "simple examples to demonstrate common usage of sdl2."
  :author "Chip Collier <photex@lofidelitygames.com>"
  :license "MIT"
  :depends-on (:sdl2 :cl-opengl)
  :pathname "examples"
  :serial t

  :components ((:file "basic")
               (:file "renderer")))


(asdf:defsystem #:cl-pango
  :depends-on (cffi cl-cairo2 xmls)
  :description "Bindings to the pango text layout library."
  :author "Brad Beer (WarWeasle)"
  :license "MIT"
  :version "0.5"
  :serial t
  :components ((:file "package")
	       (:file "library")
	       (:file "cairo")
	       (:file "pango")))
			       
