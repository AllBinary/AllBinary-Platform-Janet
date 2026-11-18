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
# package javax.microedition.lcdui

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Image/jnew_0 [& args] (JR/call jfile "./Image" "jnew_0" args))

# Java class NullImage
(var jproto nil)
(var jcell_NULL_IMAGE_ARRAY :jnone)
(var jstatic_NULL_IMAGE_ARRAY nil)
(var jsetstatic_NULL_IMAGE_ARRAY nil)
(var jcell_NULL_IMAGE :jnone)
(var jstatic_NULL_IMAGE nil)
(var jsetstatic_NULL_IMAGE nil)
(var jnew_0 nil)

(set jstatic_NULL_IMAGE_ARRAY (fn jstatic_NULL_IMAGE_ARRAY []
  (when (= jcell_NULL_IMAGE_ARRAY :jnone) (set jcell_NULL_IMAGE_ARRAY (array/new-filled 0 nil)))
  jcell_NULL_IMAGE_ARRAY))
(set jsetstatic_NULL_IMAGE_ARRAY (fn jsetstatic_NULL_IMAGE_ARRAY [value] (set jcell_NULL_IMAGE_ARRAY value)))

(set jstatic_NULL_IMAGE (fn jstatic_NULL_IMAGE []
  (when (= jcell_NULL_IMAGE :jnone) (set jcell_NULL_IMAGE (Image/jnew_0)))
  jcell_NULL_IMAGE))
(set jsetstatic_NULL_IMAGE (fn jsetstatic_NULL_IMAGE [value] (set jcell_NULL_IMAGE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NullImage"} jproto))
    this))


(set jproto @{})


