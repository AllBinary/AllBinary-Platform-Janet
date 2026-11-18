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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameFeature/jnew_1 [& args] (JR/call jfile "./GameFeature" "jnew_1" args))
(defn- Feature/jnew_1 [& args] (JR/call jfile "./Feature" "jnew_1" args))

# Java class GameFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameFeatureFactory" :f_SOUND nil :f_MUSIC nil :f_SCREEN_SHAKE nil :f_POST_IMAGE_LOADING_MODIFICATION nil :f_HEALTH_BARS nil :f_DAMAGE_FLOATERS nil :f_GAME_INPUT_LAYER_PROCESSOR nil :f_ARTIFICIAL_INTELLEGENCE_PROCESSOR nil :f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR nil :f_TICKABLE_LAYER_PROCESSOR nil :f_CHEATING nil :f_DROPPED_ITEMS nil :f_DROPPED_ITEMS_FROM_DEATH nil :f_TEST_DESTROYED_LAYER_PROCESSOR nil :f_COLLISIONS_WITH_SOURCE nil :f_COLLISIONS_FORCED_TWO_DIMENSIONAL nil} jproto))
    (put this :f_SOUND (GameFeature/jnew_1 "Sound"))
    (put this :f_MUSIC (GameFeature/jnew_1 "Music"))
    (put this :f_SCREEN_SHAKE (Feature/jnew_1 "Screen Shake"))
    (put this :f_POST_IMAGE_LOADING_MODIFICATION (Feature/jnew_1 "Post Image Loading Modification (Scaling, Rotation, or Other)"))
    (put this :f_HEALTH_BARS (GameFeature/jnew_1 "Health Bars"))
    (put this :f_DAMAGE_FLOATERS (GameFeature/jnew_1 "Damage Floaters"))
    (put this :f_GAME_INPUT_LAYER_PROCESSOR (GameFeature/jnew_1 "Game Input Layer Processor"))
    (put this :f_ARTIFICIAL_INTELLEGENCE_PROCESSOR (GameFeature/jnew_1 "Artificial Intelligence Layer Processor"))
    (put this :f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR (GameFeature/jnew_1 "Collidable Interface Layer Processor"))
    (put this :f_TICKABLE_LAYER_PROCESSOR (GameFeature/jnew_1 "Tickable Layer Processor"))
    (put this :f_CHEATING (GameFeature/jnew_1 "Cheating"))
    (put this :f_DROPPED_ITEMS (GameFeature/jnew_1 "Drops"))
    (put this :f_DROPPED_ITEMS_FROM_DEATH (GameFeature/jnew_1 "Drops from Dead"))
    (put this :f_TEST_DESTROYED_LAYER_PROCESSOR (GameFeature/jnew_1 "Destroyed Layer Processor"))
    (put this :f_COLLISIONS_WITH_SOURCE (GameFeature/jnew_1 "Allow Collisions With Source"))
    (put this :f_COLLISIONS_FORCED_TWO_DIMENSIONAL (GameFeature/jnew_1 "Collisions Forced Two Dimensional"))
    this))

(set jproto @{})


