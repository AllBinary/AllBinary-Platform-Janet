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

# Java class ShakeAnimationListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onSmallShakeEvent nil)
(var jm_onMediumShakeEvent nil)
(var jm_onLargeShakeEvent nil)
(var jm_onShakeEvent nil)
(var jm_getType nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ShakeAnimationListener"} jproto))
    this))

    
(set jm_onSmallShakeEvent (fn jm_onSmallShakeEvent [this]
    nil))
    
(set jm_onMediumShakeEvent (fn jm_onMediumShakeEvent [this]
    nil))
    
(set jm_onLargeShakeEvent (fn jm_onLargeShakeEvent [this]
    nil))
    
(set jm_onShakeEvent (fn jm_onShakeEvent [this _shakeEvent]
    nil))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn 0))))

(set jproto @{:jm_onSmallShakeEvent jm_onSmallShakeEvent :jm_onMediumShakeEvent jm_onMediumShakeEvent :jm_onLargeShakeEvent jm_onLargeShakeEvent :jm_onShakeEvent jm_onShakeEvent :jm_getType jm_getType})


