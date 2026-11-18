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
(import ./IndexedAnimationInterfaceCompositeInterface :as IndexedAnimationInterfaceCompositeInterface)

# Java class RotationAnimationInterfaceCompositeInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getRotationAnimationInterface nil)
(var jm_setFrame nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RotationAnimationInterfaceCompositeInterface"} jproto))
    this))

    
(set jm_getRotationAnimationInterface (fn jm_getRotationAnimationInterface [this]
    (error (JR/newException "AbstractMethodError" "getRotationAnimationInterface"))))
    
(set jm_setFrame (fn jm_setFrame [this _index]
    (error (JR/newException "AbstractMethodError" "setFrame"))))

(set jproto @{:jm_getRotationAnimationInterface jm_getRotationAnimationInterface :jm_setFrame jm_setFrame})


