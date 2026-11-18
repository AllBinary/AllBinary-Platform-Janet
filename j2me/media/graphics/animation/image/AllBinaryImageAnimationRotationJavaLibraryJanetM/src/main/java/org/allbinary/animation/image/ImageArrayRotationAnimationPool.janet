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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/logic/util/cache/BasicArrayListResetablePool :as BasicArrayListResetablePool)
(defn- ImageArrayRotationAnimationCacheableInterfaceFactory/jnew_0 [& args] (JR/call jfile "./ImageArrayRotationAnimationCacheableInterfaceFactory" "jnew_0" args))

# Java class ImageArrayRotationAnimationPool
(var jproto nil)
(var jcell_IMAGE_ROTATION_ANIMATION_POOL :jnone)
(var jstatic_IMAGE_ROTATION_ANIMATION_POOL nil)
(var jsetstatic_IMAGE_ROTATION_ANIMATION_POOL nil)
(var jnew_1 nil)
(var jm_getInstance nil)
(var jm_remove nil)

(set jstatic_IMAGE_ROTATION_ANIMATION_POOL (fn jstatic_IMAGE_ROTATION_ANIMATION_POOL []
  (when (= jcell_IMAGE_ROTATION_ANIMATION_POOL :jnone) (set jcell_IMAGE_ROTATION_ANIMATION_POOL (jnew_1 (ImageArrayRotationAnimationCacheableInterfaceFactory/jnew_0))))
  jcell_IMAGE_ROTATION_ANIMATION_POOL))
(set jsetstatic_IMAGE_ROTATION_ANIMATION_POOL (fn jsetstatic_IMAGE_ROTATION_ANIMATION_POOL [value] (set jcell_IMAGE_ROTATION_ANIMATION_POOL value)))

    
(set jnew_1 (fn jnew_1 [_cacheableInterfaceFactoryInterface]
    (var this (table/setproto @{:jclass "ImageArrayRotationAnimationPool"} jproto))
        (JR/superInit this (BasicArrayListResetablePool/jnew_1 _cacheableInterfaceFactoryInterface))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_IMAGE_ROTATION_ANIMATION_POOL)))))
    
(set jm_remove (fn jm_remove [this _key]
    (label jreturn
        (var _cacheableInterface ((get BasicArrayListResetablePool/jproto :jm_remove) this _key))
        (var _allBinaryImageRotationAnimationInfo _key)
        (var _imageArrayRotationAnimationCacheable _cacheableInterface)
        (:jm_setImageArray _imageArrayRotationAnimationCacheable (:jm_getImageArray _allBinaryImageRotationAnimationInfo))
        (return jreturn _cacheableInterface))))

(set jproto (table/setproto @{:jm_remove jm_remove} BasicArrayListResetablePool/jproto))


