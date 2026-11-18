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
(defn- TimedVectorAnimation/jnew_3 [& args] (JR/call jfile "./TimedVectorAnimation" "jnew_3" args))
(defn- AnimationBehavior/jm_getInstance [& args] (JR/call jfile "./AnimationBehavior" "jm_getInstance" args))

# Java class TimedVectorAnimationFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TimedVectorAnimationFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _points _basicColor]
    (label jreturn
        (return jreturn (TimedVectorAnimation/jnew_3 _points _basicColor (AnimationBehavior/jm_getInstance))))))

(set jproto @{:jm_getInstance jm_getInstance})


