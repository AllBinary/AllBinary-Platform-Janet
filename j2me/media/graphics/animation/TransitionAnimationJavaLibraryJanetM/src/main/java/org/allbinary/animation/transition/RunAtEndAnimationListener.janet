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
(import ../../../../java/lang/Runnable :as Runnable)

# Java class RunAtEndAnimationListener
(var jproto nil)
(var jnew_1 nil)
(var jm_onPlatformAnimationStart nil)
(var jm_onPlatformAnimationEnd nil)
(var jm_onPlatformAnimationRepeat nil)

    
(set jnew_1 (fn jnew_1 [_runnable]
    (var this (table/setproto @{:jclass "RunAtEndAnimationListener" :f_runnable nil} jproto))
    
        (set (this :f_runnable) _runnable)
    this))
    
(set jm_onPlatformAnimationStart (fn jm_onPlatformAnimationStart [this]
    nil))
    
(set jm_onPlatformAnimationEnd (fn jm_onPlatformAnimationEnd [this]
    nil))
    
(set jm_onPlatformAnimationRepeat (fn jm_onPlatformAnimationRepeat [this]
    nil))

(set jproto @{:jm_onPlatformAnimationStart jm_onPlatformAnimationStart :jm_onPlatformAnimationEnd jm_onPlatformAnimationEnd :jm_onPlatformAnimationRepeat jm_onPlatformAnimationRepeat})


