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

# Java class CacheableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getKey nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CacheableInterface"} jproto))
    this))

    
(set jm_getKey (fn jm_getKey [this]
    (error (JR/newException "AbstractMethodError" "getKey"))))

(set jproto @{:jm_getKey jm_getKey})


