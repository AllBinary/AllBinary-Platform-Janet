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
# package org.allbinary.game.health

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./HealthBarAnimation :as HealthBarAnimation)

# Java class HealthBarTwodAnimation
(var jproto nil)
(var jnew_2 nil)
(var jm_paintXY nil)

    
(set jnew_2 (fn jnew_2 [_layerInterface _location]
    (var this (table/setproto @{:jclass "HealthBarTwodAnimation"} jproto))
        (JR/superInit this (HealthBarAnimation/jnew_2 _layerInterface _location))
    this))
    
(set jm_paintXY (fn jm_paintXY [this _graphics _x _y]
        (var _ax (JR/className (JR/className (this :f_allbinaryLayer))))
        (JR/className (this :f_basicSetColorUtil))
        (:jm_fillRect _graphics _ax (JR/i32 (- (:jm_getY this) 1)) (this :f_x2) (this :f_thickness))))

(set jproto (table/setproto @{:jm_paintXY jm_paintXY} HealthBarAnimation/jproto))


