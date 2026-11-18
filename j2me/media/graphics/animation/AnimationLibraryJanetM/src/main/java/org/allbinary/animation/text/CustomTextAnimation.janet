#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
(defn- FontDebugFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/FontDebugFactory" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./TextAnimation :as TextAnimation)

# Java class CustomTextAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_paintXY nil)
(var jm_setScale nil)
(var jm_setTextWithOnMeasure nil)
(var jm_setText nil)
(var jm_getText nil)
(var jm_getWidth nil)
(var jm_getFontHeight nil)

    
(set jnew_3 (fn jnew_3 [_text _fontSize _animationBehavior]
    (var this (table/setproto @{:jclass "CustomTextAnimation" :f_fontDebugFactory nil :f_fontSize 0 :f_font nil :f_lastText nil :f_hasChanged false :f_textWidth 0} jproto))
    (put this :f_fontDebugFactory (FontDebugFactory/jm_getInstance))
    
    
    (put this :f_lastText ((StringUtil/jm_getInstance) :f_INIT_STRING))
    (put this :f_hasChanged true)
    
        (JR/superInit this (TextAnimation/jnew_2 _text _animationBehavior))
        (set (this :f_fontSize) _fontSize)
        (set (this :f_font) (Font/jm_getFont (Font/jstatic_FACE_SYSTEM) (Font/jstatic_STYLE_PLAIN) _fontSize))
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_myFontProcessor))
        (var _existingFont (:jm_getFont _graphics))
        (:jm_setFont (this :f_fontDebugFactory) (this :f_font) _graphics)
        ((get TextAnimation/jproto :jm_paintXYNoUpdate) this _graphics _x _y)
        (:jm_setFont (this :f_fontDebugFactory) _existingFont _graphics)))
    
(set jm_setScale (fn jm_setScale [this _scaleX _scaleY]
        (if (not= _scaleX _scaleY)
            (do
            (error (JR/newException "RuntimeException"))))
        (set (this :f_hasChanged) true)
        (set (this :f_font) (Font/jm_getFont (Font/jstatic_FACE_SYSTEM) (Font/jstatic_STYLE_PLAIN) (JR/d2i (* (this :f_fontSize) _scaleX))))))
    
(set jm_setTextWithOnMeasure (fn jm_setTextWithOnMeasure [this _text _textChangeListener]
        ((get TextAnimation/jproto :jm_setTextWithOnMeasure) this _text _textChangeListener)))
    
(set jm_setText (fn jm_setText [this _text]
        (if (not= (this :f_lastText) _text)
            (do
            (set (this :f_hasChanged) true)
            (set (this :f_lastText) _text)
            ((get TextAnimation/jproto :jm_setText) this _text)))))
    
(set jm_getText (fn jm_getText [this]
    (label jreturn
        (return jreturn (this :f_lastText)))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (if (this :f_hasChanged)
            (do
            (set (this :f_textWidth) (:jm_stringWidth (this :f_font) ((this :f_textArrayP) 0)))
            (set (this :f_hasChanged) false)))
        (return jreturn (this :f_textWidth)))))
    
(set jm_getFontHeight (fn jm_getFontHeight [this]
    (label jreturn
        (return jreturn (:jm_getHeight (this :f_font))))))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY :jm_setScale jm_setScale :jm_setTextWithOnMeasure jm_setTextWithOnMeasure :jm_setText jm_setText :jm_getText jm_getText :jm_getWidth jm_getWidth :jm_getFontHeight jm_getFontHeight} TextAnimation/jproto))


