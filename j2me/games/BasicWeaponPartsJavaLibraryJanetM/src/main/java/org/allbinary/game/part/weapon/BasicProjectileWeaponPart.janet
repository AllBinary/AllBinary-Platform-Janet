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
# package org.allbinary.game.part.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" "jstatic_NULL_WEAPON_PROPERTIES" args))
(defn- NoScoreable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NoScoreable" "jm_getInstance" args))
(defn- RelativeRelationship/jstatic_NULL_RELATIVE_RELATIONSHIP [& args] (JR/call jfile "../../../../../org/allbinary/graphics/RelativeRelationship" "jstatic_NULL_RELATIVE_RELATIONSHIP" args))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(import ./BasicWeaponPart :as BasicWeaponPart)

# Java class BasicProjectileWeaponPart
(var jproto nil)
(var jnew_6 nil)
(var jm_createBasicProjectileWeaponPart nil)
(var jm_processScore nil)

    
(set jm_createBasicProjectileWeaponPart (fn jm_createBasicProjectileWeaponPart [_animationInterface _weaponLayerCircularStaticPool]
    (label jreturn
        (return jreturn (jnew_6 _animationInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER) _weaponLayerCircularStaticPool (WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable/jm_getInstance) (RelativeRelationship/jstatic_NULL_RELATIVE_RELATIONSHIP))))))
    
(set jnew_6 (fn jnew_6 [_animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _weaponProperties _scoreableInterface _relativeRelationship]
    (var this (table/setproto @{:jclass "BasicProjectileWeaponPart" :f_weaponLayerCircularStaticPool nil} jproto))
    
        (JR/superInit this (BasicWeaponPart/jnew_5 _animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship))
        (set (this :f_weaponLayerCircularStaticPool) _weaponLayerCircularStaticPool)
    this))
    
(set jm_processScore (fn jm_processScore [this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface]
        (var _weaponLayer (:jm_getInstanceWeaponLayer (this :f_weaponLayerCircularStaticPool) (:jm_getOwnerLayerInterface this) (:jm_getX (this :f_relativeRelationship)) (:jm_getY (this :f_relativeRelationship)) (:jm_getZ (this :f_relativeRelationship)) _angle _otherAngle _weaponProperties _scoreableInterface))
        (:jm_append _allbinaryLayerManager _weaponLayer)))

(set jproto (table/setproto @{:jm_processScore jm_processScore} BasicWeaponPart/jproto))


