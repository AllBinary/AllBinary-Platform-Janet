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
# package org.allbinary.logic.io

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/IOException :as IOException)
(import ../../../../java/io/Reader :as Reader)

# Java class NullReader
(var jproto nil)
(var jcell_NULL_READER :jnone)
(var jstatic_NULL_READER nil)
(var jsetstatic_NULL_READER nil)
(var jnew_0 nil)
(var jm_read_0 nil)
(var jm_read_3 nil)
(var jm_ready nil)
(var jm_skip nil)
(var jm_close nil)

(set jstatic_NULL_READER (fn jstatic_NULL_READER []
  (when (= jcell_NULL_READER :jnone) (set jcell_NULL_READER (jnew_0)))
  jcell_NULL_READER))
(set jsetstatic_NULL_READER (fn jsetstatic_NULL_READER [value] (set jcell_NULL_READER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullReader"} jproto))
    (JR/superInit this (Reader/jnew_0))
    this))

    
(set jm_read_0 (fn jm_read_0 [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_read_3 (fn jm_read_3 [this _cbuf _off _len]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_ready (fn jm_ready [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_skip (fn jm_skip [this _n]
    (label jreturn
        (return jreturn 0))))
    
(set jm_close (fn jm_close [this]
    nil))

(set jproto (table/setproto @{:jm_read_0 jm_read_0 :jm_read_3 jm_read_3 :jm_ready jm_ready :jm_skip jm_skip :jm_close jm_close} Reader/jproto))


