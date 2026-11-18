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
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" "jm_getInstance" args))
(defn- OpenGLFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" "jm_getInstance" args))
(defn- Collision2DProcessor/jnew_0 [& args] (JR/call jfile "./Collision2DProcessor" "jnew_0" args))
(defn- CollisionThreedProcessor/jnew_0 [& args] (JR/call jfile "./CollisionThreedProcessor" "jnew_0" args))

# Java class LayerCollisionUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isCollision nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerCollisionUtil" :f_collisionProcessor nil} jproto))
    
        (var _features (Features/jm_getInstance))
        (var _gameFeatureFactory (GameFeatureFactory/jm_getInstance))
        (if (and (:jm_isAnyThreed (OpenGLFeatureUtil/jm_getInstance)) (not (:jm_isFeature _features (_gameFeatureFactory :f_COLLISIONS_FORCED_TWO_DIMENSIONAL))))
            (do
            (set (this :f_collisionProcessor) (CollisionThreedProcessor/jnew_0)))
            (do
            (set (this :f_collisionProcessor) (Collision2DProcessor/jnew_0))))
    this))
    
(set jm_isCollision (fn jm_isCollision [this _myLayer _myLayer2]
    (label jreturn
        (return jreturn (:jm_isCollision (this :f_collisionProcessor) _myLayer _myLayer2)))))

(set jproto @{:jm_isCollision jm_isCollision})


