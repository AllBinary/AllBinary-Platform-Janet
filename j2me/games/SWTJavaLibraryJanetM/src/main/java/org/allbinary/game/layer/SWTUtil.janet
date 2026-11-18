# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class SWTUtil
(var jproto nil)
(var jcell_isSWT :jnone)
(var jstatic_isSWT nil)
(var jsetstatic_isSWT nil)
(var jcell_SWT :jnone)
(var jstatic_SWT nil)
(var jsetstatic_SWT nil)
(var jnew_0 nil)

(set jstatic_isSWT (fn jstatic_isSWT []
  (when (= jcell_isSWT :jnone) (set jcell_isSWT true))
  jcell_isSWT))
(set jsetstatic_isSWT (fn jsetstatic_isSWT [value] (set jcell_isSWT value)))

(set jstatic_SWT (fn jstatic_SWT []
  (when (= jcell_SWT :jnone) (set jcell_SWT "SWT"))
  jcell_SWT))
(set jsetstatic_SWT (fn jsetstatic_SWT [value] (set jcell_SWT value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SWTUtil"} jproto))
    this))


(set jproto @{})


