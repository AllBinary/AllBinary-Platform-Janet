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
# package org.allbinary.media

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ../../../java/lang/Integer :as Integer)
(import ./AllBinaryVibrationME :as AllBinaryVibrationME)

# Java class AllBinaryVisualDebugVibration
(var jproto nil)
(var jnew_0 nil)
(var jm_updateMeasurement nil)
(var jm_vibrate nil)
(var jm_paint nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryVisualDebugVibration" :f_displayInfoSingleton nil :f_timeDelayHelper nil :f_VIBRATING nil :f_myFontProcessor nil :f_anchor 0 :f_width 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 (Integer/jstatic_MAX_VALUE)))
    (put this :f_VIBRATING "Vibrating")
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    
    (JR/superInit this (AllBinaryVibrationME/jnew_0))
    this))

    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_width) (:jm_stringWidth _font (this :f_VIBRATING)))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_vibrate (fn jm_vibrate [this _duration _type _volume]
        (set ((this :f_timeDelayHelper) :f_delay) _duration)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (if (:jm_isTimeTNT (this :f_timeDelayHelper))
            (do
            (set ((this :f_timeDelayHelper) :f_delay) (Integer/jstatic_MAX_VALUE))
            (:jm_process (this :f_myFontProcessor) _graphics)
            (:jm_drawString _graphics (this :f_VIBRATING) (JR/i32 (- (:jm_getLastHalfWidth (this :f_displayInfoSingleton)) (brshift (this :f_width) 1))) 0 (this :f_anchor))))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_vibrate jm_vibrate :jm_paint jm_paint} AllBinaryVibrationME/jproto))


