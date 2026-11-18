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
# package org.allbinary.animation.transition.shake

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./ShakeAnimationListener :as ShakeAnimationListener)

# Java class NoShakeAnimationListener
(var jproto nil)
(var jcell_NO_SHAKE_ANIMATION_LISTENER :jnone)
(var jstatic_NO_SHAKE_ANIMATION_LISTENER nil)
(var jsetstatic_NO_SHAKE_ANIMATION_LISTENER nil)
(var jnew_0 nil)

(set jstatic_NO_SHAKE_ANIMATION_LISTENER (fn jstatic_NO_SHAKE_ANIMATION_LISTENER []
  (when (= jcell_NO_SHAKE_ANIMATION_LISTENER :jnone) (set jcell_NO_SHAKE_ANIMATION_LISTENER (jnew_0)))
  jcell_NO_SHAKE_ANIMATION_LISTENER))
(set jsetstatic_NO_SHAKE_ANIMATION_LISTENER (fn jsetstatic_NO_SHAKE_ANIMATION_LISTENER [value] (set jcell_NO_SHAKE_ANIMATION_LISTENER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoShakeAnimationListener"} jproto))
    (JR/superInit this (ShakeAnimationListener/jnew_0))
    this))


(set jproto (table/setproto @{} ShakeAnimationListener/jproto))


