(in-package :cl-user)

(cl:defpackage #:cl-pango
  (:nicknames :pango)
  (:use #:cl)
  (:export

   #:WITH-CONTEXT-FROM-SURFACE
   #:CLEAR-CAIRO-CONTEXT
   #:PRINT-RAW-TEXT
   #:PRINT-TEXT
   #:PRINT-WITH-ATTRIBUTES
   #:WITH-PARAGRAPH
   #:WITH-PANGO-OBJECT
   #:WITH-PANGO-OBJECTS
   #:WITH-ATTRIBUTE-LIST
   #:ADD-FOREGROUND-COLOR-ATTRIBUTE
   #:ADD-BACKGROUND-COLOR-ATTRIBUTE
   #:ADD-SIZE-ATTRIBUTE
   #:ADD-ABSOLUTE-SIZE-ATTRIBUTE
   #:ADD-WEIGHT-ATTRIBUTE
   #:ADD-FAMILY-ATTRIBUTE
   #:ADD-STYLE-ATTRIBUTE
   #:ADD-VARIANT-ATTRIBUTE
   #:ADD-STRETCH-ATTRIBUTE
   #:ADD-STRETCH-ATTRIBUTE
   #:ADD-STRIKETHROUGH-ATTRIBUTE
   #:ADD-STRIKETHROUGH-COLOR-ATTRIBUTE
   #:ADD-UNDERLINE-ATTRIBUTE
   #:ADD-UNDERLINE-COLOR-ATTRIBUTE
   #:ADD-RISE-ATTRIBUTE
   #:ADD-LETTER-SPACING-ATTRIBUTE
   
   #:G_OBJECT_UNREF
   #:PANGOCONTEXT
   #:PANGOITEM
   #:PANGOANALYSIS
   #:GSLIST
   #:GLIST
   #:PANGOLOGATTR
   #:PANGOLAYOUTLINE
   #:PANGO_ITEMIZE
   #:PANGO_ITEMIZE_WITH_BASE_DIR
   #:PANGO_ITEM_FREE
   #:PANGO_ITEM_COPY
   #:PANGO_ITEM_NEW
   #:PANGO_ITEM_SPLIT
   #:PANGO_REORDER_ITEMS
   #:PANGO_CONTEXT_NEW
   #:PANGO_CONTEXT_SET_FONT_MAP
   #:PANGO_CONTEXT_GET_FONT_MAP
   #:PANGO_CONTEXT_GET_FONT_DESCRIPTION
   #:PANGO_CONTEXT_SET_FONT_DESCRIPTION
   #:PANGO_CONTEXT_GET_LANGUAGE
   #:PANGO_CONTEXT_SET_LANGUAGE
   #:PANGO_CONTEXT_GET_BASE_DIR
   #:PANGO_CONTEXT_SET_BASE_DIR
   #:PANGO_CONTEXT_GET_BASE_GRAVITY
   #:PANGO_CONTEXT_SET_BASE_GRAVITY
   #:PANGO_CONTEXT_GET_GRAVITY
   #:PANGO_CONTEXT_GET_GRAVITY_HINT
   #:PANGO_CONTEXT_SET_GRAVITY_HINT
   #:PANGO_CONTEXT_GET_MATRIX
   #:PANGO_CONTEXT_SET_MATRIX
   #:PANGO_CONTEXT_LOAD_FONT
   #:PANGO_CONTEXT_LOAD_FONTSET
   #:PANGO_CONTEXT_GET_METRICS
   #:PANGO_CONTEXT_LIST_FAMILIES
   #:PANGO_BREAK
   #:PANGO_GET_LOG_ATTRS
   #:PANGO_FIND_PARAGRAPH_BOUNDARY
   #:PANGO_DEFAULT_BREAK
   #:PANGO_SHAPE
   #:PANGO_SCALE
   #:PANGO_UNITS_TO_DOUBLE
   #:PANGO_UNITS_FROM_DOUBLE
   #:PANGORECTANGLE
   #:PANGO_EXTENTS_TO_PIXELS
   #:PANGOMATRIX
   #:PANGO_MATRIX_COPY
   #:PANGO_MATRIX_FREE
   #:PANGO_MATRIX_TRANSLATE
   #:PANGO_MATRIX_SCALE
   #:PANGO_MATRIX_ROTATE
   #:PANGO_MATRIX_CONCAT
   #:PANGO_MATRIX_TRANSFORM_POINT
   #:PANGO_MATRIX_TRANSFORM_DISTANCE
   #:PANGO_MATRIX_TRANSFORM_RECTANGLE
   #:PANGO_MATRIX_TRANSFORM_PIXEL_RECTANGLE
   #:PANGO_MATRIX_GET_FONT_SCALE_FACTOR
   #:PANGOGLYPH
   #:PANGOGLYPHINFO
   #:PANGOGLYPHGEOMETRY
   #:PANGOGLYPHUNIT
   #:PANGOGLYPHVISATTR
   #:PANGOGLYPHSTRING
   #:PANGOGLYPHITEMITER
   #:PANGO_GLYPH_STRING_NEW
   #:PANGO_GLYPH_STRING_COPY
   #:PANGO_GLYPH_STRING_SET_SIZE
   #:PANGO_GLYPH_STRING_FREE
   #:PANGO_GLYPH_STRING_EXTENTS
   #:PANGO_GLYPH_STRING_EXTENTS_RANGE
   #:PANGO_GLYPH_STRING_GET_WIDTH
   #:PANGO_GLYPH_STRING_INDEX_TO_X
   #:PANGO_GLYPH_STRING_X_TO_INDEX
   #:PANGO_GLYPH_STRING_GET_LOGICAL_WIDTHS
   #:PANGO_GLYPH_ITEM_COPY
   #:PANGO_GLYPH_ITEM_FREE
   #:PANGO_GLYPH_ITEM_SPLIT
   #:PANGO_GLYPH_ITEM_APPLY_ATTRS
   #:PANGO_GLYPH_ITEM_LETTER_SPACE
   #:PANGO_GLYPH_ITEM_GET_LOGICAL_WIDTHS
   #:PANGO_GLYPH_ITEM_ITER_COPY
   #:PANGO_GLYPH_ITEM_ITER_FREE
   #:PANGO_GLYPH_ITEM_ITER_INIT_START
   #:PANGO_GLYPH_ITEM_ITER_INIT_END
   #:PANGO_GLYPH_ITEM_ITER_NEXT_CLUSTER
   #:PANGO_GLYPH_ITEM_ITER_PREV_CLUSTER
   #:PANGOFONTDESCRIPTION
   #:PANGOFONTMETRICS
   #:PANGOFONTSETCLASS
   #:PANGOFONTMAPCLASS
   #:PANGO_FONT_DESCRIPTION_NEW
   #:PANGO_FONT_DESCRIPTION_COPY
   #:PANGO_FONT_DESCRIPTION_COPY_STATIC
   #:PANGO_FONT_DESCRIPTION_HASH
   #:PANGO_FONT_DESCRIPTION_EQUAL
   #:PANGO_FONT_DESCRIPTION_FREE
   #:PANGO_FONT_DESCRIPTIONS_FREE
   #:PANGO_FONT_DESCRIPTION_SET_FAMILY
   #:PANGO_FONT_DESCRIPTION_SET_FAMILY_STATIC
   #:PANGO_FONT_DESCRIPTION_GET_FAMILY
   #:PANGO_FONT_DESCRIPTION_SET_STYLE
   #:PANGO_FONT_DESCRIPTION_GET_STYLE
   #:PANGO_FONT_DESCRIPTION_SET_VARIANT
   #:PANGO_FONT_DESCRIPTION_GET_VARIANT
   #:PANGO_FONT_DESCRIPTION_SET_WEIGHT
   #:PANGO_FONT_DESCRIPTION_GET_WEIGHT
   #:PANGO_FONT_DESCRIPTION_SET_STRETCH
   #:PANGO_FONT_DESCRIPTION_GET_STRETCH
   #:PANGO_FONT_DESCRIPTION_SET_SIZE
   #:PANGO_FONT_DESCRIPTION_GET_SIZE
   #:PANGO_FONT_DESCRIPTION_SET_ABSOLUTE_SIZE
   #:PANGO_FONT_DESCRIPTION_GET_SIZE_IS_ABSOLUTE
   #:PANGO_FONT_DESCRIPTION_SET_GRAVITY
   #:PANGO_FONT_DESCRIPTION_GET_GRAVITY
   #:PANGO_FONT_DESCRIPTION_GET_SET_FIELDS
   #:PANGO_FONT_DESCRIPTION_UNSET_FIELDS
   #:PANGO_FONT_DESCRIPTION_MERGE
   #:PANGO_FONT_DESCRIPTION_MERGE_STATIC
   #:PANGO_FONT_DESCRIPTION_BETTER_MATCH
   #:PANGO_FONT_DESCRIPTION_FROM_STRING
   #:PANGO_FONT_DESCRIPTION_TO_STRING
   #:PANGO_FONT_DESCRIPTION_TO_FILENAME
   #:PANGO_FONT_METRICS_REF
   #:PANGO_FONT_METRICS_UNREF
   #:PANGO_FONT_METRICS_GET_ASCENT
   #:PANGO_FONT_METRICS_GET_DESCENT
   #:PANGO_FONT_METRICS_GET_APPROXIMATE_CHAR_WIDTH
   #:PANGO_FONT_METRICS_GET_APPROXIMATE_DIGIT_WIDTH
   #:PANGO_FONT_METRICS_GET_UNDERLINE_THICKNESS
   #:PANGO_FONT_METRICS_GET_UNDERLINE_POSITION
   #:PANGO_FONT_METRICS_GET_STRIKETHROUGH_THICKNESS
   #:PANGO_FONT_METRICS_GET_STRIKETHROUGH_POSITION
   #:PANGOFONT
   #:PANGO_FONT_FIND_SHAPER
   #:PANGO_FONT_DESCRIBE
   #:PANGO_FONT_DESCRIBE_WITH_ABSOLUTE_SIZE
   #:PANGO_FONT_GET_COVERAGE
   #:PANGO_FONT_GET_GLYPH_EXTENTS
   #:PANGO_FONT_GET_METRICS
   #:PANGO_FONT_GET_FONT_MAP
   #:PANGOFONTFAMILY
   #:PANGO_FONT_FAMILY_GET_NAME
   #:PANGO_FONT_FAMILY_IS_MONOSPACE
   #:PANGO_FONT_FAMILY_LIST_FACES
   #:PANGOFONTFACE
   #:PANGO_FONT_FACE_GET_FACE_NAME
   #:PANGO_FONT_FACE_LIST_SIZES
   #:PANGO_FONT_FACE_DESCRIBE
   #:PANGO_FONT_FACE_IS_SYNTHESIZED
   #:PANGOFONTMAP
   #:PANGO_FONT_MAP_CREATE_CONTEXT
   #:PANGO_FONT_MAP_LOAD_FONT
   #:PANGO_FONT_MAP_LOAD_FONTSET
   #:PANGO_FONT_MAP_LIST_FAMILIES
   #:PANGO_FONT_MAP_GET_SHAPE_ENGINE_TYPE
   #:PANGOFONTSET
   #:PANGO_FONTSET_GET_FONT
   #:PANGO_FONTSET_GET_METRICS
   #:PANGOFONTSETFOREACHFUNC
   #:PANGO_FONTSET_FOREACH
   #:PANGOFONTSETSIMPLE
   #:PANGO_FONTSET_SIMPLE_NEW
   #:PANGO_FONTSET_SIMPLE_APPEND
   #:PANGO_FONTSET_SIMPLE_SIZE
   #:PANGOATTRCLASS
   #:PANGOATTRIBUTE
   #:PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING
   #:PANGO_ATTR_INDEX_TO_TEXT_END
   #:PANGOATTRSTRING
   #:PANGOATTRLANGUAGE
   #:PANGOATTRCOLOR
   #:PANGOATTRINT
   #:PANGOATTRFLOAT
   #:PANGOATTRFONTDESC
   #:PANGOATTRSHAPE
   #:PANGOATTRSIZE
   #:PANGOCOLOR
   #:PANGO_PARSE_MARKUP
   #:PANGO_ATTR_TYPE_REGISTER
   #:PANGO_ATTR_TYPE_GET_NAME
   #:PANGO_ATTRIBUTE_INIT
   #:PANGO_ATTRIBUTE_COPY
   #:PANGO_ATTRIBUTE_EQUAL
   #:PANGO_ATTRIBUTE_DESTROY
   #:PANGO_ATTR_LANGUAGE_NEW
   #:PANGO_ATTR_FAMILY_NEW
   #:PANGO_ATTR_STYLE_NEW
   #:PANGO_ATTR_VARIANT_NEW
   #:PANGO_ATTR_STRETCH_NEW
   #:PANGO_ATTR_WEIGHT_NEW
   #:PANGO_ATTR_SIZE_NEW
   #:PANGO_ATTR_SIZE_NEW_ABSOLUTE
   #:PANGO_ATTR_FONT_DESC_NEW
   #:PANGO_ATTR_FOREGROUND_NEW
   #:PANGO_ATTR_BACKGROUND_NEW
   #:PANGO_ATTR_STRIKETHROUGH_NEW
   #:PANGO_ATTR_STRIKETHROUGH_COLOR_NEW
   #:PANGO_ATTR_UNDERLINE_NEW
   #:PANGO_ATTR_UNDERLINE_COLOR_NEW
   #:PANGO_ATTR_SHAPE_NEW
   #:PANGO_ATTR_SHAPE_NEW_WITH_DATA
   #:PANGOATTRDATACOPYFUNC
   #:PANGO_ATTR_SCALE_NEW
   #:PANGO_SCALE_XX_SMALL
   #:PANGO_SCALE_X_SMALL
   #:PANGO_SCALE_SMALL
   #:PANGO_SCALE_MEDIUM
   #:PANGO_SCALE_LARGE
   #:PANGO_SCALE_X_LARGE
   #:PANGO_SCALE_XX_LARGE
   #:PANGO_ATTR_RISE_NEW
   #:PANGO_ATTR_LETTER_SPACING_NEW
   #:PANGO_ATTR_FALLBACK_NEW
   #:PANGO_ATTR_GRAVITY_NEW
   #:PANGO_ATTR_GRAVITY_HINT_NEW
   #:PANGO_COLOR_PARSE
   #:PANGO_COLOR_COPY
   #:PANGO_COLOR_FREE
   #:PANGO_COLOR_TO_STRING
   #:PANGOATTRLIST
   #:PANGO_ATTR_LIST_NEW
   #:PANGO_ATTR_LIST_REF
   #:PANGO_ATTR_LIST_UNREF
   #:PANGO_ATTR_LIST_COPY
   #:PANGO_ATTR_LIST_INSERT
   #:PANGO_ATTR_LIST_INSERT_BEFORE
   #:PANGO_ATTR_LIST_CHANGE
   #:PANGO_ATTR_LIST_SPLICE
   #:PANGO_ATTR_LIST_FILTER
   #:PANGOATTRFILTERFUNC
   #:PANGO_ATTR_LIST_GET_ITERATOR
   #:PANGOATTRITERATOR
   #:PANGO_ATTR_ITERATOR_COPY
   #:PANGO_ATTR_ITERATOR_NEXT
   #:PANGO_ATTR_ITERATOR_RANGE
   #:PANGO_ATTR_ITERATOR_GET
   #:PANGO_ATTR_ITERATOR_GET_FONT
   #:PANGO_ATTR_ITERATOR_GET_ATTRS
   #:PANGO_ATTR_ITERATOR_DESTROY
   #:PANGOTABARRAY
   #:PANGO_TAB_ARRAY_NEW
   #:PANGO_TAB_ARRAY_NEW_WITH_POSITIONS
   #:PANGO_TAB_ARRAY_COPY
   #:PANGO_TAB_ARRAY_FREE
   #:PANGO_TAB_ARRAY_GET_SIZE
   #:PANGO_TAB_ARRAY_RESIZE
   #:PANGO_TAB_ARRAY_SET_TAB
   #:PANGO_TAB_ARRAY_GET_TAB
   #:PANGO_TAB_ARRAY_GET_TABS
   #:PANGO_TAB_ARRAY_GET_POSITIONS_IN_PIXELS
   #:PANGOLAYOUT
   #:PANGOLAYOUTITER
   #:PANGOGLYPHITEM
   #:PANGO_LAYOUT_NEW
   #:PANGO_LAYOUT_COPY
   #:PANGO_LAYOUT_GET_CONTEXT
   #:PANGO_LAYOUT_CONTEXT_CHANGED
   #:PANGO_LAYOUT_SET_TEXT
   #:PANGO_LAYOUT_GET_TEXT
   #:PANGO_LAYOUT_SET_MARKUP
   #:PANGO_LAYOUT_SET_MARKUP_WITH_ACCEL
   #:PANGO_LAYOUT_SET_ATTRIBUTES
   #:PANGO_LAYOUT_GET_ATTRIBUTES
   #:PANGO_LAYOUT_SET_FONT_DESCRIPTION
   #:PANGO_LAYOUT_GET_FONT_DESCRIPTION
   #:PANGO_LAYOUT_SET_WIDTH
   #:PANGO_LAYOUT_GET_WIDTH
   #:PANGO_LAYOUT_SET_HEIGHT
   #:PANGO_LAYOUT_GET_HEIGHT
   #:PANGO_LAYOUT_SET_WRAP
   #:PANGO_LAYOUT_GET_WRAP
   #:PANGO_LAYOUT_IS_WRAPPED
   #:PANGO_LAYOUT_SET_ELLIPSIZE
   #:PANGO_LAYOUT_GET_ELLIPSIZE
   #:PANGO_LAYOUT_IS_ELLIPSIZED
   #:PANGO_LAYOUT_SET_INDENT
   #:PANGO_LAYOUT_GET_INDENT
   #:PANGO_LAYOUT_GET_SPACING
   #:PANGO_LAYOUT_SET_SPACING
   #:PANGO_LAYOUT_SET_JUSTIFY
   #:PANGO_LAYOUT_GET_JUSTIFY
   #:PANGO_LAYOUT_SET_AUTO_DIR
   #:PANGO_LAYOUT_GET_AUTO_DIR
   #:PANGO_LAYOUT_SET_ALIGNMENT
   #:PANGO_LAYOUT_GET_ALIGNMENT
   #:PANGO_LAYOUT_SET_TABS
   #:PANGO_LAYOUT_GET_TABS
   #:PANGO_LAYOUT_SET_SINGLE_PARAGRAPH_MODE
   #:PANGO_LAYOUT_GET_SINGLE_PARAGRAPH_MODE
   #:PANGO_LAYOUT_GET_UNKNOWN_GLYPHS_COUNT
   #:PANGO_LAYOUT_GET_LOG_ATTRS
   #:PANGO_LAYOUT_INDEX_TO_POS
   #:PANGO_LAYOUT_INDEX_TO_LINE_X
   #:PANGO_LAYOUT_XY_TO_INDEX
   #:PANGO_LAYOUT_GET_CURSOR_POS
   #:PANGO_LAYOUT_MOVE_CURSOR_VISUALLY
   #:PANGO_LAYOUT_GET_EXTENTS
   #:PANGO_LAYOUT_GET_PIXEL_EXTENTS
   #:PANGO_LAYOUT_GET_SIZE
   #:PANGO_LAYOUT_GET_PIXEL_SIZE
   #:PANGO_LAYOUT_GET_BASELINE
   #:PANGO_LAYOUT_GET_LINE_COUNT
   #:PANGO_LAYOUT_GET_LINE
   #:PANGO_LAYOUT_GET_LINE_READONLY
   #:PANGO_LAYOUT_GET_LINES
   #:PANGO_LAYOUT_GET_LINES_READONLY
   #:PANGO_LAYOUT_GET_ITER
   #:PANGO_LAYOUT_ITER_COPY
   #:PANGO_LAYOUT_ITER_FREE
   #:PANGO_LAYOUT_ITER_NEXT_RUN
   #:PANGO_LAYOUT_ITER_NEXT_CHAR
   #:PANGO_LAYOUT_ITER_NEXT_CLUSTER
   #:PANGO_LAYOUT_ITER_NEXT_LINE
   #:PANGO_LAYOUT_ITER_AT_LAST_LINE
   #:PANGO_LAYOUT_ITER_GET_INDEX
   #:PANGO_LAYOUT_ITER_GET_BASELINE
   #:PANGO_LAYOUT_ITER_GET_RUN
   #:PANGO_LAYOUT_ITER_GET_RUN_READONLY
   #:PANGO_LAYOUT_ITER_GET_LINE
   #:PANGO_LAYOUT_ITER_GET_LINE_READONLY
   #:PANGO_LAYOUT_ITER_GET_LAYOUT
   #:PANGO_LAYOUT_ITER_GET_CHAR_EXTENTS
   #:PANGO_LAYOUT_ITER_GET_CLUSTER_EXTENTS
   #:PANGO_LAYOUT_ITER_GET_RUN_EXTENTS
   #:PANGO_LAYOUT_ITER_GET_LINE_YRANGE
   #:PANGO_LAYOUT_ITER_GET_LINE_EXTENTS
   #:PANGO_LAYOUT_ITER_GET_LAYOUT_EXTENTS
   #:PANGO_LAYOUT_LINE_REF
   #:PANGO_LAYOUT_LINE_UNREF
   #:PANGO_LAYOUT_LINE_GET_EXTENTS
   #:PANGO_LAYOUT_LINE_GET_PIXEL_EXTENTS
   #:PANGO_LAYOUT_LINE_INDEX_TO_X
   #:PANGO_LAYOUT_LINE_X_TO_INDEX
   #:PANGO_LAYOUT_LINE_GET_X_RANGES
   #:PANGOSCRIPTITER
   #:PANGO_SCRIPT_FOR_UNICHAR
   #:PANGO_SCRIPT_GET_SAMPLE_LANGUAGE
   #:PANGO_SCRIPT_ITER_NEW
   #:PANGO_SCRIPT_ITER_GET_RANGE
   #:PANGO_SCRIPT_ITER_NEXT
   #:PANGO_SCRIPT_ITER_FREE
   #:PANGOLANGUAGE
   #:PANGO_LANGUAGE_FROM_STRING
   #:PANGO_LANGUAGE_TO_STRING
   #:PANGO_LANGUAGE_MATCHES
   #:PANGO_LANGUAGE_INCLUDES_SCRIPT
   #:PANGO_LANGUAGE_GET_SCRIPTS
   #:PANGO_LANGUAGE_GET_DEFAULT
   #:PANGO_LANGUAGE_GET_SAMPLE_STRING
   #:PANGO_UNICHAR_DIRECTION
   #:PANGO_FIND_BASE_DIR
   #:PANGO_GET_MIRROR_CHAR
   #:PANGO_BIDI_TYPE_FOR_UNICHAR
   #:PANGO_GRAVITY_GET_FOR_MATRIX
   #:PANGO_GRAVITY_GET_FOR_SCRIPT
   #:PANGO_GRAVITY_GET_FOR_SCRIPT_AND_WIDTH
   #:PANGO_GRAVITY_TO_ROTATION
   #:PANGOCAIROFONT
   #:PANGOCAIROFONTMAP
   #:CAIRO_T
   #:CAIRO_FONT_TYPE_T
   #:PANGO_CAIRO_FONT_MAP_GET_DEFAULT
   #:PANGO_CAIRO_FONT_MAP_SET_DEFAULT
   #:PANGO_CAIRO_FONT_MAP_NEW
   #:PANGO_CAIRO_FONT_MAP_NEW_FOR_FONT_TYPE
   #:PANGO_CAIRO_FONT_MAP_GET_FONT_TYPE
   #:PANGO_CAIRO_FONT_MAP_SET_RESOLUTION
   #:PANGO_CAIRO_FONT_MAP_GET_RESOLUTION
   #:PANGO_CAIRO_FONT_MAP_CREATE_CONTEXT
   #:PANGO_CAIRO_FONT_GET_SCALED_FONT
   #:PANGO_CAIRO_CONTEXT_SET_RESOLUTION
   #:PANGO_CAIRO_CONTEXT_GET_RESOLUTION
   #:PANGO_CAIRO_CONTEXT_SET_FONT_OPTIONS
   #:PANGO_CAIRO_CONTEXT_GET_FONT_OPTIONS
   #:PANGOCAIROSHAPERENDERERFUNC
   #:PANGO_CAIRO_CONTEXT_SET_SHAPE_RENDERER
   #:PANGO_CAIRO_CONTEXT_GET_SHAPE_RENDERER
   #:PANGO_CAIRO_CREATE_CONTEXT
   #:PANGO_CAIRO_UPDATE_CONTEXT
   #:PANGO_CAIRO_CREATE_LAYOUT
   #:PANGO_CAIRO_UPDATE_LAYOUT
   #:PANGO_CAIRO_SHOW_GLYPH_STRING
   #:PANGO_CAIRO_SHOW_GLYPH_ITEM
   #:PANGO_CAIRO_SHOW_LAYOUT_LINE
   #:PANGO_CAIRO_SHOW_LAYOUT
   #:PANGO_CAIRO_SHOW_ERROR_UNDERLINE
   #:PANGO_CAIRO_GLYPH_STRING_PATH
   #:PANGO_CAIRO_LAYOUT_LINE_PATH
   #:PANGO_CAIRO_LAYOUT_PATH
   #:PANGO_CAIRO_ERROR_UNDERLINE_PATH
   #:EZCOLOR
   #:GET-LINE-FROM-POSITION
   #:GET-LAYOUT-SIZE
   #:GET-LAYOUT-EXTENTS
   #:GET-LAYOUT-LINE-EXTENTS
   #:GET-LAYOUT-LINES-DATA
   #:MOVE-CURSOR-VISUALLY
   #:GET-LAYOUT-LINES
   #:GET-PREVIOUS-LINE
   #:LAYOUT-LINE-INDEX-TO-X
   #:LAYOUT-LINE-X-TO-INDEX
   #:GET-CURSOR-POS
   #:LIST-FONT-FAMILIES
   #:LIST-FONT-FAMILY-NAMES
   #:LIST-FONT-FACES
   ))
