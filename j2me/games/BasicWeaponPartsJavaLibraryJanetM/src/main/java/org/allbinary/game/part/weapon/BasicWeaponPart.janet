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
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" "jstatic_NULL_WEAPON_PROPERTIES" args))
(defn- NoScoreable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/score/NoScoreable" "jm_getInstance" args))
(defn- RelativeRelationship/jstatic_NULL_RELATIVE_RELATIONSHIP [& args] (JR/call jfile "../../../../../org/allbinary/graphics/RelativeRelationship" "jstatic_NULL_RELATIVE_RELATIONSHIP" args))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class BasicWeaponPart
(var jproto nil)
(var jcell_NULL_BASIC_WEAPON_PART :jnone)
(var jstatic_NULL_BASIC_WEAPON_PART nil)
(var jsetstatic_NULL_BASIC_WEAPON_PART nil)
(var jnew_5 nil)
(var jm_createBasicWeaponPart nil)
(var jm_init nil)
(var jm_process nil)
(var jm_processScore nil)
(var jm_getOwnerLayerInterface nil)
(var jm_setOwnerLayerInterface nil)
(var jm_getAnimationInterface nil)
(var jm_setAnimationInterface nil)
(var jm_paint nil)
(var jm_paintThreed nil)
(var jm_getWeaponProperties nil)
(var jm_setWeaponProperties nil)

(set jstatic_NULL_BASIC_WEAPON_PART (fn jstatic_NULL_BASIC_WEAPON_PART []
  (when (= jcell_NULL_BASIC_WEAPON_PART :jnone) (set jcell_NULL_BASIC_WEAPON_PART (jm_createBasicWeaponPart (JR/className (NullAnimationFactory/jm_getFactoryInstance)))))
  jcell_NULL_BASIC_WEAPON_PART))
(set jsetstatic_NULL_BASIC_WEAPON_PART (fn jsetstatic_NULL_BASIC_WEAPON_PART [value] (set jcell_NULL_BASIC_WEAPON_PART value)))

    
(set jm_createBasicWeaponPart (fn jm_createBasicWeaponPart [_animationInterface]
    (label jreturn
        (return jreturn (jnew_5 _animationInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER) (WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES) (NoScoreable/jm_getInstance) (RelativeRelationship/jstatic_NULL_RELATIVE_RELATIONSHIP))))))
    
(set jnew_5 (fn jnew_5 [_animationInterface _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship]
    (var this (table/setproto @{:jclass "BasicWeaponPart" :f_animationInterface nil :f_ownerLayerInterface nil :f_weaponProperties nil :f_scoreableInterface nil :f_relativeRelationship nil} jproto))
    (put this :f_animationInterface (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
    (put this :f_ownerLayerInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
    (put this :f_weaponProperties (WeaponProperties/jstatic_NULL_WEAPON_PROPERTIES))
    (put this :f_scoreableInterface (NoScoreable/jm_getInstance))
    (put this :f_relativeRelationship (RelativeRelationship/jstatic_NULL_RELATIVE_RELATIONSHIP))
        (:jm_init this _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
        (:jm_setAnimationInterface this _animationInterface)
    this))
    
(set jm_init (fn jm_init [this _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship]
        (:jm_setOwnerLayerInterface this _sourceLayerInterface)
        (:jm_setWeaponProperties this _weaponProperties)
        (set (this :f_scoreableInterface) _scoreableInterface)
        (set (this :f_relativeRelationship) _relativeRelationship)))
    
(set jm_process (fn jm_process [this _allbinaryLayerManager _angle _otherAngle]
        (:jm_processScore this _allbinaryLayerManager _angle _otherAngle (:jm_getWeaponProperties this) (this :f_scoreableInterface))))
    
(set jm_processScore (fn jm_processScore [this _allbinaryLayerManager _angle _otherAngle _weaponProperties _scoreableInterface]
        (error (JR/newException "Exception" ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED)))))
    
(set jm_getOwnerLayerInterface (fn jm_getOwnerLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_ownerLayerInterface)))))
    
(set jm_setOwnerLayerInterface (fn jm_setOwnerLayerInterface [this _ownerLayerInterface]
        (set (this :f_ownerLayerInterface) _ownerLayerInterface)))
    
(set jm_getAnimationInterface (fn jm_getAnimationInterface [this]
    (label jreturn
        (return jreturn (this :f_animationInterface)))))
    
(set jm_setAnimationInterface (fn jm_setAnimationInterface [this _animationInterface]
        (set (this :f_animationInterface) _animationInterface)))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _viewPosition (:jm_getViewPosition (:jm_getOwnerLayerInterface this)))
        (var _viewX (:jm_getX _viewPosition))
        (var _viewY (:jm_getY _viewPosition))
        (:jm_paintXY (this :f_animationInterface) _graphics _viewX _viewY)))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))
    
(set jm_getWeaponProperties (fn jm_getWeaponProperties [this]
    (label jreturn
        (return jreturn (this :f_weaponProperties)))))
    
(set jm_setWeaponProperties (fn jm_setWeaponProperties [this _weaponProperties]
        (set (this :f_weaponProperties) _weaponProperties)))

(set jproto @{:jm_init jm_init :jm_process jm_process :jm_processScore jm_processScore :jm_getOwnerLayerInterface jm_getOwnerLayerInterface :jm_setOwnerLayerInterface jm_setOwnerLayerInterface :jm_getAnimationInterface jm_getAnimationInterface :jm_setAnimationInterface jm_setAnimationInterface :jm_paint jm_paint :jm_paintThreed jm_paintThreed :jm_getWeaponProperties jm_getWeaponProperties :jm_setWeaponProperties jm_setWeaponProperties})


