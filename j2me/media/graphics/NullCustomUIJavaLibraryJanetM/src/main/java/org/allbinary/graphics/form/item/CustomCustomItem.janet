# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ./ABCustomItem :as ABCustomItem)

# Java class CustomCustomItem
(var jproto nil)
(var jnew_3 nil)
(var jm_updateMeasurement nil)

    
(set jnew_3 (fn jnew_3 [_label _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "CustomCustomItem" :f_updateMyFontProcessor nil :f_myFontProcessor nil} jproto))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
        (JR/superInit this (ABCustomItem/jnew_3 _label _backgroundBasicColor _foregroundBasicColor))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
    nil))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement} ABCustomItem/jproto))


