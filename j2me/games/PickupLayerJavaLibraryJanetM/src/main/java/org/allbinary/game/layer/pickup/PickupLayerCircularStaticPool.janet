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
(import ../../../../../org/allbinary/layer/AllBinaryLayerCircularPool :as AllBinaryLayerCircularPool)

# Java class PickupLayerCircularStaticPool
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getInstanceXYZ nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PickupLayerCircularStaticPool"} jproto))
    (JR/superInit this (AllBinaryLayerCircularPool/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_getInstanceXYZ (fn jm_getInstanceXYZ [this _pickedUpLayerInterfaceFactoryInterface _x _y _z]
    (label jreturn
        (var _pickupLayer (:jm_getNextInstance this))
        (:jm_initXYZ _pickupLayer _x _y _z)
        (:jm_init _pickupLayer _pickedUpLayerInterfaceFactoryInterface (:jm_getAnimationInterface _pickedUpLayerInterfaceFactoryInterface))
        (return jreturn _pickupLayer))))

(set jproto (table/setproto @{:jm_getInstanceXYZ jm_getInstanceXYZ} AllBinaryLayerCircularPool/jproto))


