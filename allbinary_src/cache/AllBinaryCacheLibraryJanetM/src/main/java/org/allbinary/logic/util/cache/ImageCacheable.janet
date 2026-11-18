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

# Java class ImageCacheable
(var jproto nil)
(var jnew_2 nil)
(var jm_getKey nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_name _anyType]
    (var this (table/setproto @{:jclass "ImageCacheable" :f_name nil} jproto))
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    this))
    
(set jm_getKey (fn jm_getKey [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_getKey jm_getKey :jm_toString jm_toString})


