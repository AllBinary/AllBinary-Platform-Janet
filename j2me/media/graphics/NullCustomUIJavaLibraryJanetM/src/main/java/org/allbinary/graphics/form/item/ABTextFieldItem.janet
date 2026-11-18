# Generated Code Do Not Modify
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./ABTextItem :as ABTextItem)

# Java class ABTextFieldItem
(var jproto nil)
(var jnew_10 nil)
(var jm_getLabel nil)
(var jm_setLabel nil)
(var jm_getString nil)
(var jm_setString nil)
(var jm_setFocus nil)
(var jm_getFontHeight nil)
(var jm_setBackgroundBasicColorP nil)
(var jm_setForegroundBasicColorP nil)

    
(set jnew_10 (fn jnew_10 [_canvas _visitor _label _value _maxSize _layout _altText _font _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "ABTextFieldItem" :f_font nil} jproto))
    
        (JR/superInit this (ABTextItem/jnew_5 _label _layout _altText _backgroundBasicColor _foregroundBasicColor))
        (set (this :f_font) _font)
    this))
    
(set jm_getLabel (fn jm_getLabel [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_setLabel (fn jm_setLabel [this _label]
    nil))
    
(set jm_getString (fn jm_getString [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_setString (fn jm_setString [this _string]
    nil))
    
(set jm_setFocus (fn jm_setFocus [this _state]
    nil))
    
(set jm_getFontHeight (fn jm_getFontHeight [this]
    (label jreturn
        (return jreturn (:jm_getHeight (this :f_font))))))
    
(set jm_setBackgroundBasicColorP (fn jm_setBackgroundBasicColorP [this _basicColor]
    nil))
    
(set jm_setForegroundBasicColorP (fn jm_setForegroundBasicColorP [this _basicColor]
    nil))

(set jproto (table/setproto @{:jm_getLabel jm_getLabel :jm_setLabel jm_setLabel :jm_getString jm_getString :jm_setString jm_setString :jm_setFocus jm_setFocus :jm_getFontHeight jm_getFontHeight :jm_setBackgroundBasicColorP jm_setBackgroundBasicColorP :jm_setForegroundBasicColorP jm_setForegroundBasicColorP} ABTextItem/jproto))


