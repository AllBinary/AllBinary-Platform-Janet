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
# package org.allbinary.logic.java.bool

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/lang/Boolean :as Boolean)

# Java class BooleanFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_toStringb nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BooleanFactory" :f_TRUE nil :f_FALSE nil :f_TRUE_STRING nil :f_FALSE_STRING nil :f_YES nil :f_NO nil} jproto))
    (put this :f_TRUE true)
    (put this :f_FALSE false)
    (put this :f_TRUE_STRING (:jm_toString (this :f_TRUE)))
    (put this :f_FALSE_STRING (:jm_toString (this :f_FALSE)))
    (put this :f_YES "yes")
    (put this :f_NO "no")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_toStringb (fn jm_toStringb [this _bool]
    (label jreturn
        (if _bool
            (do
            (return jreturn (this :f_TRUE_STRING)))
            (do
            (return jreturn (this :f_FALSE_STRING)))))))

(set jproto @{:jm_toStringb jm_toStringb})


