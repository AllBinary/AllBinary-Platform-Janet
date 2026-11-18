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
(import ../../../java/lang/System :as System)

# Java class ABSystemWrapper
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_arraycopy nil)
(var jm_currentTimeMillis nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ABSystemWrapper"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_arraycopy (fn jm_arraycopy [this _src _srcPos _dest _destPos _length]
        (JR/arraycopy _src _srcPos _dest _destPos _length)))
    
(set jm_currentTimeMillis (fn jm_currentTimeMillis [this]
    (label jreturn
        (return jreturn (JR/currentTimeMillis)))))

(set jproto @{:jm_arraycopy jm_arraycopy :jm_currentTimeMillis jm_currentTimeMillis})


