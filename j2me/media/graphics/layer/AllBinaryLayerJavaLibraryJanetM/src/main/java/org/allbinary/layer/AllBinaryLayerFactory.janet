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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- ViewPosition/jm_getInstanceD [& args] (JR/call jfile "../../../org/allbinary/view/ViewPosition" "jm_getInstanceD" args))
(defn- AllBinaryLayer/jnew_3 [& args] (JR/call jfile "./AllBinaryLayer" "jnew_3" args))

# Java class AllBinaryLayerFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstance nil)

    
(set jnew_1 (fn jnew_1 [_rectangle]
    (var this (table/setproto @{:jclass "AllBinaryLayerFactory" :f_rectangle nil} jproto))
    
        (set (this :f_rectangle) _rectangle)
    this))
    
(set jm_getInstance (fn jm_getInstance [this]
    (label jreturn
        (return jreturn (AllBinaryLayer/jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (this :f_rectangle) (ViewPosition/jm_getInstanceD))))))

(set jproto @{:jm_getInstance jm_getInstance})


