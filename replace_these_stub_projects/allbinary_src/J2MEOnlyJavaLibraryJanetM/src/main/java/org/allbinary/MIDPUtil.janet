#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../java/io/IOException :as IOException)
(import ../../java/io/InputStream :as InputStream)
(defn- Image/jm_createImage [& args] (JR/call jfile "../../javax/microedition/lcdui/Image" "jm_createImage" args))
(defn- Manager/jm_createPlayer [& args] (JR/call jfile "../../javax/microedition/media/Manager" "jm_createPlayer" args))

#like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
# Java class MIDPUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImageWH nil)
(var jm_createImageFromByteArray nil)
(var jm_createImageFromInputStream nil)
(var jm_createPlayerFromInputStream nil)
(var jm_appendItem nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MIDPUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_createImageWH (fn jm_createImageWH [this _width _height]
    (label jreturn
        (return jreturn (Image/jm_createImage _width _height)))))
    
(set jm_createImageFromByteArray (fn jm_createImageFromByteArray [this _imageData _imageOffset _imageLength]
    (label jreturn
        (return jreturn (Image/jm_createImage _imageData _imageOffset _imageLength)))))
    
(set jm_createImageFromInputStream (fn jm_createImageFromInputStream [this _inputStream]
    (label jreturn
        (return jreturn (Image/jm_createImage _inputStream)))))
    
(set jm_createPlayerFromInputStream (fn jm_createPlayerFromInputStream [this _inputStream _type]
    (label jreturn
        (return jreturn (Manager/jm_createPlayer _inputStream _type)))))
    
(set jm_appendItem (fn jm_appendItem [this _form _item]
    (label jreturn
        (return jreturn (:jm_append _form _item)))))

(set jproto @{:jm_createImageWH jm_createImageWH :jm_createImageFromByteArray jm_createImageFromByteArray :jm_createImageFromInputStream jm_createImageFromInputStream :jm_createPlayerFromInputStream jm_createPlayerFromInputStream :jm_appendItem jm_appendItem})


