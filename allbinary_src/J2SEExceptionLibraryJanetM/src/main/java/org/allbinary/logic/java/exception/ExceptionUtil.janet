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
(import ../../../../../java/io/PrintStream :as PrintStream)

#ActualPlatform
# Java class ExceptionUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jcell_PRETEND_EXCEPTION :jnone)
(var jstatic_PRETEND_EXCEPTION nil)
(var jsetstatic_PRETEND_EXCEPTION nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getStackTrace nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jstatic_PRETEND_EXCEPTION (fn jstatic_PRETEND_EXCEPTION []
  (when (= jcell_PRETEND_EXCEPTION :jnone) (set jcell_PRETEND_EXCEPTION (JR/newException "Exception" "Not Really An Exception")))
  jcell_PRETEND_EXCEPTION))
(set jsetstatic_PRETEND_EXCEPTION (fn jsetstatic_PRETEND_EXCEPTION [value] (set jcell_PRETEND_EXCEPTION value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ExceptionUtil" :f_NONE nil} jproto))
    (put this :f_NONE "No Stack Trace")
    this))
    
(set jm_getStackTrace (fn jm_getStackTrace [this _e]
    (label jreturn
        (if (not (nil? _e))
            (do
            (var _byteArrayOutputStream (ByteArrayOutputStream/jnew_0))
            (var _printStream (PrintStream/jnew_1 _byteArrayOutputStream))
            (:jm_printStackTrace _e _printStream)
            (var _output (:jm_toString _byteArrayOutputStream))
            (return jreturn _output)))
        (return jreturn (this :f_NONE)))))

(set jproto @{:jm_getStackTrace jm_getStackTrace})


