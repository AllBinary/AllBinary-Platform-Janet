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
# package org.allbinary.logic.java.exception

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)

#ActualPlatform
# Java class ExceptionUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getStackTrace nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ExceptionUtil" :f_PRETEND_EXCEPTION nil :f_NONE nil} jproto))
    (put this :f_PRETEND_EXCEPTION (JR/newException "Exception" "Not Really An Exception"))
    (put this :f_NONE "No Stack Trace")
    this))
    
(set jm_getStackTrace (fn jm_getStackTrace [this _e]
    (label jreturn
        (var _bs (ByteArrayOutputStream/jnew_0))
        (:jm_printStackTrace _e)
        (var _output (:jm_toString _bs))
        (return jreturn _output))))

(set jproto @{:jm_getStackTrace jm_getStackTrace})


