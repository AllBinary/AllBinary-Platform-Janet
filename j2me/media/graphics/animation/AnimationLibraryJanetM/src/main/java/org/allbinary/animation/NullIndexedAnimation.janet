# Generated Code Do Not Modify
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./IndexedAnimation :as IndexedAnimation)

# Java class NullIndexedAnimation
(var jproto nil)
(var jnew_1 nil)
(var jm_getAnimationSize nil)

    
(set jnew_1 (fn jnew_1 [_animationBehavior]
    (var this (table/setproto @{:jclass "NullIndexedAnimation"} jproto))
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
    this))
    
(set jm_getAnimationSize (fn jm_getAnimationSize [this]
    (label jreturn
        (return jreturn 0))))

(set jproto (table/setproto @{:jm_getAnimationSize jm_getAnimationSize} IndexedAnimation/jproto))


