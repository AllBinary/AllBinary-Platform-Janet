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

# Java class BoundBounceAI
(var jproto nil)
(var jnew_4 nil)
(var jm_paint nil)
(var jm_processAI nil)

    
(set jnew_4 (fn jnew_4 [_ownerLayerInterface _gameInput _layerBounds _boundsVisitorInterface]
    (var this (table/setproto @{:jclass "BoundBounceAI" :f_currentRelativeAngle 0 :f_layerBounds nil :f_boundsVisitorInterface nil} jproto))
    (put this :f_currentRelativeAngle 0)
    
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_layerBounds) _layerBounds)
        (set (this :f_boundsVisitorInterface) _boundsVisitorInterface)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _rectange (:jm_getRectangleP (this :f_layerBounds)))
        (:jm_drawRect _graphics (JR/className (:jm_getPoint _rectange)) (JR/className (:jm_getPoint _rectange)) (:jm_getWidth _rectange) (:jm_getHeight _rectange))))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (:jm_visit (this :f_layerBounds) (this :f_boundsVisitorInterface))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_processAI jm_processAI} BasicAI/jproto))


