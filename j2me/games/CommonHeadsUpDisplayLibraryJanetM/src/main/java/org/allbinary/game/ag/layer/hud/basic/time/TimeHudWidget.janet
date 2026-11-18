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
# package org.allbinary.game.ag.layer.hud.basic.time

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../../org/allbinary/game/graphics/hud/BasicHud :as BasicHud)
(defn- MyFontProcessor/jm_defaultStringWidth [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultStringWidth" args))
(defn- PrimitiveLongSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton" "jm_getInstance" args))

# Java class TimeHudWidget
(var jproto nil)
(var jnew_5 nil)
(var jm_getInstance nil)
(var jm_updateMeasurement nil)
(var jm_update nil)
(var jm_set nil)
(var jm_getTimer nil)
(var jm_paint nil)

    
(set jm_getInstance (fn jm_getInstance [_location _direction _basicColor _timer]
    (label jreturn
        (return jreturn (jnew_5 _location _direction 2 _basicColor _timer)))))
    
(set jnew_5 (fn jnew_5 [_location _direction _bufferZone _basicColor _timer]
    (var this (table/setproto @{:jclass "TimeHudWidget" :f_TIME_STRING nil :f_TIME_CHAR_ARRAY nil :f_offset 0 :f_string nil :f_totalDigits 0 :f_timer nil} jproto))
    (put this :f_TIME_STRING "Time ")
    (put this :f_TIME_CHAR_ARRAY @[(get "T" 0) (get "i" 0) (get "m" 0) (get "e" 0) (get " " 0)])
    
    (put this :f_string ((PrimitiveLongSingleton/jm_getInstance) :f_ZERO))
    (put this :f_totalDigits 1)
    
        (JR/superInit this (BasicHud/jnew_4 _location _direction _bufferZone _basicColor))
        (set (this :f_timer) _timer)
        (:jm_set this)
        (set (this :f_updateMaxHeight) 14)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_updateMaxWidth) (JR/i32 (* (:jm_getSize _font) 5)))
        (set (this :f_offset) (JR/i32 (+ (:jm_stringWidth _font (this :f_TIME_STRING)) (MyFontProcessor/jm_defaultStringWidth _font 3))))
        ((get BasicHud/jproto :jm_updateMeasurement) this _graphics)))
    
(set jm_update (fn jm_update [this]
        (:jm_update (this :f_timer))
        (:jm_set this)))
    
(set jm_set (fn jm_set [this]
        (set (this :f_string) (:jm_getTimeChars (this :f_timer)))
        (set (this :f_totalDigits) (:jm_getCurrentTotalDigits (this :f_timer)))))
    
(set jm_getTimer (fn jm_getTimer [this]
    (label jreturn
        (return jreturn (this :f_timer)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        ((get BasicHud/jproto :jm_paintDX) this _graphics (this :f_TIME_CHAR_ARRAY) 0 (length (this :f_TIME_CHAR_ARRAY)) (this :f_string) 0 (this :f_totalDigits) (this :f_offset))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_update jm_update :jm_set jm_set :jm_getTimer jm_getTimer :jm_paint jm_paint} BasicHud/jproto))


