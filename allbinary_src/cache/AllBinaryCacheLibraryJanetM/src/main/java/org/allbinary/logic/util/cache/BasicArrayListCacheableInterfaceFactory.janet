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
(defn- BasicArrayListCacheable/jnew_0 [& args] (JR/call jfile "./BasicArrayListCacheable" "jnew_0" args))

# Java class BasicArrayListCacheableInterfaceFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicArrayListCacheableInterfaceFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _key]
    (label jreturn
        (return jreturn (BasicArrayListCacheable/jnew_0)))))

(set jproto @{:jm_getInstance jm_getInstance})


