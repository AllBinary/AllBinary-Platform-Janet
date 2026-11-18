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
(import ./BasicAnimationInterfaceFactoryInterface :as BasicAnimationInterfaceFactoryInterface)

# Java class ProceduralAnimationInterfaceFactoryInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstanceAnimation nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ProceduralAnimationInterfaceFactoryInterface"} jproto))
    this))

    
(set jm_getInstanceAnimation (fn jm_getInstanceAnimation [this _animationInterface]
    (error (JR/newException "AbstractMethodError" "getInstanceAnimation"))))

(set jproto @{:jm_getInstanceAnimation jm_getInstanceAnimation})


