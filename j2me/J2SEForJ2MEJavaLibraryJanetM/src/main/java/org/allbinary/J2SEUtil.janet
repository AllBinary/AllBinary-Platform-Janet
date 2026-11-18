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
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../java/util/HashMap :as HashMap)
(import ../../java/util/Map :as Map)
(import ../../java/util/Set :as Set)

#J2SEForJ2ME
# Java class J2SEUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getHashMapAsArray nil)
(var jm_getMapAsArray nil)
(var jm_getSetAsArray nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "J2SEUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getHashMapAsArray (fn jm_getHashMapAsArray [this _hashMap]
    (label jreturn
        (var _objectArray (JR/className (:jm_keySet _hashMap)))
        (return jreturn _objectArray))))
    
(set jm_getMapAsArray (fn jm_getMapAsArray [this _map]
    (label jreturn
        (var _objectArray (JR/className (:jm_keySet _map)))
        (return jreturn _objectArray))))
    
(set jm_getSetAsArray (fn jm_getSetAsArray [this _set]
    (label jreturn
        (var _objectArray (:jm_toArray _set))
        (return jreturn _objectArray))))

(set jproto @{:jm_getHashMapAsArray jm_getHashMapAsArray :jm_getMapAsArray jm_getMapAsArray :jm_getSetAsArray jm_getSetAsArray})


