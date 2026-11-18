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
(import ./NullIndexedAnimation :as NullIndexedAnimation)
(defn- IndexedAnimationBehavior/jnew_2 [& args] (JR/call jfile "./IndexedAnimationBehavior" "jnew_2" args))

# Java class NullIndexedAnimationInner
(var jproto nil)
(var jnew_0 nil)
(var jm_paintXY nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullIndexedAnimationInner"} jproto))
        (JR/superInit this (NullIndexedAnimation/jnew_1 (IndexedAnimationBehavior/jnew_2 1 250)))
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
    nil))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} NullIndexedAnimation/jproto))


