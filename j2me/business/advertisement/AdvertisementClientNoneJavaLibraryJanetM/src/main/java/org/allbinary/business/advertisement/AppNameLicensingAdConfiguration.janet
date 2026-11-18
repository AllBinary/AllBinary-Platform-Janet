# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./AdConfiguration :as AdConfiguration)

# Java class AppNameLicensingAdConfiguration
(var jproto nil)
(var jnew_0 nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AppNameLicensingAdConfiguration"} jproto))
        (JR/superInit this (AdConfiguration/jnew_1 @[((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING)]))
    this))

(set jproto (table/setproto @{} AdConfiguration/jproto))


