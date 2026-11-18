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
# package org.allbinary.game.collision.layer

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class AllBinaryCollisionManager
(var jproto nil)
(var jcell_allBinaryCollisionManager :jnone)
(var jstatic_allBinaryCollisionManager nil)
(var jsetstatic_allBinaryCollisionManager nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)
(var jm_collide nil)

(set jstatic_allBinaryCollisionManager (fn jstatic_allBinaryCollisionManager []
  (when (= jcell_allBinaryCollisionManager :jnone) (set jcell_allBinaryCollisionManager (jnew_0)))
  jcell_allBinaryCollisionManager))
(set jsetstatic_allBinaryCollisionManager (fn jsetstatic_allBinaryCollisionManager [value] (set jcell_allBinaryCollisionManager value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryCollisionManager"} jproto))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_allBinaryCollisionManager)))))
    
(set jm_process (fn jm_process [this _layerManager _collidableInterfaceCompositeInterface _startIndex]
        (var _size (:jm_getSize _layerManager))
        (do
            (var _index (JR/i32 (+ _startIndex 1)))
            (while (< _index _size)
                (do
            (var _collidableInterfaceCompositeInterface2 (:jm_getLayerAt _layerManager _index))
            (:jm_collide this _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_collide (fn jm_collide [this _layerManager _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2]
        (var _collidableBase2 (:jm_getCollidableInferface _collidableInterfaceCompositeInterface2))
        (var _collidableBase (:jm_getCollidableInferface _collidableInterfaceCompositeInterface))
        (if (:jm_isCollidable _collidableBase2 _collidableInterfaceCompositeInterface)
            (do
            (if (:jm_isCollisionInterface _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                (do
                (:jm_collideInterface _collidableBase _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface2)
                (:jm_collideInterface _collidableBase2 _collidableInterfaceCompositeInterface _collidableInterfaceCompositeInterface)))))))

(set jproto @{:jm_process jm_process :jm_collide jm_collide})


