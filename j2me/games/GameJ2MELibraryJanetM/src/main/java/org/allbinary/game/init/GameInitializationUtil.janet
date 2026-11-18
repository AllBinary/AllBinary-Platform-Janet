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
(defn- ChangedGameFeatureListener/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" "jm_getInstance" args))
(defn- GameInitializedEvent/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/GameInitializedEvent" "jnew_1" args))
(defn- GameInitializedEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" "jm_getInstance" args))
(defn- ResourceLoadingLevelFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" "jm_getInstance" args))

# Java class GameInitializationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_initDemo nil)
(var jm_initGame nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInitializationUtil" :f_EVENT nil} jproto))
    (put this :f_EVENT (GameInitializedEvent/jnew_1 this))
    this))

    
(set jm_initDemo (fn jm_initDemo [this _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface]
        (var _mainFeatureFactory (MainFeatureFactory/jm_getInstance))
        (if (:jm_isChangedFeature (ChangedGameFeatureListener/jm_getInstance) (_mainFeatureFactory :f_STATIC))
            (do
            (var _gameInitializationInterface (:jm_getInstance _gameInitializationInterfaceFactoryInterface))
            (var _features (Features/jm_getInstance))
            (if (:jm_isFeature _features (_mainFeatureFactory :f_LOAD_ALL))
                (do
                (:jm_initGame this _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface))
                (if (:jm_isFeature _features (_mainFeatureFactory :f_LOAD_ONDEMAND))
                (do
                (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
                (:jm_init _gameInitializationInterface _abeClientInformation (:jm_getCustomCommandListener _canvas) (JR/className (_resourceLoadingLevelFactory :f_LOAD_EARLY)))
                (:jm_setResourceLoadingLevel (this :f_EVENT) (_resourceLoadingLevelFactory :f_LOAD_EARLY)))
                (do
                (error (JR/newException "Exception" "No Loading Feature Available")))))
            (:jm_fireEvent (GameInitializedEventHandler/jm_getInstance) (this :f_EVENT))))))
    
(set jm_initGame (fn jm_initGame [this _abeClientInformation _canvas _gameInitializationInterfaceFactoryInterface]
        (if (:jm_isChangedFeature (ChangedGameFeatureListener/jm_getInstance) ((MainFeatureFactory/jm_getInstance) :f_STATIC))
            (do
            (var _gameInitializationInterface (:jm_getInstance _gameInitializationInterfaceFactoryInterface))
            (var _resourceLoadingLevelFactory (ResourceLoadingLevelFactory/jm_getInstance))
            (:jm_init _gameInitializationInterface _abeClientInformation (:jm_getCustomCommandListener _canvas) (JR/className (_resourceLoadingLevelFactory :f_LOAD_ALL)))
            (:jm_setResourceLoadingLevel (this :f_EVENT) (_resourceLoadingLevelFactory :f_LOAD_ALL))
            (:jm_fireEvent (GameInitializedEventHandler/jm_getInstance) (this :f_EVENT))
            (:jm_remove (ChangedGameFeatureListener/jm_getInstance) ((MainFeatureFactory/jm_getInstance) :f_STATIC))))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{:jm_initDemo jm_initDemo :jm_initGame jm_initGame})


