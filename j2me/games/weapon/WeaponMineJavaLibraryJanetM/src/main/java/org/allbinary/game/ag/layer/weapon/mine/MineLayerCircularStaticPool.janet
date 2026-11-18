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
(defn- WeaponLayerCircularPool/jnew_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/weapon/WeaponLayerCircularPool" "jnew_0" args))
(defn- MineCountedPickedUpLayerInterfaceFactory/jm_init [& args] (JR/call jfile "./MineCountedPickedUpLayerInterfaceFactory" "jm_init" args))
(defn- MineLayerFactory/jnew_1 [& args] (JR/call jfile "./MineLayerFactory" "jnew_1" args))

# Java class MineLayerCircularStaticPool
(var jproto nil)
(var jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL :jnone)
(var jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL nil)
(var jsetstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)

(set jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL (fn jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL []
  (when (= jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL :jnone) (set jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL (WeaponLayerCircularPool/jnew_0)))
  jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL))
(set jsetstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL (fn jsetstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL [value] (set jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MineLayerCircularStaticPool"} jproto))
    this))

    
(set jm_init (fn jm_init [_viewPositionFactoryInterface]
        (MineCountedPickedUpLayerInterfaceFactory/jm_init)
        (JR/className (jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL)))))

(set jproto @{})


