# Generated Code Do Not Modify
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/io/IOException :as IOException)
(import ../../../java/io/InputStream :as InputStream)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(import ../../../org/allbinary/platform/graphics/PlatformBitmapBaseFactory :as PlatformBitmapBaseFactory)
(defn- OpenGLBitmapConfig/jnew_1 [& args] (JR/call jfile "./OpenGLBitmapConfig" "jnew_1" args))
(defn- OpenGLBitmap/jnew_1 [& args] (JR/call jfile "./OpenGLBitmap" "jnew_1" args))

# Java class OpenGLBitmapFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createBitmap_3 nil)
(var jm_decodeStream nil)
(var jm_createBitmap_1 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLBitmapFactory" :f_ARGB_8888 nil} jproto))
    (put this :f_ARGB_8888 (OpenGLBitmapConfig/jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
    (JR/superInit this (PlatformBitmapBaseFactory/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createBitmap_3 (fn jm_createBitmap_3 [this _width _height _config]
    (label jreturn
        (return jreturn (OpenGLBitmap/jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))))
    
(set jm_decodeStream (fn jm_decodeStream [this _inputStream]
    (label jreturn
        (return jreturn (OpenGLBitmap/jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))))
    
(set jm_createBitmap_1 (fn jm_createBitmap_1 [this _image]
    (label jreturn
        (return jreturn (OpenGLBitmap/jnew_1 ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))))

(set jproto (table/setproto @{:jm_createBitmap_3 jm_createBitmap_3 :jm_decodeStream jm_decodeStream :jm_createBitmap_1 jm_createBitmap_1} PlatformBitmapBaseFactory/jproto))


