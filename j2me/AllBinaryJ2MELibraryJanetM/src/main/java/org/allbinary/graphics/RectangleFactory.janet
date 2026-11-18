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
(defn- Rectangle/jnew_3 [& args] (JR/call jfile "./Rectangle" "jnew_3" args))
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "./PointFactory" "jm_getInstance" args))

# Java class RectangleFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jcell_ARRAY_OF_ARRAYS :jnone)
(var jstatic_ARRAY_OF_ARRAYS nil)
(var jsetstatic_ARRAY_OF_ARRAYS nil)
(var jnew_0 nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (Rectangle/jnew_3 ((PointFactory/jm_getInstance) :f_ZERO_ZERO) 0 0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jstatic_ARRAY_OF_ARRAYS (fn jstatic_ARRAY_OF_ARRAYS []
  (when (= jcell_ARRAY_OF_ARRAYS :jnone) (set jcell_ARRAY_OF_ARRAYS (seq [jindex1 :range [0 0]] (array/new-filled 0 nil))))
  jcell_ARRAY_OF_ARRAYS))
(set jsetstatic_ARRAY_OF_ARRAYS (fn jsetstatic_ARRAY_OF_ARRAYS [value] (set jcell_ARRAY_OF_ARRAYS value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RectangleFactory"} jproto))
    this))


(set jproto @{})


