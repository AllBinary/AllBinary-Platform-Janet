# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CustomCustomItem :as CustomCustomItem)
(defn- ABStringComponent/jstatic_NULL_STRING_COMPONENT [& args] (JR/call jfile "./ABStringComponent" "jstatic_NULL_STRING_COMPONENT" args))

# Java class ABTextItem
(var jproto nil)
(var jnew_5 nil)
(var jm_keyPressed nil)
(var jm_paintUnselected nil)
(var jm_getLabelStringComponent nil)
(var jm_getMinimumWidth nil)
(var jm_getMinimumHeight nil)
(var jm_getLabel nil)
(var jm_paintXY nil)

    
(set jnew_5 (fn jnew_5 [_label _layout _altText _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ABTextItem"} jproto))
        (JR/superInit this (CustomCustomItem/jnew_3 _label _backgroundBasicColor _foregroundBasicColor))
    this))
    
(set jm_keyPressed (fn jm_keyPressed [this _keyCode]
    nil))
    
(set jm_paintUnselected (fn jm_paintUnselected [this _graphics _x _y]
    nil))
    
(set jm_getLabelStringComponent (fn jm_getLabelStringComponent [this]
    (label jreturn
        (return jreturn (ABStringComponent/jstatic_NULL_STRING_COMPONENT)))))
    
(set jm_getMinimumWidth (fn jm_getMinimumWidth [this]
    (label jreturn
        (return jreturn ((get CustomCustomItem/jproto :jm_getMinimumWidth) this)))))
    
(set jm_getMinimumHeight (fn jm_getMinimumHeight [this]
    (label jreturn
        (return jreturn ((get CustomCustomItem/jproto :jm_getMinimumHeight) this)))))
    
(set jm_getLabel (fn jm_getLabel [this]
    (label jreturn
        (return jreturn ((get CustomCustomItem/jproto :jm_getLabel) this)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        ((get CustomCustomItem/jproto :jm_paintXY) this _graphics _x _y)))

(set jproto (table/setproto @{:jm_keyPressed jm_keyPressed :jm_paintUnselected jm_paintUnselected :jm_getLabelStringComponent jm_getLabelStringComponent :jm_getMinimumWidth jm_getMinimumWidth :jm_getMinimumHeight jm_getMinimumHeight :jm_getLabel jm_getLabel :jm_paintXY jm_paintXY} CustomCustomItem/jproto))


