# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# package org.allbinary.animation.text

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnimationBehavior/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationBehavior" "jm_getInstance" args))
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- TextChangeListener/jm_getInstance [& args] (JR/call jfile "./TextChangeListener" "jm_getInstance" args))

# Java class CustomTextBoxIndexedAnimation
(var jproto nil)
(var jnew_1 nil)
(var jm_setBasicColorP nil)
(var jm_setBackgroundBasicColorP nil)
(var jm_setTextWithOnMeasure nil)
(var jm_updateMeasurement nil)
(var jm_setText nil)
(var jm_getText nil)
(var jm_onEventRaw nil)
(var jm_getFontHeight nil)
(var jm_paintXY nil)
(var jm_paintThreedXYZ nil)
(var jm_getWidth nil)

    
(set jnew_1 (fn jnew_1 [_customTextBox]
    (var this (table/setproto @{:jclass "CustomTextBoxIndexedAnimation" :f_customTextBox nil :f_lastText nil :f_hasChanged false :f_textChangeListener nil} jproto))
    
    (put this :f_lastText ((StringUtil/jm_getInstance) :f_INIT_STRING))
    (put this :f_hasChanged true)
    (put this :f_textChangeListener (TextChangeListener/jm_getInstance))
        (JR/superInit this (IndexedAnimation/jnew_1 (AnimationBehavior/jm_getInstance)))
        (set (this :f_customTextBox) _customTextBox)
    this))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (JR/className (:jm_getTextFieldItem (this :f_customTextBox)))))
    
(set jm_setBackgroundBasicColorP (fn jm_setBackgroundBasicColorP [this _basicColor]
        (JR/className (:jm_getTextFieldItem (this :f_customTextBox)))))
    
(set jm_setTextWithOnMeasure (fn jm_setTextWithOnMeasure [this _text _textChangeListener]
        (:jm_setText this _text)
        (set (this :f_textChangeListener) _textChangeListener)))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (:jm_onMeasure (this :f_textChangeListener))
        (set (this :f_textChangeListener) (TextChangeListener/jm_getInstance))))
    
(set jm_setText (fn jm_setText [this _text]
        (if (not= (this :f_lastText) _text)
            (do
            (set (this :f_hasChanged) true)
            (set (this :f_lastText) _text)
            (JR/className (:jm_getTextFieldItem (this :f_customTextBox)))))))
    
(set jm_getText (fn jm_getText [this]
    (label jreturn
        (return jreturn (JR/className (:jm_getTextFieldItem (this :f_customTextBox)))))))
    
(set jm_onEventRaw (fn jm_onEventRaw [this _keyCode _deviceId _repeated]
        (:jm_onEventRaw (this :f_customTextBox) _keyCode _deviceId _repeated)))
    
(set jm_getFontHeight (fn jm_getFontHeight [this]
    (label jreturn
        (return jreturn (JR/className (:jm_getTextFieldItem (this :f_customTextBox)))))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_paintXY (this :f_customTextBox) _graphics _x _y)))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
    nil))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn ((get IndexedAnimation/jproto :jm_getWidth) this)))))

(set jproto (table/setproto @{:jm_setBasicColorP jm_setBasicColorP :jm_setBackgroundBasicColorP jm_setBackgroundBasicColorP :jm_setTextWithOnMeasure jm_setTextWithOnMeasure :jm_updateMeasurement jm_updateMeasurement :jm_setText jm_setText :jm_getText jm_getText :jm_onEventRaw jm_onEventRaw :jm_getFontHeight jm_getFontHeight :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ :jm_getWidth jm_getWidth} IndexedAnimation/jproto))


