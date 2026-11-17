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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ScreenListenerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_onFullScreen nil)
(var jm_onFullScreenDisplay nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScreenListenerInterface"} jproto))
    this))

    
(set jm_onFullScreen (fn jm_onFullScreen [this _isFullScreen]
    (error (JR/newException "AbstractMethodError" "onFullScreen"))))
    
(set jm_onFullScreenDisplay (fn jm_onFullScreenDisplay [this]
    (error (JR/newException "AbstractMethodError" "onFullScreenDisplay"))))

(set jproto @{:jm_onFullScreen jm_onFullScreen :jm_onFullScreenDisplay jm_onFullScreenDisplay})


