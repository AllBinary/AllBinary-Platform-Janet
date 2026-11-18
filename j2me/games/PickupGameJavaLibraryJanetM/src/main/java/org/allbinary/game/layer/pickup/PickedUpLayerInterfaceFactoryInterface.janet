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
# package org.allbinary.game.layer.pickup

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PickedUpLayerInterfaceFactoryInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getPickedUpLayerType nil)
(var jm_getIconLayer nil)
(var jm_getAnimationInterface nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PickedUpLayerInterfaceFactoryInterface"} jproto))
    this))

    
(set jm_getPickedUpLayerType (fn jm_getPickedUpLayerType [this]
    (error (JR/newException "AbstractMethodError" "getPickedUpLayerType"))))
    
(set jm_getIconLayer (fn jm_getIconLayer [this]
    (error (JR/newException "AbstractMethodError" "getIconLayer"))))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
    (error (JR/newException "AbstractMethodError" "getAnimationInterface"))))

(set jproto @{:jm_getPickedUpLayerType jm_getPickedUpLayerType :jm_getIconLayer jm_getIconLayer :jm_getAnimationInterface jm_getAnimationInterface})


