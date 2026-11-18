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
(import ../../../java/text/SimpleDateFormat :as SimpleDateFormat)
(import ../../../java/util/Calendar :as Calendar)
(import ../../../java/util/Date :as Date)

#ActualPlatform
# Java class TimeStampUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getAsString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TimeStampUtil" :f_simpleDataFormat nil} jproto))
    (put this :f_simpleDataFormat (SimpleDateFormat/jnew_1 "yyyy-MM-dd HH:mm:ss.SSS"))
    this))
    
(set jm_getAsString (fn jm_getAsString [this]
    (label jreturn
        (var _calendar (Calendar/jm_getInstance))
        (var _date (:jm_getTime _calendar))
        (return jreturn (:jm_format (this :f_simpleDataFormat) _date)))))

(set jproto @{:jm_getAsString jm_getAsString})


