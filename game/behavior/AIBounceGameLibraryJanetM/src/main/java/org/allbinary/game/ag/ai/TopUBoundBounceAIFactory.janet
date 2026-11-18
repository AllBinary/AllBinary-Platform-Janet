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
(defn- TopULayerBounds/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/bounds/TopULayerBounds" "jnew_1" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "../../../../../org/allbinary/graphics/Rectangle" "jnew_3" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- BoundBounceAI/jnew_4 [& args] (JR/call jfile "./BoundBounceAI" "jnew_4" args))
(defn- ReverseVelocityBoundsVisitor/jnew_1 [& args] (JR/call jfile "./ReverseVelocityBoundsVisitor" "jnew_1" args))

# Java class TopUBoundBounceAIFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TopUBoundBounceAIFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _hashtable _ownerLayerInterface _gameInput]
    (label jreturn
        (var _velocityInterfaceCompositeInterface _ownerLayerInterface)
        (var _velocityInterface (:jm_getVelocityProperties _velocityInterfaceCompositeInterface))
        (var _maxDistancePerTick (brshift (:jm_getMaxForwardVelocity _velocityInterface) (JR/className (:jm_getVelocityXBasicDecimalP _velocityInterface))))
        (var _halfWidth (JR/i32 (+ (JR/i32 (+ (JR/i32 (* (:jm_getWidth _ownerLayerInterface) 2)) _maxDistancePerTick)) 1)))
        (var _halfHeight (JR/i32 (+ (JR/i32 (+ (JR/i32 (* (:jm_getHeight _ownerLayerInterface) 2)) _maxDistancePerTick)) 1)))
        (var _point (:jm_createXY (PointFactory/jm_getInstance) _halfWidth (JR/i32 (+ _halfHeight 60))))
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _rectangle (Rectangle/jnew_3 _point (JR/i32 (- (JR/i32 (- (:jm_getLastWidth _displayInfo) _halfWidth)) (:jm_getX _point))) (JR/i32 (- (JR/i32 (- (:jm_getLastHeight _displayInfo) _halfHeight)) (:jm_getY _point)))))
        (return jreturn (BoundBounceAI/jnew_4 _ownerLayerInterface _gameInput (TopULayerBounds/jnew_1 _rectangle) (ReverseVelocityBoundsVisitor/jnew_1 _ownerLayerInterface))))))

(set jproto @{:jm_getInstance jm_getInstance})


