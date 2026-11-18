# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.persistance

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class PlatformRecordIdUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRecordId nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformRecordIdUtil" :f_PLATFORM_SHORT_NAME nil} jproto))
    (put this :f_PLATFORM_SHORT_NAME "JSE")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getRecordId (fn jm_getRecordId [this _abeClientInformation _baseRecordId]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) (:jm_toShortString _abeClientInformation)) ((CommonSeps/jm_getInstance) :f_UNDERSCORE)) (this :f_PLATFORM_SHORT_NAME)) _baseRecordId))))))

(set jproto @{:jm_getRecordId jm_getRecordId})


