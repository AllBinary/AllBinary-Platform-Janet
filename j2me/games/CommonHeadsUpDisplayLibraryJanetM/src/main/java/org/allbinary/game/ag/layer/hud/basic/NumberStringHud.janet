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
# package org.allbinary.game.ag.layer.hud.basic

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../org/allbinary/game/graphics/hud/BasicHud :as BasicHud)
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" "jm_getInstance" args))
(defn- MyFontProcessor/jm_defaultCharWidth [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_defaultCharWidth" args))
(defn- PrimitiveLongSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/math/PrimitiveLongSingleton" "jm_getInstance" args))
(defn- PrimitiveLongUtil/jm_createPowerOfTen [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/math/PrimitiveLongUtil" "jm_createPowerOfTen" args))

# Java class NumberStringHud
(var jproto nil)
(var jnew_6 nil)
(var jm_updateMeasurement nil)
(var jm_get nil)
(var jm_add nil)
(var jm_set nil)
(var jm_reduce nil)
(var jm_paint nil)
(var jm_paintXY nil)
(var jm_paintThreed nil)

    
(set jnew_6 (fn jnew_6 [_prependString _max _location _direction _bufferZone _basicColor]
    (var this (table/setproto @{:jclass "NumberStringHud" :f_primitiveLongUtil nil :f_prependString nil :f_PREPEND_STRING nil :f_value 0 :f_max 0 :f_offset 0 :f_valueString nil :f_valueTotalDigits 0} jproto))
    
    
    
    
    
    
    
    
        (JR/superInit this (BasicHud/jnew_4 _location _direction _bufferZone _basicColor))
        (set (this :f_prependString) _prependString)
        (set (this :f_PREPEND_STRING) (JR/toCharArray _prependString))
        (set (this :f_valueString) (((PrimitiveLongSingleton/jm_getInstance) :f_NUMBER_CHAR_ARRAYS) 0))
        (set (this :f_primitiveLongUtil) (PrimitiveLongUtil/jm_createPowerOfTen (JR/i32 (+ _max 1))))
        (set (this :f_max) _max)
        (set (this :f_value) 0)
        (if (= _direction 0)
            (do
            (error (JR/newException "RuntimeException" ((BasicHudFactory/jm_getInstance) :f_DIRECTION_EXCEPTION)))))
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_offset) (JR/i32 (+ (:jm_stringWidth _font (this :f_prependString)) (MyFontProcessor/jm_defaultCharWidth _font))))
        ((get BasicHud/jproto :jm_updateMeasurement) this _graphics)))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn (this :f_value)))))
    
(set jm_add (fn jm_add [this _value]
        (:jm_set this (JR/i32 (+ (this :f_value) _value)))))
    
(set jm_set (fn jm_set [this _value]
        (set (this :f_value) _value)
        (if (> (this :f_value) (this :f_max))
            (do
            (set (this :f_value) 0)))
        (set (this :f_valueString) (:jm_getCharArray (this :f_primitiveLongUtil) (this :f_value)))
        (set (this :f_valueTotalDigits) (:jm_getCurrentTotalDigits (this :f_primitiveLongUtil)))))
    
(set jm_reduce (fn jm_reduce [this _value]
        (:jm_set this (JR/i32 (- (this :f_value) _value)))))
    
(set jm_paint (fn jm_paint [this _graphics]
        ((get BasicHud/jproto :jm_paintDX) this _graphics (this :f_PREPEND_STRING) 0 (length (this :f_PREPEND_STRING)) (this :f_valueString) 0 (this :f_valueTotalDigits) (this :f_offset))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (JR/className (this :f_myFontProcessor))
        (var _charArray (this :f_PREPEND_STRING))
        (var _len (length (this :f_PREPEND_STRING)))
        (var _charArray2 (this :f_valueString))
        (var _len2 (this :f_valueTotalDigits))
        (JR/className (this :f_basicSetColorUtil))
        (:jm_drawChars _graphics _charArray 0 _len _x _y 0)
        (:jm_drawChars _graphics _charArray2 0 _len2 (JR/i32 (- _x (this :f_offset))) _y 0)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_get jm_get :jm_add jm_add :jm_set jm_set :jm_reduce jm_reduce :jm_paint jm_paint :jm_paintXY jm_paintXY :jm_paintThreed jm_paintThreed} BasicHud/jproto))


