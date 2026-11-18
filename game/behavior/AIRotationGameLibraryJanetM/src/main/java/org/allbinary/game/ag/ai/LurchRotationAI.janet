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
(import ../../../../../org/allbinary/game/ag/ai/tactical/LurchAI :as LurchAI)

# Java class LurchRotationAI
(var jproto nil)
(var jnew_2 nil)
(var jm_reverse nil)
(var jm_update nil)

    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "LurchRotationAI" :f_rotationAnimationInterface nil} jproto))
    
        (JR/superInit this (LurchAI/jnew_2 _ownerLayerInterface _gameInput))
        (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (set (this :f_rotationAnimationInterface) (:jm_getRotationAnimationInterface _rotationAnimationInterfaceCompositeInterface))
        (:jm_update this)
    this))
    
(set jm_reverse (fn jm_reverse [this]
        ((get LurchAI/jproto :jm_reverse) this)
        (:jm_update this)))
    
(set jm_update (fn jm_update [this]
        (if (= (this :f_currentRelativeAngle) 0)
            (do
            (var _rotationAnimationInterface (this :f_rotationAnimationInterface))
            (var _angleIncrementInfo (JR/className (:jm_getAngleInfoP _rotationAnimationInterface)))
            (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
            (:jm_setFrame _rotationAnimationInterfaceCompositeInterface (JR/className (_angleIncrementInfo :f_RIGHT_FRAME))))
            (if (= (this :f_currentRelativeAngle) 180)
            (do
            (var _rotationAnimationInterface (this :f_rotationAnimationInterface))
            (var _angleIncrementInfo (JR/className (:jm_getAngleInfoP _rotationAnimationInterface)))
            (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
            (:jm_setFrame _rotationAnimationInterfaceCompositeInterface (JR/className (_angleIncrementInfo :f_LEFT_FRAME))))))))

(set jproto (table/setproto @{:jm_reverse jm_reverse :jm_update jm_update} LurchAI/jproto))


