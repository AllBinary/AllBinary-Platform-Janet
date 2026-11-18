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
# package org.allbinary.animation.caption

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnimationEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/AnimationEventHandler" "jm_getInstance" args))
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- PrimitiveIntUtil/jm_getArrayInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/PrimitiveIntUtil" "jm_getArrayInstance" args))
(defn- AllBinaryEventObject/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" "jnew_1" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))

# Java class CaptionIndexedAnimation
(var jproto nil)
(var jnew_9 nil)
(var jm_nextFrame nil)
(var jm_isLastFrame nil)
(var jm_previousFrame nil)
(var jm_setFrame nil)
(var jm_getFrame nil)
(var jm_getSize nil)
(var jm_setSequence nil)
(var jm_getSequence nil)
(var jm_paintXY nil)
(var jm_paintThreedXYZ nil)

    
(set jnew_9 (fn jnew_9 [_animationInterface _movieIndexedAnimationInterface _player _captionDx _captionDy _dx _dy _time _animationBehavior]
    (var this (table/setproto @{:jclass "CaptionIndexedAnimation" :f_animationInterface nil :f_movieIndexedAnimationInterface nil :f_captionDx 0 :f_captionDy 0 :f_dx 0 :f_dy 0 :f_time 0 :f_END_EVENT nil :f_timeDelayHelper nil :f_player nil} jproto))
    
    
    
    
    
    
    
    
    
    
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_movieIndexedAnimationInterface) _movieIndexedAnimationInterface)
        (set (this :f_captionDx) _captionDx)
        (set (this :f_captionDy) _captionDy)
        (set (this :f_dx) _dx)
        (set (this :f_dy) _dy)
        (set (this :f_time) _time)
        (set (this :f_END_EVENT) (AllBinaryEventObject/jnew_1 this))
        (var _timePerFrame (JR/idiv (this :f_time) (:jm_getSize this)))
        (set (this :f_timeDelayHelper) (TimeDelayHelper/jnew_1 _timePerFrame))
        (set (this :f_player) _player)
        (:jm_start (this :f_player))
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (if (:jm_isTime (this :f_timeDelayHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime))
            (do
            (:jm_nextFrame (this :f_movieIndexedAnimationInterface))))
        (if (:jm_isLastFrame this)
            (do
            (:jm_fireEvent (AnimationEventHandler/jm_getInstance) (this :f_END_EVENT))))))
    
(set jm_isLastFrame (fn jm_isLastFrame [this]
    (label jreturn
        (if (= (:jm_getFrame (this :f_movieIndexedAnimationInterface)) (JR/i32 (- (:jm_getSize this) 1)))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_previousFrame (fn jm_previousFrame [this]
        (:jm_previousFrame (this :f_movieIndexedAnimationInterface))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
        (:jm_setFrame (this :f_movieIndexedAnimationInterface) _index)))
    
(set jm_getFrame (fn jm_getFrame [this]
    (label jreturn
        (return jreturn (:jm_getFrame (this :f_movieIndexedAnimationInterface))))))
    
(set jm_getSize (fn jm_getSize [this]
    (label jreturn
        (return jreturn (:jm_getSize (this :f_movieIndexedAnimationInterface))))))
    
(set jm_setSequence (fn jm_setSequence [this _sequence]
    nil))
    
(set jm_getSequence (fn jm_getSequence [this]
    (label jreturn
        (return jreturn (PrimitiveIntUtil/jm_getArrayInstance)))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_paintXY (this :f_animationInterface) _graphics (JR/i32 (+ _x (this :f_captionDx))) (JR/i32 (+ _y (this :f_captionDy))))
        (:jm_paintXY (this :f_movieIndexedAnimationInterface) _graphics (JR/i32 (+ (JR/i32 (+ _x (this :f_captionDx))) (this :f_dx))) (JR/i32 (+ (JR/i32 (+ _y (this :f_captionDy))) (this :f_dy))))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics (JR/i32 (+ _x (this :f_captionDx))) (JR/i32 (+ _y (this :f_captionDy))) _z)
        (:jm_paintThreedXYZ (this :f_movieIndexedAnimationInterface) _graphics (JR/i32 (+ (JR/i32 (+ _x (this :f_captionDx))) (this :f_dx))) (JR/i32 (+ (JR/i32 (+ _y (this :f_captionDy))) (this :f_dy))) _z)))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_isLastFrame jm_isLastFrame :jm_previousFrame jm_previousFrame :jm_setFrame jm_setFrame :jm_getFrame jm_getFrame :jm_getSize jm_getSize :jm_setSequence jm_setSequence :jm_getSequence jm_getSequence :jm_paintXY jm_paintXY :jm_paintThreedXYZ jm_paintThreedXYZ} IndexedAnimation/jproto))


