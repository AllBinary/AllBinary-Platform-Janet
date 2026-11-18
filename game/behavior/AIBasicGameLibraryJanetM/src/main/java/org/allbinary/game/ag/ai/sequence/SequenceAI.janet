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
# package org.allbinary.game.ag.ai.sequence

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ArtificialIntelligence/jstatic_AI_ID [& args] (JR/call jfile "../../../../../../org/allbinary/ai/ArtificialIntelligence" "jstatic_AI_ID" args))
(import ../../../../../../org/allbinary/game/ag/ai/ArrayAI :as ArrayAI)
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class SequenceAI
(var jproto nil)
(var jcell_SEQUENCE_AI :jnone)
(var jstatic_SEQUENCE_AI nil)
(var jsetstatic_SEQUENCE_AI nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_next nil)
(var jm_getIndex nil)
(var jm_setIndex nil)
(var jm_getSelectedArtificialIntelligenceInterface nil)
(var jm_getName nil)
(var jm_toString nil)

(set jstatic_SEQUENCE_AI (fn jstatic_SEQUENCE_AI []
  (when (= jcell_SEQUENCE_AI :jnone) (set jcell_SEQUENCE_AI "Sequence AI"))
  jcell_SEQUENCE_AI))
(set jsetstatic_SEQUENCE_AI (fn jsetstatic_SEQUENCE_AI [value] (set jcell_SEQUENCE_AI value)))

    
(set jnew_3 (fn jnew_3 [_artificialIntelligenceInterfaceArray _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "SequenceAI" :f_index 0} jproto))
    
        (JR/superInit this (ArrayAI/jnew_3 _artificialIntelligenceInterfaceArray _ownerLayerInterface _gameInput))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (JR/className ((:jm_getArtificialIntelligenceInterface this) (this :f_index)))))
    
(set jm_next (fn jm_next [this]
        (set (this :f_index) (JR/i32 (+ (this :f_index) 1)))
        (var _artificialIntelligenceInterface (:jm_getSelectedArtificialIntelligenceInterface this))
        (if (= (:jm_getId _artificialIntelligenceInterface) (ArtificialIntelligence/jstatic_AI_ID))
            (do
            (var _artificialIntelligenceTransitionInterface _artificialIntelligenceInterface)
            (:jm_transition _artificialIntelligenceTransitionInterface)))))
    
(set jm_getIndex (fn jm_getIndex [this]
    (label jreturn
        (return jreturn (this :f_index)))))
    
(set jm_setIndex (fn jm_setIndex [this _index]
        (set (this :f_index) _index)))
    
(set jm_getSelectedArtificialIntelligenceInterface (fn jm_getSelectedArtificialIntelligenceInterface [this]
    (label jreturn
        (return jreturn ((:jm_getArtificialIntelligenceInterface this) (this :f_index))))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (jstatic_SEQUENCE_AI)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((get ArrayAI/jproto :jm_toString) this))
        (:jm_append _stringBuffer " Selected AI: ")
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getSelectedArtificialIntelligenceInterface this)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_next jm_next :jm_getIndex jm_getIndex :jm_setIndex jm_setIndex :jm_getSelectedArtificialIntelligenceInterface jm_getSelectedArtificialIntelligenceInterface :jm_getName jm_getName :jm_toString jm_toString} ArrayAI/jproto))


