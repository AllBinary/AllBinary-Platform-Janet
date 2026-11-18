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
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- PlatformBitmapBaseFactory/jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY [& args] (JR/call jfile "../../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory" "jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY" args))
(defn- PlatformTextureBaseFactory/jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY [& args] (JR/call jfile "../../../../org/allbinary/platform/opengles/PlatformTextureBaseFactory" "jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- OpenGLESImageProperties/jnew_0 [& args] (JR/call jfile "./OpenGLESImageProperties" "jnew_0" args))

#OpenGLESNullImageJ2MEJavaLibrary
# Java class OpenGLESImage
(var jproto nil)
(var jcell_NULL_OPENGL_IMAGE :jnone)
(var jstatic_NULL_OPENGL_IMAGE nil)
(var jsetstatic_NULL_OPENGL_IMAGE nil)
(var jcell_texture2dList :jnone)
(var jstatic_texture2dList nil)
(var jsetstatic_texture2dList nil)
(var jcell_TYPE :jnone)
(var jstatic_TYPE nil)
(var jsetstatic_TYPE nil)
(var jnew_3 nil)
(var jm_set nil)
(var jm_initTexture nil)
(var jm_drawRegion nil)
(var jm_draw nil)
(var jm_getType nil)

(set jstatic_NULL_OPENGL_IMAGE (fn jstatic_NULL_OPENGL_IMAGE []
  (when (= jcell_NULL_OPENGL_IMAGE :jnone) (set jcell_NULL_OPENGL_IMAGE (jnew_3 (NullImage/jstatic_NULL_IMAGE) (PlatformBitmapBaseFactory/jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY) (PlatformTextureBaseFactory/jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY))))
  jcell_NULL_OPENGL_IMAGE))
(set jsetstatic_NULL_OPENGL_IMAGE (fn jsetstatic_NULL_OPENGL_IMAGE [value] (set jcell_NULL_OPENGL_IMAGE value)))

(set jstatic_texture2dList (fn jstatic_texture2dList []
  (when (= jcell_texture2dList :jnone) (set jcell_texture2dList (BasicArrayListD/jnew_0)))
  jcell_texture2dList))
(set jsetstatic_texture2dList (fn jsetstatic_texture2dList [value] (set jcell_texture2dList value)))

(set jstatic_TYPE (fn jstatic_TYPE []
  (when (= jcell_TYPE :jnone) (set jcell_TYPE 4))
  jcell_TYPE))
(set jsetstatic_TYPE (fn jsetstatic_TYPE [value] (set jcell_TYPE value)))

    
(set jnew_3 (fn jnew_3 [_image _bitmapFactory _textureFactory]
    (var this (table/setproto @{:jclass "OpenGLESImage" :f_commonStrings nil :f_textureFactory nil :f_openGLBitmap nil :f_openGLESImageProperties nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    (put this :f_openGLESImageProperties (OpenGLESImageProperties/jnew_0))
        (set (this :f_openGLBitmap) (:jm_createBitmap _bitmapFactory _image))
        (set (this :f_textureFactory) _textureFactory)
    this))
    
(set jm_set (fn jm_set [this _gl]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_initTexture (fn jm_initTexture [this _gl]
    (label jreturn
        (return jreturn false))))
    
(set jm_drawRegion (fn jm_drawRegion [this _gl _viewHeight _x_src _y_src _width _height _x _y _z]
    nil))
    
(set jm_draw (fn jm_draw [this _gl _x _y _z]
    nil))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (jstatic_TYPE)))))

(set jproto @{:jm_set jm_set :jm_initTexture jm_initTexture :jm_drawRegion jm_drawRegion :jm_draw jm_draw :jm_getType jm_getType})


