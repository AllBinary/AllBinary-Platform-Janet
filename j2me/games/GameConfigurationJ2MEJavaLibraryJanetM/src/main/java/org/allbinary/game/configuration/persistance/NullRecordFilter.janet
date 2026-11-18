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

# Java class NullRecordFilter
(var jproto nil)
(var jcell_NULL_RECORD_FILTER :jnone)
(var jstatic_NULL_RECORD_FILTER nil)
(var jsetstatic_NULL_RECORD_FILTER nil)
(var jnew_0 nil)
(var jm_matches nil)

(set jstatic_NULL_RECORD_FILTER (fn jstatic_NULL_RECORD_FILTER []
  (when (= jcell_NULL_RECORD_FILTER :jnone) (set jcell_NULL_RECORD_FILTER (jnew_0)))
  jcell_NULL_RECORD_FILTER))
(set jsetstatic_NULL_RECORD_FILTER (fn jsetstatic_NULL_RECORD_FILTER [value] (set jcell_NULL_RECORD_FILTER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullRecordFilter"} jproto))
    this))

    
(set jm_matches (fn jm_matches [this _candidate]
    (label jreturn
        (return jreturn true))))

(set jproto @{:jm_matches jm_matches})


