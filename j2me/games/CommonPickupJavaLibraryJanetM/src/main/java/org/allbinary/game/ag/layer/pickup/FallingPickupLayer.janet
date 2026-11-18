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
# package org.allbinary.game.ag.layer.pickup

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY [& args] (JR/call jfile "../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" "jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY" args))
(import ../../../../../../org/allbinary/game/layer/pickup/PickupLayer :as PickupLayer)
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- ViewPosition/jm_getInstanceD [& args] (JR/call jfile "../../../../../../org/allbinary/view/ViewPosition" "jm_getInstanceD" args))

# Java class FallingPickupLayer
(var jproto nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jnew_1 nil)
(var jm_processTick nil)
(var jm_implmentsTickableInterface nil)

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "FallingPickupLayer"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

    
(set jnew_1 (fn jnew_1 [_remoteInfo]
    (var this (table/setproto @{:jclass "FallingPickupLayer"} jproto))
        (JR/superInit this (PickupLayer/jnew_7 (jstatic_NAME) _remoteInfo 0 (CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY) (JR/className (NullAnimationFactory/jm_getFactoryInstance)) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) 0 0) (ViewPosition/jm_getInstanceD)))
    this))
    
(set jm_processTick (fn jm_processTick [this _allBinaryLayerManager]
        (:jm_setPosition this (this :f_x) (JR/i32 (+ (this :f_y) 1)) (this :f_z))))
    
(set jm_implmentsTickableInterface (fn jm_implmentsTickableInterface [this]
    (label jreturn
        (return jreturn true))))

(set jproto (table/setproto @{:jm_processTick jm_processTick :jm_implmentsTickableInterface jm_implmentsTickableInterface} PickupLayer/jproto))


