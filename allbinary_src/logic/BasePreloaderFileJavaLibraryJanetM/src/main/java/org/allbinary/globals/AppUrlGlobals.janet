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
(import ./UrlGlobalsInterface :as UrlGlobalsInterface)

#implements
# Java class AppUrlGlobals
(var jproto nil)
(var jcell_NULL_APP_URL_GLOBALS :jnone)
(var jstatic_NULL_APP_URL_GLOBALS nil)
(var jsetstatic_NULL_APP_URL_GLOBALS nil)
(var jnew_0 nil)
(var jm_isTestingMode nil)
(var jm_getWebappPath nil)
(var jm_setWebappPath nil)
(var jm_getTestHtmlPath nil)
(var jm_getMainPath nil)

(set jstatic_NULL_APP_URL_GLOBALS (fn jstatic_NULL_APP_URL_GLOBALS []
  (when (= jcell_NULL_APP_URL_GLOBALS :jnone) (set jcell_NULL_APP_URL_GLOBALS (jnew_0)))
  jcell_NULL_APP_URL_GLOBALS))
(set jsetstatic_NULL_APP_URL_GLOBALS (fn jsetstatic_NULL_APP_URL_GLOBALS [value] (set jcell_NULL_APP_URL_GLOBALS value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AppUrlGlobals" :f_path nil} jproto))
    (put this :f_path ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (JR/superInit this (UrlGlobalsInterface/jnew_0))
    this))

    
(set jm_isTestingMode (fn jm_isTestingMode [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getWebappPath (fn jm_getWebappPath [this]
    (label jreturn
        (return jreturn (this :f_path)))))
    
(set jm_setWebappPath (fn jm_setWebappPath [this _path]
        (set (this :f_path) _path)
        (if (not (or (JR/endsWith (this :f_path) "\\") (JR/endsWith (this :f_path) "/")))
            (do
            (set (this :f_path) (string (this :f_path) "\\"))))))
    
(set jm_getTestHtmlPath (fn jm_getTestHtmlPath [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_getMainPath (fn jm_getMainPath [this]
    (label jreturn
        (return jreturn (this :f_path)))))

(set jproto (table/setproto @{:jm_isTestingMode jm_isTestingMode :jm_getWebappPath jm_getWebappPath :jm_setWebappPath jm_setWebappPath :jm_getTestHtmlPath jm_getTestHtmlPath :jm_getMainPath jm_getMainPath} UrlGlobalsInterface/jproto))


