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
# package org.allbinary.game.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)

#J2MEForJ2ME
# Java class AboutPaintable
(var jproto nil)
(var jnew_2 nil)
(var jm_getInstance nil)
(var jm_updateMeasurement nil)
(var jm_getPaintableArrayInstance nil)
(var jm_paint nil)

    
(set jm_getInstance (fn jm_getInstance [_info _developers]
    (label jreturn
        (return jreturn (jnew_2 _info _developers)))))
    
(set jnew_2 (fn jnew_2 [_info _developers]
    (var this (table/setproto @{:jclass "AboutPaintable" :f_displayInfoSingleton nil :f_ABOUT nil :f_info nil :f_developers nil :f_paintableArray nil :f_myFontProcessor nil :f_charHeight 0 :f_aboutBeginWidth 0 :f_infoBeginWidth nil :f_developersBeginWidth nil :f_anchor 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_ABOUT ((CanvasStrings/jm_getInstance) :f_ABOUT))
    
    
    (put this :f_paintableArray @[this])
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    
    
    
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_info) _info)
        (set (this :f_infoBeginWidth) (array/new-filled (length (this :f_info)) 0))
        (set (this :f_developers) _developers)
        (set (this :f_developersBeginWidth) (array/new-filled (length (this :f_developers)) 0))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_charHeight) (:jm_getHeight _font))
        (set (this :f_aboutBeginWidth) (brshift (:jm_stringWidth _font (this :f_ABOUT)) 1))
        (var _infoSize (length (this :f_info)))
        (do
            (var _index 0)
            (while (< _index _infoSize)
                (do
            (set ((this :f_infoBeginWidth) _index) (brshift (:jm_stringWidth _font ((this :f_info) _index)) 1)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _size (length (this :f_developers)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_developersBeginWidth) _index) (brshift (:jm_stringWidth _font ((this :f_developers) _index)) 1)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_getPaintableArrayInstance (fn jm_getPaintableArrayInstance [this]
    (label jreturn
        (return jreturn (this :f_paintableArray)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _halfWidth (:jm_getLastHalfWidth (this :f_displayInfoSingleton)))
        (:jm_drawString _graphics (this :f_ABOUT) (JR/i32 (- _halfWidth (this :f_aboutBeginWidth))) (JR/i32 (* 2 (this :f_charHeight))) (this :f_anchor))
        (var _infoSize (length (this :f_info)))
        (do
            (var _index 0)
            (while (< _index _infoSize)
                (do
            (:jm_drawString _graphics ((this :f_info) _index) (JR/i32 (- _halfWidth ((this :f_infoBeginWidth) _index))) (JR/i32 (* (JR/i32 (+ 4 _index)) (this :f_charHeight))) (this :f_anchor)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _size (length (this :f_developers)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_drawString _graphics ((this :f_developers) _index) (JR/i32 (- _halfWidth ((this :f_developersBeginWidth) _index))) (JR/i32 (* (JR/i32 (+ (JR/i32 (+ 5 _infoSize)) _index)) (this :f_charHeight))) (this :f_anchor)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_getPaintableArrayInstance jm_getPaintableArrayInstance :jm_paint jm_paint} Paintable/jproto))


