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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))

#J2SEForJ2ME
# Java class OwnershipPaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_updateMeasurement nil)
(var jm_setBasicColorP nil)
(var jm_getBasicColorP nil)
(var jm_paint nil)

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jnew_0)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OwnershipPaintable" :f_logUtil nil :f_displayInfo nil :f_myFontProcessor nil :f_COPYRIGHT nil :f_basicColor nil :f_color 0 :f_anchor 0 :f_COPYRIGHT_Y 0 :f_beginWidth 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_displayInfo (DisplayInfoSingleton/jm_getInstance))
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_COPYRIGHT "AllBinary Copyright (c) 2011")
    (put this :f_basicColor ((BasicColorFactory/jm_getInstance) :f_WHITE))
    (put this :f_color (:jm_intValue (this :f_basicColor)))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    
    (JR/superInit this (Paintable/jnew_0))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_COPYRIGHT_Y) (JR/i32 (* 2 (:jm_getHeight _font))))
        (set (this :f_beginWidth) (brshift (:jm_stringWidth _font (this :f_COPYRIGHT)) 1))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_setBasicColorP (fn jm_setBasicColorP [this _basicColor]
        (set (this :f_basicColor) _basicColor)
        (set (this :f_color) (:jm_intValue _basicColor))))
    
(set jm_getBasicColorP (fn jm_getBasicColorP [this]
    (label jreturn
        (return jreturn (this :f_basicColor)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (:jm_setColor _graphics (this :f_color))
        (var _halfWidth (:jm_getLastHalfWidth (this :f_displayInfo)))
        (var _height (:jm_getLastHeight (this :f_displayInfo)))
        (:jm_drawString _graphics (this :f_COPYRIGHT) (JR/i32 (- _halfWidth (this :f_beginWidth))) (JR/i32 (- _height (this :f_COPYRIGHT_Y))) (this :f_anchor))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_setBasicColorP jm_setBasicColorP :jm_getBasicColorP jm_getBasicColorP :jm_paint jm_paint} Paintable/jproto))


