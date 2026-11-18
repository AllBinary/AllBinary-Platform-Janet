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
(import ./WeaponLayer :as WeaponLayer)
(defn- CollidableDamageWeaponBehavior/jnew_1 [& args] (JR/call jfile "./CollidableDamageWeaponBehavior" "jnew_1" args))

# Java class DamageWeaponLayer
(var jproto nil)
(var jnew_11 nil)

    
(set jnew_11 (fn jnew_11 [_name _remoteInfo _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition _username _actorSessionId _id _multiPlayerType]
    (var this (table/setproto @{:jclass "DamageWeaponLayer"} jproto))
        (JR/superInit this (WeaponLayer/jnew_8 _name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition))
        (:jm_setCollidableInferface this (CollidableDamageWeaponBehavior/jnew_1 true))
    this))

(set jproto (table/setproto @{} WeaponLayer/jproto))


