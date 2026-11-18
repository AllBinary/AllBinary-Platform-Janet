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
# package org.allbinary.logic.io.path

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class AbPathData
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AbPathData" :f_EXTENSION_SEP nil :f_SEPARATORCHAR 0 :f_SEPARATOR nil} jproto))
    (put this :f_EXTENSION_SEP ((CommonSeps/jm_getInstance) :f_PERIOD))
    (put this :f_SEPARATORCHAR (get "/" 0))
    (put this :f_SEPARATOR ((CommonSeps/jm_getInstance) :f_FORWARD_SLASH))
    this))

(set jproto @{})


