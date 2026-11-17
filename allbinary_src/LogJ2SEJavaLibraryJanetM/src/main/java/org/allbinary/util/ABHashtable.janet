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
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/util/Hashtable :as Hashtable)

# Java class ABHashtable
(var jproto nil)
(var jnew_1 nil)
(var jnew_0 nil)

    
(set jnew_1 (fn jnew_1 [_initialCapacity]
    (var this (table/setproto @{:jclass "ABHashtable"} jproto))
        nil
    this))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ABHashtable"} jproto))
        nil
    this))

(set jproto (table/setproto @{} Hashtable/jproto))


