# Generated Code Do Not Modify
# package java.lang.annotation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class Annotation
(var jproto nil)
(var jnew_0 nil)
(var jm_annotationType nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Annotation"} jproto))
    this))

    
(set jm_annotationType (fn jm_annotationType [this]
    (error (JR/newException "AbstractMethodError" "annotationType"))))

(set jproto @{:jm_annotationType jm_annotationType})


