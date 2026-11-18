# Generated Code Do Not Modify
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class OpenGLProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLProcessor" :f_logUtil nil :f_commonStrings nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    this))

    
(set jm_process (fn jm_process [this _gl]
    nil))

(set jproto @{:jm_process jm_process})


