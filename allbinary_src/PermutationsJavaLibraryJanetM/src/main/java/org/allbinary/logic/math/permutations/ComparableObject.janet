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
# package org.allbinary.logic.math.permutations

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))

# Java class ComparableObject
(var jproto nil)
(var jnew_0 nil)
(var jm_compareTo nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ComparableObject"} jproto))
    this))

    
(set jm_compareTo (fn jm_compareTo [this _anyType]
    (label jreturn
        (if (< (:jm_hashCode_1 (TsUtil/jm_getInstance) this) (:jm_hashCode_1 (TsUtil/jm_getInstance) _anyType))
            (do
            (return jreturn (JR/i32 (- 1))))
            (if (> (:jm_hashCode_1 (TsUtil/jm_getInstance) this) (:jm_hashCode_1 (TsUtil/jm_getInstance) _anyType))
            (do
            (return jreturn 1))))
        (return jreturn 0))))

(set jproto @{:jm_compareTo jm_compareTo})


