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
(defn- BasicRandomAIFactory/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory" "jnew_0" args))
(defn- BasicAI/jstatic_AI_VISITOR [& args] (JR/call jfile "../../../../../org/allbinary/game/ai/BasicAI" "jstatic_AI_VISITOR" args))
(defn- ThrustAIVisitorFactory/jm_getInstance [& args] (JR/call jfile "./ThrustAIVisitorFactory" "jm_getInstance" args))
(defn- BasicProbabilityAIDataFactory/jnew_0 [& args] (JR/call jfile "./BasicProbabilityAIDataFactory" "jnew_0" args))
(defn- LastKeyAIVisitorFactory/jm_getInstance [& args] (JR/call jfile "./LastKeyAIVisitorFactory" "jm_getInstance" args))
(defn- DiveAndDirectionalTrackingAI/jnew_4 [& args] (JR/call jfile "./DiveAndDirectionalTrackingAI" "jnew_4" args))

# Java class DiveAndDirectionalTrackingAIFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DiveAndDirectionalTrackingAIFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _hashtable _ownerLayerInterface _gameInput]
    (label jreturn
        (var _visitorCanBeNull (:jm_get _hashtable (BasicAI/jstatic_AI_VISITOR)))
        (if (nil? _visitorCanBeNull)
            (do
            (set _visitorCanBeNull (ThrustAIVisitorFactory/jm_getInstance))))
        (var _hashtable2 (:jm_getInstance (BasicProbabilityAIDataFactory/jnew_0)))
        (:jm_put _hashtable2 (BasicAI/jstatic_AI_VISITOR) (LastKeyAIVisitorFactory/jm_getInstance))
        (var _artificialIntelligenceInterface (:jm_getInstance (BasicRandomAIFactory/jnew_0) _hashtable2 _ownerLayerInterface _gameInput))
        (return jreturn (DiveAndDirectionalTrackingAI/jnew_4 _ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitorCanBeNull)))))

(set jproto @{:jm_getInstance jm_getInstance})


