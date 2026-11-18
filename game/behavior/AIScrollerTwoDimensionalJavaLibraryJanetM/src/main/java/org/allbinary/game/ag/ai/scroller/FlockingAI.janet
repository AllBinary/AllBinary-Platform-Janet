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
# package org.allbinary.game.ag.ai.scroller

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(import ../../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- BasicGroupFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/identification/BasicGroupFactory" "jm_getInstance" args))
(defn- GroupLayerManagerListener/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener" "jm_getInstance" args))
(defn- WeaponLayer/jm_getStaticType [& args] (JR/call jfile "../../../../../../org/allbinary/game/layer/weapon/WeaponLayer" "jm_getStaticType" args))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))
(import ../../../../../../java/lang/Integer :as Integer)
(defn- BasePatrolAI/jstatic_MAX_DISTANCE [& args] (JR/call jfile "./BasePatrolAI" "jstatic_MAX_DISTANCE" args))

# Java class FlockingAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_getXYDistance nil)

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "FlockingAI" :f_allowedDistance 0} jproto))
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (var _allowedDistance (:jm_get _hashtable (BasePatrolAI/jstatic_MAX_DISTANCE)))
        (set (this :f_allowedDistance) (:jm_intValue _allowedDistance))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _maxDistance 0)
        (var _farAllbinaryLayer (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
        (var _groupLayerManagerListener (GroupLayerManagerListener/jm_getInstance))
        (var _list (:jm_getList _groupLayerManagerListener ((BasicGroupFactory/jm_getInstance) :f_ENEMY)))
        (var _size (:jm_size _list))
        (var _allBinaryLayer nil)
        (var _ownerLayerInterface nil)
        (do
            (var _index 0)
            (var jbreak false)
            (while (and (not jbreak) (< _index _size))
                (label jcontinue
            (set _allBinaryLayer (:jm_get _list _index))
            (if (not= (:jm_getType _allBinaryLayer) (WeaponLayer/jm_getStaticType))
                (do
                (var _distance (:jm_getXYDistance this _allBinaryLayer))
                (if (> _distance _maxDistance)
                    (do
                    (set _maxDistance _distance)
                    (set _farAllbinaryLayer _allBinaryLayer)
                    (if (> _distance (this :f_allowedDistance))
                        (do
                        (do (set jbreak true) (return jcontinue)))))))))
                (unless jbreak (set _index (JR/i32 (+ _index 1))))))
        (if (> _maxDistance (this :f_allowedDistance))
            (do
            (if (not= _farAllbinaryLayer (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
                (do
                (set _ownerLayerInterface (:jm_getOwnerLayerInterface this))
                (if (< (:jm_getXP _farAllbinaryLayer) (:jm_getXP _ownerLayerInterface))
                    (do
                    (:jm_processKeyAI this (Canvas/jstatic_LEFT)))
                    (if (> (:jm_getXP _farAllbinaryLayer) (:jm_getXP _ownerLayerInterface))
                    (do
                    (:jm_processKeyAI this (Canvas/jstatic_RIGHT)))
                    (if (> (:jm_getYP _farAllbinaryLayer) (:jm_getYP _ownerLayerInterface))
                    (do
                    (:jm_processKeyAI this (Canvas/jstatic_UP)))
                    (if (< (:jm_getYP _farAllbinaryLayer) (:jm_getYP _ownerLayerInterface))
                    (do
                    (:jm_processKeyAI this (Canvas/jstatic_DOWN)))))))))))))
    
(set jm_getXYDistance (fn jm_getXYDistance [this _allBinaryLayer]
    (label jreturn
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _xTotalDistance (JR/i32 (- (JR/i32 (+ (:jm_getXP _allBinaryLayer) (:jm_getHalfWidth _allBinaryLayer))) (JR/i32 (+ (:jm_getXP _ownerLayerInterface) (:jm_getHalfWidth _ownerLayerInterface))))))
        (var _yTotalDistance (JR/i32 (- (JR/i32 (+ (:jm_getYP _allBinaryLayer) (:jm_getHalfHeight _allBinaryLayer))) (JR/i32 (+ (:jm_getYP _ownerLayerInterface) (:jm_getHalfHeight _ownerLayerInterface))))))
        (var _mathUtil (MathUtil/jm_getInstance))
        (var _totalDistance (JR/i32 (+ (:jm_abs _mathUtil _xTotalDistance) (:jm_abs _mathUtil _yTotalDistance))))
        (return jreturn _totalDistance))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_getXYDistance jm_getXYDistance} BasicAI/jproto))


