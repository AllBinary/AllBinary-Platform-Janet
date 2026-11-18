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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../../org/allbinary/util/BasicArrayListD :as BasicArrayListD)

# Java class BasicArrayListCacheable
(var jproto nil)
(var jnew_0 nil)
(var jm_getKey nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicArrayListCacheable"} jproto))
    (JR/superInit this (BasicArrayListD/jnew_0))
    this))

    
(set jm_getKey (fn jm_getKey [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))

(set jproto (table/setproto @{:jm_getKey jm_getKey} BasicArrayListD/jproto))


