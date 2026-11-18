# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.graphics.displayable.screen

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../javax/microedition/lcdui/Form :as Form)
(defn- NullCommandListener/jstatic_NULL_COMMAND_LISTENER [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullCommandListener" "jstatic_NULL_COMMAND_LISTENER" args))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- ScreenRepaintProcessorFactory/jm_getInstance [& args] (JR/call jfile "./ScreenRepaintProcessorFactory" "jm_getInstance" args))

# Java class CommandForm
(var jproto nil)
(var jcell_NULL_COMMAND_FORM :jnone)
(var jstatic_NULL_COMMAND_FORM nil)
(var jsetstatic_NULL_COMMAND_FORM nil)
(var jnew_4 nil)
(var jm_getNullCommandForm nil)
(var jm_initCommands nil)
(var jm_open nil)
(var jm_close nil)
(var jm_update nil)
(var jm_getSourceId nil)
(var jm_addCommand nil)
(var jm_removeAllCommands nil)

(set jstatic_NULL_COMMAND_FORM (fn jstatic_NULL_COMMAND_FORM []
  (when (= jcell_NULL_COMMAND_FORM :jnone) (set jcell_NULL_COMMAND_FORM ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_COMMAND_FORM))
(set jsetstatic_NULL_COMMAND_FORM (fn jsetstatic_NULL_COMMAND_FORM [value] (set jcell_NULL_COMMAND_FORM value)))

    
(set jm_getNullCommandForm (fn jm_getNullCommandForm []
    (label jreturn
        (if (= (jstatic_NULL_COMMAND_FORM) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_COMMAND_FORM (jnew_4 (NullCommandListener/jstatic_NULL_COMMAND_LISTENER) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
        (return jreturn (jstatic_NULL_COMMAND_FORM)))))
    
(set jnew_4 (fn jnew_4 [_commandListener _formTitle _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "CommandForm" :f_logUtil nil :f_commonStrings nil :f_repaintProcessor nil :f_commandStack nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_repaintProcessor (:jm_create (ScreenRepaintProcessorFactory/jm_getInstance) this))
    
        (JR/superInit this (Form/jnew_1 _formTitle))
        (set (this :f_commandStack) (:jm_createStack (StdUtil/jm_getInstance)))
        (try
            (do
            (:jm_process (this :f_repaintProcessor)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_CONSTRUCTOR) _e))))
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
    nil))
    
(set jm_open (fn jm_open [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this "open")))
    
(set jm_close (fn jm_close [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_CLOSE))))
    
(set jm_update (fn jm_update [this]
        (:jm_process (this :f_repaintProcessor))))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn 0))))
    
(set jm_addCommand (fn jm_addCommand [this _command]
        (:jm_push (this :f_commandStack) _command)
        ((get Form/jproto :jm_addCommand) this _command)))
    
(set jm_removeAllCommands (fn jm_removeAllCommands [this]
        (var _size (:jm_size (this :f_commandStack)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            ((get Form/jproto :jm_removeCommand) this (:jm_pop (this :f_commandStack))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands :jm_open jm_open :jm_close jm_close :jm_update jm_update :jm_getSourceId jm_getSourceId :jm_addCommand jm_addCommand :jm_removeAllCommands jm_removeAllCommands} Form/jproto))


