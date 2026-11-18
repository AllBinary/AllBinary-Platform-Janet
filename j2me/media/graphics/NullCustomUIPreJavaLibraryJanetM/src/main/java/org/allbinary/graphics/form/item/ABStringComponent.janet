# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))

# Java class ABStringComponent
(var jproto nil)
(var jcell_NULL_STRING_COMPONENT :jnone)
(var jstatic_NULL_STRING_COMPONENT nil)
(var jsetstatic_NULL_STRING_COMPONENT nil)
(var jnew_2 nil)
(var jm_getBackgroundBasicColor nil)
(var jm_getForegroundBasicColor nil)
(var jm_setForegroundBasicColor nil)

(set jstatic_NULL_STRING_COMPONENT (fn jstatic_NULL_STRING_COMPONENT []
  (when (= jcell_NULL_STRING_COMPONENT :jnone) (set jcell_NULL_STRING_COMPONENT (jnew_2 ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE))))
  jcell_NULL_STRING_COMPONENT))
(set jsetstatic_NULL_STRING_COMPONENT (fn jsetstatic_NULL_STRING_COMPONENT [value] (set jcell_NULL_STRING_COMPONENT value)))

    
(set jm_getBackgroundBasicColor (fn jm_getBackgroundBasicColor [this]
    (label jreturn
        (return jreturn ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
    
(set jnew_2 (fn jnew_2 [_backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ABStringComponent"} jproto))
    this))
    
(set jm_getForegroundBasicColor (fn jm_getForegroundBasicColor [this]
    (label jreturn
        (return jreturn ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
    
(set jm_setForegroundBasicColor (fn jm_setForegroundBasicColor [this _foregroundBasicColor]
    nil))

(set jproto @{:jm_getBackgroundBasicColor jm_getBackgroundBasicColor :jm_getForegroundBasicColor jm_getForegroundBasicColor :jm_setForegroundBasicColor jm_setForegroundBasicColor})


