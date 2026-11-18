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
(defn- FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" "jm_getInstance" args))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/GameConfigurationCentral" "jm_getInstance" args))
(defn- ChangedGameFeatureListener/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" "jm_getInstance" args))
(defn- InputFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" "jm_getInstance" args))
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" "jm_getInstance" args))
(defn- PlatformInputMappingFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/PlatformInputMappingFactory" "jm_getInstance" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- FeaturedResourceRelativeRelationshipFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory" "jm_getInstance" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- GameFeatureImageCacheFactory/jm_init [& args] (JR/call jfile "../../../../org/allbinary/image/GameFeatureImageCacheFactory" "jm_init" args))
(defn- GameFeatureImageCacheFactory/jm_releaseAll [& args] (JR/call jfile "../../../../org/allbinary/image/GameFeatureImageCacheFactory" "jm_releaseAll" args))
(defn- CompleteMotionGestureInputToGameMotionGestureInput/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput" "jm_getInstance" args))
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/button/BasicTouchInputFactory" "jm_getInstance" args))
(defn- CancelTouchButtonInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/motion/button/CancelTouchButtonInputFactory" "jm_getInstance" args))

# Java class BaseGameInitialization
(var jproto nil)
(var jcell_NULL_BASE_GAME_INITIALIZATION :jnone)
(var jstatic_NULL_BASE_GAME_INITIALIZATION nil)
(var jsetstatic_NULL_BASE_GAME_INITIALIZATION nil)
(var jnew_2 nil)
(var jm_initKey nil)
(var jm_initKeyMapping nil)
(var jm_init nil)
(var jm_resourceInitialization nil)
(var jm_resourceAnimationChange nil)
(var jm_clearResources nil)
(var jm_setGameInitialized nil)
(var jm_isGameInitialized nil)
(var jm_getPortion nil)
(var jm_setInitialized nil)
(var jm_isInitialized nil)

(set jstatic_NULL_BASE_GAME_INITIALIZATION (fn jstatic_NULL_BASE_GAME_INITIALIZATION []
  (when (= jcell_NULL_BASE_GAME_INITIALIZATION :jnone) (set jcell_NULL_BASE_GAME_INITIALIZATION (jnew_2 (array/new-filled 0 nil) 0)))
  jcell_NULL_BASE_GAME_INITIALIZATION))
(set jsetstatic_NULL_BASE_GAME_INITIALIZATION (fn jsetstatic_NULL_BASE_GAME_INITIALIZATION [value] (set jcell_NULL_BASE_GAME_INITIALIZATION value)))

    
(set jnew_2 (fn jnew_2 [_resourceInitializationArray _portion]
    (var this (table/setproto @{:jclass "BaseGameInitialization" :f_resourceInitializationArray nil :f_portion 0 :f_initialized false :f_EARLY_RESOURCES 0 :f_GAME_RESOURCES 0 :f_EARLY_CHANGABLE_RESOURCES 0 :f_GAME_CHANGABLE_RESOURCES 0 :f_gameInitialized false :f_allLoaded false} jproto))
    
    
    
    (put this :f_EARLY_RESOURCES 0)
    (put this :f_GAME_RESOURCES 1)
    (put this :f_EARLY_CHANGABLE_RESOURCES 2)
    (put this :f_GAME_CHANGABLE_RESOURCES 3)
    
    
        (set (this :f_resourceInitializationArray) _resourceInitializationArray)
        (set (this :f_portion) _portion)
    this))
    
(set jm_initKey (fn jm_initKey [this _portion]
    nil))
    
(set jm_initKeyMapping (fn jm_initKeyMapping [this _abeClientInformation _portion]
        (if (:jm_isChangedFeature (ChangedGameFeatureListener/jm_getInstance) ((InputFeatureFactory/jm_getInstance) :f_INPUT_MAPPING))
            (do
            (JR/className (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance)))
            (:jm_addNormalPortion (ProgressCanvasFactory/jm_getInstance) 50 "Game Keys")
            (:jm_remove (ChangedGameFeatureListener/jm_getInstance) ((InputFeatureFactory/jm_getInstance) :f_INPUT_MAPPING))))))
    
(set jm_init (fn jm_init [this _abeClientInformation _commandListener _level]
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (if (and (not (:jm_isInitialized this)) (or (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_ALL))) (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_EARLY)))))
            (do
            (var _localPortion 40)
            (if (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_EARLY)))
                (do
                (set _localPortion 8)))
            (:jm_setInitialized this true)
            (:jm_initKey this (:jm_getPortion this))
            (:jm_initKeyMapping this _abeClientInformation (:jm_getPortion this))
            (:jm_init (GameKeyEventFactory/jm_getInstance))
            (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
            (:jm_addNormalPortion _progressCanvas _localPortion "Game Key Events")
            (:jm_init (BasicTouchInputFactory/jm_getInstance) (JR/className (:jm_getPersistentInputMappingInstance (PlatformInputMappingFactory/jm_getInstance))))
            (CancelTouchButtonInputFactory/jm_getInstance)
            (:jm_addNormalPortion _progressCanvas _localPortion "Touch Input")
            (:jm_init (CompleteMotionGestureInputToGameMotionGestureInput/jm_getInstance))
            (:jm_addNormalPortion _progressCanvas _localPortion "Motion Input")
            (GameFeatureImageCacheFactory/jm_init)
            (:jm_addNormalPortion _progressCanvas _localPortion "Image Cache")
            (JR/className ((this :f_resourceInitializationArray) (this :f_EARLY_RESOURCES)))))))
    
(set jm_resourceInitialization (fn jm_resourceInitialization [this _level]
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (if (and (:jm_resourceAnimationChange this) (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_EARLY))))
            (do
            (:jm_clearResources this)
            (JR/className ((this :f_resourceInitializationArray) (this :f_EARLY_CHANGABLE_RESOURCES)))))
        (if (and (:jm_resourceAnimationChange this) (= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_ALL))))
            (do
            (if (this :f_allLoaded)
                (do
                (:jm_clearResources this)))
            (if (= (JR/className (:jm_getList (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance))) 0)
                (do
                (JR/className ((this :f_resourceInitializationArray) (this :f_EARLY_CHANGABLE_RESOURCES)))))
            (JR/className ((this :f_resourceInitializationArray) (this :f_GAME_CHANGABLE_RESOURCES)))
            (set (this :f_allLoaded) true)))))
    
(set jm_resourceAnimationChange (fn jm_resourceAnimationChange [this]
    (label jreturn
        (var _changedGameFeatureListener (ChangedGameFeatureListener/jm_getInstance))
        (var _gameConfigurationCentral (GameConfigurationCentral/jm_getInstance))
        (if (:jm_isChangedGameConfiguration _changedGameFeatureListener (_gameConfigurationCentral :f_SCALE))
            (do
            (return jreturn true)))
        (if (:jm_isChangedFeature (ChangedGameFeatureListener/jm_getInstance) ((MainFeatureFactory/jm_getInstance) :f_STATIC))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_clearResources (fn jm_clearResources [this]
        (set (this :f_allLoaded) false)
        (GameFeatureImageCacheFactory/jm_releaseAll)
        (var _featuredAnimationInterfaceFactoryInterfaceFactory (FeaturedAnimationInterfaceFactoryInterfaceFactory/jm_getInstance))
        (:jm_clear _featuredAnimationInterfaceFactoryInterfaceFactory)
        (:jm_clear (FeaturedResourceRelativeRelationshipFactory/jm_getInstance))))
    
(set jm_setGameInitialized (fn jm_setGameInitialized [this _gameInitialized]
        (set (this :f_gameInitialized) _gameInitialized)))
    
(set jm_isGameInitialized (fn jm_isGameInitialized [this]
    (label jreturn
        (return jreturn (this :f_gameInitialized)))))
    
(set jm_getPortion (fn jm_getPortion [this]
    (label jreturn
        (return jreturn (this :f_portion)))))
    
(set jm_setInitialized (fn jm_setInitialized [this _initialized]
        (set (this :f_initialized) _initialized)))
    
(set jm_isInitialized (fn jm_isInitialized [this]
    (label jreturn
        (return jreturn (this :f_initialized)))))

(set jproto @{:jm_initKey jm_initKey :jm_initKeyMapping jm_initKeyMapping :jm_init jm_init :jm_resourceInitialization jm_resourceInitialization :jm_resourceAnimationChange jm_resourceAnimationChange :jm_clearResources jm_clearResources :jm_setGameInitialized jm_setGameInitialized :jm_isGameInitialized jm_isGameInitialized :jm_getPortion jm_getPortion :jm_setInitialized jm_setInitialized :jm_isInitialized jm_isInitialized})


