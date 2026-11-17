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
# package org.allbinary.logic.java.character

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CharArrayFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getZeroCharArray nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CharArrayFactory" :f_zeroCharArray nil} jproto))
    (put this :f_zeroCharArray (array/new-filled 0 0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getZeroCharArray (fn jm_getZeroCharArray [this]
    (label jreturn
        (return jreturn (this :f_zeroCharArray)))))

(set jproto @{:jm_getZeroCharArray jm_getZeroCharArray})


