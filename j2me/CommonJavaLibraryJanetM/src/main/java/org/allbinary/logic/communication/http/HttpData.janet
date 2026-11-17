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
# package org.allbinary.logic.communication.http

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class HttpData
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
    (var this (table/setproto @{:jclass "HttpData" :f_EQUALS nil :f_PARAM_SEP nil :f_URL_PARAM_SEP nil :f_URL_LABEL nil} jproto))
    
    
    
    (put this :f_URL_LABEL "Url: ")
        (var _commonSeps (CommonSeps/jm_getInstance))
        (set (this :f_EQUALS) (_commonSeps :f_EQUALS))
        (set (this :f_PARAM_SEP) (_commonSeps :f_AMPERSAND))
        (set (this :f_URL_PARAM_SEP) (_commonSeps :f_QUESTION))
    this))

(set jproto @{})


