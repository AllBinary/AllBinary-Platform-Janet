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
(import ../../../../../javax/microedition/rms/RecordStore :as RecordStore)

# Java class NullRecordStore
(var jproto nil)
(var jcell_NULL_RECORD_STORE :jnone)
(var jstatic_NULL_RECORD_STORE nil)
(var jsetstatic_NULL_RECORD_STORE nil)
(var jnew_0 nil)

(set jstatic_NULL_RECORD_STORE (fn jstatic_NULL_RECORD_STORE []
  (when (= jcell_NULL_RECORD_STORE :jnone) (set jcell_NULL_RECORD_STORE (jnew_0)))
  jcell_NULL_RECORD_STORE))
(set jsetstatic_NULL_RECORD_STORE (fn jsetstatic_NULL_RECORD_STORE [value] (set jcell_NULL_RECORD_STORE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullRecordStore"} jproto))
    (JR/superInit this (RecordStore/jnew_0))
    this))


(set jproto (table/setproto @{} RecordStore/jproto))


