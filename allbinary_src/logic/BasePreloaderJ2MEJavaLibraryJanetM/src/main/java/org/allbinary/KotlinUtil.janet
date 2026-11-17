# Generated Code Do Not Modify
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class KotlinUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_isKotlin nil)
(var jm_getShortName nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "KotlinUtil"} jproto))
    this))

    
(set jm_isKotlin (fn jm_isKotlin []
    (label jreturn
        (return jreturn false))))
    
(set jm_getShortName (fn jm_getShortName []
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))

(set jproto @{})


