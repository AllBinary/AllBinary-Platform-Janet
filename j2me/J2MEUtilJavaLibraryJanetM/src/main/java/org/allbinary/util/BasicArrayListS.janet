# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ./BasicArrayList :as BasicArrayList)

# Java class BasicArrayListS
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_size]
    (var this (table/setproto @{:jclass "BasicArrayListS"} jproto))
        (JR/superInit this (BasicArrayList/jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT_ARRAY)))
        (if (< _size 0)
            (do
            (error (JR/newException "IllegalArgumentException" (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Init Size Exception: ") _size))))))
        (set (this :f_objectArray) (array/new-filled _size nil))
    this))

(set jproto (table/setproto @{} BasicArrayList/jproto))


