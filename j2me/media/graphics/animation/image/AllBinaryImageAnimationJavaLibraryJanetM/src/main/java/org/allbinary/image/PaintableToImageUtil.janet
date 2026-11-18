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
(defn- GameFeatureImageCacheFactory/jm_getInstance [& args] (JR/call jfile "./GameFeatureImageCacheFactory" "jm_getInstance" args))

# Java class PaintableToImageUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getImage nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PaintableToImageUtil"} jproto))
    this))

    
(set jm_getImage (fn jm_getImage [_paintableInterface _width _height]
    (label jreturn
        (var _image (:jm_get (GameFeatureImageCacheFactory/jm_getInstance) (JR/className (jstatic_instance)) _width _height))
        (var _graphics (:jm_getGraphics _image))
        (:jm_paint _paintableInterface _graphics)
        (return jreturn _image))))

(set jproto @{})


