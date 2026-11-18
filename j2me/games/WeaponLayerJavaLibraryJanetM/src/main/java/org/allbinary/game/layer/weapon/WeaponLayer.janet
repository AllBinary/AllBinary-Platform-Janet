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
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- DestroyedLayerProcessor/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" "jm_getInstance" args))
(defn- WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" "jstatic_NULL_WEAPON_PROPERTIES" args))
(defn- GameConfigurationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" "jm_getInstance" args))
(defn- BasicGroupFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/identification/BasicGroupFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer :as MultiPlayerGameLayer)
(defn- NoScoreable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NoScoreable" "jm_getInstance" args))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- CollidableWeaponBehavior/jm_getNullInstance [& args] (JR/call jfile "./CollidableWeaponBehavior" "jm_getNullInstance" args))

# Java class WeaponLayer
(var jproto nil)
(var jnew_8 nil)
(var jm_setCollidableInferface nil)
(var jm_initXYZ nil)
(var jm_init nil)
(var jm_setGroupInterfaces nil)
(var jm_processTick nil)
(var jm_isDestroyed nil)
(var jm_damage nil)
(var jm_givePoints nil)
(var jm_isExhausted nil)
(var jm_getDamage nil)
(var jm_setDestroyed nil)
(var jm_getInitDamage nil)
(var jm_setAnimationInterface nil)
(var jm_getAnimationInterface nil)
(var jm_getInitAnimationInterfaceP nil)
(var jm_setInitAnimationInterfaceP nil)
(var jm_getDestroyedAnimationInterface nil)
(var jm_getOwnerLayerInterface nil)
(var jm_setOwnerLayerInterface nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_getMovement nil)
(var jm_setMovement nil)
(var jm_getType nil)
(var jm_getStaticType nil)
(var jm_getMultiPlayerType nil)
(var jm_setWeaponPropertiesP nil)
(var jm_getWeaponPropertiesP nil)
(var jm_implmentsTickableInterface nil)
(var jm_set nil)

    
(set jnew_8 (fn jnew_8 [_name _remoteInfo _multiPlayerType _movement _animationInterface _destroyedAnimationInterface _rectangle _viewPosition]
    (var this (table/setproto @{:jclass "WeaponLayer" :f_animationInterface nil :f_initAnimationInterface nil :f_destroyedAnimationInterface nil :f_sourceLayerInterface nil :f_totalDamage 0 :f_initDamage 0 :f_destroyed false :f_scoreableInterface nil :f_movement nil :f_weaponProperties nil :f_multiPlayerType 0 :f_collidableWeaponBehavior nil} jproto))
    (put this :f_animationInterface (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
    
    
    (put this :f_sourceLayerInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
    
    
    (put this :f_destroyed true)
    (put this :f_scoreableInterface (NoScoreable/jm_getInstance))
    
    (put this :f_weaponProperties (WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES))
    
    (put this :f_collidableWeaponBehavior (CollidableWeaponBehavior/jm_getNullInstance))
        (JR/superInit this (MultiPlayerGameLayer/jnew_5 _remoteInfo ((BasicGroupFactory/jm_getInstance) :f_NONE_ARRAY) _name _rectangle _viewPosition))
        (set (this :f_initAnimationInterface) _animationInterface)
        (:jm_setAnimationInterface this _animationInterface)
        (set (this :f_destroyedAnimationInterface) _destroyedAnimationInterface)
        (set (this :f_movement) _movement)
        (set (this :f_multiPlayerType) _multiPlayerType)
    this))
    
(set jm_setCollidableInferface (fn jm_setCollidableInferface [this _collidableInferface]
        ((get MultiPlayerGameLayer/jproto :jm_setCollidableInferface) this _collidableInferface)
        (set (this :f_collidableWeaponBehavior) (:jm_getCollidableInferface this))))
    
(set jm_initXYZ (fn jm_initXYZ [this _x _y _z]
        (set (this :f_x) _x)
        (set (this :f_y) _y)
        (set (this :f_z) _z)))
    
(set jm_init (fn jm_init [this _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable]
        (:jm_setWeaponPropertiesP this _weaponProperties)
        (:jm_setReadyForExplosion this false)
        (:jm_setAnimationInterface this (:jm_getInitAnimationInterfaceP this))
        (:jm_setOwnerLayerInterface this _sourceLayerInterface)
        (:jm_init (this :f_collidableWeaponBehavior) _sourceLayerInterface)
        (:jm_setGroupInterfaces this)
        (if (not (nil? _scoreable))
            (do
            (set (this :f_scoreableInterface) _scoreable)))
        (set (this :f_totalDamage) 0)
        (set (this :f_initDamage) (:jm_getDamage _weaponProperties))
        (:jm_setDestroyed this false)
        (:jm_init (this :f_movement) (:jm_getSpeed _weaponProperties) _angle _otherAngle)))
    
(set jm_setGroupInterfaces (fn jm_setGroupInterfaces [this]
        (var _basicGroupFactory (BasicGroupFactory/jm_getInstance))
        (if (= ((:jm_getGroupInterface (this :f_sourceLayerInterface)) 0) (_basicGroupFactory :f_ENEMY))
            (do
            (:jm_setGroupInterface this (_basicGroupFactory :f_ENEMY_ARRAY)))
            (do
            (:jm_setGroupInterface this (:jm_getGroupInterface (this :f_sourceLayerInterface)))))))
    
(set jm_processTick (fn jm_processTick [this _allBinaryLayerManager]
        (if (and (:jm_isExhausted this) (not (:jm_isDestroyed this)))
            (do
            (if (:jm_isReadyForExplosion this)
                (do
                (var _indexedAnimationInterface (:jm_getAnimationInterface this))
                (var _currentFrame (:jm_getFrame _indexedAnimationInterface))
                (if (< _currentFrame (JR/i32 (- (:jm_getAnimationSize _indexedAnimationInterface) 1)))
                    (do
                    (:jm_nextFrame _indexedAnimationInterface))
                    (do
                    (:jm_setDestroyed this true))))
                (do
                (var _collidableWeaponBehavior (:jm_getCollidableInferface this))
                (if (:jm_isCollided _collidableWeaponBehavior)
                    (do
                    (:jm_setAnimationInterface this (this :f_destroyedAnimationInterface))
                    (:jm_stop (:jm_getMovement this))
                    (:jm_setReadyForExplosion this true))
                    (do
                    (:jm_setDestroyed this true)))))))
        (:jm_process (this :f_movement) this)
        (set (this :f_totalDamage) (JR/i32 (+ (this :f_totalDamage) (:jm_getDissipation (this :f_weaponProperties)))))))
    
(set jm_isDestroyed (fn jm_isDestroyed [this]
    (label jreturn
        (return jreturn (this :f_destroyed)))))
    
(set jm_damage (fn jm_damage [this _damage _damageType]
        (set (this :f_totalDamage) (JR/i32 (+ (this :f_totalDamage) (JR/i32 (* _damage _damage)))))))
    
(set jm_givePoints (fn jm_givePoints [this _total]
        (:jm_addPoints (this :f_scoreableInterface) (JR/i32 (* (:jm_getCompetitionValue (GameConfigurationUtil/jm_getInstance)) _total)))))
    
(set jm_isExhausted (fn jm_isExhausted [this]
    (label jreturn
        (if (or (> (this :f_totalDamage) (:jm_getInitDamage this)) (< (this :f_totalDamage) 0))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_getDamage (fn jm_getDamage [this _damageType]
    (label jreturn
        (if (not (:jm_isExhausted this))
            (do
            (var _total (JR/i32 (- (:jm_getInitDamage this) (this :f_totalDamage))))
            (:jm_givePoints this _total)
            (return jreturn _total)))
        (return jreturn 0))))
    
(set jm_setDestroyed (fn jm_setDestroyed [this _destroyed]
        (set (this :f_destroyed) _destroyed)
        (if (:jm_isDestroyed this)
            (do
            (set (this :f_scoreableInterface) (NoScoreable/jm_getInstance))
            (:jm_add (DestroyedLayerProcessor/jm_getInstance) this)))))
    
(set jm_getInitDamage (fn jm_getInitDamage [this]
    (label jreturn
        (return jreturn (this :f_initDamage)))))
    
(set jm_setAnimationInterface (fn jm_setAnimationInterface [this _animationInterface]
        (set (this :f_animationInterface) _animationInterface)))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
    (label jreturn
        (return jreturn (this :f_animationInterface)))))
    
(set jm_getInitAnimationInterfaceP (fn jm_getInitAnimationInterfaceP [this]
    (label jreturn
        (return jreturn (this :f_initAnimationInterface)))))
    
(set jm_setInitAnimationInterfaceP (fn jm_setInitAnimationInterfaceP [this _initAnimationInterface]
        (set (this :f_initAnimationInterface) _initAnimationInterface)))
    
(set jm_getDestroyedAnimationInterface (fn jm_getDestroyedAnimationInterface [this]
    (label jreturn
        (return jreturn (this :f_destroyedAnimationInterface)))))
    
(set jm_getOwnerLayerInterface (fn jm_getOwnerLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_sourceLayerInterface)))))
    
(set jm_setOwnerLayerInterface (fn jm_setOwnerLayerInterface [this _sourceLayerInterface]
        (set (this :f_sourceLayerInterface) _sourceLayerInterface)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _viewPosition (:jm_getViewPosition this))
        (:jm_paintXY (this :f_animationInterface) _graphics (JR/i32 (- (:jm_getX _viewPosition) (:jm_getHalfWidth this))) (JR/i32 (- (:jm_getY _viewPosition) (:jm_getHalfHeight this))))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
        (var _viewPosition (:jm_getViewPosition this))
        (:jm_paintThreedXYZ (this :f_animationInterface) _graphics (JR/i32 (- (:jm_getX _viewPosition) (:jm_getHalfWidth this))) (JR/i32 (- (:jm_getY _viewPosition) (:jm_getHalfHeight this))) (JR/i32 (- (:jm_getZ _viewPosition) (:jm_getHalfDepth this))))))
    
(set jm_getMovement (fn jm_getMovement [this]
    (label jreturn
        (return jreturn (this :f_movement)))))
    
(set jm_setMovement (fn jm_setMovement [this _movement]
        (set (this :f_movement) _movement)))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (jm_getStaticType)))))
    
(set jm_getStaticType (fn jm_getStaticType []
    (label jreturn
        (return jreturn 0))))
    
(set jm_getMultiPlayerType (fn jm_getMultiPlayerType [this]
    (label jreturn
        (return jreturn (this :f_multiPlayerType)))))
    
(set jm_setWeaponPropertiesP (fn jm_setWeaponPropertiesP [this _weaponProperties]
        (set (this :f_weaponProperties) _weaponProperties)))
    
(set jm_getWeaponPropertiesP (fn jm_getWeaponPropertiesP [this]
    (label jreturn
        (return jreturn (this :f_weaponProperties)))))
    
(set jm_implmentsTickableInterface (fn jm_implmentsTickableInterface [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_set (fn jm_set [this _gl]
        (:jm_set (this :f_initAnimationInterface) _gl)))

(set jproto (table/setproto @{:jm_setCollidableInferface jm_setCollidableInferface :jm_initXYZ jm_initXYZ :jm_init jm_init :jm_setGroupInterfaces jm_setGroupInterfaces :jm_processTick jm_processTick :jm_isDestroyed jm_isDestroyed :jm_damage jm_damage :jm_givePoints jm_givePoints :jm_isExhausted jm_isExhausted :jm_getDamage jm_getDamage :jm_setDestroyed jm_setDestroyed :jm_getInitDamage jm_getInitDamage :jm_setAnimationInterface jm_setAnimationInterface :jm_getAnimationInterface jm_getAnimationInterface :jm_getInitAnimationInterfaceP jm_getInitAnimationInterfaceP :jm_setInitAnimationInterfaceP jm_setInitAnimationInterfaceP :jm_getDestroyedAnimationInterface jm_getDestroyedAnimationInterface :jm_getOwnerLayerInterface jm_getOwnerLayerInterface :jm_setOwnerLayerInterface jm_setOwnerLayerInterface :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_getMovement jm_getMovement :jm_setMovement jm_setMovement :jm_getType jm_getType :jm_getMultiPlayerType jm_getMultiPlayerType :jm_setWeaponPropertiesP jm_setWeaponPropertiesP :jm_getWeaponPropertiesP jm_getWeaponPropertiesP :jm_implmentsTickableInterface jm_implmentsTickableInterface :jm_set jm_set} MultiPlayerGameLayer/jproto))


