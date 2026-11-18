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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- ScaleProperties/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/media/ScaleProperties" "jnew_0" args))
(defn- CustomTextAnimation/jnew_3 [& args] (JR/call jfile "./CustomTextAnimation" "jnew_3" args))
(defn- AdjustCustomTextAnimation/jnew_5 [& args] (JR/call jfile "./AdjustCustomTextAnimation" "jnew_5" args))

# Java class CustomTextAnimationFactory
(var jproto nil)
(var jnew_3 nil)
(var jm_createDXY nil)
(var jm_getInstance nil)
(var jm_setInitialScale nil)
(var jm_getWidth nil)
(var jm_getHeight nil)

    
(set jm_createDXY (fn jm_createDXY [_text _fontSize _dx _dy _animationBehaviorFactory]
    (label jreturn
        (var _customTextAnimationFactory (jnew_3 _text _fontSize _animationBehaviorFactory))
        (set (_customTextAnimationFactory :f_dx) _dx)
        (set (_customTextAnimationFactory :f_dy) _dy)
        (return jreturn _customTextAnimationFactory))))
    
(set jnew_3 (fn jnew_3 [_text _fontSize _animationBehaviorFactory]
    (var this (table/setproto @{:jclass "CustomTextAnimationFactory" :f_logUtil nil :f_animationBehaviorFactory nil :f_basicColor nil :f_text nil :f_initScaleHeight 0 :f_dx 0 :f_dy 0 :f_font nil :f_scaleProperties nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_BLACK))
    
    
    (put this :f_dx 0)
    (put this :f_dy 0)
    
    
        (set (this :f_scaleProperties) (ScaleProperties/jnew_0))
        (set (this :f_text) _text)
        (set ((this :f_scaleProperties) :f_scaleHeight) (JR/i32 (- _fontSize (JR/idiv _fontSize 4))))
        (set (this :f_initScaleHeight) ((this :f_scaleProperties) :f_scaleHeight))
        (set (this :f_animationBehaviorFactory) _animationBehaviorFactory)
        (set (this :f_font) (Font/jm_getFont (Font/jstatic_FACE_SYSTEM) (Font/jstatic_STYLE_PLAIN) (this :f_initScaleHeight)))
    this))
    
(set jm_getInstance (fn jm_getInstance [this _instanceId]
    (label jreturn
        (var _customTextAnimation nil)
        (if (or (not= (this :f_dx) 0) (not= (this :f_dy) 0))
            (do
            (set _customTextAnimation (AdjustCustomTextAnimation/jnew_5 (this :f_text) ((this :f_scaleProperties) :f_scaleHeight) (this :f_dx) (this :f_dy) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory)))))
            (do
            (set _customTextAnimation (CustomTextAnimation/jnew_3 (this :f_text) ((this :f_scaleProperties) :f_scaleHeight) (:jm_getOrCreateInstance (this :f_animationBehaviorFactory))))))
        (:jm_setBasicColorP _customTextAnimation (this :f_basicColor))
        (return jreturn _customTextAnimation))))
    
(set jm_setInitialScale (fn jm_setInitialScale [this _scaleProperties]
    nil))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn (:jm_stringWidth (this :f_font) (this :f_text))))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn (:jm_getHeight (this :f_font))))))

(set jproto @{:jm_getInstance jm_getInstance :jm_setInitialScale jm_setInitialScale :jm_getWidth jm_getWidth :jm_getHeight jm_getHeight})


