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
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(import ../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)

# Java class SpinnerAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)

    
(set jnew_3 (fn jnew_3 [_direction _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "SpinnerAI" :f_isEven false :f_direction nil} jproto))
    
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_direction) _direction)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (if (this :f_isEven)
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this ((this :f_direction) 0))
            (set (this :f_isEven) false))
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1))
            (set (this :f_isEven) true)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI} BasicAI/jproto))


