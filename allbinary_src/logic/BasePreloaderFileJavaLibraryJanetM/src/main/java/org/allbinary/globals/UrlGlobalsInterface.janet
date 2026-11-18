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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class UrlGlobalsInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getMainPath nil)
(var jm_getTestHtmlPath nil)
(var jm_getWebappPath nil)
(var jm_isTestingMode nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "UrlGlobalsInterface"} jproto))
    this))

    
(set jm_getMainPath (fn jm_getMainPath [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_getTestHtmlPath (fn jm_getTestHtmlPath [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_getWebappPath (fn jm_getWebappPath [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_isTestingMode (fn jm_isTestingMode [this]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_getMainPath jm_getMainPath :jm_getTestHtmlPath jm_getTestHtmlPath :jm_getWebappPath jm_getWebappPath :jm_isTestingMode jm_isTestingMode})


