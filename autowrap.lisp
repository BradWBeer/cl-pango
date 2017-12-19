(cl:in-package :pango-ffi)

(autowrap:c-include
 '(pango autowrap-spec "pango.h")
  :accessor-package :pango-ffi.accessors
  :function-package :pango-ffi.functions
  :spec-path '(pango autowrap-spec)
  )

(cl:in-package :pangocairo-ffi)

(autowrap:c-include
 '(pango autowrap-spec "pangocairo.h")
  :accessor-package :pangocairo-ffi.accessors
  :function-package :pangocairo-ffi.functions
  :spec-path '(pangocairo autowrap-spec)
  )
