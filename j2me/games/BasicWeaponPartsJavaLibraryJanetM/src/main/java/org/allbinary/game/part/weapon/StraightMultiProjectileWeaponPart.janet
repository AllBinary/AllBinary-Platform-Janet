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
(defn- NoDecimalTrigTable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/NoDecimalTrigTable" "jm_getInstance" args))
(import ./BasicWeaponPart :as BasicWeaponPart)

# Java class StraightMultiProjectileWeaponPart
(var jproto nil)
(var jnew_7 nil)
(var jm_createStraightMultiProjectileWeaponPart nil)
(var jm_processScore nil)

    
(set jm_createStraightMultiProjectileWeaponPart (fn jm_createStraightMultiProjectileWeaponPart [_animationInterface _weaponLayerCircularStaticPool]
    (label jreturn
        (return jreturn (jnew_7 _animationInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER) _weaponLayerCircularStaticPool 2 (WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable/jm_getInstance) (RelativeRelationship/jstatic_NULL_RELATIVE_RELATIONSHIP))))))
    
(set jnew_7 (fn jnew_7 [_animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship]
    (var this (table/setproto @{:jclass "StraightMultiProjectileWeaponPart" :f_weaponLayerCircularStaticPool nil :f_total 0 :f_noDecimalTrigTable nil} jproto))
    
    
    (put this :f_noDecimalTrigTable (NoDecimalTrigTable/jm_getInstance))
        (JR/superInit this (BasicWeaponPart/jnew_5 _animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship))
        (set (this :f_total) _total)
        (set (this :f_weaponLayerCircularStaticPool) _weaponLayerCircularStaticPool)
    this))
    
(set jm_processScore (fn jm_processScore [this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface]
        (var _sourceLayerInterface (:jm_getOwnerLayerInterface this))
        (var _reducedWidth (JR/idiv (JR/i32 (* (:jm_getWidth _sourceLayerInterface) 8)) 10))
        (var _halfWidth (brshift _reducedWidth 1))
        (var _x (:jm_getX (this :f_relativeRelationship)))
        (var _y (:jm_getY (this :f_relativeRelationship)))
        (var _sine 0)
        (var _beamX 0)
        (var _cosine 0)
        (var _beamY 0)
        (var _weaponLayer nil)
        (var _increment (JR/idiv _reducedWidth (JR/i32 (- (this :f_total) 1))))
        (var _next (JR/i32 (- _halfWidth)))
        (do
            (var _index 0)
            (while (< _index (this :f_total))
                (do
            (set _sine (JR/i32 (* _next (:jm_sin (this :f_noDecimalTrigTable) _angle))))
            (set _beamX (JR/ldiv _sine ((this :f_noDecimalTrigTable) :f_SCALE)))
            (set _cosine (JR/i32 (* _next (:jm_cos (this :f_noDecimalTrigTable) _angle))))
            (set _beamY (JR/i32 (- (JR/ldiv _cosine ((this :f_noDecimalTrigTable) :f_SCALE)))))
            (set _weaponLayer (:jm_getInstanceWeaponLayer (this :f_weaponLayerCircularStaticPool) _sourceLayerInterface (JR/i32 (+ _x _beamX)) (JR/i32 (+ _y _beamY)) 0 _angle _otherAngle _weaponProperties _scoreableInterface))
            (:jm_append _allbinaryLayerManager _weaponLayer)
            (set _next (JR/i32 (+ _next _increment))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_processScore jm_processScore} BasicWeaponPart/jproto))


