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
# package org.allbinary.game.layer.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(defn- NullIndexedAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullIndexedAnimationFactory" "jm_getFactoryInstance" args))
(defn- ExplosionResources/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/damage/ExplosionResources" "jm_getInstance" args))
(import ./WeaponLayer :as WeaponLayer)
(defn- CollidableWeaponBehavior/jnew_1 [& args] (JR/call jfile "./CollidableWeaponBehavior" "jnew_1" args))

# Java class SimpleWeaponLayer
(var jproto nil)
(var jnew_8 nil)
(var jm_createDestroyed nil)

    
(set jm_createDestroyed (fn jm_createDestroyed []
    (label jreturn
        (return jreturn (JR/className (:jm_getProcedural (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance) ((ExplosionResources/jm_getInstance) :f_THIRD_EXPLOSION_RESOURCE)))))))
    
(set jnew_8 (fn jnew_8 [_name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition]
    (var this (table/setproto @{:jclass "SimpleWeaponLayer"} jproto))
        (JR/superInit this (WeaponLayer/jnew_8 _name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition))
        (:jm_setCollidableInferface this (CollidableWeaponBehavior/jnew_1 true))
    this))

(set jproto (table/setproto @{} WeaponLayer/jproto))


