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
(defn- Canvas/jstatic_KEY_POUND [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_POUND" args))
(defn- Canvas/jstatic_KEY_NUM0 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM0" args))
(import ../../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))

# Java class HorizontalManeuverAI
(var jproto nil)
(var jnew_2 nil)
(var jm_processAI nil)
(var jm_reverse nil)
(var jm_accelerate nil)
(var jm_drop nil)

    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "HorizontalManeuverAI" :f_currentRelativeAngle 0 :f_currentSpeed 0} jproto))
    (put this :f_currentRelativeAngle 0)
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_currentSpeed) 5)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _x (:jm_getXP _ownerLayerInterface))
        (if (<= (JR/i32 (- (:jm_getXP _ownerLayerInterface) (this :f_currentSpeed))) 0)
            (do
            (:jm_reverse this)
            (:jm_drop this)))
        (if (> (JR/i32 (+ (:jm_getX2 _ownerLayerInterface) (this :f_currentSpeed))) (:jm_getLastWidth (DisplayInfoSingleton/jm_getInstance)))
            (do
            (:jm_reverse this)
            (:jm_accelerate this)
            (:jm_drop this)))
        (if (= (this :f_currentRelativeAngle) 0)
            (do
            (set _x (JR/i32 (+ _x (this :f_currentSpeed)))))
            (if (= (this :f_currentRelativeAngle) 180)
            (do
            (set _x (JR/i32 (- _x (this :f_currentSpeed)))))))
        (:jm_setPosition _ownerLayerInterface _x (:jm_getYP _ownerLayerInterface) (:jm_getZP _ownerLayerInterface))
        (if (= (this :f_currentRelativeAngle) 0)
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM0)))
            (if (= (this :f_currentRelativeAngle) 180)
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_POUND)))))))
    
(set jm_reverse (fn jm_reverse [this]
        (if (= (this :f_currentRelativeAngle) 180)
            (do
            (set (this :f_currentRelativeAngle) 0))
            (if (= (this :f_currentRelativeAngle) 0)
            (do
            (set (this :f_currentRelativeAngle) 180))))))
    
(set jm_accelerate (fn jm_accelerate [this]
        (if (< (this :f_currentSpeed) 20)
            (do
            (set (this :f_currentSpeed) (JR/i32 (+ (this :f_currentSpeed) 1)))))))
    
(set jm_drop (fn jm_drop [this]
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _y (:jm_getYP _ownerLayerInterface))
        (if (> (JR/i32 (+ (:jm_getY2 _ownerLayerInterface) (:jm_getHeight _ownerLayerInterface))) (:jm_getLastHeight (DisplayInfoSingleton/jm_getInstance)))
            (do
            (set _y 0))
            (do
            (set _y (JR/i32 (+ _y (JR/i32 (+ (:jm_getHeight _ownerLayerInterface) 1)))))))
        (:jm_setPosition _ownerLayerInterface (:jm_getXP _ownerLayerInterface) _y (:jm_getZP _ownerLayerInterface))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_reverse jm_reverse :jm_accelerate jm_accelerate :jm_drop jm_drop} BasicAI/jproto))


