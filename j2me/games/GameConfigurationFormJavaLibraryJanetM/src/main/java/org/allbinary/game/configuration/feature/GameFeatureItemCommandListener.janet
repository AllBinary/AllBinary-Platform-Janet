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
(defn- GameConfigurationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- MidletStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/midlet/MidletStrings" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class GameFeatureItemCommandListener
(var jproto nil)
(var jnew_1 nil)
(var jm_commandAction nil)

    
(set jnew_1 (fn jnew_1 [_gameOptionsForm]
    (var this (table/setproto @{:jclass "GameFeatureItemCommandListener" :f_logUtil nil :f_gameOptionsForm nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
        (set (this :f_gameOptionsForm) _gameOptionsForm)
    this))
    
(set jm_commandAction (fn jm_commandAction [this _command _item]
        (try
            (do
            (var _itemLabel (:jm_getLabel _item))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_ITEM_LABEL)) _itemLabel)) this ((MidletStrings/jm_getInstance) :f_COMMAND_ACTION))
            (if (= (JR/className _item) "GameConfigurationGauge")
                (do
                (:jm_change (GameConfigurationUtil/jm_getInstance) (this :f_gameOptionsForm) _item))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this ((MidletStrings/jm_getInstance) :f_COMMAND_ACTION) _e))))))

(set jproto @{:jm_commandAction jm_commandAction})


