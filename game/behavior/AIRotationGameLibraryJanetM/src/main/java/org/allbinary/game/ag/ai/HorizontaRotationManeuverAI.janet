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
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_KEY_POUND [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_POUND" args))
(defn- Canvas/jstatic_KEY_NUM0 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM0" args))
(defn- ArtificialIntelligence/jstatic_AI_ID [& args] (JR/call jfile "../../../../../org/allbinary/ai/ArtificialIntelligence" "jstatic_AI_ID" args))
(import ../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- CircularIndexUtil/jm_createInstanceAt [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstanceAt" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class HorizontaRotationManeuverAI
(var jproto nil)
(var jnew_2 nil)
(var jm_transition nil)
(var jm_processAI nil)
(var jm_reverse nil)
(var jm_accelerate nil)
(var jm_drop nil)
(var jm_getId nil)

    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "HorizontaRotationManeuverAI" :f_circularIndexUtil nil :f_currentSpeedDivisor 0 :f_rotationAnimationInterface nil :f_baseVelocityInterface nil :f_velocityInterface nil} jproto))
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstanceAt 10 (Integer/jstatic_MAX_VALUE)))
    (put this :f_currentSpeedDivisor 5)
    
    
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (set (this :f_rotationAnimationInterface) (:jm_getRotationAnimationInterface _rotationAnimationInterfaceCompositeInterface))
        (var _velocityInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (set (this :f_baseVelocityInterface) (:jm_getVelocityProperties _velocityInterfaceCompositeInterface))
        (set (this :f_velocityInterface) (this :f_baseVelocityInterface))
        (var _rotationAnimationInterface (this :f_rotationAnimationInterface))
        (var _angleIncrementInfo (JR/className (:jm_getAngleInfoP _rotationAnimationInterface)))
        (:jm_setFrame _rotationAnimationInterfaceCompositeInterface (JR/className (_angleIncrementInfo :f_RIGHT_FRAME)))
    this))
    
(set jm_transition (fn jm_transition [this]
        (var _rotationAnimationInterface (this :f_rotationAnimationInterface))
        (var _angleIncrementInfo (JR/className (:jm_getAngleInfoP _rotationAnimationInterface)))
        (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (:jm_setFrame _rotationAnimationInterfaceCompositeInterface (JR/className (_angleIncrementInfo :f_RIGHT_FRAME)))
        (var _allbinaryLayer (:jm_getOwnerLayerInterface this))
        (:jm_setPosition _allbinaryLayer (:jm_getXP _allbinaryLayer) 1 (:jm_getZP _allbinaryLayer))))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _rotationAnimationInterface (this :f_rotationAnimationInterface))
        (var _angleIncrementInfo (JR/className (:jm_getAngleInfoP _rotationAnimationInterface)))
        (var _frame (:jm_getFrame (this :f_rotationAnimationInterface)))
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (if (and (<= (JR/i32 (- (:jm_getXP _ownerLayerInterface) (:jm_getWidth _ownerLayerInterface))) 0) (= _frame (JR/className (_angleIncrementInfo :f_LEFT_FRAME))))
            (do
            (:jm_reverse this)
            (:jm_drop this)))
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (if (and (> (JR/i32 (+ (:jm_getX2 _ownerLayerInterface) (:jm_getWidth _ownerLayerInterface))) (:jm_getLastWidth _displayInfo)) (= _frame (JR/className (_angleIncrementInfo :f_RIGHT_FRAME))))
            (do
            (:jm_reverse this)
            (:jm_accelerate this)
            (:jm_drop this)))
        (var _index (:jm_getIndex (this :f_circularIndexUtil)))
        (if (and (= (% _index (this :f_currentSpeedDivisor)) 0) (= (% _index 2) 0))
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_UP))
            (:jm_limitMaxXYVelocity (this :f_velocityInterface) (JR/idiv (:jm_getMaxForwardVelocity (this :f_velocityInterface)) (this :f_currentSpeedDivisor)))))
        (:jm_next (this :f_circularIndexUtil))
        (if (= _frame (JR/className (_angleIncrementInfo :f_LEFT_FRAME)))
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM0)))
            (if (= _frame (JR/className (_angleIncrementInfo :f_RIGHT_FRAME)))
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_POUND)))))))
    
(set jm_reverse (fn jm_reverse [this]
        (var _rotationAnimationInterface (this :f_rotationAnimationInterface))
        (var _angleIncrementInfo (JR/className (:jm_getAngleInfoP _rotationAnimationInterface)))
        (var _frame (:jm_getFrame (this :f_rotationAnimationInterface)))
        (if (= _frame (JR/className (_angleIncrementInfo :f_LEFT_FRAME)))
            (do
            (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
            (:jm_setFrame _rotationAnimationInterfaceCompositeInterface (JR/className (_angleIncrementInfo :f_RIGHT_FRAME)))
            (:jm_zero (this :f_baseVelocityInterface)))
            (if (= _frame (JR/className (_angleIncrementInfo :f_RIGHT_FRAME)))
            (do
            (var _rotationAnimationInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
            (:jm_setFrame _rotationAnimationInterfaceCompositeInterface (JR/className (_angleIncrementInfo :f_LEFT_FRAME)))
            (:jm_zero (this :f_baseVelocityInterface)))))))
    
(set jm_accelerate (fn jm_accelerate [this]
        (if (> (this :f_currentSpeedDivisor) 1)
            (do
            (set (this :f_currentSpeedDivisor) (JR/i32 (- (this :f_currentSpeedDivisor) 1)))))))
    
(set jm_drop (fn jm_drop [this]
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _y (:jm_getYP _ownerLayerInterface))
        (if (> (JR/i32 (+ (:jm_getY2 _ownerLayerInterface) (:jm_getHeight _ownerLayerInterface))) (:jm_getLastHeight _displayInfo))
            (do
            (set _y 0))
            (do
            (set _y (JR/i32 (+ _y (JR/i32 (+ (:jm_getHeight _ownerLayerInterface) 1)))))))
        (:jm_setPosition _ownerLayerInterface (:jm_getXP _ownerLayerInterface) _y (:jm_getZP _ownerLayerInterface))))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (ArtificialIntelligence/jstatic_AI_ID)))))

(set jproto (table/setproto @{:jm_transition jm_transition :jm_processAI jm_processAI :jm_reverse jm_reverse :jm_accelerate jm_accelerate :jm_drop jm_drop :jm_getId jm_getId} BasicAI/jproto))


