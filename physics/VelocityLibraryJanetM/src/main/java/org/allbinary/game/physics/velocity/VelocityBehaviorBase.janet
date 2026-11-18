# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.physics.velocity

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class VelocityBehaviorBase
(var jproto nil)
(var jnew_0 nil)
(var jm_reduce nil)
(var jm_reduceX nil)
(var jm_reduceY nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VelocityBehaviorBase"} jproto))
    this))

    
(set jm_reduce (fn jm_reduce [this _velocityProperties _nominator _denominator]
    nil))
    
(set jm_reduceX (fn jm_reduceX [this _velocityProperties _nominator _denominator]
    nil))
    
(set jm_reduceY (fn jm_reduceY [this _velocityProperties _nominator _denominator]
    nil))

(set jproto @{:jm_reduce jm_reduce :jm_reduceX jm_reduceX :jm_reduceY jm_reduceY})


