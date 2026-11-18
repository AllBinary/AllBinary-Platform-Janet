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
(import ../../../../../org/allbinary/layer/AllBinaryLayerCircularPool :as AllBinaryLayerCircularPool)

# Java class WeaponLayerCircularPool
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstanceWeaponLayer nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "WeaponLayerCircularPool"} jproto))
    (JR/superInit this (AllBinaryLayerCircularPool/jnew_0))
    this))
    
(set jm_getInstanceWeaponLayer (fn jm_getInstanceWeaponLayer [this _sourceLayerInterface _x _y _z _angle _otherAngle _weaponProperties _scoreable]
    (label jreturn
        (var _weaponLayer ((get AllBinaryLayerCircularPool/jproto :jm_getNextInstance) this))
        (:jm_initXYZ _weaponLayer _x _y _z)
        (:jm_init _weaponLayer _sourceLayerInterface _angle _otherAngle _weaponProperties _scoreable)
        (return jreturn _weaponLayer))))

(set jproto (table/setproto @{:jm_getInstanceWeaponLayer jm_getInstanceWeaponLayer} AllBinaryLayerCircularPool/jproto))


