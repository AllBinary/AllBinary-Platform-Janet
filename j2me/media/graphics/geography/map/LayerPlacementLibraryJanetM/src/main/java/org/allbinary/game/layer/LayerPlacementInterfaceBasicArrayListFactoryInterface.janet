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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LayerPlacementInterfaceBasicArrayListFactoryInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getOnDemandResources nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerPlacementInterfaceBasicArrayListFactoryInterface"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this]
    (error (JR/newException "AbstractMethodError" "getInstance"))))
    
(set jm_getOnDemandResources (fn jm_getOnDemandResources [this]
    (error (JR/newException "AbstractMethodError" "getOnDemandResources"))))

(set jproto @{:jm_getInstance jm_getInstance :jm_getOnDemandResources jm_getOnDemandResources})


