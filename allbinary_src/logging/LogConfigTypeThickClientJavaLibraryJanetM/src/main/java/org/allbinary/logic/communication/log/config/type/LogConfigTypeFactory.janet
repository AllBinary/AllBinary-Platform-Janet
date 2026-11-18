# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.logic.communication.log.config.type

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogConfigType/jnew_2 [& args] (JR/call jfile "./LogConfigType" "jnew_2" args))
(defn- LogConfigTypes/jstatic_LOGGING [& args] (JR/call jfile "./LogConfigTypes" "jstatic_LOGGING" args))

# Java class LogConfigTypeFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogConfigTypeFactory" :f_NO_DESCRIPTION nil :f_OS nil :f_FACTORYERROR nil :f_FILE nil :f_FILEERROR nil :f_IDLOGGING nil :f_REPLACE nil :f_REPLACE_INFO nil :f_REPLACEERROR nil} jproto))
    (put this :f_NO_DESCRIPTION "No Description")
    (put this :f_OS (LogConfigType/jnew_2 "Operating System" (this :f_NO_DESCRIPTION)))
    (put this :f_FACTORYERROR (LogConfigType/jnew_2 "Factory Error" (this :f_NO_DESCRIPTION)))
    (put this :f_FILE (LogConfigType/jnew_2 "File" (this :f_NO_DESCRIPTION)))
    (put this :f_FILEERROR (LogConfigType/jnew_2 "File Error" (this :f_NO_DESCRIPTION)))
    (put this :f_IDLOGGING (LogConfigType/jnew_2 "ID Logging" (this :f_NO_DESCRIPTION)))
    (put this :f_REPLACE (LogConfigType/jnew_2 "Replace" (this :f_NO_DESCRIPTION)))
    (put this :f_REPLACE_INFO (LogConfigType/jnew_2 "Replace Info" (this :f_NO_DESCRIPTION)))
    (put this :f_REPLACEERROR (LogConfigType/jnew_2 "Replace Error" (this :f_NO_DESCRIPTION)))
        (JR/className (LogConfigTypes/jstatic_LOGGING))
        (JR/className (LogConfigTypes/jstatic_LOGGING))
    this))

(set jproto @{})


