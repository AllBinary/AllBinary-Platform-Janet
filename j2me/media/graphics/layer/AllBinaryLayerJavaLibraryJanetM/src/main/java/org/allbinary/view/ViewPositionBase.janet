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
# package org.allbinary.view

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/graphics/GPoint :as GPoint)

# Java class ViewPositionBase
(var jproto nil)
(var jcell_NULL_VIEW_POSITION :jnone)
(var jstatic_NULL_VIEW_POSITION nil)
(var jsetstatic_NULL_VIEW_POSITION nil)
(var jnew_3 nil)
(var jm_getX2 nil)
(var jm_getY2 nil)
(var jm_getZ2 nil)
(var jm_setAllbinaryLayer nil)

(set jstatic_NULL_VIEW_POSITION (fn jstatic_NULL_VIEW_POSITION []
  (when (= jcell_NULL_VIEW_POSITION :jnone) (set jcell_NULL_VIEW_POSITION (jnew_3 0 0 0)))
  jcell_NULL_VIEW_POSITION))
(set jsetstatic_NULL_VIEW_POSITION (fn jsetstatic_NULL_VIEW_POSITION [value] (set jcell_NULL_VIEW_POSITION value)))

    
(set jnew_3 (fn jnew_3 [_x _y _z]
    (var this (table/setproto @{:jclass "ViewPositionBase"} jproto))
        (JR/superInit this (GPoint/jnew_3 _x _y _z))
    this))
    
(set jm_getX2 (fn jm_getX2 [this]
    (label jreturn
        (return jreturn (:jm_getX this)))))
    
(set jm_getY2 (fn jm_getY2 [this]
    (label jreturn
        (return jreturn (:jm_getY this)))))
    
(set jm_getZ2 (fn jm_getZ2 [this]
    (label jreturn
        (return jreturn (:jm_getZ this)))))
    
(set jm_setAllbinaryLayer (fn jm_setAllbinaryLayer [this _allbinaryLayer]
    nil))

(set jproto (table/setproto @{:jm_getX2 jm_getX2 :jm_getY2 jm_getY2 :jm_getZ2 jm_getZ2 :jm_setAllbinaryLayer jm_setAllbinaryLayer} GPoint/jproto))


