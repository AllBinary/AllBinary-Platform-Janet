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
(defn- AppletUtil/jm_isAppletLoader [& args] (JR/call jfile "../../../../org/allbinary/AppletUtil" "jm_isAppletLoader" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_defaultCharWidth [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultCharWidth" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- TouchScreenFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/button/TouchScreenFactory" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))

# Java class PressStartMenuPaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_updateMeasurement nil)
(var jm_paint nil)
(var jm_setFlash nil)
(var jm_isFlash nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PressStartMenuPaintable" :f_displayInfo nil :f_PRESS_START nil :f_KEY_START nil :f_MENU_START nil :f_myFontProcessor nil :f_startString nil :f_timeDelayHelper nil :f_flash false :f_anchor 0 :f_beginWidth 0 :f_line 0} jproto))
    (put this :f_displayInfo (DisplayInfoSingleton/jm_getInstance))
    (put this :f_PRESS_START "Press Screen To Start")
    (put this :f_KEY_START "Press or Click F2 To Begin")
    (put this :f_MENU_START "Press Start From The Menu To Begin")
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_startString ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 1100))
    
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    
    (JR/superInit this (Paintable/jnew_0))
        (if (:jm_isTouch (TouchScreenFactory/jm_getInstance))
            (do
            (set (this :f_startString) (this :f_PRESS_START)))
            (if (AppletUtil/jm_isAppletLoader this)
            (do
            (set (this :f_startString) (this :f_KEY_START)))
            (do
            (set (this :f_startString) (this :f_MENU_START)))))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_beginWidth) (brshift (JR/className (:jm_getFont _graphics)) 1))
        (set (this :f_line) (JR/i32 (+ (JR/i32 (* 4 (MyFontProcessor/jm_defaultCharWidth _font))) (brshift (:jm_getHeight _font) 1))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (if (:jm_isTimeTNT (this :f_timeDelayHelper))
            (do
            (if (:jm_isFlash this)
                (do
                (:jm_setFlash this false))
                (do
                (:jm_setFlash this true)))))
        (if (:jm_isFlash this)
            (do
            (:jm_process (this :f_myFontProcessor) _graphics)
            (:jm_drawString _graphics (this :f_startString) (JR/i32 (- (:jm_getLastHalfWidth (this :f_displayInfo)) (this :f_beginWidth))) (JR/i32 (- (:jm_getLastHeight (this :f_displayInfo)) (this :f_line))) (this :f_anchor))))))
    
(set jm_setFlash (fn jm_setFlash [this _flash]
        (set (this :f_flash) _flash)))
    
(set jm_isFlash (fn jm_isFlash [this]
    (label jreturn
        (return jreturn (this :f_flash)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paint jm_paint :jm_setFlash jm_setFlash :jm_isFlash jm_isFlash} Paintable/jproto))


