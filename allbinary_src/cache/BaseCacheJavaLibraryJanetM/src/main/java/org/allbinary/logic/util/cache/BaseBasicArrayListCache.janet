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
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class BaseBasicArrayListCache
(var jproto nil)
(var jnew_0 nil)
(var jm_log nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseBasicArrayListCache" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))

    
(set jm_log (fn jm_log [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "S: ")
        (:jm_appendint _stringBuffer (:jm_size (this :f_list)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_log jm_log})


