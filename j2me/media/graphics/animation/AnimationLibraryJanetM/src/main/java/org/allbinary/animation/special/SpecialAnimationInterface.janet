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
# package org.allbinary.animation.special

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/animation/IndexedAnimationInterface :as IndexedAnimationInterface)

# Java class SpecialAnimationInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_setLastFrame nil)
(var jm_isComplete nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SpecialAnimationInterface"} jproto))
    this))

    
(set jm_setLastFrame (fn jm_setLastFrame [this]
    (error (JR/newException "AbstractMethodError" "setLastFrame"))))
    
(set jm_isComplete (fn jm_isComplete [this]
    (error (JR/newException "AbstractMethodError" "isComplete"))))

(set jproto @{:jm_setLastFrame jm_setLastFrame :jm_isComplete jm_isComplete})


