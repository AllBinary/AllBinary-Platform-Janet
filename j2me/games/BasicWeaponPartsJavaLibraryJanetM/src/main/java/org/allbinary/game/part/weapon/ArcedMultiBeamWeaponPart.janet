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
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(import ./BasicWeaponPart :as BasicWeaponPart)

# Java class ArcedMultiBeamWeaponPart
(var jproto nil)
(var jnew_7 nil)
(var jm_processScore nil)

    
(set jnew_7 (fn jnew_7 [_animationInterface _sourceLayerInterface _weaponLayerCircularStaticPool _total _weaponProperties _scoreableInterface _relativeRelationship]
    (var this (table/setproto @{:jclass "ArcedMultiBeamWeaponPart" :f_weaponLayerCircularStaticPool nil :f_total 0 :f_TOTAL_ANGLE 0} jproto))
    
    
    (put this :f_TOTAL_ANGLE ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE))
        (JR/superInit this (BasicWeaponPart/jnew_5 _animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship))
        (set (this :f_total) _total)
        (set (this :f_weaponLayerCircularStaticPool) _weaponLayerCircularStaticPool)
    this))
    
(set jm_processScore (fn jm_processScore [this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface]
        (var _increment (JR/i16 (JR/idiv (JR/i32 (- (this :f_total) 1)) (this :f_TOTAL_ANGLE))))
        (var _minAngle (JR/i16 (JR/i32 (- _angle (brshift (JR/i32 (* _increment (this :f_total))) 1)))))
        (var _next 0)
        (var _weaponLayer nil)
        (do
            (var _index 0)
            (while (< _index (this :f_total))
                (do
            (set _weaponLayer (:jm_getInstanceWeaponLayer (this :f_weaponLayerCircularStaticPool) (:jm_getOwnerLayerInterface this) (:jm_getX (this :f_relativeRelationship)) (:jm_getY (this :f_relativeRelationship)) 0 (JR/i32 (+ _minAngle _increment)) _otherAngle _weaponProperties _scoreableInterface))
            (:jm_append _allbinaryLayerManager _weaponLayer)
            (set _next (JR/i32 (+ _next _increment))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_processScore jm_processScore} BasicWeaponPart/jproto))


