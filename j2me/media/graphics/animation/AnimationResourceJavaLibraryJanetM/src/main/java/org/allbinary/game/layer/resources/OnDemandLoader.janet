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
# package org.allbinary.game.layer.resources

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" "jm_getInstance" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- OnDemandResources/jstatic_NULL_ON_DEMAND_RESOURCES [& args] (JR/call jfile "./OnDemandResources" "jstatic_NULL_ON_DEMAND_RESOURCES" args))

# Java class OnDemandLoader
(var jproto nil)
(var jnew_3 nil)
(var jm_init nil)
(var jm_initAll nil)
(var jm_initLevel nil)

    
(set jnew_3 (fn jnew_3 [_onDemandResourcesFactory _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory _resourceAnimationInterfaceFactoryInterfaceFactory]
    (var this (table/setproto @{:jclass "OnDemandLoader" :f_onDemandResourcesFactory nil :f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory nil :f_resourceAnimationInterfaceFactoryInterfaceFactory nil} jproto))
    
    
    
        (set (this :f_onDemandResourcesFactory) _onDemandResourcesFactory)
        (set (this :f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
        (set (this :f_resourceAnimationInterfaceFactoryInterfaceFactory) _resourceAnimationInterfaceFactoryInterfaceFactory)
    this))
    
(set jm_init (fn jm_init [this _imageCache _level _loadingString]
    (label jreturn
        (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
        (if (:jm_isFeature (Features/jm_getInstance) ((MainFeatureFactory/jm_getInstance) :f_LOAD_ALL))
            (do
            (if (:jm_isInitialized (this :f_resourceAnimationInterfaceFactoryInterfaceFactory))
                (do
                (return jreturn)))
            (:jm_initAll this _imageCache _loadingString))
            (if (not= _level (JR/className (_resourceLoadingLevelFactory :f_LOAD_ALL)))
            (do
            (var _layerPlacementInterfaceBasicArrayListFactoryInterface (:jm_getInstance (this :f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) _level))
            (:jm_initLevel this _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString)))))))
    
(set jm_initAll (fn jm_initAll [this _imageCache _loadingString]
        (var _index 0)
        (var _portion 120)
        (var _onDemandResources nil)
        (do
            (var _onDemandIndex (:jm_size (this :f_onDemandResourcesFactory)))
            (while (>= (set _onDemandIndex (JR/i32 (- _onDemandIndex 1))) 0)
                (do
            (set _onDemandResources (:jm_remove (this :f_onDemandResourcesFactory) _onDemandIndex))
            (if (not= _onDemandResources (OnDemandResources/jstatic_NULL_ON_DEMAND_RESOURCES))
                (do
                (set _index (:jm_initAt _onDemandResources _imageCache (this :f_resourceAnimationInterfaceFactoryInterfaceFactory) _portion _loadingString _index)))))))))
    
(set jm_initLevel (fn jm_initLevel [this _layerPlacementInterfaceBasicArrayListFactoryInterface _imageCache _level _loadingString]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _portion 120)
        (var _index 0)
        (var _onDemandArray (:jm_getOnDemandResources _layerPlacementInterfaceBasicArrayListFactoryInterface))
        (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) (_commonStrings :f_START)) (length _onDemandArray))) this "initLevel")
        (var _onDemandResources nil)
        (do
            (var _onDemandIndex (length _onDemandArray))
            (while (>= (set _onDemandIndex (JR/i32 (- _onDemandIndex 1))) 0)
                (do
            (set _onDemandResources (:jm_remove (this :f_onDemandResourcesFactory) (_onDemandArray _onDemandIndex)))
            (if (not= _onDemandResources (OnDemandResources/jstatic_NULL_ON_DEMAND_RESOURCES))
                (do
                (set _index (:jm_initAt _onDemandResources _imageCache (this :f_resourceAnimationInterfaceFactoryInterfaceFactory) _portion _loadingString _index)))))))))

(set jproto @{:jm_init jm_init :jm_initAll jm_initAll :jm_initLevel jm_initLevel})


