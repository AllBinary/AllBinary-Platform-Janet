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
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- SourceCollisionHelper/jnew_1 [& args] (JR/call jfile "./SourceCollisionHelper" "jnew_1" args))
(defn- CollisionHelper/jnew_1 [& args] (JR/call jfile "./CollisionHelper" "jnew_1" args))

# Java class CollidableHelperFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CollidableHelperFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (:jm_isFeature (Features/jm_getInstance) ((GameFeatureFactory/jm_getInstance) :f_COLLISIONS_WITH_SOURCE))
            (do
            (return jreturn (CollisionHelper/jnew_1 (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))))
            (do
            (return jreturn (SourceCollisionHelper/jnew_1 (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))))))))

(set jproto @{})


