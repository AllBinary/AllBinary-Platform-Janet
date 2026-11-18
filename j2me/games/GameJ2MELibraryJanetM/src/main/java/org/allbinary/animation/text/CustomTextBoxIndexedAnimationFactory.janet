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
(defn- Font/jm_getFont [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Font" "jm_getFont" args))
(defn- Font/jstatic_FACE_SYSTEM [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Font" "jstatic_FACE_SYSTEM" args))
(defn- Font/jstatic_STYLE_PLAIN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Font" "jstatic_STYLE_PLAIN" args))
(defn- TextField/jstatic_ANY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/TextField" "jstatic_ANY" args))
(defn- ABToGBUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/canvas/ABToGBUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- ScaleProperties/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/media/ScaleProperties" "jnew_0" args))
(defn- CustomTextBox2/jnew_8 [& args] (JR/call jfile "./CustomTextBox2" "jnew_8" args))
(defn- CustomTextBoxIndexedAnimation/jnew_1 [& args] (JR/call jfile "./CustomTextBoxIndexedAnimation" "jnew_1" args))

# Java class CustomTextBoxIndexedAnimationFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_getInstance nil)
(var jm_setInitialScale nil)

    
(set jnew_2 (fn jnew_2 [_fontSize _maxLength]
    (var this (table/setproto @{:jclass "CustomTextBoxIndexedAnimationFactory" :f_logUtil nil :f_scaleProperties nil :f_maxLength 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
        (set (this :f_scaleProperties) (ScaleProperties/jnew_0))
        (set ((this :f_scaleProperties) :f_scaleHeight) _fontSize)
        (set (this :f_maxLength) _maxLength)
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _abToGBUtil (ABToGBUtil/jm_getInstance))
        (var _abCanvas (_abToGBUtil :f_abCanvas))
        (var _font (Font/jm_getFont (Font/jstatic_FACE_SYSTEM) (Font/jstatic_STYLE_PLAIN) ((this :f_scaleProperties) :f_scaleHeight)))
        (var _customTextBox (CustomTextBox2/jnew_8 (:jm_getCustomCommandListener _abCanvas) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (this :f_maxLength) (TextField/jstatic_ANY) _font (JR/className (:jm_getLayerManager _abCanvas)) (JR/className (:jm_getLayerManager _abCanvas))))
        (return jreturn (CustomTextBoxIndexedAnimation/jnew_1 _customTextBox)))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
        (var _fontSize ((this :f_scaleProperties) :f_scaleHeight))
        (set (this :f_scaleProperties) _scaleProperties)
        (if (< ((this :f_scaleProperties) :f_scaleHeight) 6)
            (do
            (set ((this :f_scaleProperties) :f_scaleHeight) _fontSize)))))

(set jproto @{:jm_getInstance jm_getInstance :jm_setInitialScale jm_setInitialScale})


