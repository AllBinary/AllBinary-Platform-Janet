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
# package org.allbinary.graphics.opengles

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- OpenGLFeature/jnew_1 [& args] (JR/call jfile "./OpenGLFeature" "jnew_1" args))

# Java class OpenGLFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLFeatureFactory" :f_OPENGL_OPTIONS nil :f_OPENGL nil :f_OPENGL_SURFACE_VIEW nil :f_OPENGL_2D nil :f_OPENGL_3D nil :f_OPENGL_2D_AND_3D nil :f_OPENGL_AUTO_SELECT nil :f_OPENGL_MINIMUM nil :f_OPENGL_AS_GAME_THREAD nil :f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS nil :f_IMAGE_COLOR_DEPTH_4444 nil :f_IMAGE_COLOR_DEPTH_8888 nil :f_IMAGE_COLOR_DEPTH_565 nil :f_OPENGL_COLOR_DEPTH_4444 nil :f_OPENGL_COLOR_DEPTH_8888 nil :f_OPENGL_COLOR_DEPTH_565 nil :f_OPENGL_DRAW_TEXTURE nil :f_OPENGL_VERTEX_BUFFER_OBJECT nil :f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR nil :f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR nil :f_OPENGL_SIMPLE_TEXTURE_PROCESSOR nil :f_OPENGL_COMPLEX_TEXTURE_PROCESSOR nil} jproto))
    (put this :f_OPENGL_OPTIONS (OpenGLFeature/jnew_1 "OpenGL Options"))
    (put this :f_OPENGL (OpenGLFeature/jnew_1 "OpenGL"))
    (put this :f_OPENGL_SURFACE_VIEW (OpenGLFeature/jnew_1 "GLSurfaceView"))
    (put this :f_OPENGL_2D (OpenGLFeature/jnew_1 "OpenGL 2D"))
    (put this :f_OPENGL_3D (OpenGLFeature/jnew_1 "OpenGL 3D"))
    (put this :f_OPENGL_2D_AND_3D (OpenGLFeature/jnew_1 "OpenGL 2D/3D"))
    (put this :f_OPENGL_AUTO_SELECT (OpenGLFeature/jnew_1 "Auto Select"))
    (put this :f_OPENGL_MINIMUM (OpenGLFeature/jnew_1 "Minimum"))
    (put this :f_OPENGL_AS_GAME_THREAD (OpenGLFeature/jnew_1 "As game thread"))
    (put this :f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS (OpenGLFeature/jnew_1 "As different threads"))
    (put this :f_IMAGE_COLOR_DEPTH_4444 (OpenGLFeature/jnew_1 "4444"))
    (put this :f_IMAGE_COLOR_DEPTH_8888 (OpenGLFeature/jnew_1 "8888"))
    (put this :f_IMAGE_COLOR_DEPTH_565 (OpenGLFeature/jnew_1 "565"))
    (put this :f_OPENGL_COLOR_DEPTH_4444 (OpenGLFeature/jnew_1 "4444"))
    (put this :f_OPENGL_COLOR_DEPTH_8888 (OpenGLFeature/jnew_1 "8888"))
    (put this :f_OPENGL_COLOR_DEPTH_565 (OpenGLFeature/jnew_1 "565"))
    (put this :f_OPENGL_DRAW_TEXTURE (OpenGLFeature/jnew_1 "GL_OES_draw_texture"))
    (put this :f_OPENGL_VERTEX_BUFFER_OBJECT (OpenGLFeature/jnew_1 "vertex_buffer_object"))
    (put this :f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR (OpenGLFeature/jnew_1 "Simple Object3d Processor"))
    (put this :f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR (OpenGLFeature/jnew_1 "Complex Object3d Processor"))
    (put this :f_OPENGL_SIMPLE_TEXTURE_PROCESSOR (OpenGLFeature/jnew_1 "Simple Texture Processor"))
    (put this :f_OPENGL_COMPLEX_TEXTURE_PROCESSOR (OpenGLFeature/jnew_1 "Complex Texture Processor"))
    this))

(set jproto @{})


