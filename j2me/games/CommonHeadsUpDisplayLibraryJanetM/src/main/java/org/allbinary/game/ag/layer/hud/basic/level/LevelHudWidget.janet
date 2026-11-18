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
# package org.allbinary.game.ag.layer.hud.basic.level

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../../org/allbinary/game/graphics/hud/BasicHud :as BasicHud)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- PrimitiveLongUtil/jm_createPowerOfTen [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil" "jm_createPowerOfTen" args))

# Java class LevelHudWidget
(var jproto nil)
(var jnew_3 nil)
(var jm_createHud nil)
(var jm_updateMeasurement nil)
(var jm_update nil)
(var jm_setLevel nil)
(var jm_nextLevel nil)
(var jm_previousLevel nil)
(var jm_isComplete nil)
(var jm_paint nil)
(var jm_paintThreed nil)

    
(set jm_createHud (fn jm_createHud [_maxlevel _location _direction]
    (label jreturn
        (return jreturn (jnew_3 _maxlevel _location _direction)))))
    
(set jnew_3 (fn jnew_3 [_maxlevel _location _direction]
    (var this (table/setproto @{:jclass "LevelHudWidget" :f_level 0 :f_maxlevel 0 :f_levelString nil :f_levelNumberCharArray nil :f_levelNumberTotalDigits 0 :f_offset 0 :f_primitiveLongUtil nil} jproto))
    
    
    
    (put this :f_levelNumberCharArray ((NullUtil/jm_getInstance) :f_NULL_CHAR_ARRAY))
    
    
    
        (JR/superInit this (BasicHud/jnew_4 _location _direction 2 ((BasicColorFactory/jm_getInstance) :f_GREY)))
        (set (this :f_primitiveLongUtil) (PrimitiveLongUtil/jm_createPowerOfTen 1000))
        (var _LEVEL "Lv ")
        (set (this :f_levelString) (JR/toCharArray _LEVEL))
        (set (this :f_maxlevel) _maxlevel)
        (set (this :f_level) _maxlevel)
        (:jm_update this)
        (set (this :f_updateMaxHeight) 14)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_updateMaxWidth) (JR/i32 (* (:jm_getSize _font) 4)))
        (set (this :f_offset) (JR/i32 (+ (:jm_charsWidth _font (this :f_levelString) 0 (length (this :f_levelString))) (:jm_getSize _font))))
        ((get BasicHud/jproto :jm_updateMeasurement) this _graphics)))
    
(set jm_update (fn jm_update [this]
        (set (this :f_levelNumberCharArray) (:jm_getCharArray (this :f_primitiveLongUtil) (this :f_level)))
        (set (this :f_levelNumberTotalDigits) (:jm_getCurrentTotalDigits (this :f_primitiveLongUtil)))))
    
(set jm_setLevel (fn jm_setLevel [this _level]
        (set (this :f_level) _level)
        (:jm_update this)))
    
(set jm_nextLevel (fn jm_nextLevel [this]
        (set (this :f_level) (JR/i32 (+ (this :f_level) 1)))
        (:jm_update this)))
    
(set jm_previousLevel (fn jm_previousLevel [this]
        (set (this :f_level) (JR/i32 (- (this :f_level) 1)))
        (if (< (this :f_level) 0)
            (do
            (set (this :f_level) 0)))
        (:jm_update this)))
    
(set jm_isComplete (fn jm_isComplete [this]
    (label jreturn
        (if (<= (this :f_level) (this :f_maxlevel))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_paint (fn jm_paint [this _graphics]
        ((get BasicHud/jproto :jm_paintDX) this _graphics (this :f_levelString) 0 (length (this :f_levelString)) (this :f_levelNumberCharArray) 0 (this :f_levelNumberTotalDigits) (this :f_offset))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_update jm_update :jm_setLevel jm_setLevel :jm_nextLevel jm_nextLevel :jm_previousLevel jm_previousLevel :jm_isComplete jm_isComplete :jm_paint jm_paint :jm_paintThreed jm_paintThreed} BasicHud/jproto))


