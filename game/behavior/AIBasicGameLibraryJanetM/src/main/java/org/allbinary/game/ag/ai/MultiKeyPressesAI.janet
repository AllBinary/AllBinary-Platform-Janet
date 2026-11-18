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
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ../../../../../java/lang/Integer :as Integer)
(import ./KeyPressesAI :as KeyPressesAI)

# Java class MultiKeyPressesAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_update nil)
(var jm_toggle nil)
(var jm_disable nil)
(var jm_enable nil)

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "MultiKeyPressesAI" :f_toggleTimeHelper nil :f_gameTickTimeDelayHelper nil} jproto))
    (put this :f_toggleTimeHelper (TimeDelayHelper/jnew_1 600))
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
        (JR/superInit this (KeyPressesAI/jnew_3 _hashtable _ownerLayerInterface _gameInput))
        (:jm_update this)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
    nil))
    
(set jm_update (fn jm_update [this]
        (var _gameInput (:jm_getGameInput this))
        (var _keys (this :f_keys))
        (var _size (length _keys))
        (if (:jm_isOn this)
            (do
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (var _key (JR/className (_keys _index)))
                (if (not= _key (JR/i32 (- 1)))
                    (do
                    (:jm_add _gameInput (JR/className (this :f_gameKeyEventFactory))))))
                    (do (set _index (JR/i32 (+ _index 1)))))))
            (do
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (var _key (JR/className (_keys _index)))
                (if (not= _key (JR/i32 (- 1)))
                    (do
                    (:jm_addForRemoval _gameInput (JR/className (this :f_gameKeyEventFactory))))))
                    (do (set _index (JR/i32 (+ _index 1))))))))))
    
(set jm_toggle (fn jm_toggle [this]
        (if (:jm_isTime (this :f_toggleTimeHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
            (do
            ((get KeyPressesAI/jproto :jm_toggle) this)
            (:jm_update this)))))
    
(set jm_disable (fn jm_disable [this]
        (if (:jm_isTime (this :f_toggleTimeHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
            (do
            ((get KeyPressesAI/jproto :jm_disable) this)
            (:jm_update this)))))
    
(set jm_enable (fn jm_enable [this]
        (if (:jm_isTime (this :f_toggleTimeHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
            (do
            ((get KeyPressesAI/jproto :jm_enable) this)
            (:jm_update this)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_update jm_update :jm_toggle jm_toggle :jm_disable jm_disable :jm_enable jm_enable} KeyPressesAI/jproto))


