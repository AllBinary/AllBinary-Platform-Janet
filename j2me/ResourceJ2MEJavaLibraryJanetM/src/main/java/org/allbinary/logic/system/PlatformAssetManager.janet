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
# package org.allbinary.logic.system

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/InputStream :as InputStream)
(defn- ResourceUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/data/resource/ResourceUtil" "jm_getInstance" args))

# Java class PlatformAssetManager
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getResourceAsStream nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformAssetManager"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getResourceAsStream (fn jm_getResourceAsStream [this _resource]
    (label jreturn
        (var _resourceUtil (ResourceUtil/jm_getInstance))
        (var _inputStream (:jm_getResourceAsStream _resourceUtil _resource))
        (return jreturn _inputStream))))

(set jproto @{:jm_getResourceAsStream jm_getResourceAsStream})


