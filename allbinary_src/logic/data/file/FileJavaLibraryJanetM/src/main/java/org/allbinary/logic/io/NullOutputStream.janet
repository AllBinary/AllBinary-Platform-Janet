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
(import ../../../../java/io/OutputStream :as OutputStream)

# Java class NullOutputStream
(var jproto nil)
(var jcell_NULL_OUTPUT_STREAM :jnone)
(var jstatic_NULL_OUTPUT_STREAM nil)
(var jsetstatic_NULL_OUTPUT_STREAM nil)
(var jnew_0 nil)
(var jm_write_1 nil)
(var jm_write_3 nil)
(var jm_close nil)

(set jstatic_NULL_OUTPUT_STREAM (fn jstatic_NULL_OUTPUT_STREAM []
  (when (= jcell_NULL_OUTPUT_STREAM :jnone) (set jcell_NULL_OUTPUT_STREAM (jnew_0)))
  jcell_NULL_OUTPUT_STREAM))
(set jsetstatic_NULL_OUTPUT_STREAM (fn jsetstatic_NULL_OUTPUT_STREAM [value] (set jcell_NULL_OUTPUT_STREAM value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullOutputStream"} jproto))
    (JR/superInit this (OutputStream/jnew_0))
    this))

    
(set jm_write_1 (fn jm_write_1 [this _b]
    nil))
    
(set jm_write_3 (fn jm_write_3 [this _b _off _len]
    nil))
    
(set jm_close (fn jm_close [this]
    nil))

(set jproto (table/setproto @{:jm_write_1 jm_write_1 :jm_write_3 jm_write_3 :jm_close jm_close} OutputStream/jproto))


