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
# package org.allbinary.game.ag.layer.hud.basic.notification

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicHudFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameNotificationHud/jstatic_NULL_GAME_NOTIFICATION [& args] (JR/call jfile "./GameNotificationHud" "jstatic_NULL_GAME_NOTIFICATION" args))
(defn- NoGameGameNotificationHud/jnew_0 [& args] (JR/call jfile "./NoGameGameNotificationHud" "jnew_0" args))

# Java class NoGameNotificationHudSingleton
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getGameNotificationHud nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoGameNotificationHudSingleton" :f_logUtil nil :f_gameNotificationHud nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_gameNotificationHud (GameNotificationHud/jstatic_NULL_GAME_NOTIFICATION))
        (try
            (do
            (var _basicHudFactory (BasicHudFactory/jm_getInstance))
            (set (this :f_gameNotificationHud) (NoGameGameNotificationHud/jnew_0)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e))))
    this))
    
(set jm_getGameNotificationHud (fn jm_getGameNotificationHud [this]
    (label jreturn
        (return jreturn (this :f_gameNotificationHud)))))

(set jproto @{:jm_getGameNotificationHud jm_getGameNotificationHud})


