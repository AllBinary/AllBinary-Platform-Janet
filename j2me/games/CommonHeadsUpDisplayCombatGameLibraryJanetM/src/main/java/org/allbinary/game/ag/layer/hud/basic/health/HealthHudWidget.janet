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
# package org.allbinary.game.ag.layer.hud.basic.health

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../../org/allbinary/game/graphics/hud/BasicHud :as BasicHud)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- NoTimeDelayHelper/jstatic_SINGLETON [& args] (JR/call jfile "../../../../../../../../org/allbinary/time/NoTimeDelayHelper" "jstatic_SINGLETON" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))

# Java class HealthHudWidget
(var jproto nil)
(var jnew_4 nil)
(var jm_update nil)
(var jm_setX nil)
(var jm_onHealthChange nil)
(var jm_paint nil)
(var jm_paintThreed nil)

    
(set jnew_4 (fn jnew_4 [_animationInterface _healthInterface _location _direction]
    (var this (table/setproto @{:jclass "HealthHudWidget" :f_healthScale 0 :f_animationInterface nil :f_healthInterface nil :f_max 0 :f_xArray nil :f_gameTickTimeDelayHelper nil :f_timeDelayHelper nil :f_slowBeatTimeDelayHelper nil :f_mediumBeatTimeDelayHelper nil :f_fastBeatTimeDelayHelper nil} jproto))
    
    
    
    
    
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (put this :f_timeDelayHelper (NoTimeDelayHelper/jstatic_SINGLETON))
    (put this :f_slowBeatTimeDelayHelper (TimeDelayHelper/jnew_1 1280))
    (put this :f_mediumBeatTimeDelayHelper (TimeDelayHelper/jnew_1 640))
    (put this :f_fastBeatTimeDelayHelper (TimeDelayHelper/jnew_1 320))
        (JR/superInit this (BasicHud/jnew_4 _location _direction 2 ((BasicColorFactory/jm_getInstance) :f_WHITE)))
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_healthInterface) _healthInterface)
        (:jm_addListener (this :f_healthInterface) this)
        (set (this :f_healthScale) (JR/i32 (+ (JR/idiv (:jm_getMaxHealth (this :f_healthInterface)) 6) 1)))
        (:jm_onHealthChange this)
        (set (this :f_updateMaxWidth) (JR/i32 (* (:jm_getMaxHealth _healthInterface) 16)))
        (set (this :f_updateMaxHeight) 16)
        (set (this :f_xArray) (array/new-filled 30 0))
        (:jm_update this)
    this))
    
(set jm_update (fn jm_update [this]
        (if (not (nil? (this :f_xArray)))
            (do
            (do
                (var _index 0)
                (while (< _index (length (this :f_xArray)))
                    (do
                (set ((this :f_xArray) _index) (JR/i32 (+ (:jm_getX this) (JR/i32 (* _index 16))))))
                    (do (set _index (JR/i32 (+ _index 1))))))))))
    
(set jm_setX (fn jm_setX [this _x]
        ((get BasicHud/jproto :jm_setX) this _x)
        (:jm_update this)))
    
(set jm_onHealthChange (fn jm_onHealthChange [this]
        (set (this :f_max) (JR/idiv (:jm_getHealth (this :f_healthInterface)) (this :f_healthScale)))
        (set (this :f_timeDelayHelper) (NoTimeDelayHelper/jstatic_SINGLETON))
        (if (and (<= (this :f_max) 1) (:jm_isAlive (this :f_healthInterface)))
            (do
            (set (this :f_max) 1)
            (if (> (JR/i32 (- (this :f_healthScale) (:jm_getHealth (this :f_healthInterface)))) (JR/idiv (JR/i32 (* (this :f_healthScale) 2)) 3))
                (do
                (set (this :f_timeDelayHelper) (this :f_slowBeatTimeDelayHelper)))
                (if (> (JR/i32 (- (this :f_healthScale) (:jm_getHealth (this :f_healthInterface)))) (JR/idiv (this :f_healthScale) 3))
                (do
                (set (this :f_timeDelayHelper) (this :f_mediumBeatTimeDelayHelper)))
                (do
                (set (this :f_timeDelayHelper) (this :f_fastBeatTimeDelayHelper)))))))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (JR/className (this :f_myFontProcessor))
        (do
            (var _index 0)
            (while (< _index (this :f_max))
                (do
            (if (:jm_isTime (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
                (do
                (:jm_paintXY (this :f_animationInterface) _graphics ((this :f_xArray) _index) (:jm_getY this)))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))

(set jproto (table/setproto @{:jm_update jm_update :jm_setX jm_setX :jm_onHealthChange jm_onHealthChange :jm_paint jm_paint :jm_paintThreed jm_paintThreed} BasicHud/jproto))


