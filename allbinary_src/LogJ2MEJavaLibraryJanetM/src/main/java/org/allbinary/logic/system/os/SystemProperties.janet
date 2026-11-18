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
# package org.allbinary.logic.system.os

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/lang/System :as System)

#ActualPlatform
# Java class SystemProperties
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getName nil)
(var jm_getArch nil)
(var jm_getVersion nil)
(var jm_getUserHomePath nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SystemProperties" :f_OS_NAME nil :f_OS_ARCH nil :f_OS_VERSION nil :f_USER_HOME nil} jproto))
    (put this :f_OS_NAME "os.name")
    (put this :f_OS_ARCH "os.arch")
    (put this :f_OS_VERSION "os.version")
    (put this :f_USER_HOME "user.home")
    this))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (System/jm_getProperty (this :f_OS_NAME))))))
    
(set jm_getArch (fn jm_getArch [this]
    (label jreturn
        (return jreturn (System/jm_getProperty (this :f_OS_ARCH))))))
    
(set jm_getVersion (fn jm_getVersion [this]
    (label jreturn
        (return jreturn (System/jm_getProperty (this :f_OS_VERSION))))))
    
(set jm_getUserHomePath (fn jm_getUserHomePath [this]
    (label jreturn
        (return jreturn (System/jm_getProperty (this :f_USER_HOME))))))

(set jproto @{:jm_getName jm_getName :jm_getArch jm_getArch :jm_getVersion jm_getVersion :jm_getUserHomePath jm_getUserHomePath})


