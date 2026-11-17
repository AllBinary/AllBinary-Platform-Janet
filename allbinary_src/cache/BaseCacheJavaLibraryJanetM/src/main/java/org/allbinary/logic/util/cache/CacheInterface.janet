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

# Java class CacheInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_add nil)
(var jm_addArray nil)
(var jm_clear nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CacheInterface"} jproto))
    this))

    
(set jm_add (fn jm_add [this _cacheableInterface]
    (error (JR/newException "AbstractMethodError" "add"))))
    
(set jm_addArray (fn jm_addArray [this _cacheableInterfaces]
    (error (JR/newException "AbstractMethodError" "addArray"))))
    
(set jm_clear (fn jm_clear [this]
    (error (JR/newException "AbstractMethodError" "clear"))))

(set jproto @{:jm_add jm_add :jm_addArray jm_addArray :jm_clear jm_clear})


