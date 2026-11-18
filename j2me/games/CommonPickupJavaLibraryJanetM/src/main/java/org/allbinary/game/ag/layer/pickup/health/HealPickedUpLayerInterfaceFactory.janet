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
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(defn- CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" "jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY" args))
(defn- IconLayerFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory" "jm_getInstance" args))
(import ../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory :as PickedUpLayerInterfaceFactory)
(defn- PickedUpLayerTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" "jm_getInstance" args))
(defn- HealLayerCircularStaticPool/jnew_2 [& args] (JR/call jfile "./HealLayerCircularStaticPool" "jnew_2" args))
(defn- HealLayerFactory/jnew_0 [& args] (JR/call jfile "./HealLayerFactory" "jnew_0" args))
(defn- HealthResources/jm_getInstance [& args] (JR/call jfile "./HealthResources" "jm_getInstance" args))

# Java class HealPickedUpLayerInterfaceFactory
(var jproto nil)
(var jcell_pickedUpLayerInterfaceFactoryInterface :jnone)
(var jstatic_pickedUpLayerInterfaceFactoryInterface nil)
(var jsetstatic_pickedUpLayerInterfaceFactoryInterface nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getTotal nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_pickedUpLayerInterfaceFactoryInterface (fn jstatic_pickedUpLayerInterfaceFactoryInterface []
  (when (= jcell_pickedUpLayerInterfaceFactoryInterface :jnone) (set jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  jcell_pickedUpLayerInterfaceFactoryInterface))
(set jsetstatic_pickedUpLayerInterfaceFactoryInterface (fn jsetstatic_pickedUpLayerInterfaceFactoryInterface [value] (set jcell_pickedUpLayerInterfaceFactoryInterface value)))

    
(set jm_init (fn jm_init []
        (set jcell_pickedUpLayerInterfaceFactoryInterface (jnew_0))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HealPickedUpLayerInterfaceFactory" :f_pool nil} jproto))
    (put this :f_pool (HealLayerCircularStaticPool/jnew_2 (HealLayerFactory/jnew_0) 1))
        (JR/superInit this (PickedUpLayerInterfaceFactory/jnew_3 ((PickedUpLayerTypeFactory/jm_getInstance) :f_HEAL) (IconLayerFactory/jm_getInstance (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((HealthResources/jm_getInstance) :f_RESOURCE))) 10 10) (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((HealthResources/jm_getInstance) :f_RESOURCE)))))
    this))
    
(set jm_getTotal (fn jm_getTotal [this]
    (label jreturn
        (return jreturn 1))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_pickedUpLayerInterfaceFactoryInterface)))))
    
(set jm_process (fn jm_process [this _sourceLayerInterface]
        (:jm_visit (this :f_pool) _sourceLayerInterface)))

(set jproto (table/setproto @{:jm_getTotal jm_getTotal :jm_process jm_process} PickedUpLayerInterfaceFactory/jproto))


