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
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "./PointFactory" "jm_getInstance" args))

# Java class Line
(var jproto nil)
(var jnew_2 nil)
(var jm_getGradient nil)
(var jm_update nil)
(var jm_getDeltaX nil)
(var jm_getDeltaY nil)
(var jm_getP1 nil)
(var jm_getP2 nil)
(var jm_setP1 nil)
(var jm_setP2 nil)

    
(set jnew_2 (fn jnew_2 [_p1 _p2]
    (var this (table/setproto @{:jclass "Line" :f_p1 nil :f_p2 nil :f_deltaX 0.0 :f_deltaY 0.0} jproto))
    
    
    
    
        (set (this :f_p1) ((PointFactory/jm_getInstance) :f_ZERO_ZERO))
        (set (this :f_p2) (this :f_p1))
        (:jm_setP1 this _p1)
        (:jm_setP2 this _p2)
    this))
    
(set jm_getGradient (fn jm_getGradient [this]
    (label jreturn
        (return jreturn (/ (:jm_getDeltaY this) (:jm_getDeltaX this))))))
    
(set jm_update (fn jm_update [this]
        (set (this :f_deltaX) (- (:jm_getX (:jm_getP1 this)) (:jm_getX (:jm_getP2 this))))
        (set (this :f_deltaY) (- (:jm_getY (:jm_getP1 this)) (:jm_getY (:jm_getP2 this))))))
    
(set jm_getDeltaX (fn jm_getDeltaX [this]
    (label jreturn
        (return jreturn (this :f_deltaX)))))
    
(set jm_getDeltaY (fn jm_getDeltaY [this]
    (label jreturn
        (return jreturn (this :f_deltaY)))))
    
(set jm_getP1 (fn jm_getP1 [this]
    (label jreturn
        (return jreturn (this :f_p1)))))
    
(set jm_getP2 (fn jm_getP2 [this]
    (label jreturn
        (return jreturn (this :f_p2)))))
    
(set jm_setP1 (fn jm_setP1 [this _p1]
        (set (this :f_p1) _p1)
        (:jm_update this)))
    
(set jm_setP2 (fn jm_setP2 [this _p2]
        (set (this :f_p2) _p2)
        (:jm_update this)))

(set jproto @{:jm_getGradient jm_getGradient :jm_update jm_update :jm_getDeltaX jm_getDeltaX :jm_getDeltaY jm_getDeltaY :jm_getP1 jm_getP1 :jm_getP2 jm_getP2 :jm_setP1 jm_setP1 :jm_setP2 jm_setP2})


