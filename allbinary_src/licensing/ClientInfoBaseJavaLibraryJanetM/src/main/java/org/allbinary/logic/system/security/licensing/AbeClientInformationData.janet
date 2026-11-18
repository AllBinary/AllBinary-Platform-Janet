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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class AbeClientInformationData
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AbeClientInformationData" :f_KEY nil :f_NAME nil :f_VERSION nil :f_SPECIALNAME nil :f_LICENSEID nil :f_LICENSE_TYPE nil :f_PREVIOUSLICENSEID nil :f_OSNAME nil :f_OSARCH nil :f_OSVERSION nil :f_OS nil :f_HARDWARE nil :f_LICENSESERVERS nil :f_NEWLICENSE nil :f_ISNEW nil :f_SPECIAL nil} jproto))
    (put this :f_KEY "KEY")
    (put this :f_NAME "NAME")
    (put this :f_VERSION "VERSION")
    (put this :f_SPECIALNAME "SPECIALNAME")
    (put this :f_LICENSEID "LICENSEID")
    (put this :f_LICENSE_TYPE "LICENSETYPE")
    (put this :f_PREVIOUSLICENSEID "PREVIOUSLICENSEID")
    (put this :f_OSNAME "OSNAME")
    (put this :f_OSARCH "OSARCH")
    (put this :f_OSVERSION "OSVERSION")
    (put this :f_OS "OS")
    (put this :f_HARDWARE "HARDWARE")
    (put this :f_LICENSESERVERS "LICENSESERVERS")
    (put this :f_NEWLICENSE "NEWLICENSE")
    (put this :f_ISNEW "ISNEW")
    (put this :f_SPECIAL "SPECIAL")
    this))

(set jproto @{})


