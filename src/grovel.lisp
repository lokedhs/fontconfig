(in-package :fontconfig)

(include "fontconfig/fontconfig.h")

(ctype fc-bool "FcBool")

(cenum (fc-type)
       ((:fc-type-unknown "FcTypeUnknown"))
       ((:fc-type-void "FcTypeVoid"))
       ((:fc-type-integer "FcTypeInteger"))
       ((:fc-type-double "FcTypeDouble"))
       ((:fc-type-string "FcTypeString"))
       ((:fc-type-bool "FcTypeBool"))
       ((:fc-type-matrix "FcTypeMatrix"))
       ((:fc-type-char-set "FcTypeCharSet"))
       ((:fc-type-ft-face "FcTypeFTFace"))
       ((:fc-type-lang-set "FcTypeLangSet"))
       ((:fc-type-range "FcTypeRange")))

(cenum (fc-result)
       ((:fc-result-match "FcResultMatch"))
       ((:fc-result-no-match "FcResultNoMatch"))
       ((:fc-result-type-mismatch "FcResultTypeMismatch"))
       ((:fc-result-no-id "FcResultNoId"))
       ((:fc-result-out-of-memory "FcResultOutOfMemory")))

(cstruct fc-matrix "FcMatrix"
         (xx "xx" :type :double)
         (xy "xy" :type :double)
         (yx "yx" :type :double)
         (yy "yy" :type :double))

(cstruct fc-value "FcValue"
         (type "type" :type fc-type)
         (value-fchar8 "u.s" :type :pointer)
         (value-int "u.i" :type :int)
         (value-bool "u.b" :type fc-bool)
         (value-double "u.d" :type :double)
         (value-matrix "u.m" :type (:pointer (:struct fc-matrix)))
         (value-char-set "u.c" :type :pointer)
         (value-ptr "u.f" :type :pointer)
         (value-lang-set "u.l" :type :pointer)
         (value-range "u.r" :type :pointer))
