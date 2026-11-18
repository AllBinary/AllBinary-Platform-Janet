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
# package org.allbinary.logic.system.security.licensing.registration

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))

# Java class RegistrationConfiguration
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_read nil)
(var jm_write nil)
(var jm_toString nil)
(var jm_setRegistrationCode nil)
(var jm_getRegistrationCode nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RegistrationConfiguration" :f_registrationCode nil :f_NAME nil} jproto))
    (put this :f_registrationCode "No Registration Code")
    (put this :f_NAME "registrationid")
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_read (fn jm_read [this]
    nil))
    
(set jm_write (fn jm_write [this]
    nil))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Registration Code: ") (:jm_getRegistrationCode this)))))))
    
(set jm_setRegistrationCode (fn jm_setRegistrationCode [this _registrationCode]
        (set (this :f_registrationCode) _registrationCode)))
    
(set jm_getRegistrationCode (fn jm_getRegistrationCode [this]
    (label jreturn
        (return jreturn (this :f_registrationCode)))))

(set jproto @{:jm_read jm_read :jm_write jm_write :jm_toString jm_toString :jm_setRegistrationCode jm_setRegistrationCode :jm_getRegistrationCode jm_getRegistrationCode})


