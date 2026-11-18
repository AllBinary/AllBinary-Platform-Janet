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

# Java class AnimationFrameToImageUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getInstanceTranslate nil)
(var jm_getInstanceWH nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnimationFrameToImageUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstanceTranslate (fn jm_getInstanceTranslate [this _width _height _animationInterface]
    (label jreturn
        (var _image (:jm_get (GameFeatureImageCacheFactory/jm_getInstance) (JR/className (jstatic_instance)) (brshift (JR/i32 (* _width 3)) 1) (brshift (JR/i32 (* _height 3)) 1)))
        (var _graphics (:jm_getGraphics _image))
        (var _tranlateX (brshift _width 2))
        (var _tranlateY (brshift _height 2))
        (:jm_translate _graphics _tranlateX _tranlateY)
        (:jm_paintXY _animationInterface _graphics 0 0)
        (:jm_translate _graphics (JR/i32 (- _tranlateX)) (JR/i32 (- _tranlateY)))
        (return jreturn _image))))
    
(set jm_getInstanceWH (fn jm_getInstanceWH [this _width _height _animationInterface]
    (label jreturn
        (var _image (:jm_get (GameFeatureImageCacheFactory/jm_getInstance) (JR/className (jstatic_instance)) _width _height))
        (var _graphics (:jm_getGraphics _image))
        (:jm_paintXY _animationInterface _graphics 0 0)
        (return jreturn _image))))

(set jproto @{:jm_getInstanceTranslate jm_getInstanceTranslate :jm_getInstanceWH jm_getInstanceWH})


