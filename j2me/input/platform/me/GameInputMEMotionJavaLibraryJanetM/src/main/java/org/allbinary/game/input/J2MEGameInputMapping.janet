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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GamePersistanceStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings" "jm_getInstance" args))
(import ../../../../org/allbinary/game/input/mapping/PersistentInputMapping :as PersistentInputMapping)
(defn- J2MEKeyFactory/jm_getInstance [& args] (JR/call jfile "./J2MEKeyFactory" "jm_getInstance" args))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyFactory" "jm_getInstance" args))

# Java class J2MEGameInputMapping
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_isDelete nil)
(var jm_isSystemInput nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "J2MEGameInputMapping"} jproto))
        (JR/superInit this (PersistentInputMapping/jnew_1 ((GamePersistanceStrings/jm_getInstance) :f_SAVED_INPUT_CONFIGURATION_RECORD_ID)))
    this))
    
(set jm_init (fn jm_init [this _abeClientInformation]
        (JR/className (this :f_logUtil))
        (:jm_init (J2MEKeyFactory/jm_getInstance))
        ((get PersistentInputMapping/jproto :jm_init) this _abeClientInformation)
        (if (or (= (:jm_getTotalMapped this) 0) (:jm_isDefaultNew this))
            (do
            (JR/className (:jm_getInputMapping this))
            (:jm_save this _abeClientInformation)))))
    
(set jm_isDelete (fn jm_isDelete [this _input]
    (label jreturn
        (if (= _input ((GameKeyFactory/jm_getInstance) :f_GAME_D))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_isSystemInput (fn jm_isSystemInput [this _input]
    (label jreturn
        (return jreturn false))))

(set jproto (table/setproto @{:jm_init jm_init :jm_isDelete jm_isDelete :jm_isSystemInput jm_isSystemInput} PersistentInputMapping/jproto))


