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
# package org.allbinary.logic

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#ActualPlatform
# Java class NullUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullUtil" :f_NULL_OBJECT nil :f_NULL_CLASS nil :f_NULL_OBJECT_ARRAY nil :f_NULL_CHAR_ARRAY nil :f_NULL_BYTE_ARRAY nil :f_NULL_SHORT_ARRAY_ARRAY nil :f_NULL_INT_ARRAY nil :f_NULL_INT_ARRAY_ARRAY nil :f_NULL_INT_ARRAY_ARRAY_ARRAY nil :f_NULL_FLOAT_ARRAY nil} jproto))
    (put this :f_NULL_OBJECT (JR/newJObject "Object"))
    (put this :f_NULL_CLASS (JR/className (this :f_NULL_OBJECT)))
    (put this :f_NULL_OBJECT_ARRAY (array/new-filled 0 nil))
    (put this :f_NULL_CHAR_ARRAY (array/new-filled 0 0))
    (put this :f_NULL_BYTE_ARRAY (array/new-filled 0 0))
    (put this :f_NULL_SHORT_ARRAY_ARRAY (seq [jindex1 :range [0 0]] (array/new-filled 0 0)))
    (put this :f_NULL_INT_ARRAY (array/new-filled 0 0))
    (put this :f_NULL_INT_ARRAY_ARRAY (seq [jindex1 :range [0 0]] (array/new-filled 0 0)))
    (put this :f_NULL_INT_ARRAY_ARRAY_ARRAY (seq [jindex1 :range [0 0]] (seq [jindex2 :range [0 0]] (array/new-filled 0 0))))
    (put this :f_NULL_FLOAT_ARRAY (array/new-filled 0 0.0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


