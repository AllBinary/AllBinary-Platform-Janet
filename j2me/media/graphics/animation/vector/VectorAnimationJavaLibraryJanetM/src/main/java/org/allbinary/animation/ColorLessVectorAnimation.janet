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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(import ./VectorAnimation :as VectorAnimation)

# Java class ColorLessVectorAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_paintXY nil)

    
(set jnew_2 (fn jnew_2 [_currentPoints _animationBehavior]
    (var this (table/setproto @{:jclass "ColorLessVectorAnimation"} jproto))
        (JR/superInit this (VectorAnimation/jnew_3 _currentPoints ((BasicColorFactory/jm_getInstance) :f_WHITE) _animationBehavior))
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (:jm_paintVectors this _graphics _x _y)))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} VectorAnimation/jproto))


