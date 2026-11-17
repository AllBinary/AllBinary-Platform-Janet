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
# package org.allbinary.logic

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ABHashMap/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/ABHashMap" "jnew_0" args))
(defn- ABHashtable/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/ABHashtable" "jnew_0" args))
(defn- ABStack/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/ABStack" "jnew_0" args))
(defn- ABVector/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/ABVector" "jnew_0" args))

#NoPlatform
# Java class StdUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createStack nil)
(var jm_createVector nil)
(var jm_createHashtable nil)
(var jm_createHashMap nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StdUtil" :f_EMPTY_VECTOR nil :f_NULL_TABLE nil :f_NULL_MAP nil} jproto))
    (put this :f_EMPTY_VECTOR (:jm_createVector this))
    (put this :f_NULL_TABLE (:jm_createHashtable this))
    (put this :f_NULL_MAP (:jm_createHashMap this))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createStack (fn jm_createStack [this]
    (label jreturn
        (return jreturn (ABStack/jnew_0)))))
    
(set jm_createVector (fn jm_createVector [this]
    (label jreturn
        (return jreturn (ABVector/jnew_0)))))
    
(set jm_createHashtable (fn jm_createHashtable [this]
    (label jreturn
        (return jreturn (ABHashtable/jnew_0)))))
    
(set jm_createHashMap (fn jm_createHashMap [this]
    (label jreturn
        (return jreturn (ABHashMap/jnew_0)))))

(set jproto @{:jm_createStack jm_createStack :jm_createVector jm_createVector :jm_createHashtable jm_createHashtable :jm_createHashMap jm_createHashMap})


