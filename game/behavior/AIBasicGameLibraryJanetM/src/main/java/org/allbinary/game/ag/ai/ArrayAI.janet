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
(import ../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)

# Java class ArrayAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_getArtificialIntelligenceInterface nil)

    
(set jnew_3 (fn jnew_3 [_artificialIntelligenceInterface _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "ArrayAI" :f_artificialIntelligenceInterfaceArray nil} jproto))
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_artificialIntelligenceInterfaceArray) _artificialIntelligenceInterface)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _size (length (this :f_artificialIntelligenceInterfaceArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (JR/className ((this :f_artificialIntelligenceInterfaceArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_getArtificialIntelligenceInterface (fn jm_getArtificialIntelligenceInterface [this]
    (label jreturn
        (return jreturn (this :f_artificialIntelligenceInterfaceArray)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_getArtificialIntelligenceInterface jm_getArtificialIntelligenceInterface} BasicAI/jproto))


