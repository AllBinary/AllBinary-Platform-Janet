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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ImageCache/jnew_0 [& args] (JR/call jfile "./ImageCache" "jnew_0" args))

# Java class ImageCacheFactory
(var jproto nil)
(var jcell_IMAGE_CACHE :jnone)
(var jstatic_IMAGE_CACHE nil)
(var jsetstatic_IMAGE_CACHE nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)

(set jstatic_IMAGE_CACHE (fn jstatic_IMAGE_CACHE []
  (when (= jcell_IMAGE_CACHE :jnone) (set jcell_IMAGE_CACHE (ImageCache/jnew_0)))
  jcell_IMAGE_CACHE))
(set jsetstatic_IMAGE_CACHE (fn jsetstatic_IMAGE_CACHE [value] (set jcell_IMAGE_CACHE value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageCacheFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_IMAGE_CACHE)))))
    
(set jm_init (fn jm_init []
    nil))

(set jproto @{})


