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
(import ./IndexedAnimationInterface :as IndexedAnimationInterface)

# Java class RotationAnimationInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getAngleInfoP nil)
(var jm_nextRotation nil)
(var jm_previousRotation nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RotationAnimationInterface"} jproto))
    this))

    
(set jm_getAngleInfoP (fn jm_getAngleInfoP [this]
    (error (JR/newException "AbstractMethodError" "getAngleInfoP"))))
    
(set jm_nextRotation (fn jm_nextRotation [this]
    (error (JR/newException "AbstractMethodError" "nextRotation"))))
    
(set jm_previousRotation (fn jm_previousRotation [this]
    (error (JR/newException "AbstractMethodError" "previousRotation"))))

(set jproto @{:jm_getAngleInfoP jm_getAngleInfoP :jm_nextRotation jm_nextRotation :jm_previousRotation jm_previousRotation})


