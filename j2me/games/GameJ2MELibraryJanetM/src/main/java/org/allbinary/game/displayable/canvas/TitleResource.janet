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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class TitleResource
(var jproto nil)
(var jcell_RESOURCE_TITLE :jnone)
(var jstatic_RESOURCE_TITLE nil)
(var jsetstatic_RESOURCE_TITLE nil)
(var jnew_0 nil)

(set jstatic_RESOURCE_TITLE (fn jstatic_RESOURCE_TITLE []
  (when (= jcell_RESOURCE_TITLE :jnone) (set jcell_RESOURCE_TITLE "/title_sprite_100_by_100.png"))
  jcell_RESOURCE_TITLE))
(set jsetstatic_RESOURCE_TITLE (fn jsetstatic_RESOURCE_TITLE [value] (set jcell_RESOURCE_TITLE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TitleResource"} jproto))
    this))


(set jproto @{})


