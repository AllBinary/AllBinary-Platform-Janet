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
(defn- DropWeaponSound/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/ag/weapon/media/audio/DropWeaponSound" "jm_getInstance" args))
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(import ../../../../../../../org/allbinary/game/layer/weapon/SimpleWeaponLayer :as SimpleWeaponLayer)
(defn- RemoteInfo/jstatic_REMOTE_INFO [& args] (JR/call jfile "../../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" "jstatic_REMOTE_INFO" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- SecondaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory" "jm_getInstance" args))
(defn- NoMovementFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/physics/movement/NoMovementFactory" "jm_getInstance" args))
(defn- ViewPositionEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/view/event/ViewPositionEventHandler" "jm_getInstance" args))
(defn- MineWeaponResources/jm_getInstance [& args] (JR/call jfile "./MineWeaponResources" "jm_getInstance" args))

# Java class MineLayer
(var jproto nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jnew_1 nil)
(var jm_initXYZ nil)
(var jm_damage nil)
(var jm_getDamage nil)
(var jm_setDestroyed nil)

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "MineLayer"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

    
(set jnew_1 (fn jnew_1 [_viewPosition]
    (var this (table/setproto @{:jclass "MineLayer" :f_viewPositionEventHandler nil} jproto))
    (put this :f_viewPositionEventHandler (ViewPositionEventHandler/jm_getInstance))
        (JR/superInit this (SimpleWeaponLayer/jnew_8 (jstatic_NAME) (RemoteInfo/jstatic_REMOTE_INFO) (JR/i32 (- 1)) (:jm_getMovmentInstance (NoMovementFactory/jm_getInstance)) (JR/className (:jm_get (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((MineWeaponResources/jm_getInstance) :f_RESOURCE))) (SimpleWeaponLayer/jm_createDestroyed) (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) 10 10) _viewPosition))
    this))
    
(set jm_initXYZ (fn jm_initXYZ [this _x _y _z]
        (:jm_setPosition this (JR/i32 (+ _x 5)) (JR/i32 (+ _y 5)) _z)
        (:jm_addListener (this :f_viewPositionEventHandler) this)
        (:jm_add (SecondaryPlayerQueueFactory/jm_getInstance) (DropWeaponSound/jm_getInstance))))
    
(set jm_damage (fn jm_damage [this _damage _damageType]
        (set (this :f_totalDamage) (JR/i32 (+ (:jm_getInitDamage this) 1)))))
    
(set jm_getDamage (fn jm_getDamage [this _damageType]
    (label jreturn
        ((get SimpleWeaponLayer/jproto :jm_getDamage) this _damageType)
        (return jreturn (:jm_getInitDamage this)))))
    
(set jm_setDestroyed (fn jm_setDestroyed [this _destroyed]
        ((get SimpleWeaponLayer/jproto :jm_setDestroyed) this _destroyed)
        (if (:jm_isDestroyed this)
            (do
            (:jm_removeListener (this :f_viewPositionEventHandler) this)))))

(set jproto (table/setproto @{:jm_initXYZ jm_initXYZ :jm_damage jm_damage :jm_getDamage jm_getDamage :jm_setDestroyed jm_setDestroyed} SimpleWeaponLayer/jproto))


