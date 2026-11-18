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
# package org.allbinary.animation.special

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/IndexedAnimation :as IndexedAnimation)
(defn- IndexedAnimationBehavior/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/animation/IndexedAnimationBehavior" "jnew_2" args))

# Java class SpecialAnimation
(var jproto nil)
(var jcell_NULL_SPECIAL_ANIMATION :jnone)
(var jstatic_NULL_SPECIAL_ANIMATION nil)
(var jsetstatic_NULL_SPECIAL_ANIMATION nil)
(var jnew_1 nil)
(var jm_getInstance nil)
(var jm_nextFrame nil)
(var jm_setLastFrame nil)
(var jm_isComplete nil)
(var jm_open nil)
(var jm_close nil)
(var jm_process nil)

(set jstatic_NULL_SPECIAL_ANIMATION (fn jstatic_NULL_SPECIAL_ANIMATION []
  (when (= jcell_NULL_SPECIAL_ANIMATION :jnone) (set jcell_NULL_SPECIAL_ANIMATION (jnew_1 (IndexedAnimationBehavior/jnew_2 1 250))))
  jcell_NULL_SPECIAL_ANIMATION))
(set jsetstatic_NULL_SPECIAL_ANIMATION (fn jsetstatic_NULL_SPECIAL_ANIMATION [value] (set jcell_NULL_SPECIAL_ANIMATION value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_NULL_SPECIAL_ANIMATION)))))
    
(set jnew_1 (fn jnew_1 [_animationBehavior]
    (var this (table/setproto @{:jclass "SpecialAnimation"} jproto))
        (JR/superInit this (IndexedAnimation/jnew_1 _animationBehavior))
    this))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (var _indexedAnimationBehavior (this :f_animationBehaviorP))
        (set (_indexedAnimationBehavior :f_loopIndex) (JR/i32 (+ (_indexedAnimationBehavior :f_loopIndex) 1)))))
    
(set jm_setLastFrame (fn jm_setLastFrame [this]
    nil))
    
(set jm_isComplete (fn jm_isComplete [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_open (fn jm_open [this]
    nil))
    
(set jm_close (fn jm_close [this]
    nil))
    
(set jm_process (fn jm_process [this]
    nil))

(set jproto (table/setproto @{:jm_nextFrame jm_nextFrame :jm_setLastFrame jm_setLastFrame :jm_isComplete jm_isComplete :jm_open jm_open :jm_close jm_close :jm_process jm_process} IndexedAnimation/jproto))


