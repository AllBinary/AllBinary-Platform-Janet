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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(defn- NullIntermissionEnableListener/jm_getInstance [& args] (JR/call jfile "./NullIntermissionEnableListener" "jm_getInstance" args))

# Java class Intermission
(var jproto nil)
(var jnew_0 nil)
(var jm_setListener nil)
(var jm_getTimeDelayHelper nil)
(var jm_setEnabled nil)
(var jm_isEnabled nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Intermission" :f_enabled false :f_timeElapsedHelper nil :f_intermissionEnableListener nil} jproto))
    
    (put this :f_timeElapsedHelper (TimeDelayHelper/jnew_1 0))
    (put this :f_intermissionEnableListener (NullIntermissionEnableListener/jm_getInstance))
    this))
    
(set jm_setListener (fn jm_setListener [this _enableListener]
        (set (this :f_intermissionEnableListener) _enableListener)))
    
(set jm_getTimeDelayHelper (fn jm_getTimeDelayHelper [this]
    (label jreturn
        (return jreturn (this :f_timeElapsedHelper)))))
    
(set jm_setEnabled (fn jm_setEnabled [this _enabled]
        (set (this :f_enabled) _enabled)
        (if (:jm_isEnabled this)
            (do
            (:jm_setStartTimeTNT (:jm_getTimeDelayHelper this))))
        (:jm_notifyIntermission (this :f_intermissionEnableListener) _enabled)))
    
(set jm_isEnabled (fn jm_isEnabled [this]
    (label jreturn
        (return jreturn (this :f_enabled)))))

(set jproto @{:jm_setListener jm_setListener :jm_getTimeDelayHelper jm_getTimeDelayHelper :jm_setEnabled jm_setEnabled :jm_isEnabled jm_isEnabled})


