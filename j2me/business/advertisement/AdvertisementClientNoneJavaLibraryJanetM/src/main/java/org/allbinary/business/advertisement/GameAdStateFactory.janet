# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameAdState/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/game/GameAdState" "jnew_1" args))
(defn- AppNameLicensingAdConfiguration/jnew_0 [& args] (JR/call jfile "./AppNameLicensingAdConfiguration" "jnew_0" args))

# Java class GameAdStateFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getCurrentInstance nil)
(var jm_getInstanceForApp nil)
(var jm_isEnabled nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameAdStateFactory" :f_gameAdStateArray nil :f_gameAdState nil} jproto))
    (put this :f_gameAdStateArray @[(GameAdState/jnew_1 (AppNameLicensingAdConfiguration/jnew_0))])
    (put this :f_gameAdState ((this :f_gameAdStateArray) 0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getCurrentInstance (fn jm_getCurrentInstance [this]
    (label jreturn
        (return jreturn (this :f_gameAdState)))))
    
(set jm_getInstanceForApp (fn jm_getInstanceForApp [this _softwareInformation]
    (label jreturn
        (set (this :f_gameAdState) ((this :f_gameAdStateArray) 0))
        (return jreturn ((this :f_gameAdStateArray) 0)))))
    
(set jm_isEnabled (fn jm_isEnabled [this]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_getCurrentInstance jm_getCurrentInstance :jm_getInstanceForApp jm_getInstanceForApp :jm_isEnabled jm_isEnabled})


