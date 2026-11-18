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
# package org.allbinary.image.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class OpenGLImageFactory
(var jproto nil)
(var jcell_NULL_OPENGL_IMAGE_FACTORY :jnone)
(var jstatic_NULL_OPENGL_IMAGE_FACTORY nil)
(var jsetstatic_NULL_OPENGL_IMAGE_FACTORY nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_NULL_OPENGL_IMAGE_FACTORY (fn jstatic_NULL_OPENGL_IMAGE_FACTORY []
  (when (= jcell_NULL_OPENGL_IMAGE_FACTORY :jnone) (set jcell_NULL_OPENGL_IMAGE_FACTORY (jnew_0)))
  jcell_NULL_OPENGL_IMAGE_FACTORY))
(set jsetstatic_NULL_OPENGL_IMAGE_FACTORY (fn jsetstatic_NULL_OPENGL_IMAGE_FACTORY [value] (set jcell_NULL_OPENGL_IMAGE_FACTORY value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLImageFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _image _bitmapFactory _textureFactory]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_getInstance jm_getInstance})


