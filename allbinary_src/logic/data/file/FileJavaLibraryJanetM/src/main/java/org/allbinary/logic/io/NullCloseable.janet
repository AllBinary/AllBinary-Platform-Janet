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
(import ../../../../java/io/Closeable :as Closeable)
(import ../../../../java/io/IOException :as IOException)

# Java class NullCloseable
(var jproto nil)
(var jcell_NULL_CLOSEABLE :jnone)
(var jstatic_NULL_CLOSEABLE nil)
(var jsetstatic_NULL_CLOSEABLE nil)
(var jnew_0 nil)
(var jm_close nil)

(set jstatic_NULL_CLOSEABLE (fn jstatic_NULL_CLOSEABLE []
  (when (= jcell_NULL_CLOSEABLE :jnone) (set jcell_NULL_CLOSEABLE (jnew_0)))
  jcell_NULL_CLOSEABLE))
(set jsetstatic_NULL_CLOSEABLE (fn jsetstatic_NULL_CLOSEABLE [value] (set jcell_NULL_CLOSEABLE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullCloseable"} jproto))
    this))

    
(set jm_close (fn jm_close [this]
    nil))

(set jproto @{:jm_close jm_close})


