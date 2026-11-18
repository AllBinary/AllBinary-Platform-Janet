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
# package org.allbinary.game.midlet

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- MyCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Runnable :as Runnable)
(defn- DemoGameMidletEvent/jnew_2 [& args] (JR/call jfile "./DemoGameMidletEvent" "jnew_2" args))
(defn- DemoGameMidletStateFactory/jm_getInstance [& args] (JR/call jfile "./DemoGameMidletStateFactory" "jm_getInstance" args))
(defn- DemoGameMidletEventHandler/jm_getInstance [& args] (JR/call jfile "./DemoGameMidletEventHandler" "jm_getInstance" args))

# Java class CreateGameRunnable
(var jproto nil)
(var jnew_2 nil)
(var jm_run nil)

    
(set jnew_2 (fn jnew_2 [_demoGameMidlet _hashtable]
    (var this (table/setproto @{:jclass "CreateGameRunnable" :f_logUtil nil :f_commonStrings nil :f_demoGameMidlet nil :f_hashtable nil :f_startGameMidletEvent nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
        (set (this :f_demoGameMidlet) _demoGameMidlet)
        (set (this :f_hashtable) _hashtable)
        (set (this :f_startGameMidletEvent) (DemoGameMidletEvent/jnew_2 this ((DemoGameMidletStateFactory/jm_getInstance) :f_START_GAME)))
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START_RUNNABLE) this ((this :f_commonStrings) :f_RUN))
            (var _progressCanvas (ProgressCanvasFactory/jm_getInstance))
            (:jm_commandAction (this :f_demoGameMidlet) ((MyCommandsFactory/jm_getInstance) :f_SET_DISPLAYABLE) _progressCanvas)
            (:jm_stopGameCanvasRunnableInterface (this :f_demoGameMidlet))
            (:jm_setGameCanvasRunnableInterface (this :f_demoGameMidlet) (:jm_createGameCanvasRunnableInterface (this :f_demoGameMidlet)))
            (JR/className (:jm_getGameCanvasRunnableInterface (this :f_demoGameMidlet)))
            (:jm_startGameCanvasRunnableInterface (this :f_demoGameMidlet))
            (:jm_fireEvent (DemoGameMidletEventHandler/jm_getInstance) (this :f_startGameMidletEvent))
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_END_RUNNABLE) this ((this :f_commonStrings) :f_RUN)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_RUN) _e))))))

(set jproto @{:jm_run jm_run})


