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
(import ./PickedUpLayerInterfaceFactoryBase :as PickedUpLayerInterfaceFactoryBase)

# Java class PickedUpLayerInterfaceFactory
(var jproto nil)
(var jnew_3 nil)
(var jm_getIconLayer nil)
(var jm_getAnimationInterface nil)
(var jm_getPickedUpLayerType nil)

    
(set jnew_3 (fn jnew_3 [_pickeUpLayerType _iconLayer _animationInterface]
    (var this (table/setproto @{:jclass "PickedUpLayerInterfaceFactory" :f_pickedUpLayerType nil :f_iconLayer nil :f_animationInterface nil} jproto))
    
    
    
    (JR/superInit this (PickedUpLayerInterfaceFactoryBase/jnew_0))
        (set (this :f_pickedUpLayerType) _pickeUpLayerType)
        (set (this :f_animationInterface) _animationInterface)
        (set (this :f_iconLayer) _iconLayer)
    this))
    
(set jm_getIconLayer (fn jm_getIconLayer [this]
    (label jreturn
        (return jreturn (this :f_iconLayer)))))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
    (label jreturn
        (return jreturn (this :f_animationInterface)))))
    
(set jm_getPickedUpLayerType (fn jm_getPickedUpLayerType [this]
    (label jreturn
        (return jreturn (this :f_pickedUpLayerType)))))

(set jproto (table/setproto @{:jm_getIconLayer jm_getIconLayer :jm_getAnimationInterface jm_getAnimationInterface :jm_getPickedUpLayerType jm_getPickedUpLayerType} PickedUpLayerInterfaceFactoryBase/jproto))


