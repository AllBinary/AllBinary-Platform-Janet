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
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/lang/Thread :as Thread)

# Java class NullThread
(var jproto nil)
(var jcell_NULL_THREAD :jnone)
(var jstatic_NULL_THREAD nil)
(var jnew_0 nil)

(set jstatic_NULL_THREAD (fn jstatic_NULL_THREAD []
  (when (= jcell_NULL_THREAD :jnone) (set jcell_NULL_THREAD (Thread/jnew_0)))
  jcell_NULL_THREAD))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullThread"} jproto))
    this))


(set jproto @{})


