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
# package org.allbinary.logic.system.hardware.components

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- Component/jnew_1 [& args] (JR/call jfile "./Component" "jnew_1" args))

# Java class ComponentFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ComponentFactory" :f_VGA nil :f_IDE nil :f_SCSI nil :f_BRIDGE nil :f_ETHERNET nil :f_USB nil :f_MULTIMEDIA nil :f_PCI nil :f_RAID nil :f_SMBUS nil :f_PIC nil :f_Class nil :f_UNKNOWN nil} jproto))
    (put this :f_VGA (Component/jnew_1 "VGA"))
    (put this :f_IDE (Component/jnew_1 "IDE"))
    (put this :f_SCSI (Component/jnew_1 "SCSI"))
    (put this :f_BRIDGE (Component/jnew_1 "bridge"))
    (put this :f_ETHERNET (Component/jnew_1 "Ethernet"))
    (put this :f_USB (Component/jnew_1 "USB"))
    (put this :f_MULTIMEDIA (Component/jnew_1 "Multimedia"))
    (put this :f_PCI (Component/jnew_1 "PCI"))
    (put this :f_RAID (Component/jnew_1 "RAID"))
    (put this :f_SMBUS (Component/jnew_1 "SMBus"))
    (put this :f_PIC (Component/jnew_1 "PIC"))
    (put this :f_Class (Component/jnew_1 "Class"))
    (put this :f_UNKNOWN (Component/jnew_1 ((CommonStrings/jm_getInstance) :f_UNKNOWN)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


