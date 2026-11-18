# Generated Code Do Not Modify
# package org.apache.xmlrpc

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class XmlRpcHandler
(var jproto nil)
(var jnew_0 nil)
(var jm_execute nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "XmlRpcHandler"} jproto))
    this))

    
(set jm_execute (fn jm_execute [this _method _params]
    (error (JR/newException "AbstractMethodError" "execute"))))

(set jproto @{:jm_execute jm_execute})


