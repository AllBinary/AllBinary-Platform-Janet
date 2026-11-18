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
(defn- GameInitializedEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler" "jm_getInstance" args))
(defn- FeatureResourceInitializationUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/resource/FeatureResourceInitializationUtil" "jm_getInstance" args))
(defn- SWTJOGLProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Thread :as Thread)

# Java class DefaultGameInitializationListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onGameInitialized nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DefaultGameInitializationListener" :f_logUtil nil :f_swtJOGLProcessor nil :f_firstTime false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_swtJOGLProcessor (SWTJOGLProcessor/jm_getInstance))
    (put this :f_firstTime true)
        (var _gameInitializedEventHandler (GameInitializedEventHandler/jm_getInstance))
        (:jm_removeAllListeners _gameInitializedEventHandler)
        (:jm_addListenerInterface _gameInitializedEventHandler this)
    this))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onGameInitialized (fn jm_onGameInitialized [this _gameInitializedEvent]
        (var _ON_GAME_INITIALIZED "onGameInitialized")
        (var _commonStrings (CommonStrings/jm_getInstance))
        (try
            (do
            (:jm_putF (this :f_logUtil) (_commonStrings :f_START) this _ON_GAME_INITIALIZED)
            (do
                (while (not (:jm_isHolderCreated (this :f_swtJOGLProcessor)))
                    (do
                (:jm_putF (this :f_logUtil) (_commonStrings :f_UPDATE) this _ON_GAME_INITIALIZED)
                (Thread/jm_sleep 20))))
            (:jm_init (FeatureResourceInitializationUtil/jm_getInstance) (:jm_getLevel _gameInitializedEvent))
            (if (this :f_firstTime)
                (do
                (set (this :f_firstTime) false))
                (do
                (:jm_onSurfaceChanged (this :f_swtJOGLProcessor)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this _ON_GAME_INITIALIZED _e))))))

(set jproto @{:jm_onEvent jm_onEvent :jm_onGameInitialized jm_onGameInitialized})


