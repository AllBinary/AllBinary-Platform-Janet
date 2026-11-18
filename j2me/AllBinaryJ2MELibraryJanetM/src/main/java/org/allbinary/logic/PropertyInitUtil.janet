# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class PropertyInitUtil
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

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PropertyInitUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [_value]
    (label jreturn
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _logUtil (LogUtil/jm_getInstance))
        (:jm_putF _logUtil (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "PropertyInitUtil: ") _value)) _logUtil (_commonStrings :f_CONSTRUCTOR))
        (return jreturn (jstatic_instance)))))

(set jproto @{})


