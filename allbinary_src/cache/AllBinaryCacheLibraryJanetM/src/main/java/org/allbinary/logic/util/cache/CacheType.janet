# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

# Java class CacheType
(var jproto nil)
(var jnew_2 nil)
(var jm_getVendor nil)
(var jm_getType nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_vendor _type]
    (var this (table/setproto @{:jclass "CacheType" :f_vendor nil :f_type nil} jproto))
    
    
        (set (this :f_vendor) _vendor)
        (set (this :f_type) _type)
    this))
    
(set jm_getVendor (fn jm_getVendor [this]
    (label jreturn
        (return jreturn (this :f_vendor)))))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (this :f_type)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "CacheType: Vendor: ")
        (:jm_append _stringBuffer (:jm_getVendor this))
        (:jm_append _stringBuffer " Type: ")
        (:jm_append _stringBuffer (:jm_getType this))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getVendor jm_getVendor :jm_getType jm_getType :jm_toString jm_toString})


