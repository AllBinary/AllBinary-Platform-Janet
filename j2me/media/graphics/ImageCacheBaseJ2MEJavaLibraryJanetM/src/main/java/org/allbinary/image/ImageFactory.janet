# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
(import ../../../java/io/InputStream :as InputStream)
(defn- Image/jm_createImage [& args] (JR/call jfile "../../../javax/microedition/lcdui/Image" "jm_createImage" args))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/MIDPUtil" "jm_getInstance" args))

#ImageCacheBaseJavaLibrary - J2ME
# Java class ImageFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImageUrl nil)
(var jm_createImage nil)
(var jm_createImageFromInputStream_2 nil)
(var jm_createImageFromInputStream_1 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createImageUrl (fn jm_createImageUrl [this _url]
    (label jreturn
        (return jreturn (Image/jm_createImage _url)))))
    
(set jm_createImage (fn jm_createImage [this _caller _width _height]
    (label jreturn
        (return jreturn (:jm_createImageWH (MIDPUtil/jm_getInstance) _width _height)))))
    
(set jm_createImageFromInputStream_2 (fn jm_createImageFromInputStream_2 [this _key _inputStream]
    (label jreturn
        (var _image (:jm_createImageFromInputStream_1 (MIDPUtil/jm_getInstance) _inputStream))
        (return jreturn _image))))
    
(set jm_createImageFromInputStream_1 (fn jm_createImageFromInputStream_1 [this _inputStream]
    (label jreturn
        (return jreturn (:jm_createImageFromInputStream_1 (MIDPUtil/jm_getInstance) _inputStream)))))

(set jproto @{:jm_createImageUrl jm_createImageUrl :jm_createImage jm_createImage :jm_createImageFromInputStream_2 jm_createImageFromInputStream_2 :jm_createImageFromInputStream_1 jm_createImageFromInputStream_1})


