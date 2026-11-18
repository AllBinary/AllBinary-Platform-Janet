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
# package org.allbinary.graphics.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ./Paintable :as Paintable)

# Java class SimpleTextPaintable
(var jproto nil)
(var jnew_2 nil)
(var jm_updateMeasurement nil)
(var jm_paint nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)
(var jm_setText nil)
(var jm_getText nil)

    
(set jnew_2 (fn jnew_2 [_text _basicColor]
    (var this (table/setproto @{:jclass "SimpleTextPaintable" :f_displayInfoSingleton nil :f_updateMyFontProcessor nil :f_myFontProcessor nil :f_text nil :f_basicColor nil :f_topScoresWidth 0 :f_fontHeight 0 :f_anchor 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_updateMyFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_myFontProcessor (this :f_updateMyFontProcessor))
    
    
    (put this :f_topScoresWidth 0)
    (put this :f_fontHeight 0)
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_text) _text)
        (set (this :f_basicColor) _basicColor)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_topScoresWidth) (brshift (:jm_stringWidth _font (this :f_text)) 1))
        (set (this :f_fontHeight) (:jm_getHeight _font))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _width ((:jm_getLast (this :f_displayInfoSingleton)) ((this :f_displayInfoSingleton) :f_WIDTH)))
        (:jm_setColor _graphics (:jm_intValue (:jm_getBasicColorP this)))
        (:jm_drawString _graphics (this :f_text) (JR/i32 (- (brshift _width 1) (this :f_topScoresWidth))) (this :f_fontHeight) (this :f_anchor))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_setText (fn jm_setText [this _text]
        (set (this :f_text) _text)
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_getText (fn jm_getText [this]
    (label jreturn
        (return jreturn (this :f_text)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paint jm_paint :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP :jm_setText jm_setText :jm_getText jm_getText} Paintable/jproto))


