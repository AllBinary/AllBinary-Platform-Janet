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
# package org.allbinary.game.init

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./BaseGameInitialization :as BaseGameInitialization)

# Java class CommonGameInitialization
(var jproto nil)
(var jnew_2 nil)
(var jm_init nil)
(var jm_initGame nil)

    
(set jnew_2 (fn jnew_2 [_resourceInitializationArray _portion]
    (var this (table/setproto @{:jclass "CommonGameInitialization" :f_commonStrings nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
        (JR/superInit this (BaseGameInitialization/jnew_2 _resourceInitializationArray _portion))
    this))
    
(set jm_init (fn jm_init [this _abeClientInformation _commandListener _level]
        ((get BaseGameInitialization/jproto :jm_init) this _abeClientInformation _commandListener _level)
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (if (and (not (:jm_isGameInitialized this)) (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_ALL))))
            (do
            (:jm_setGameInitialized this true)
            (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
            (:jm_init (SmallIntegerSingletonFactory/jm_getInstance))
            (:jm_addNormalPortion _progressCanvas 50 "Integers")
            (:jm_init (PointFactory/jm_getInstance))
            (:jm_addNormalPortion _progressCanvas 50 "Points")
            (AngleFactory/jm_getInstance)
            (:jm_addNormalPortion _progressCanvas 50 "Angles")
            (:jm_initGame this)
            (JR/className ((this :f_resourceInitializationArray) (this :f_GAME_RESOURCES)))))
        ((get BaseGameInitialization/jproto :jm_resourceInitialization) this _level)))
    
(set jm_initGame (fn jm_initGame [this]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))

(set jproto (table/setproto @{:jm_init jm_init :jm_initGame jm_initGame} BaseGameInitialization/jproto))


