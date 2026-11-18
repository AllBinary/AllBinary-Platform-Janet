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
# package org.allbinary.media.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ImageRotationUtil/jm_getInstance [& args] (JR/call jfile "./ImageRotationUtil" "jm_getInstance" args))

# Java class ImageToRotationImageArrayUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_generate nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageToRotationImageArrayUtil"} jproto))
    this))
    
(set jm_generate (fn jm_generate [this _image _angleIncrement _totalAngle]
    (label jreturn
        (var _imageRotationUtil (ImageRotationUtil/jm_getInstance))
        (var _totalFrames (JR/idiv _totalAngle _angleIncrement))
        (var _imageArray (array/new-filled _totalFrames nil))
        (set (_imageArray 0) _image)
        (do
            (var _index 1)
            (while (< _index _totalFrames)
                (do
            (set (_imageArray _index) (:jm_createRotatedImage _imageRotationUtil _image (JR/i32 (* _index _angleIncrement)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _imageArray))))

(set jproto @{:jm_generate jm_generate})


