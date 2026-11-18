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
(import ./AnimationBehaviorFactory :as AnimationBehaviorFactory)
(defn- IndexedAnimationBehavior/jnew_2 [& args] (JR/call jfile "./IndexedAnimationBehavior" "jnew_2" args))

# Java class IndexedAnimationBehaviorFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_getOrCreateInstance nil)

    
(set jnew_2 (fn jnew_2 [_loopTotal _frameDelayTime]
    (var this (table/setproto @{:jclass "IndexedAnimationBehaviorFactory" :f_frameDelayTime 0 :f_loopTotal 0} jproto))
    
    
    (JR/superInit this (AnimationBehaviorFactory/jnew_0))
        (set (this :f_loopTotal) _loopTotal)
        (set (this :f_frameDelayTime) _frameDelayTime)
    this))
    
(set jm_getOrCreateInstance (fn jm_getOrCreateInstance [this]
    (label jreturn
        (return jreturn (IndexedAnimationBehavior/jnew_2 (this :f_loopTotal) (this :f_frameDelayTime))))))

(set jproto (table/setproto @{:jm_getOrCreateInstance jm_getOrCreateInstance} AnimationBehaviorFactory/jproto))


