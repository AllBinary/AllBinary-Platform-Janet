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
(import ../../../../java/io/Writer :as Writer)

# Java class NullWriter
(var jproto nil)
(var jcell_NULL_WRITER :jnone)
(var jstatic_NULL_WRITER nil)
(var jsetstatic_NULL_WRITER nil)
(var jnew_0 nil)
(var jm_write_1 nil)
(var jm_write_3 nil)
(var jm_write_1 nil)
(var jm_write_3 nil)
(var jm_flush nil)
(var jm_close nil)

(set jstatic_NULL_WRITER (fn jstatic_NULL_WRITER []
  (when (= jcell_NULL_WRITER :jnone) (set jcell_NULL_WRITER (jnew_0)))
  jcell_NULL_WRITER))
(set jsetstatic_NULL_WRITER (fn jsetstatic_NULL_WRITER [value] (set jcell_NULL_WRITER value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullWriter"} jproto))
    (JR/superInit this (Writer/jnew_0))
    this))

    
(set jm_write_1 (fn jm_write_1 [this _c]
    nil))
    
(set jm_write_3 (fn jm_write_3 [this _cbuf _off _len]
    nil))
    
(set jm_write_1 (fn jm_write_1 [this _str]
    nil))
    
(set jm_write_3 (fn jm_write_3 [this _str _off _len]
    nil))
    
(set jm_flush (fn jm_flush [this]
    nil))
    
(set jm_close (fn jm_close [this]
    nil))

(set jproto (table/setproto @{:jm_write_1 jm_write_1 :jm_write_3 jm_write_3 :jm_write_1 jm_write_1 :jm_write_3 jm_write_3 :jm_flush jm_flush :jm_close jm_close} Writer/jproto))


