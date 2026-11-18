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
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- CollidableAlwaysPickupNeverCollideBehaviorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory" "jm_getInstance" args))
(defn- DestroyedLayerProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" "jm_getInstance" args))
(defn- BasicGroupFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/identification/BasicGroupFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer :as MultiPlayerGameLayer)
(defn- CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY [& args] (JR/call jfile "./CountedPickedUpLayerInterfaceFactory" "jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY" args))

# Java class PickupLayer
(var jproto nil)
(var jnew_7 nil)
(var jm_init nil)
(var jm_initXYZ nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_getPickedUpLayerInterfaceFactoryInterface nil)
(var jm_setPickedUp nil)
(var jm_isDestroyed nil)
(var jm_setDestroyed nil)
(var jm_damage nil)
(var jm_getDamage nil)
(var jm_set nil)

    
(set jnew_7 (fn jnew_7 [_name _remoteInfo _total _pickedUpLayerInterfaceFactoryInterface _animationInterface _rectangle _viewPosition]
    (var this (table/setproto @{:jclass "PickupLayer" :f_pickedUpLayerInterfaceFactoryInterface nil :f_destroyed false :f_animationInterface nil} jproto))
    (put this :f_pickedUpLayerInterfaceFactoryInterface (CountedPickedUpLayerInterfaceFactory/jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY))
    
    (put this :f_animationInterface (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
        (JR/superInit this (MultiPlayerGameLayer/jnew_5 _remoteInfo ((BasicGroupFactory/jm_getInstance) :f_NONE_ARRAY) _name _rectangle _viewPosition))
        (:jm_setCollidableInferface this (:jm_createBehavior (CollidableAlwaysPickupNeverCollideBehaviorFactory/jm_getInstance)))
        (:jm_setLayerWidth this 10)
        (:jm_setLayerHeight this 10)
        (:jm_init this _pickedUpLayerInterfaceFactoryInterface _animationInterface)
    this))
    
(set jm_init (fn jm_init [this _pickedUpLayerInterfaceFactoryInterface _animationInterface]
        (set (this :f_pickedUpLayerInterfaceFactoryInterface) _pickedUpLayerInterfaceFactoryInterface)
        (set (this :f_animationInterface) _animationInterface)
        (:jm_setDestroyed this false)))
    
(set jm_initXYZ (fn jm_initXYZ [this _x _y _z]
        (:jm_setPosition this _x _y _z)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _viewPosition (:jm_getViewPosition this))
        (var _viewX (:jm_getX _viewPosition))
        (var _viewY (:jm_getY _viewPosition))
        (:jm_paintXY (this :f_animationInterface) _graphics _viewX _viewY)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (var _viewPosition (:jm_getViewPosition this))
        (var _viewX (:jm_getX _viewPosition))
        (var _viewY (:jm_getY _viewPosition))
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics _viewX _viewY 3)))
    
(set jm_getPickedUpLayerInterfaceFactoryInterface (fn jm_getPickedUpLayerInterfaceFactoryInterface [this]
    (label jreturn
        (return jreturn (this :f_pickedUpLayerInterfaceFactoryInterface)))))
    
(set jm_setPickedUp (fn jm_setPickedUp [this]
        (:jm_setDestroyed this true)))
    
(set jm_isDestroyed (fn jm_isDestroyed [this]
    (label jreturn
        (return jreturn (this :f_destroyed)))))
    
(set jm_setDestroyed (fn jm_setDestroyed [this _destroyed]
        (set (this :f_destroyed) _destroyed)
        (if (:jm_isDestroyed this)
            (do
            (:jm_add (DestroyedLayerProcessor/jm_getInstance) this)))))
    
(set jm_damage (fn jm_damage [this _damage _damageType]
    nil))
    
(set jm_getDamage (fn jm_getDamage [this _damageType]
    (label jreturn
        (return jreturn 0))))
    
(set jm_set (fn jm_set [this _gl]
        (var _openGLSurfaceChangedInterface (this :f_animationInterface))
        (:jm_set _openGLSurfaceChangedInterface _gl)))

(set jproto (table/setproto @{:jm_init jm_init :jm_initXYZ jm_initXYZ :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_getPickedUpLayerInterfaceFactoryInterface jm_getPickedUpLayerInterfaceFactoryInterface :jm_setPickedUp jm_setPickedUp :jm_isDestroyed jm_isDestroyed :jm_setDestroyed jm_setDestroyed :jm_damage jm_damage :jm_getDamage jm_getDamage :jm_set jm_set} MultiPlayerGameLayer/jproto))


