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
# package org.allbinary.game.ag.ai.tactical

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicAI/jstatic_AI_VISITOR [& args] (JR/call jfile "../../../../../../org/allbinary/game/ai/BasicAI" "jstatic_AI_VISITOR" args))
(defn- InputProbability/jstatic_INPUT_PROBABILITY [& args] (JR/call jfile "../../../../../../org/allbinary/game/ag/ai/InputProbability" "jstatic_INPUT_PROBABILITY" args))
(defn- BasicRandomAI/jnew_4 [& args] (JR/call jfile "./BasicRandomAI" "jnew_4" args))

# Java class BasicRandomAIFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicRandomAIFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _hashtable _ownerLayerInterface _gameInput]
    (label jreturn
        (var _visitor (:jm_get _hashtable (BasicAI/jstatic_AI_VISITOR)))
        (if (nil? _visitor)
            (do
            (error (JR/newException "Exception" "No Visitor Provided"))))
        (var _inputProbability (:jm_get _hashtable (InputProbability/jstatic_INPUT_PROBABILITY)))
        (return jreturn (BasicRandomAI/jnew_4 _ownerLayerInterface _gameInput _inputProbability _visitor)))))

(set jproto @{:jm_getInstance jm_getInstance})


