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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))

# Java class ScrollOverXImmediateYStopAI
(var jproto nil)
(var jnew_2 nil)
(var jm_processAI nil)

    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "ScrollOverXImmediateYStopAI"} jproto))
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _x (:jm_getXP _ownerLayerInterface))
        (var _y (:jm_getYP _ownerLayerInterface))
        (var _x2 (:jm_getX2 _ownerLayerInterface))
        (var _y2 (:jm_getY2 _ownerLayerInterface))
        (var _width (:jm_getWidth _ownerLayerInterface))
        (var _height (:jm_getHeight _ownerLayerInterface))
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (if (> _x2 (:jm_getLastWidth _displayInfo))
            (do
            (:jm_setPosition _ownerLayerInterface 0 _y (:jm_getZP _ownerLayerInterface))))
        (if (> _y2 (:jm_getLastHeight _displayInfo))
            (do
            (:jm_setPosition _ownerLayerInterface _x (JR/i32 (- (:jm_getLastHeight _displayInfo) _height)) (:jm_getZP _ownerLayerInterface))))
        (if (< _x 0)
            (do
            (:jm_setPosition _ownerLayerInterface (JR/i32 (- (:jm_getLastWidth _displayInfo) _width)) _y (:jm_getZP _ownerLayerInterface))))
        (if (< _y 0)
            (do
            (:jm_setPosition _ownerLayerInterface _x 0 (:jm_getZP _ownerLayerInterface))))))

(set jproto (table/setproto @{:jm_processAI jm_processAI} BasicAI/jproto))


