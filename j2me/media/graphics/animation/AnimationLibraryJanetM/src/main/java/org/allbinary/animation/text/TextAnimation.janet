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
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- SWTJOGLProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- TextChangeListener/jm_getInstance [& args] (JR/call jfile "./TextChangeListener" "jm_getInstance" args))

# Java class TextAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_updateMeasurement nil)
(var jm_nextFrame nil)
(var jm_paintXY nil)
(var jm_paintXYNoUpdate nil)
(var jm_setTextWithOnMeasure nil)
(var jm_setText nil)
(var jm_getTextArray nil)
(var jm_getFontHeight nil)

    
(set jnew_2 (fn jnew_2 [_text _animationBehavior]
    (var this (table/setproto @{:jclass "TextAnimation" :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_textArrayP nil :f_anchor 0 :f_fontHeight 0 :f_offsetY 0 :f_textChangeListener nil} jproto))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_textArrayP ((StringUtil/jm_getInstance) :f_ONE_EMPTY_STRING_ARRAY))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    (put this :f_fontHeight 0)
    (put this :f_offsetY 0)
    (put this :f_textChangeListener (TextChangeListener/jm_getInstance))
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (:jm_setText this _text)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_fontHeight) (:jm_getHeight _font))
        (var _adjustedFontHeight (JR/d2i (- (* (this :f_fontHeight) 2.00))))
        (set (this :f_offsetY) (if (:jm_isJOGL (SWTJOGLProcessor/jm_getInstance)) _adjustedFontHeight 0))
        (:jm_onMeasure (this :f_textChangeListener))
        (set (this :f_textChangeListener) (TextChangeListener/jm_getInstance))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_nextFrame (fn jm_nextFrame [this]
    nil))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_paintXYNoUpdate this _graphics _x _y)))
    
(set jm_paintXYNoUpdate (fn jm_paintXYNoUpdate [this _graphics _x _y]
        (JR/className (this :f_basicSetColorUtil))
        (var _size (length (this :f_textArrayP)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_drawString _graphics ((this :f_textArrayP) _index) _x (JR/i32 (+ (JR/i32 (+ _y (this :f_offsetY))) (JR/i32 (* _index (this :f_fontHeight))))) (this :f_anchor)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_setTextWithOnMeasure (fn jm_setTextWithOnMeasure [this _text _textChangeListener]
        (:jm_setText this _text)
        (set (this :f_textChangeListener) _textChangeListener)))
    
(set jm_setText (fn jm_setText [this _text]
        (var _list (BasicArrayListD/jnew_0))
        (if (> (length _text) 0)
            (do
            (var _index 0)
            (var _startIndex 0)
            (var _endIndex 0)
            (do
                (var jbreak false)
                (while (and (not jbreak) (>= _index 0))
                    (label jcontinue
                (set _startIndex _index)
                (set _index (JR/indexOf _text (get "\n" 0) _startIndex))
                (set _endIndex _index)
                (if (< _index 0)
                    (do
                    (set _endIndex (length _text))))
                (:jm_add _list (JR/substring _text _startIndex _endIndex))
                (if (< _index 0)
                    (do
                    (do (set jbreak true) (return jcontinue))))
                (set _index (JR/i32 (+ _index 1))))))))
        (if (> (:jm_size _list) 0)
            (do
            (var _textArray (array/new-filled (:jm_size _list) nil))
            (var _size (:jm_size _list))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (set (_textArray _index) (:jm_get _list _index)))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (set (this :f_textArrayP) _textArray))
            (do
            (set (this :f_textArrayP) ((StringUtil/jm_getInstance) :f_ONE_EMPTY_STRING_ARRAY))))
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_getTextArray (fn jm_getTextArray [this]
    (label jreturn
        (return jreturn (this :f_textArrayP)))))
    
(set jm_getFontHeight (fn jm_getFontHeight [this]
    (label jreturn
        (return jreturn (this :f_fontHeight)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_nextFrame jm_nextFrame :jm_paintXY jm_paintXY :jm_paintXYNoUpdate jm_paintXYNoUpdate :jm_setTextWithOnMeasure jm_setTextWithOnMeasure :jm_setText jm_setText :jm_getTextArray jm_getTextArray :jm_getFontHeight jm_getFontHeight} IndexedAnimation/jproto))


