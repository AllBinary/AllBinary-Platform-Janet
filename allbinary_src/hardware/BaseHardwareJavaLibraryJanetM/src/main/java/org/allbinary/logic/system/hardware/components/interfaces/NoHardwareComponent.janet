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
# package org.allbinary.logic.system.hardware.components.interfaces

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class NoHardwareComponent
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_compareTo nil)
(var jm_toString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoHardwareComponent"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_compareTo (fn jm_compareTo [this _componentInterface]
    (label jreturn
        (if (= this _componentInterface)
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_NULL_STRING)))))

(set jproto @{:jm_compareTo jm_compareTo :jm_toString jm_toString})


