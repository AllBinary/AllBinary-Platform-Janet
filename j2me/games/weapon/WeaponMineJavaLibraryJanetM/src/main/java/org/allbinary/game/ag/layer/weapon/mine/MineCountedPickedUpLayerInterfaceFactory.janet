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
# package org.allbinary.game.ag.layer.weapon.mine

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(defn- WeaponProperties/jnew_5 [& args] (JR/call jfile "../../../../../../../org/allbinary/game/combat/weapon/WeaponProperties" "jnew_5" args))
(import ../../../../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory :as CountedPickedUpLayerInterfaceFactory)
(defn- IconLayerFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/pickup/IconLayerFactory" "jm_getInstance" args))
(defn- PickedUpLayerTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(import ../../../../../../../java/lang/Integer :as Integer)
(defn- MineLayerCircularStaticPool/jm_getInstance [& args] (JR/call jfile "./MineLayerCircularStaticPool" "jm_getInstance" args))
(defn- MineWeaponResources/jm_getInstance [& args] (JR/call jfile "./MineWeaponResources" "jm_getInstance" args))

# Java class MineCountedPickedUpLayerInterfaceFactory
(var jproto nil)
(var jcell_pickedUpLayerInterfaceFactoryInterface :jnone)
(var jstatic_pickedUpLayerInterfaceFactoryInterface nil)
(var jsetstatic_pickedUpLayerInterfaceFactoryInterface nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)
(var jm_getTotal nil)
(var jm_getNextInstance nil)

(set jstatic_pickedUpLayerInterfaceFactoryInterface (fn jstatic_pickedUpLayerInterfaceFactoryInterface []
  (when (= jcell_pickedUpLayerInterfaceFactoryInterface :jnone) (set jcell_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY)))
  jcell_pickedUpLayerInterfaceFactoryInterface))
(set jsetstatic_pickedUpLayerInterfaceFactoryInterface (fn jsetstatic_pickedUpLayerInterfaceFactoryInterface [value] (set jcell_pickedUpLayerInterfaceFactoryInterface value)))

    
(set jm_init (fn jm_init []
        (set jcell_pickedUpLayerInterfaceFactoryInterface (jnew_0))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MineCountedPickedUpLayerInterfaceFactory" :f_weaponLayerCircularStaticPool nil :f_weaponProperties nil :f_smallIntegerSingletonFactory nil} jproto))
    (put this :f_weaponLayerCircularStaticPool (MineLayerCircularStaticPool/jm_getInstance))
    (put this :f_weaponProperties (WeaponProperties/jnew_5 (- 1) (- 1) 0 8000 (JR/i16 10)))
    (put this :f_smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (JR/superInit this (CountedPickedUpLayerInterfaceFactory/jnew_3 ((PickedUpLayerTypeFactory/jm_getInstance) :f_MINE) (IconLayerFactory/jm_getInstance (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((MineWeaponResources/jm_getInstance) :f_DROP_ICON_RESOURCE))) 10 10) (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((MineWeaponResources/jm_getInstance) :f_DROP_RESOURCE)))))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_pickedUpLayerInterfaceFactoryInterface)))))
    
(set jm_getTotal (fn jm_getTotal [this]
    (label jreturn
        (return jreturn 3))))
    
(set jm_getNextInstance (fn jm_getNextInstance [this _hashtable _x _y _z]
    (label jreturn
        (var _sourceLayerInterface (:jm_get _hashtable (:jm_getAt (this :f_smallIntegerSingletonFactory) 0)))
        (var _angle (:jm_get _hashtable (:jm_getAt (this :f_smallIntegerSingletonFactory) 1)))
        (var _scoreableInterface _sourceLayerInterface)
        (return jreturn (:jm_getInstanceWeaponLayer (this :f_weaponLayerCircularStaticPool) _sourceLayerInterface _x _y _z (:jm_intValue _angle) 0 (this :f_weaponProperties) _scoreableInterface)))))

(set jproto (table/setproto @{:jm_getTotal jm_getTotal :jm_getNextInstance jm_getNextInstance} CountedPickedUpLayerInterfaceFactory/jproto))


