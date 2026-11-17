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
# package org.allbinary.logic.math

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class J2SEMath
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_round nil)
(var jm_abs nil)
(var jm_absdouble nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "J2SEMath"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_round (fn jm_round [this _value]
    (label jreturn
        (return jreturn (math/round _value)))))
    
(set jm_abs (fn jm_abs [this _value]
    (label jreturn
        (return jreturn (if (< _value 0) (- _value) _value)))))
    
(set jm_absdouble (fn jm_absdouble [this _value]
    (label jreturn
        (return jreturn (if (< _value 0) (- _value) _value)))))

(set jproto @{:jm_round jm_round :jm_abs jm_abs :jm_absdouble jm_absdouble})


