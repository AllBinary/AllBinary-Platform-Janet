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
(import ./SequenceAI :as SequenceAI)

# Java class ComboSequenceAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)

    
(set jnew_3 (fn jnew_3 [_artificialIntelligenceInterface _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "ComboSequenceAI"} jproto))
        (JR/superInit this (SequenceAI/jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _artificialIntelligenceInterfaceArray (:jm_getArtificialIntelligenceInterface this))
        (var _size (length _artificialIntelligenceInterfaceArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_setIndex this _index)
            ((get SequenceAI/jproto :jm_processAI) this _allBinaryLayerManager))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_processAI jm_processAI} SequenceAI/jproto))


