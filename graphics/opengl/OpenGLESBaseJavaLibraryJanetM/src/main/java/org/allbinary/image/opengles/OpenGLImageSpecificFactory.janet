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
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- OpenGLImageFactory/jstatic_NULL_OPENGL_IMAGE_FACTORY [& args] (JR/call jfile "./OpenGLImageFactory" "jstatic_NULL_OPENGL_IMAGE_FACTORY" args))

# Java class OpenGLImageSpecificFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setImageFactory nil)
(var jm_getImageFactory nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OpenGLImageSpecificFactory" :f_imageFactory nil :f_updating false} jproto))
    (put this :f_imageFactory (OpenGLImageFactory/jstatic_NULL_OPENGL_IMAGE_FACTORY))
    (put this :f_updating false)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setImageFactory (fn jm_setImageFactory [this _imageFactory]
        (set (this :f_imageFactory) _imageFactory)
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Selected Image Factory: ") (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_imageFactory)))) this "setImageFactory")))
    
(set jm_getImageFactory (fn jm_getImageFactory [this]
    (label jreturn
        (return jreturn (this :f_imageFactory)))))

(set jproto @{:jm_setImageFactory jm_setImageFactory :jm_getImageFactory jm_getImageFactory})


