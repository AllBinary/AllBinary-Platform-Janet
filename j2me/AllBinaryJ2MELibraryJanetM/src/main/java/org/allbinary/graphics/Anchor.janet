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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Graphics/jstatic_TOP [& args] (JR/call jfile "../../../javax/microedition/lcdui/Graphics" "jstatic_TOP" args))
(defn- Graphics/jstatic_LEFT [& args] (JR/call jfile "../../../javax/microedition/lcdui/Graphics" "jstatic_LEFT" args))

# Java class Anchor
(var jproto nil)
(var jcell_TOP_LEFT :jnone)
(var jstatic_TOP_LEFT nil)
(var jsetstatic_TOP_LEFT nil)
(var jnew_0 nil)

(set jstatic_TOP_LEFT (fn jstatic_TOP_LEFT []
  (when (= jcell_TOP_LEFT :jnone) (set jcell_TOP_LEFT (band (Graphics/jstatic_TOP) (Graphics/jstatic_LEFT))))
  jcell_TOP_LEFT))
(set jsetstatic_TOP_LEFT (fn jsetstatic_TOP_LEFT [value] (set jcell_TOP_LEFT value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Anchor"} jproto))
    this))


(set jproto @{})


