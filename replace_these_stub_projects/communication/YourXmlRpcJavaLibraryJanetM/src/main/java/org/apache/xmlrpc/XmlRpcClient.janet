# Generated Code Do Not Modify
# package org.apache.xmlrpc

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/io/IOException :as IOException)
(import ../../../java/net/MalformedURLException :as MalformedURLException)
(import ../../../java/net/URL :as URL)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class XmlRpcClient
(var jproto nil)
(var jnew_1 nil)
(var jm_getURL nil)
(var jm_setBasicAuthentication nil)
(var jm_execute nil)
(var jm_executeWithCrypt nil)

    
(set jnew_1 (fn jnew_1 [_url]
    (var this (table/setproto @{:jclass "XmlRpcClient" :f_url nil} jproto))
    
        (set (this :f_url) (URL/jnew_1 _url))
    this))
    
(set jm_getURL (fn jm_getURL [this]
    (label jreturn
        (return jreturn (this :f_url)))))
    
(set jm_setBasicAuthentication (fn jm_setBasicAuthentication [this _user _password]
    nil))
    
(set jm_execute (fn jm_execute [this _method _params]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))))
    
(set jm_executeWithCrypt (fn jm_executeWithCrypt [this _method _params _cryptInterface]
    (label jreturn
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))))

(set jproto @{:jm_getURL jm_getURL :jm_setBasicAuthentication jm_setBasicAuthentication :jm_execute jm_execute :jm_executeWithCrypt jm_executeWithCrypt})


