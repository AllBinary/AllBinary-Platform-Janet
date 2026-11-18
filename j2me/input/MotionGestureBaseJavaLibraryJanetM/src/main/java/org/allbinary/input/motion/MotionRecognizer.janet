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
# package org.allbinary.input.motion

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MotionRecognizer
(var jproto nil)
(var jnew_0 nil)
(var jm_processStartMotionEvent nil)
(var jm_processEndMotionEvent nil)
(var jm_processDraggedMotionEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionRecognizer"} jproto))
    this))

    
(set jm_processStartMotionEvent (fn jm_processStartMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_processEndMotionEvent (fn jm_processEndMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_processDraggedMotionEvent (fn jm_processDraggedMotionEvent [this _x _y _deviceId _modifiers]
    nil))

(set jproto @{:jm_processStartMotionEvent jm_processStartMotionEvent :jm_processEndMotionEvent jm_processEndMotionEvent :jm_processDraggedMotionEvent jm_processDraggedMotionEvent})


