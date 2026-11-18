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
# package org.allbinary.graphics.draw

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- OpenGLFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class DrawVerticalStringUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_updateMeasurement nil)
(var jm_paintVerticle nil)
(var jm_drawCenterString nil)
(var jm_drawCenterStrings nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DrawVerticalStringUtil" :f_EMPTY_STRING nil :f_anchor 0 :f_charHeight 0 :f_offsetY 0 :f_offsetXArray nil} jproto))
    (put this :f_EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    
    (put this :f_offsetXArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics _string]
        (var _openGLFeatureUtil (OpenGLFeatureUtil/jm_getInstance))
        (var _font (:jm_getFont _graphics))
        (set (this :f_charHeight) (:jm_getHeight _font))
        (set (this :f_offsetY) 0)
        (if (J2MEUtil/jm_isHTML)
            (do
            (set (this :f_charHeight) (JR/i32 (+ (this :f_charHeight) 1))))
            (if (:jm_isAnyThreed _openGLFeatureUtil)
            (do
            (set (this :f_charHeight) (JR/i32 (+ (this :f_charHeight) 2)))
            (if (AndroidUtil/jm_isAndroid)
                (do
                nil)
                (do
                (set (this :f_offsetY) (JR/i32 (+ 2 (JR/idiv (JR/i32 (* (this :f_charHeight) 2)) 3)))))))))
        (var _size (length _string))
        (var _aChar 0)
        (var _offsetXArray (array/new-filled _size 0))
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (set _aChar (get _string _index))
            (if (:jm_isAnyThreed _openGLFeatureUtil)
                (do
                (set (_offsetXArray _index) (JR/idiv (:jm_charWidth _font _aChar) 2)))))
                (do (set _index (JR/i32 (- _index 1))))))
        (set (this :f_offsetXArray) _offsetXArray)))
    
(set jm_paintVerticle (fn jm_paintVerticle [this _graphics _string _x _y _anchor]
        (var _size (length _string))
        (var _aChar 0)
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (set _aChar (get _string _index))
            (:jm_drawChar _graphics _aChar (JR/i32 (+ _x ((this :f_offsetXArray) _index))) (JR/i32 (+ (JR/i32 (+ _y (JR/i32 (* (this :f_charHeight) _index)))) (this :f_offsetY))) _anchor))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_drawCenterString (fn jm_drawCenterString [this _graphics _string _offset _length _x _y]
        (var _width (brshift (JR/className (:jm_getFont _graphics)) 1))
        (try
            (do
            (:jm_drawSubstring _graphics _string _offset _length (JR/i32 (- _x _width)) _y (this :f_anchor)))
            ([_e] (do
            (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) "Exception: stringLength: ") (length _string)) " offset: ") _offset) " currentLength: ") _length)) this "drawCenterString"))))))
    
(set jm_drawCenterStrings (fn jm_drawCenterStrings [this _graphics _stringArray _maxWidth _x _y]
        (var _extraLines 0)
        (do
            (var _index 0)
            (while (< _index (length _stringArray))
                (do
            (var _string (_stringArray _index))
            (if (not= _string (this :f_EMPTY_STRING))
                (do
                (var _width (JR/className (:jm_getFont _graphics)))
                (var _minTotalLines 1)
                (if (> _width _maxWidth)
                    (do
                    (set _minTotalLines (JR/i32 (+ (JR/idiv _width _maxWidth) 1)))))
                (var _linePortion (JR/idiv (length _string) _minTotalLines))
                (var _offset 0)
                (var _currentLength _linePortion)
                (var _size (length _string))
                (do
                    (while (< _offset _size)
                        (do
                    (if (> (JR/i32 (+ _offset _currentLength)) _size)
                        (do
                        (set _currentLength (JR/i32 (- _size _offset)))))
                    (if (not= (JR/i32 (+ _offset _currentLength)) _size)
                        (do
                        (do
                            (while (and (> _currentLength 0) (not= (JR/className (_stringArray _index)) (get " " 0)))
                                (do
                            (set _currentLength (JR/i32 (- _currentLength 1))))))
                        (if (<= _currentLength 4)
                            (do
                            (set _currentLength _linePortion)))))
                    (:jm_drawCenterString this _graphics _string _offset _currentLength _x (JR/i32 (+ _y (JR/i32 (* (JR/i32 (+ _index (do (def jold _extraLines) (set _extraLines (JR/i32 (+ _extraLines 1))) jold))) (this :f_charHeight))))))
                    (set _offset (JR/i32 (+ _offset _currentLength)))
                    (set _currentLength _linePortion))))
                (set _extraLines (JR/i32 (- _extraLines 1))))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paintVerticle jm_paintVerticle :jm_drawCenterString jm_drawCenterString :jm_drawCenterStrings jm_drawCenterStrings})


