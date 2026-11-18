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

# Java class AllMotionRecognizer
(var jproto nil)
(var jcell_index :jnone)
(var jstatic_index nil)
(var jsetstatic_index nil)
(var jnew_0 nil)
(var jm_processStartMotionEvent nil)
(var jm_processEndMotionEvent nil)
(var jm_processDraggedMotionEvent nil)
(var jm_processMovedMotionEvent nil)
(var jm_processScrolledMotionEvent nil)
(var jm_getId nil)

(set jstatic_index (fn jstatic_index []
  (when (= jcell_index :jnone) (set jcell_index 0))
  jcell_index))
(set jsetstatic_index (fn jsetstatic_index [value] (set jcell_index value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllMotionRecognizer" :f_id 0} jproto))
    
        (set (this :f_id) (do (def jold (jstatic_index)) (set jcell_index (JR/i32 (+ (jstatic_index) 1))) jold))
    this))
    
(set jm_processStartMotionEvent (fn jm_processStartMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_processEndMotionEvent (fn jm_processEndMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_processDraggedMotionEvent (fn jm_processDraggedMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_processMovedMotionEvent (fn jm_processMovedMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_processScrolledMotionEvent (fn jm_processScrolledMotionEvent [this _x _y _deviceId _modifiers]
    nil))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))

(set jproto @{:jm_processStartMotionEvent jm_processStartMotionEvent :jm_processEndMotionEvent jm_processEndMotionEvent :jm_processDraggedMotionEvent jm_processDraggedMotionEvent :jm_processMovedMotionEvent jm_processMovedMotionEvent :jm_processScrolledMotionEvent jm_processScrolledMotionEvent :jm_getId jm_getId})


