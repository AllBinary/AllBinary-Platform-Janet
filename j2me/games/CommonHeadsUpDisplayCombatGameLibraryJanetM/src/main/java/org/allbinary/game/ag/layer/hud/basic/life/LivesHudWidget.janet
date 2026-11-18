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
# package org.allbinary.game.ag.layer.hud.basic.life

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../../org/allbinary/game/graphics/hud/BasicHud :as BasicHud)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))

# Java class LivesHudWidget
(var jproto nil)
(var jnew_4 nil)
(var jm_updateMeasurement nil)
(var jm_onDisplayChangeEvent nil)
(var jm_setX nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_getLifeInterface nil)

    
(set jnew_4 (fn jnew_4 [_animationInterface _lifeInterface _location _direction]
    (var this (table/setproto @{:jclass "LivesHudWidget" :f_lifeInterface nil :f_xArray nil :f_animationInterface nil} jproto))
    
    
    
        (JR/superInit this (BasicHud/jnew_4 _location _direction 2 ((BasicColorFactory/jm_getInstance) :f_WHITE)))
        (set (this :f_lifeInterface) _lifeInterface)
        (var _size (:jm_getMaxlives (:jm_getLifeInterface this)))
        (set (this :f_xArray) (array/new-filled _size 0))
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_updateMaxWidth) (JR/i32 (* (:jm_getMaxlives (this :f_lifeInterface)) 16)))
        (set (this :f_updateMaxHeight) 16)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        ((get BasicHud/jproto :jm_updateMeasurement) this _graphics)
        (var _maxLives (:jm_getMaxlives (:jm_getLifeInterface this)))
        (do
            (var _index 0)
            (while (< _index _maxLives)
                (do
            (set ((this :f_xArray) _index) (JR/i32 (+ (:jm_getX this) (JR/i32 (* _index 16))))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_onDisplayChangeEvent (fn jm_onDisplayChangeEvent [this _displayChangeEvent]
        ((get BasicHud/jproto :jm_onDisplayChangeEvent) this _displayChangeEvent)
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_setX (fn jm_setX [this _x]
        ((get BasicHud/jproto :jm_setX) this _x)
        (set (this :f_myFontProcessor) (this :f_updateMyFontProcessor))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (JR/className (this :f_myFontProcessor))
        (do
            (var _index (:jm_get (:jm_getLifeInterface this)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (:jm_paintXY (this :f_animationInterface) _graphics ((this :f_xArray) _index) (:jm_getY this)))))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_getLifeInterface (fn jm_getLifeInterface [this]
    (label jreturn
        (return jreturn (this :f_lifeInterface)))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_onDisplayChangeEvent jm_onDisplayChangeEvent :jm_setX jm_setX :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_getLifeInterface jm_getLifeInterface} BasicHud/jproto))


