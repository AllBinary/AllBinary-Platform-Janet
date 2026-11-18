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
(import ./GPoint :as GPoint)

# Java class CustomGPoint
(var jproto nil)
(var jcell_NULL_CUSTOM_POINT :jnone)
(var jstatic_NULL_CUSTOM_POINT nil)
(var jsetstatic_NULL_CUSTOM_POINT nil)
(var jnew_3 nil)
(var jm_getInstance nil)
(var jm_getInstance3 nil)
(var jm_setX nil)
(var jm_getX nil)
(var jm_setY nil)
(var jm_getY nil)
(var jm_setZ nil)
(var jm_getZ nil)

(set jstatic_NULL_CUSTOM_POINT (fn jstatic_NULL_CUSTOM_POINT []
  (when (= jcell_NULL_CUSTOM_POINT :jnone) (set jcell_NULL_CUSTOM_POINT (jnew_3 0 0 0)))
  jcell_NULL_CUSTOM_POINT))
(set jsetstatic_NULL_CUSTOM_POINT (fn jsetstatic_NULL_CUSTOM_POINT [value] (set jcell_NULL_CUSTOM_POINT value)))

    
(set jm_getInstance (fn jm_getInstance [_point]
    (label jreturn
        (return jreturn (jnew_3 (:jm_getX _point) (:jm_getY _point) (:jm_getZ _point))))))
    
(set jm_getInstance3 (fn jm_getInstance3 [_x _y]
    (label jreturn
        (return jreturn (jnew_3 _x _y 3)))))
    
(set jnew_3 (fn jnew_3 [_x _y _z]
    (var this (table/setproto @{:jclass "CustomGPoint" :f_cx 0 :f_cy 0 :f_cz 0} jproto))
    
    
    
        (JR/superInit this (GPoint/jnew_3 _x _y _z))
    this))
    
(set jm_setX (fn jm_setX [this _x]
        (set (this :f_cx) _x)))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (this :f_cx)))))
    
(set jm_setY (fn jm_setY [this _y]
        (set (this :f_cy) _y)))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (this :f_cy)))))
    
(set jm_setZ (fn jm_setZ [this _z]
        (set (this :f_cz) _z)))
    
(set jm_getZ (fn jm_getZ [this]
    (label jreturn
        (return jreturn (this :f_cz)))))

(set jproto (table/setproto @{:jm_setX jm_setX :jm_getX jm_getX :jm_setY jm_setY :jm_getY jm_getY :jm_setZ jm_setZ :jm_getZ jm_getZ} GPoint/jproto))


