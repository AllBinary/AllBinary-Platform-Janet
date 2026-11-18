# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(import ./AnimationBehavior :as AnimationBehavior)

# Java class IndexedAnimationBehavior
(var jproto nil)
(var jnew_2 nil)
(var jm_reset nil)

    
(set jnew_2 (fn jnew_2 [_loopTotal _frameDelayTime]
    (var this (table/setproto @{:jclass "IndexedAnimationBehavior" :f_frameDelayTime 0 :f_loopTotal 0 :f_elapsedTime 0 :f_loopIndex 0} jproto))
    
    
    
    
    (JR/superInit this (AnimationBehavior/jnew_0))
        (set (this :f_loopTotal) _loopTotal)
        (set (this :f_frameDelayTime) _frameDelayTime)
    this))
    
(set jm_reset (fn jm_reset [this]
        (set (this :f_loopIndex) 0)))

(set jproto (table/setproto @{:jm_reset jm_reset} AnimationBehavior/jproto))


