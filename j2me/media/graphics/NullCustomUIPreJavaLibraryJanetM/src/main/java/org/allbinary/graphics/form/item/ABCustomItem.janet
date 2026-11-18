# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class ABCustomItem
(var jproto nil)
(var jcell_NULL_CUSTOM_ITEM :jnone)
(var jstatic_NULL_CUSTOM_ITEM nil)
(var jsetstatic_NULL_CUSTOM_ITEM nil)
(var jnew_3 nil)
(var jm_getNullInstance nil)
(var jm_setOwner nil)
(var jm_paintXY nil)
(var jm_paintUnselected nil)
(var jm_isFocusable nil)
(var jm_getLabel nil)
(var jm_setLabel nil)
(var jm_getHeight nil)
(var jm_setHeight nil)
(var jm_getValue nil)
(var jm_setValue nil)
(var jm_getMinimumWidth nil)
(var jm_getMinimumHeight nil)
(var jm_preMeasurement nil)

(set jstatic_NULL_CUSTOM_ITEM (fn jstatic_NULL_CUSTOM_ITEM []
  (when (= jcell_NULL_CUSTOM_ITEM :jnone) (set jcell_NULL_CUSTOM_ITEM ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_CUSTOM_ITEM))
(set jsetstatic_NULL_CUSTOM_ITEM (fn jsetstatic_NULL_CUSTOM_ITEM [value] (set jcell_NULL_CUSTOM_ITEM value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_NULL_CUSTOM_ITEM) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_CUSTOM_ITEM (jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
        (return jreturn (jstatic_NULL_CUSTOM_ITEM)))))
    
(set jnew_3 (fn jnew_3 [_label _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ABCustomItem"} jproto))
    this))
    
(set jm_setOwner (fn jm_setOwner [this _owner]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    nil))
    
(set jm_paintUnselected (fn jm_paintUnselected [this _graphics _x _y]
    nil))
    
(set jm_isFocusable (fn jm_isFocusable [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getLabel (fn jm_getLabel [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_setLabel (fn jm_setLabel [this _label]
    nil))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_setHeight (fn jm_setHeight [this _height]
    nil))
    
(set jm_getValue (fn jm_getValue [this]
    (label jreturn
        (return jreturn 0.0))))
    
(set jm_setValue (fn jm_setValue [this _value]
    nil))
    
(set jm_getMinimumWidth (fn jm_getMinimumWidth [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_getMinimumHeight (fn jm_getMinimumHeight [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_preMeasurement (fn jm_preMeasurement [this _graphics]
    nil))

(set jproto @{:jm_setOwner jm_setOwner :jm_paintXY jm_paintXY :jm_paintUnselected jm_paintUnselected :jm_isFocusable jm_isFocusable :jm_getLabel jm_getLabel :jm_setLabel jm_setLabel :jm_getHeight jm_getHeight :jm_setHeight jm_setHeight :jm_getValue jm_getValue :jm_setValue jm_setValue :jm_getMinimumWidth jm_getMinimumWidth :jm_getMinimumHeight jm_getMinimumHeight :jm_preMeasurement jm_preMeasurement})


