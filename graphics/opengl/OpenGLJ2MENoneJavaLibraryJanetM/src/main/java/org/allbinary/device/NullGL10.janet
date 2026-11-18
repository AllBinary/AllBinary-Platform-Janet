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
# package org.allbinary.device

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class NullGL10
(var jproto nil)
(var jcell_NULL_GL10 :jnone)
(var jstatic_NULL_GL10 nil)
(var jsetstatic_NULL_GL10 nil)
(var jnew_0 nil)

(set jstatic_NULL_GL10 (fn jstatic_NULL_GL10 []
  (when (= jcell_NULL_GL10 :jnone) (set jcell_NULL_GL10 (jnew_0)))
  jcell_NULL_GL10))
(set jsetstatic_NULL_GL10 (fn jsetstatic_NULL_GL10 [value] (set jcell_NULL_GL10 value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullGL10"} jproto))
    this))


(set jproto @{})


