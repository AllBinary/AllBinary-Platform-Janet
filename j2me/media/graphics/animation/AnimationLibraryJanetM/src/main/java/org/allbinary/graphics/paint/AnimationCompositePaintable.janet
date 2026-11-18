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
# package org.allbinary.graphics.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./InitUpdatePaintable :as InitUpdatePaintable)

# Java class AnimationCompositePaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_paint nil)
(var jm_paintThreed nil)

    
(set jnew_1 (fn jnew_1 [_animationInterface]
    (var this (table/setproto @{:jclass "AnimationCompositePaintable" :f_animationInterface nil} jproto))
    
    (JR/superInit this (InitUpdatePaintable/jnew_0))
        (set (this :f_animationInterface) _animationInterface)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paintXY (this :f_animationInterface) _graphics 0 0)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics 0 0 0)))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_paintThreed jm_paintThreed} InitUpdatePaintable/jproto))


