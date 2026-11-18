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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/Runnable :as Runnable)

# Java class CommandRunnable
(var jproto nil)
(var jnew_2 nil)
(var jm_run nil)

    
(set jnew_2 (fn jnew_2 [_commandFormInputProcessor _command]
    (var this (table/setproto @{:jclass "CommandRunnable" :f_logUtil nil :f_commonStrings nil :f_commandFormInputProcessor nil :f_command nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
        (set (this :f_commandFormInputProcessor) _commandFormInputProcessor)
        (set (this :f_command) _command)
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START_RUNNABLE) this ((this :f_commonStrings) :f_RUN))
            (var _canvas (:jm_getCanvas (this :f_commandFormInputProcessor)))
            (var _commandListener (:jm_getCustomCommandListener _canvas))
            (:jm_commandAction _commandListener (this :f_command) _canvas)
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_END_RUNNABLE) this ((this :f_commonStrings) :f_RUN)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_RUN) _e))))))

(set jproto @{:jm_run jm_run})


