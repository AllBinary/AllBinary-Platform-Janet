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
# package org.allbinary.game.ag.ai

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(import ../../../../../java/lang/Integer :as Integer)

# Java class KeyPressesAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_toggle nil)
(var jm_disable nil)
(var jm_enable nil)
(var jm_setOn nil)
(var jm_isOn nil)

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "KeyPressesAI" :f_on false :f_keys nil} jproto))
    (put this :f_on true)
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_keys) (array/new-filled (:jm_size _hashtable) nil))
        (var _objectArray (:jm_getKeysAsArray (HashtableUtil/jm_getInstance) _hashtable))
        (var _size (length _objectArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_keys) _index) (:jm_get _hashtable (_objectArray _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (if (this :f_on)
            (do
            (do
                (var _index 0)
                (while (< _index (length (this :f_keys)))
                    (do
                ((get BasicAI/jproto :jm_processKeyAI) this (JR/className ((this :f_keys) _index))))
                    (do (set _index (JR/i32 (+ _index 1))))))))))
    
(set jm_toggle (fn jm_toggle [this]
        (if (:jm_isOn this)
            (do
            (:jm_setOn this false))
            (do
            (:jm_setOn this true)))))
    
(set jm_disable (fn jm_disable [this]
        (:jm_setOn this false)))
    
(set jm_enable (fn jm_enable [this]
        (:jm_setOn this true)))
    
(set jm_setOn (fn jm_setOn [this _on]
        (set (this :f_on) _on)))
    
(set jm_isOn (fn jm_isOn [this]
    (label jreturn
        (return jreturn (this :f_on)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_toggle jm_toggle :jm_disable jm_disable :jm_enable jm_enable :jm_setOn jm_setOn :jm_isOn jm_isOn} BasicAI/jproto))


