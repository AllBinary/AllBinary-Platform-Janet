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

# Java class NumberLayersSequenceAI
(var jproto nil)
(var jnew_4 nil)
(var jm_processAI nil)

    
(set jnew_4 (fn jnew_4 [_numberOfEnemiesLeft _artificialIntelligenceInterface _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "NumberLayersSequenceAI" :f_numberOfLayersLeft 0} jproto))
    
        (JR/superInit this (SequenceAI/jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput))
        (set (this :f_numberOfLayersLeft) _numberOfEnemiesLeft)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (if (= (:jm_getIndex this) 0)
            (do
            (if (< (:jm_getSize _allBinaryLayerManager) (this :f_numberOfLayersLeft))
                (do
                (:jm_setIndex this 1)))))
        ((get SequenceAI/jproto :jm_processAI) this _allBinaryLayerManager)))

(set jproto (table/setproto @{:jm_processAI jm_processAI} SequenceAI/jproto))


