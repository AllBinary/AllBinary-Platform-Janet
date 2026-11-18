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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- ClientInformation/jnew_4 [& args] (JR/call jfile "./ClientInformation" "jnew_4" args))

# Java class ClientInformationFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ClientInformationFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (var _logUtil (LogUtil/jm_getInstance))
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF _logUtil (_commonStrings :f_NOT_IMPLEMENTED) this (_commonStrings :f_GET_INSTANCE))
        (var _stringUtil (StringUtil/jm_getInstance))
        (return jreturn (ClientInformation/jnew_4 (_stringUtil :f_NULL_STRING) (_stringUtil :f_NULL_STRING) (_stringUtil :f_NULL_STRING) (_stringUtil :f_NULL_STRING))))))

(set jproto @{:jm_getInstance jm_getInstance})


