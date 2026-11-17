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
# package org.allbinary.globals

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AbPathData/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/io/path/AbPathData" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class PATH_GLOBALS
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PATH_GLOBALS" :f_DATA_PATH nil :f_INIT_PATH nil :f_VIEWS_PATH nil :f_LOG_PATH nil :f_BACKUP_PATH nil} jproto))
    
    
    
    
    
        (var _stringBuffer (StringMaker/jnew_0))
        (var _abPathData (AbPathData/jm_getInstance))
        (:jm_append _stringBuffer "data")
        (:jm_append _stringBuffer (_abPathData :f_SEPARATOR))
        (set (this :f_DATA_PATH) (:jm_toString _stringBuffer))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (:jm_append _stringBuffer (this :f_DATA_PATH))
        (:jm_append _stringBuffer ((CommonStrings/jm_getInstance) :f_INIT))
        (:jm_append _stringBuffer (_abPathData :f_SEPARATOR))
        (set (this :f_INIT_PATH) (:jm_toString _stringBuffer))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (:jm_append _stringBuffer (this :f_DATA_PATH))
        (:jm_append _stringBuffer "log")
        (:jm_append _stringBuffer (_abPathData :f_SEPARATOR))
        (set (this :f_LOG_PATH) (:jm_toString _stringBuffer))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (:jm_append _stringBuffer (this :f_DATA_PATH))
        (:jm_append _stringBuffer "backup")
        (:jm_append _stringBuffer (_abPathData :f_SEPARATOR))
        (set (this :f_BACKUP_PATH) (:jm_toString _stringBuffer))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (:jm_append _stringBuffer (this :f_INIT_PATH))
        (:jm_append _stringBuffer "views")
        (:jm_append _stringBuffer (_abPathData :f_SEPARATOR))
        (set (this :f_VIEWS_PATH) (:jm_toString _stringBuffer))
    this))

(set jproto @{})


