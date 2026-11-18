# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.apache.xmlrpc

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class NullXmlRpcHandler
(var jproto nil)
(var jcell_NULL_XML_RPC_HANDLER :jnone)
(var jstatic_NULL_XML_RPC_HANDLER nil)
(var jsetstatic_NULL_XML_RPC_HANDLER nil)
(var jnew_0 nil)
(var jm_execute nil)

(set jstatic_NULL_XML_RPC_HANDLER (fn jstatic_NULL_XML_RPC_HANDLER []
  (when (= jcell_NULL_XML_RPC_HANDLER :jnone) (set jcell_NULL_XML_RPC_HANDLER (jnew_0)))
  jcell_NULL_XML_RPC_HANDLER))
(set jsetstatic_NULL_XML_RPC_HANDLER (fn jsetstatic_NULL_XML_RPC_HANDLER [value] (set jcell_NULL_XML_RPC_HANDLER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullXmlRpcHandler"} jproto))
    this))

    
(set jm_execute (fn jm_execute [this _method _params]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))))

(set jproto @{:jm_execute jm_execute})


