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
# package org.allbinary.ag.game.vector

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class HealthVectorData
(var jproto nil)
(var jcell_points :jnone)
(var jstatic_points nil)
(var jsetstatic_points nil)
(var jnew_0 nil)

(set jstatic_points (fn jstatic_points []
  (when (= jcell_points :jnone) (set jcell_points @[@[@[2 1] @[3 2] @[3 2] @[4 1] @[4 1] @[5 1] @[5 1] @[6 2] @[6 2] @[6 3] @[6 3] @[3 6] @[3 6] @[0 3] @[0 3] @[0 2] @[0 2] @[1 1] @[1 1] @[2 1] @[1000 1000]]]))
  jcell_points))
(set jsetstatic_points (fn jsetstatic_points [value] (set jcell_points value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HealthVectorData"} jproto))
    this))


(set jproto @{})


