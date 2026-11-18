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
(import ../../../../../org/allbinary/game/ag/ai/sequence/SequenceAI :as SequenceAI)
(defn- GroupLayerManagerListener/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener" "jm_getInstance" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class NumberOnOwnGroupSequenceAI
(var jproto nil)
(var jnew_4 nil)
(var jm_processAI nil)

    
(set jnew_4 (fn jnew_4 [_numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "NumberOnOwnGroupSequenceAI" :f_numberOnSameTeam nil} jproto))
    
        (JR/superInit this (SequenceAI/jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
        (set (this :f_numberOnSameTeam) _numberOnSameTeam)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _layerInterface (:jm_getOwnerLayerInterface this))
        (var _index (:jm_getIndex this))
        (if (> (length (this :f_numberOnSameTeam)) _index)
            (do
            (var _size (:jm_getGroupSizeFromInterface (GroupLayerManagerListener/jm_getInstance) _layerInterface))
            (if (> (JR/className ((this :f_numberOnSameTeam) _index)) _size)
                (do
                (:jm_next this)))))
        ((get SequenceAI/jproto :jm_processAI) this _allBinaryLayerManager)))

(set jproto (table/setproto @{:jm_processAI jm_processAI} SequenceAI/jproto))


