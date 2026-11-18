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
# package org.allbinary.logic.control.validate

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ../../../../../java/lang/Boolean :as Boolean)

# Java class ValidatorBase
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isValid nil)
(var jm_validationInfo nil)
(var jm_toHashtable nil)
(var jm_toList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ValidatorBase"} jproto))
    this))
    
(set jm_isValid (fn jm_isValid [this]
    (label jreturn
        (return jreturn ((BooleanFactory/jm_getInstance) :f_TRUE)))))
    
(set jm_validationInfo (fn jm_validationInfo [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_toHashtable (fn jm_toHashtable [this]
    (label jreturn
        (return jreturn ((StdUtil/jm_getInstance) :f_NULL_TABLE)))))
    
(set jm_toList (fn jm_toList [this]
    (label jreturn
        (return jreturn (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance))))))

(set jproto @{:jm_isValid jm_isValid :jm_validationInfo jm_validationInfo :jm_toHashtable jm_toHashtable :jm_toList jm_toList})


