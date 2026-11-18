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
# package org.allbinary.game.configuration.persistance

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullRecordComparator
(var jproto nil)
(var jcell_NULL_RECORD_COMPARATOR :jnone)
(var jstatic_NULL_RECORD_COMPARATOR nil)
(var jsetstatic_NULL_RECORD_COMPARATOR nil)
(var jnew_0 nil)
(var jm_compare nil)

(set jstatic_NULL_RECORD_COMPARATOR (fn jstatic_NULL_RECORD_COMPARATOR []
  (when (= jcell_NULL_RECORD_COMPARATOR :jnone) (set jcell_NULL_RECORD_COMPARATOR (jnew_0)))
  jcell_NULL_RECORD_COMPARATOR))
(set jsetstatic_NULL_RECORD_COMPARATOR (fn jsetstatic_NULL_RECORD_COMPARATOR [value] (set jcell_NULL_RECORD_COMPARATOR value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullRecordComparator"} jproto))
    this))

    
(set jm_compare (fn jm_compare [this _rec1 _rec2]
    (label jreturn
        (return jreturn 0))))

(set jproto @{:jm_compare jm_compare})


