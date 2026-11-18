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
# package org.allbinary.game.ag.layer.pickup.health

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../org/allbinary/layer/AllBinaryLayerCircularPool :as AllBinaryLayerCircularPool)

# Java class HealLayerCircularStaticPool
(var jproto nil)
(var jnew_2 nil)
(var jm_visit nil)

    
(set jnew_2 (fn jnew_2 [_allbinaryLayerFactoryInterface _total]
    (var this (table/setproto @{:jclass "HealLayerCircularStaticPool"} jproto))
    (JR/superInit this (AllBinaryLayerCircularPool/jnew_0))
        ((get AllBinaryLayerCircularPool/jproto :jm_initAllBinaryLayerCircularPool) this _allbinaryLayerFactoryInterface _total)
    this))
    
(set jm_visit (fn jm_visit [this _sourceLayerInterface]
        (var _healLayer (:jm_getNextInstance this))
        (var _healthInterfaceCompositeInterface _sourceLayerInterface)
        (var _healthInterface (:jm_getHealthInterface _healthInterfaceCompositeInterface))
        (:jm_visit _healLayer _healthInterface)))

(set jproto (table/setproto @{:jm_visit jm_visit} AllBinaryLayerCircularPool/jproto))


