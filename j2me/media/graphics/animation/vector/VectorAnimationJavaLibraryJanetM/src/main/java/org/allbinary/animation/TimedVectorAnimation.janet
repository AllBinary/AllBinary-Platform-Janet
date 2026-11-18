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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./VectorAnimation :as VectorAnimation)

# Java class TimedVectorAnimation
(var jproto nil)
(var jnew_3 nil)
(var jm_nextFrame nil)

    
(set jnew_3 (fn jnew_3 [_currentPoints _basicColor _animationBehavior]
    (var this (table/setproto @{:jclass "TimedVectorAnimation" :f_timeElapsedHelper nil} jproto))
    (put this :f_timeElapsedHelper (TimeDelayHelper/jnew_1 200))
        (JR/superInit this (VectorAnimation/jnew_3 _currentPoints _basicColor _animationBehavior))
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (if (:jm_isTime (this :f_timeElapsedHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime))
            (do
            ((get VectorAnimation/jproto :jm_nextFrame) this)))))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame} VectorAnimation/jproto))


