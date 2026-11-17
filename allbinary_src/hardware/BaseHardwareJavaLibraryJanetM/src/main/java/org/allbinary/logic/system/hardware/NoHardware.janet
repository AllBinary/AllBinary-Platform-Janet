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
# package org.allbinary.logic.system.hardware

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- NoHardwareComponent/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent" "jm_getInstance" args))

# Java class NoHardware
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getComponent nil)
(var jm_toString nil)
(var jm_compareTo nil)
(var jm_difference nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoHardware"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getComponent (fn jm_getComponent [this _index]
    (label jreturn
        (return jreturn (NoHardwareComponent/jm_getInstance)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn "No Hardware"))))
    
(set jm_compareTo (fn jm_compareTo [this _hardwareInterface]
    (label jreturn
        (return jreturn true))))
    
(set jm_difference (fn jm_difference [this _hardwareInterface]
    (label jreturn
        (return jreturn ((StdUtil/jm_getInstance) :f_NULL_TABLE)))))

(set jproto @{:jm_getComponent jm_getComponent :jm_toString jm_toString :jm_compareTo jm_compareTo :jm_difference jm_difference})


