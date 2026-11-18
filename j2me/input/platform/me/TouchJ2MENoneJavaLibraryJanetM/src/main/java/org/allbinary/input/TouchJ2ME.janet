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
# package org.allbinary.input

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#TouchJ2MENone
# Java class TouchJ2ME
(var jproto nil)
(var jnew_0 nil)
(var jm_pointerDragged nil)
(var jm_pointerPressed nil)
(var jm_pointerReleased nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchJ2ME"} jproto))
    this))
    
(set jm_pointerDragged (fn jm_pointerDragged [this _x _y]
    nil))
    
(set jm_pointerPressed (fn jm_pointerPressed [this _x _y]
    nil))
    
(set jm_pointerReleased (fn jm_pointerReleased [this _x _y]
    nil))

(set jproto @{:jm_pointerDragged jm_pointerDragged :jm_pointerPressed jm_pointerPressed :jm_pointerReleased jm_pointerReleased})


