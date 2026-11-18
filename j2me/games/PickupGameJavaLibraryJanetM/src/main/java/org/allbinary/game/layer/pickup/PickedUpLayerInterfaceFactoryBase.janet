# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

# Java class PickedUpLayerInterfaceFactoryBase
(var jproto nil)
(var jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE :jnone)
(var jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE nil)
(var jsetstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE nil)
(var jnew_0 nil)
(var jm_getIconLayer nil)
(var jm_getAnimationInterface nil)
(var jm_getPickedUpLayerType nil)

(set jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE (fn jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE []
  (when (= jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE :jnone) (set jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE (jnew_0)))
  jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE))
(set jsetstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE (fn jsetstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE [value] (set jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PickedUpLayerInterfaceFactoryBase"} jproto))
    this))

    
(set jm_getIconLayer (fn jm_getIconLayer [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getPickedUpLayerType (fn jm_getPickedUpLayerType [this]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_getIconLayer jm_getIconLayer :jm_getAnimationInterface jm_getAnimationInterface :jm_getPickedUpLayerType jm_getPickedUpLayerType})


