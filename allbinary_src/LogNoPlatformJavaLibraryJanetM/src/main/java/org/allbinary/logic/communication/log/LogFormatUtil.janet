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
# package org.allbinary.logic.communication.log

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#NoPlatform
# Java class LogFormatUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_get nil)
(var jm_getS nil)
(var jm_getO nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogFormatUtil"} jproto))
    this))
    
(set jm_get (fn jm_get [this _className _functionName _specialMessage _exception]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getS (fn jm_getS [this _className _functionName _specialMessage]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getO (fn jm_getO [this _exception]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_get jm_get :jm_getS jm_getS :jm_getO jm_getO})


