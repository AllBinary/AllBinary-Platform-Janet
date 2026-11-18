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
(defn- BasicWeaponPart/jstatic_NULL_BASIC_WEAPON_PART [& args] (JR/call jfile "./BasicWeaponPart" "jstatic_NULL_BASIC_WEAPON_PART" args))

# Java class BasicWeaponPartCircularPool
(var jproto nil)
(var jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL :jnone)
(var jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL nil)
(var jsetstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)

(set jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL (fn jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL []
  (when (= jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL :jnone) (set jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL (jnew_0)))
  jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL))
(set jsetstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL (fn jsetstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL [value] (set jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicWeaponPartCircularPool" :f_basicWeaponPart nil} jproto))
    (put this :f_basicWeaponPart (BasicWeaponPart/jstatic_NULL_BASIC_WEAPON_PART))
    this))

    
(set jm_init (fn jm_init [this _basicWeaponPartFactoryInterface]
        (set (this :f_basicWeaponPart) (:jm_getInstance _basicWeaponPartFactoryInterface))))
    
(set jm_getInstance (fn jm_getInstance [this _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship]
    (label jreturn
        (:jm_init (this :f_basicWeaponPart) _sourceLayerInterface _weaponProperties _scoreableInterface _relativeRelationship)
        (return jreturn (this :f_basicWeaponPart)))))

(set jproto @{:jm_init jm_init :jm_getInstance jm_getInstance})


