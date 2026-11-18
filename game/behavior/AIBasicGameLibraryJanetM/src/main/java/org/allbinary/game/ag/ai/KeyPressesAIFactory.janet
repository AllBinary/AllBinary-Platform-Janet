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
(defn- InputFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" "jm_getInstance" args))
(defn- MultiKeyPressesAI/jnew_3 [& args] (JR/call jfile "./MultiKeyPressesAI" "jnew_3" args))
(defn- KeyPressesAI/jnew_3 [& args] (JR/call jfile "./KeyPressesAI" "jnew_3" args))

# Java class KeyPressesAIFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "KeyPressesAIFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _hashtable _ownerLayerInterface _gameInput]
    (label jreturn
        (var _isSingleKeyProcessing (:jm_isSingleKeyProcessing (InputFeatureFactory/jm_getInstance)))
        (if _isSingleKeyProcessing
            (do
            (return jreturn (KeyPressesAI/jnew_3 _hashtable _ownerLayerInterface _gameInput)))
            (do
            (return jreturn (MultiKeyPressesAI/jnew_3 _hashtable _ownerLayerInterface _gameInput)))))))

(set jproto @{:jm_getInstance jm_getInstance})


