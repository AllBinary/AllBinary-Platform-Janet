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
# package org.allbinary.system

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../java/lang/Runtime :as Runtime)

#ActualPlatform
# Java class Memory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInfo nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Memory"} jproto))
    this))

    
(set jm_getInfo (fn jm_getInfo []
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Memory: Free: ")
        (:jm_appendlong _stringBuffer (JR/className (Runtime/jm_getRuntime)))
        (:jm_append _stringBuffer " Max: ")
        (:jm_appendlong _stringBuffer (JR/className (Runtime/jm_getRuntime)))
        (:jm_append _stringBuffer " Total: ")
        (:jm_appendlong _stringBuffer (JR/className (Runtime/jm_getRuntime)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{})


