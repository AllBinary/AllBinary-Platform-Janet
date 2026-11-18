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

# Java class UpDownVectorAI
(var jproto nil)
(var jnew_2 nil)
(var jm_processAI nil)

    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "UpDownVectorAI" :f_velocityInterface nil :f_index 0} jproto))
    
    (put this :f_index 0)
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (var _velocityInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (set (this :f_velocityInterface) (:jm_getVelocityProperties _velocityInterfaceCompositeInterface))
        (JR/className (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface)))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _y (JR/i32 (* (JR/className (:jm_getOwnerLayerInterface this)) 270)))
        (if (< (this :f_index) 5)
            (do
            (var _basicDecimal (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface)))
            (:jm_setint _basicDecimal 0)
            (:jm_addint _basicDecimal _y)
            (set (this :f_index) (JR/i32 (+ (this :f_index) 1))))
            (if (< (this :f_index) 10)
            (do
            (var _basicDecimal (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface)))
            (:jm_setint _basicDecimal 0)
            (:jm_subtractint _basicDecimal _y)
            (set (this :f_index) (JR/i32 (+ (this :f_index) 1))))
            (do
            (set (this :f_index) 0)
            (:jm_processAI this _allBinaryLayerManager))))))

(set jproto (table/setproto @{:jm_processAI jm_processAI} BasicAI/jproto))


