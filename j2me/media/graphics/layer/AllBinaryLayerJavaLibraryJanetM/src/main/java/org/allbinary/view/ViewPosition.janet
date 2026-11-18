# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(import ./ViewPositionBase :as ViewPositionBase)

# Java class ViewPosition
(var jproto nil)
(var jnew_3 nil)
(var jm_getInstanceD nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_getZ nil)
(var jm_getX2 nil)
(var jm_getY2 nil)
(var jm_getZ2 nil)
(var jm_setAllbinaryLayer nil)

    
(set jm_getInstanceD (fn jm_getInstanceD []
    (label jreturn
        (return jreturn (jnew_3 0 0 0)))))
    
(set jnew_3 (fn jnew_3 [_x _y _z]
    (var this (table/setproto @{:jclass "ViewPosition" :f_allbinaryLayer nil} jproto))
    (put this :f_allbinaryLayer (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
        (JR/superInit this (ViewPositionBase/jnew_3 _x _y _z))
    this))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (:jm_getXP (this :f_allbinaryLayer))))))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (:jm_getYP (this :f_allbinaryLayer))))))
    
(set jm_getZ (fn jm_getZ [this]
    (label jreturn
        (return jreturn (:jm_getZP (this :f_allbinaryLayer))))))
    
(set jm_getX2 (fn jm_getX2 [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getX this) (:jm_getWidth (this :f_allbinaryLayer))))))))
    
(set jm_getY2 (fn jm_getY2 [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getY this) (:jm_getHeight (this :f_allbinaryLayer))))))))
    
(set jm_getZ2 (fn jm_getZ2 [this]
    (label jreturn
        (return jreturn (JR/i32 (+ (:jm_getZ this) (:jm_getDepth (this :f_allbinaryLayer))))))))
    
(set jm_setAllbinaryLayer (fn jm_setAllbinaryLayer [this _allbinaryLayer]
        (set (this :f_allbinaryLayer) _allbinaryLayer)))

(set jproto (table/setproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_getZ jm_getZ :jm_getX2 jm_getX2 :jm_getY2 jm_getY2 :jm_getZ2 jm_getZ2 :jm_setAllbinaryLayer jm_setAllbinaryLayer} ViewPositionBase/jproto))


