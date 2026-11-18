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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./ImageArrayAnimation :as ImageArrayAnimation)

# Java class ImageArraySpecialAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_getLoopCount nil)
(var jm_setLastFrame nil)
(var jm_reset nil)
(var jm_nextFrame nil)
(var jm_isComplete nil)
(var jm_paintXY nil)

    
(set jnew_2 (fn jnew_2 [_imageArray _animationBehavior]
    (var this (table/setproto @{:jclass "ImageArraySpecialAnimation" :f_timeDelayHelper nil :f_loopCount 0 :f_loopCountTotal 0} jproto))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 270))
    (put this :f_loopCount 0)
    (put this :f_loopCountTotal 1)
        (JR/superInit this (ImageArrayAnimation/jnew_2 _imageArray _animationBehavior))
        (:jm_reset this)
    this))
    
(set jm_getLoopCount (fn jm_getLoopCount [this]
    (label jreturn
        (return jreturn (this :f_loopCount)))))
    
(set jm_setLastFrame (fn jm_setLastFrame [this]
        (JR/className (this :f_circularIndexUtil))))
    
(set jm_reset (fn jm_reset [this]
        (:jm_setFrame this (JR/i32 (- (:jm_getSize this) 1)))
        (set (this :f_loopCount) 0)))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (if (> (:jm_getFrame this) 0)
            (do
            (if (:jm_isTime (this :f_timeDelayHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime))
                (do
                (:jm_previousFrame this)
                (if (= (:jm_getFrame this) 0)
                    (do
                    (set (this :f_loopCount) (JR/i32 (+ (this :f_loopCount) 1)))))))))))
    
(set jm_isComplete (fn jm_isComplete [this]
    (label jreturn
        (if (or (< (this :f_loopCount) (this :f_loopCountTotal)) (not= (:jm_getFrame this) 0))
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    (var _x _x)
    (var _y _y)
        (set _x (JR/i32 (- (:jm_getLastHalfWidth (DisplayInfoSingleton/jm_getInstance)) (brshift (JR/className (:jm_getImage this (JR/className (this :f_circularIndexUtil)))) 1))))
        (set _y 5)
        ((get ImageArrayAnimation/jproto :jm_paintXY) this _graphics _x _y)))

(set jproto (table/setproto @{:jm_getLoopCount jm_getLoopCount :jm_setLastFrame jm_setLastFrame :jm_reset jm_reset :jm_nextFrame jm_nextFrame :jm_isComplete jm_isComplete :jm_paintXY jm_paintXY} ImageArrayAnimation/jproto))


