# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ABCustomItemInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getMinimumWidth nil)
(var jm_getMinimumHeight nil)
(var jm_getLabel nil)
(var jm_paintXY nil)
(var jm_paintUnselected nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ABCustomItemInterface"} jproto))
    this))

    
(set jm_getMinimumWidth (fn jm_getMinimumWidth [this]
    (error (JR/newException "AbstractMethodError" "getMinimumWidth"))))
    
(set jm_getMinimumHeight (fn jm_getMinimumHeight [this]
    (error (JR/newException "AbstractMethodError" "getMinimumHeight"))))
    
(set jm_getLabel (fn jm_getLabel [this]
    (error (JR/newException "AbstractMethodError" "getLabel"))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    (error (JR/newException "AbstractMethodError" "paintXY"))))
    
(set jm_paintUnselected (fn jm_paintUnselected [this _graphics _x _y]
    (error (JR/newException "AbstractMethodError" "paintUnselected"))))

(set jproto @{:jm_getMinimumWidth jm_getMinimumWidth :jm_getMinimumHeight jm_getMinimumHeight :jm_getLabel jm_getLabel :jm_paintXY jm_paintXY :jm_paintUnselected jm_paintUnselected})


