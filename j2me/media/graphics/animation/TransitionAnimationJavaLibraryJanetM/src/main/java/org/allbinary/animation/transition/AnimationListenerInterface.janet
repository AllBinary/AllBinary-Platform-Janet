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
# package org.allbinary.animation.transition

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class AnimationListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onPlatformAnimationStart nil)
(var jm_onPlatformAnimationEnd nil)
(var jm_onPlatformAnimationRepeat nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnimationListenerInterface"} jproto))
    this))

    
(set jm_onPlatformAnimationStart (fn jm_onPlatformAnimationStart [this]
    (error (JR/newException "AbstractMethodError" "onPlatformAnimationStart"))))
    
(set jm_onPlatformAnimationEnd (fn jm_onPlatformAnimationEnd [this]
    (error (JR/newException "AbstractMethodError" "onPlatformAnimationEnd"))))
    
(set jm_onPlatformAnimationRepeat (fn jm_onPlatformAnimationRepeat [this]
    (error (JR/newException "AbstractMethodError" "onPlatformAnimationRepeat"))))

(set jproto @{:jm_onPlatformAnimationStart jm_onPlatformAnimationStart :jm_onPlatformAnimationEnd jm_onPlatformAnimationEnd :jm_onPlatformAnimationRepeat jm_onPlatformAnimationRepeat})


