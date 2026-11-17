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
# package org.allbinary.time

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./TimeDelayHelper :as TimeDelayHelper)

# Java class NoTimeDelayHelper
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_isTimeTNT nil)
(var jm_isTimeSinceTNT nil)
(var jm_isTime nil)
(var jm_isTimeSince nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoTimeDelayHelper"} jproto))
        nil
    this))
    
(set jm_isTimeTNT (fn jm_isTimeTNT [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_isTimeSinceTNT (fn jm_isTimeSinceTNT [this _delay]
    (label jreturn
        (return jreturn true))))
    
(set jm_isTime (fn jm_isTime [this _currentTime]
    (label jreturn
        (return jreturn true))))
    
(set jm_isTimeSince (fn jm_isTimeSince [this _delay _currentTime]
    (label jreturn
        (return jreturn true))))

(set jproto (table/setproto @{:jm_isTimeTNT jm_isTimeTNT :jm_isTimeSinceTNT jm_isTimeSinceTNT :jm_isTime jm_isTime :jm_isTimeSince jm_isTimeSince} TimeDelayHelper/jproto))


