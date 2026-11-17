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
(import ../../../java/util/Enumeration :as Enumeration)
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "./BasicArrayListD" "jnew_0" args))

#ArkTs does not have this.  So this is for the ArkTs build.
# Java class EnumerationUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_hasMoreElements nil)
(var jm_nextElement nil)
(var jm_getAsArray nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "EnumerationUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_hasMoreElements (fn jm_hasMoreElements [this _enumeration]
    (label jreturn
        (return jreturn (:jm_hasMoreElements _enumeration)))))
    
(set jm_nextElement (fn jm_nextElement [this _enumeration]
    (label jreturn
        (return jreturn (:jm_nextElement _enumeration)))))
    
(set jm_getAsArray (fn jm_getAsArray [this _enumeration]
    (label jreturn
        (var _basicArrayList (BasicArrayListD/jnew_0))
        (do
            (while (:jm_hasMoreElements this _enumeration)
                (do
            (:jm_add _basicArrayList (:jm_nextElement this _enumeration)))))
        (return jreturn (:jm_toArray _basicArrayList)))))

(set jproto @{:jm_hasMoreElements jm_hasMoreElements :jm_nextElement jm_nextElement :jm_getAsArray jm_getAsArray})


