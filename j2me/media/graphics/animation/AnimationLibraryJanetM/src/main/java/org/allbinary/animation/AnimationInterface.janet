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
(import ../../../org/allbinary/graphics/paint/LocationPaintableInterface :as LocationPaintableInterface)

# Java class AnimationInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_nextFrame nil)
(var jm_paintThreedXYZ nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnimationInterface"} jproto))
    this))

    
(set jm_nextFrame (fn jm_nextFrame [this]
    (error (JR/newException "AbstractMethodError" "nextFrame"))))
    
(set jm_paintThreedXYZ (fn jm_paintThreedXYZ [this _graphics _x _y _z]
    (error (JR/newException "AbstractMethodError" "paintThreedXYZ"))))

(set jproto @{:jm_nextFrame jm_nextFrame :jm_paintThreedXYZ jm_paintThreedXYZ})


