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
(defn- AppUrlGlobals/jstatic_NULL_APP_URL_GLOBALS [& args] (JR/call jfile "./AppUrlGlobals" "jstatic_NULL_APP_URL_GLOBALS" args))

# Java class URLGLOBALS
(var jproto nil)
(var jcell_urlGlobalsInterface :jnone)
(var jstatic_urlGlobalsInterface nil)
(var jsetstatic_urlGlobalsInterface nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_isTestingMode nil)
(var jm_getWebappPath nil)
(var jm_getTestHtmlPath nil)
(var jm_getMainPath nil)

(set jstatic_urlGlobalsInterface (fn jstatic_urlGlobalsInterface []
  (when (= jcell_urlGlobalsInterface :jnone) (set jcell_urlGlobalsInterface (AppUrlGlobals/jstatic_NULL_APP_URL_GLOBALS)))
  jcell_urlGlobalsInterface))
(set jsetstatic_urlGlobalsInterface (fn jsetstatic_urlGlobalsInterface [value] (set jcell_urlGlobalsInterface value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "URLGLOBALS"} jproto))
    this))

    
(set jm_init (fn jm_init [_urlGlobalsInterface]
        (set jcell_urlGlobalsInterface _urlGlobalsInterface)))
    
(set jm_isTestingMode (fn jm_isTestingMode []
    (label jreturn
        (return jreturn (JR/className (jstatic_urlGlobalsInterface))))))
    
(set jm_getWebappPath (fn jm_getWebappPath []
    (label jreturn
        (return jreturn (JR/className (jstatic_urlGlobalsInterface))))))
    
(set jm_getTestHtmlPath (fn jm_getTestHtmlPath []
    (label jreturn
        (return jreturn (JR/className (jstatic_urlGlobalsInterface))))))
    
(set jm_getMainPath (fn jm_getMainPath []
    (label jreturn
        (return jreturn (JR/className (jstatic_urlGlobalsInterface))))))

(set jproto @{})


