#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.midlet

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MidletIcon
(var jproto nil)
(var jcell_RESOURCE :jnone)
(var jstatic_RESOURCE nil)
(var jsetstatic_RESOURCE nil)
(var jnew_0 nil)

(set jstatic_RESOURCE (fn jstatic_RESOURCE []
  (when (= jcell_RESOURCE :jnone) (set jcell_RESOURCE "icon"))
  jcell_RESOURCE))
(set jsetstatic_RESOURCE (fn jsetstatic_RESOURCE [value] (set jcell_RESOURCE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MidletIcon"} jproto))
    this))


(set jproto @{})


