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
# package org.allbinary.game.configuration.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/GameFeatureUtil" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class BaseChangedGameFeatureListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onGameFeatureChange nil)
(var jm_add nil)
(var jm_remove nil)
(var jm_setChanged nil)
(var jm_isChangedFeature nil)
(var jm_isChanged nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseChangedGameFeatureListener" :f_logUtil nil :f_gameFeatureUtil nil :f_list nil :f_changed false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_gameFeatureUtil (GameFeatureUtil/jm_getInstance))
    (put this :f_list (BasicArrayListD/jnew_0))
    (put this :f_changed true)
    this))

    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED) this)))
    
(set jm_onGameFeatureChange (fn jm_onGameFeatureChange [this _gameFeatureEvent]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_gameFeatureUtil) :f_GAME_FEATURE_CHANGED)) (:jm_getWhatChanged _gameFeatureEvent))) this ((this :f_gameFeatureUtil) :f_ON_GAME_FEATURE_CHANGE))
        (:jm_add (this :f_list) (:jm_getGameOption _gameFeatureEvent))
        (:jm_setChanged this true)))
    
(set jm_add (fn jm_add [this _gameFeature]
        (:jm_add (this :f_list) _gameFeature)))
    
(set jm_remove (fn jm_remove [this _gameFeature]
        (:jm_remove (this :f_list) _gameFeature)))
    
(set jm_setChanged (fn jm_setChanged [this _initialized]
        (set (this :f_changed) _initialized)
        (if (not (:jm_isChanged this))
            (do
            (:jm_clear (this :f_list))))))
    
(set jm_isChangedFeature (fn jm_isChangedFeature [this _gameFeature]
    (label jreturn
        (var _isChanged (:jm_contains (this :f_list) _gameFeature))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "GameFeature: ")
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) _gameFeature))
        (:jm_append _stringBuffer " isFeature: ")
        (:jm_appendboolean _stringBuffer (:jm_isFeature (Features/jm_getInstance) _gameFeature))
        (:jm_append _stringBuffer " isChanged: ")
        (:jm_appendboolean _stringBuffer _isChanged)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this "isChanged")
        (return jreturn _isChanged))))
    
(set jm_isChanged (fn jm_isChanged [this]
    (label jreturn
        (return jreturn (this :f_changed)))))

(set jproto @{:jm_onEvent jm_onEvent :jm_onGameFeatureChange jm_onGameFeatureChange :jm_add jm_add :jm_remove jm_remove :jm_setChanged jm_setChanged :jm_isChangedFeature jm_isChangedFeature :jm_isChanged jm_isChanged})


