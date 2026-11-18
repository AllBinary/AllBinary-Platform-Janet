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
# package org.allbinary.logic.system.loader

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class WebappClassLoaderInfo
(var jproto nil)
(var jcell_classLoader :jnone)
(var jstatic_classLoader nil)
(var jsetstatic_classLoader nil)
(var jnew_0 nil)
(var jm_setLoader nil)
(var jm_getLoader nil)

(set jstatic_classLoader (fn jstatic_classLoader []
  (when (= jcell_classLoader :jnone) (set jcell_classLoader ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_classLoader))
(set jsetstatic_classLoader (fn jsetstatic_classLoader [value] (set jcell_classLoader value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "WebappClassLoaderInfo"} jproto))
    this))
    
(set jm_setLoader (fn jm_setLoader [_classLoader]
        (set jcell_classLoader _classLoader)))
    
(set jm_getLoader (fn jm_getLoader []
    (label jreturn
        (return jreturn (jstatic_classLoader)))))

(set jproto @{})


