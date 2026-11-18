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
# package org.allbinary.game.paint.help

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class HelpPaintable
(var jproto nil)
(var jnew_3 nil)
(var jm_updateMeasurement nil)
(var jm_setInputInfoP nil)
(var jm_paint nil)

    
(set jnew_3 (fn jnew_3 [_title _backgroundBasicColor _basicColor]
    (var this (table/setproto @{:jclass "HelpPaintable" :f_displayInfo nil :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_anchor 0 :f_title nil :f_inputInfo nil :f_basicColor nil :f_titleBeginWidth 0 :f_beginWidthArray nil :f_charHeight 0} jproto))
    (put this :f_displayInfo (DisplayInfoSingleton/jm_getInstance))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    (put this :f_inputInfo (:jm_getArrayInstance (StringUtil/jm_getInstance)))
    
    
    (put this :f_beginWidthArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY))
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_title) _title)
        (set (this :f_basicColor) _basicColor)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_titleBeginWidth) (brshift (:jm_stringWidth _font (this :f_title)) 1))
        (set (this :f_charHeight) (:jm_getHeight _font))
        (var _size (length (this :f_inputInfo)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_beginWidthArray) _index) (brshift (:jm_stringWidth _font ((this :f_inputInfo) _index)) 1)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_setInputInfoP (fn jm_setInputInfoP [this _inputInfo]
        (set (this :f_inputInfo) _inputInfo)
        (set (this :f_beginWidthArray) (array/new-filled (length (this :f_inputInfo)) 0))
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _halfWidth (:jm_getLastHalfWidth (this :f_displayInfo)))
        (:jm_setColor _graphics (:jm_intValue (this :f_basicColor)))
        (:jm_drawString _graphics (this :f_title) (JR/i32 (- _halfWidth (this :f_titleBeginWidth))) (this :f_charHeight) (this :f_anchor))
        (var _size (length (this :f_inputInfo)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_drawString _graphics ((this :f_inputInfo) _index) (JR/i32 (- _halfWidth ((this :f_beginWidthArray) _index))) (JR/i32 (* (JR/i32 (+ _index 3)) (this :f_charHeight))) (this :f_anchor)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_setInputInfoP jm_setInputInfoP :jm_paint jm_paint} Paintable/jproto))


