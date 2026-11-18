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
# package org.allbinary.emulator.device

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- OpenGLESImage/jstatic_NULL_OPENGL_IMAGE [& args] (JR/call jfile "../../../../org/allbinary/image/opengles/OpenGLESImage" "jstatic_NULL_OPENGL_IMAGE" args))
(import ./TrueTypeFontUtilBase :as TrueTypeFontUtilBase)

# Java class TrueTypeFontUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getAsTextureSize nil)
(var jm_getCellSize nil)
(var jm_getFontBitmap nil)
(var jm_saveFontAtlasAsFile nil)
(var jm_getFontBitmapGL nil)
(var jm_getFontWidths nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TrueTypeFontUtil" :f_fontImage nil} jproto))
    (put this :f_fontImage (OpenGLESImage/jstatic_NULL_OPENGL_IMAGE))
        (JR/superInit this (TrueTypeFontUtilBase/jnew_1 1))
    this))
    
(set jm_getAsTextureSize (fn jm_getAsTextureSize [this _textureSize]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getCellSize (fn jm_getCellSize [this _cellSize]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getFontBitmap (fn jm_getFontBitmap [this _filename _fontSize _cellSize _basicColor]
        (error (JR/newException "RuntimeException"))))
    
(set jm_saveFontAtlasAsFile (fn jm_saveFontAtlasAsFile [this]
    nil))
    
(set jm_getFontBitmapGL (fn jm_getFontBitmapGL [this _gl _filename _cellSize _basicColor]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getFontWidths (fn jm_getFontWidths [this _filename _fontSize]
        (error (JR/newException "RuntimeException"))))

(set jproto (table/setproto @{:jm_getAsTextureSize jm_getAsTextureSize :jm_getCellSize jm_getCellSize :jm_getFontBitmap jm_getFontBitmap :jm_saveFontAtlasAsFile jm_saveFontAtlasAsFile :jm_getFontBitmapGL jm_getFontBitmapGL :jm_getFontWidths jm_getFontWidths} TrueTypeFontUtilBase/jproto))


