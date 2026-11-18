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
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class WeaponLayerArrayLayerCircularStaticPool
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_getWeaponLayerArrays nil)
(var jm_getInstanceArray nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "WeaponLayerArrayLayerCircularStaticPool" :f_MAX 0 :f_circularIndexUtil nil :f_WEAPONLAYER_ARRAY nil :f_TWO_WEAPONLAYER_ARRAY nil :f_THREE_WEAPONLAYER_ARRAY nil} jproto))
    (put this :f_MAX 5)
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstance (this :f_MAX)))
    
    
    
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this]
        (var _WEAPONLAYER_ARRAY (array/new-filled (JR/i32 (* (this :f_MAX) 2)) nil))
        (var _TWO_WEAPONLAYER_ARRAY (array/new-filled (this :f_MAX) nil))
        (var _THREE_WEAPONLAYER_ARRAY (array/new-filled (this :f_MAX) nil))
        (do
            (var _index 0)
            (while (< _index (this :f_MAX))
                (do
            (set (_WEAPONLAYER_ARRAY _index) (array/new-filled 1 nil))
            (set (_TWO_WEAPONLAYER_ARRAY _index) (array/new-filled 2 nil))
            (set (_THREE_WEAPONLAYER_ARRAY _index) (array/new-filled 3 nil)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_WEAPONLAYER_ARRAY) _WEAPONLAYER_ARRAY)
        (set (this :f_TWO_WEAPONLAYER_ARRAY) _TWO_WEAPONLAYER_ARRAY)
        (set (this :f_THREE_WEAPONLAYER_ARRAY) _THREE_WEAPONLAYER_ARRAY)))
    
(set jm_getWeaponLayerArrays (fn jm_getWeaponLayerArrays [this _size]
    (label jreturn
        (if (= _size 1)
            (do
            (return jreturn (this :f_WEAPONLAYER_ARRAY)))
            (if (= _size 2)
            (do
            (return jreturn (this :f_TWO_WEAPONLAYER_ARRAY)))
            (if (= _size 3)
            (do
            (return jreturn (this :f_THREE_WEAPONLAYER_ARRAY))))))
        (error (JR/newException "RuntimeException")))))
    
(set jm_getInstanceArray (fn jm_getInstanceArray [this _size]
    (label jreturn
        (var _weaponLayerArray ((:jm_getWeaponLayerArrays this _size) (:jm_getIndex (this :f_circularIndexUtil))))
        (:jm_next (this :f_circularIndexUtil))
        (return jreturn _weaponLayerArray))))

(set jproto @{:jm_init jm_init :jm_getWeaponLayerArrays jm_getWeaponLayerArrays :jm_getInstanceArray jm_getInstanceArray})


