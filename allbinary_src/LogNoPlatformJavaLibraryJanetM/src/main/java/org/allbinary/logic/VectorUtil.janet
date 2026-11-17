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
# package org.allbinary.logic

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/util/Vector :as Vector)

# Java class VectorUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getSize nil)
(var jm_elementAt nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VectorUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getSize (fn jm_getSize [this _anyType]
    (label jreturn
        (var _vector _anyType)
        (return jreturn (:jm_size _vector)))))
    
(set jm_elementAt (fn jm_elementAt [this _anyType _index]
    (label jreturn
        (var _vector _anyType)
        (return jreturn (:jm_elementAt _vector _index)))))

(set jproto @{:jm_getSize jm_getSize :jm_elementAt jm_elementAt})


