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
# package org.allbinary.data.tree.dom

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class DomData
(var jproto nil)
(var jcell_ID :jnone)
(var jstatic_ID nil)
(var jsetstatic_ID nil)
(var jcell_CHILD :jnone)
(var jstatic_CHILD nil)
(var jsetstatic_CHILD nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jcell_VALUE :jnone)
(var jstatic_VALUE nil)
(var jsetstatic_VALUE nil)
(var jcell_INDEX :jnone)
(var jstatic_INDEX nil)
(var jsetstatic_INDEX nil)
(var jnew_0 nil)

(set jstatic_ID (fn jstatic_ID []
  (when (= jcell_ID :jnone) (set jcell_ID "id"))
  jcell_ID))
(set jsetstatic_ID (fn jsetstatic_ID [value] (set jcell_ID value)))

(set jstatic_CHILD (fn jstatic_CHILD []
  (when (= jcell_CHILD :jnone) (set jcell_CHILD "child"))
  jcell_CHILD))
(set jsetstatic_CHILD (fn jsetstatic_CHILD [value] (set jcell_CHILD value)))

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "name"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

(set jstatic_VALUE (fn jstatic_VALUE []
  (when (= jcell_VALUE :jnone) (set jcell_VALUE "value"))
  jcell_VALUE))
(set jsetstatic_VALUE (fn jsetstatic_VALUE [value] (set jcell_VALUE value)))

(set jstatic_INDEX (fn jstatic_INDEX []
  (when (= jcell_INDEX :jnone) (set jcell_INDEX "index"))
  jcell_INDEX))
(set jsetstatic_INDEX (fn jsetstatic_INDEX [value] (set jcell_INDEX value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DomData"} jproto))
    this))

(set jproto @{})


