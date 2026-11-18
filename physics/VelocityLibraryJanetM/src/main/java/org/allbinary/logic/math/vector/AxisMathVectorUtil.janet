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
# package org.allbinary.logic.math.vector

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NoDecimalTrigTable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/NoDecimalTrigTable" "jm_getInstance" args))

# Java class AxisMathVectorUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_calculateX nil)
(var jm_calculateY nil)
(var jm_calculateZ nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AxisMathVectorUtil" :f_noDecimalTrigTable nil} jproto))
    (put this :f_noDecimalTrigTable (NoDecimalTrigTable/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_calculateX (fn jm_calculateX [this _magnitude _angle]
    (label jreturn
        (return jreturn (JR/idiv (* _magnitude (:jm_cos (this :f_noDecimalTrigTable) _angle)) 10)))))
    
(set jm_calculateY (fn jm_calculateY [this _magnitude _angle]
    (label jreturn
        (return jreturn (JR/idiv (* _magnitude (:jm_sin (this :f_noDecimalTrigTable) _angle)) 10)))))
    
(set jm_calculateZ (fn jm_calculateZ [this _magnitude _otherAngle]
    (label jreturn
        (return jreturn (JR/idiv (* _magnitude (:jm_sin (this :f_noDecimalTrigTable) _otherAngle)) 10)))))

(set jproto @{:jm_calculateX jm_calculateX :jm_calculateY jm_calculateY :jm_calculateZ jm_calculateZ})


