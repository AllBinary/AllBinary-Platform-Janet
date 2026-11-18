# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.graphics.threed

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/lang/Runnable :as Runnable)

#OpenGLNone
# Java class SWTJOGLProcessor
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_isHolderCreated nil)
(var jm_setRenderer nil)
(var jm_isJOGL nil)
(var jm_createSurface nil)
(var jm_onSurfaceCreated nil)
(var jm_onSurfaceChangedForEvent nil)
(var jm_onSurfaceChanged nil)
(var jm_onSurfaceChangedWH nil)
(var jm_addListener nil)
(var jm_addListeners nil)
(var jm_run nil)
(var jm_clear nil)
(var jm_setCustom nil)
(var jm_setRatioProcessor nil)
(var jm_isPortraitRatioProcessor nil)
(var jm_charWidth nil)
(var jm_charsWidth nil)
(var jm_stringWidth nil)
(var jm_substringWidth nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SWTJOGLProcessor"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this _display _comp]
    nil))
    
(set jm_isHolderCreated (fn jm_isHolderCreated [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_setRenderer (fn jm_setRenderer [this _renderer]
    nil))
    
(set jm_isJOGL (fn jm_isJOGL [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_createSurface (fn jm_createSurface [this]
    nil))
    
(set jm_onSurfaceCreated (fn jm_onSurfaceCreated [this]
    nil))
    
(set jm_onSurfaceChangedForEvent (fn jm_onSurfaceChangedForEvent [this _event]
    nil))
    
(set jm_onSurfaceChanged (fn jm_onSurfaceChanged [this]
    nil))
    
(set jm_onSurfaceChangedWH (fn jm_onSurfaceChangedWH [this _width _height]
    nil))
    
(set jm_addListener (fn jm_addListener [this]
    nil))
    
(set jm_addListeners (fn jm_addListeners [this _midlet]
    nil))
    
(set jm_run (fn jm_run [this]
    nil))
    
(set jm_clear (fn jm_clear [this]
    nil))
    
(set jm_setCustom (fn jm_setCustom [this _width _height _ratio]
    nil))
    
(set jm_setRatioProcessor (fn jm_setRatioProcessor [this _ratioProcessor]
    nil))
    
(set jm_isPortraitRatioProcessor (fn jm_isPortraitRatioProcessor [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_charWidth (fn jm_charWidth [this _font _ch]
        (error (JR/newException "RuntimeException"))))
    
(set jm_charsWidth (fn jm_charsWidth [this _font _ch _offset _length]
        (error (JR/newException "RuntimeException"))))
    
(set jm_stringWidth (fn jm_stringWidth [this _font _str]
        (error (JR/newException "RuntimeException"))))
    
(set jm_substringWidth (fn jm_substringWidth [this _font _str _offset _len]
        (error (JR/newException "RuntimeException"))))

(set jproto @{:jm_init jm_init :jm_isHolderCreated jm_isHolderCreated :jm_setRenderer jm_setRenderer :jm_isJOGL jm_isJOGL :jm_createSurface jm_createSurface :jm_onSurfaceCreated jm_onSurfaceCreated :jm_onSurfaceChangedForEvent jm_onSurfaceChangedForEvent :jm_onSurfaceChanged jm_onSurfaceChanged :jm_onSurfaceChangedWH jm_onSurfaceChangedWH :jm_addListener jm_addListener :jm_addListeners jm_addListeners :jm_run jm_run :jm_clear jm_clear :jm_setCustom jm_setCustom :jm_setRatioProcessor jm_setRatioProcessor :jm_isPortraitRatioProcessor jm_isPortraitRatioProcessor :jm_charWidth jm_charWidth :jm_charsWidth jm_charsWidth :jm_stringWidth jm_stringWidth :jm_substringWidth jm_substringWidth})


