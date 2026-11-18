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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/layer/LayerProcessor :as LayerProcessor)
(defn- OptimizedAllBinaryCollisionLayerManager/jnew_0 [& args] (JR/call jfile "./OptimizedAllBinaryCollisionLayerManager" "jnew_0" args))

# Java class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer
(var jproto nil)
(var jnew_0 nil)
(var jm_processAt nil)
(var jm_isProcessorLayer nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer"} jproto))
        (JR/superInit this (LayerProcessor/jnew_1 (OptimizedAllBinaryCollisionLayerManager/jnew_0)))
    this))
    
(set jm_processAt (fn jm_processAt [this _allBinaryLayerManager _layerInterface _startIndex]
        (var _collidableInterfaceCompositeInterface _layerInterface)
        (var _collidableBase (:jm_getCollidableInferface _collidableInterfaceCompositeInterface))
        (if (:jm_isCollidable _collidableBase _collidableInterfaceCompositeInterface)
            (do
            (var _layerManager (:jm_getLayerManager this))
            (var _size (:jm_getSize _layerManager))
            (var _collidableInterfaceCompositeInterface2 nil)
            (var _collidableBase2 nil)
            (do
                (var _index (JR/i32 (+ _startIndex 1)))
                (while (< _index _size)
                    (do
                (set _collidableInterfaceCompositeInterface2 (:jm_getLayerAt _layerManager _index))
                (set _collidableBase2 (:jm_getCollidableInferface _collidableInterfaceCompositeInterface2))
                (if (and (:jm_isCollidable _collidableBase2 _collidableInterfaceCompositeInterface) (:jm_isCollision _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
                    (do
                    (:jm_collide _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                    (:jm_collide _collidableBase2 _collidableInterfaceCompositeInterface2 _collidableInterfaceCompositeInterface))))
                    (do (set _index (JR/i32 (+ _index 1))))))))))
    
(set jm_isProcessorLayer (fn jm_isProcessorLayer [this _layerInterface]
    (label jreturn
        (if (:jm_implmentsCollidableInterface _layerInterface)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto (table/setproto @{:jm_processAt jm_processAt :jm_isProcessorLayer jm_isProcessorLayer} LayerProcessor/jproto))


