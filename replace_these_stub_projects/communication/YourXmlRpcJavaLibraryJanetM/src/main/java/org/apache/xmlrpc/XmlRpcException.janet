# Generated Code Do Not Modify
# package org.apache.xmlrpc

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class XmlRpcException
(var jproto nil)
(var jnew_2 nil)

    
(set jnew_2 (fn jnew_2 [_code _message]
    (var this (table/setproto @{:jclass "XmlRpcException"} jproto))
        (JR/superThrowable this _message)
    this))

(set jproto (table/setproto @{} JR/exceptionProto))


