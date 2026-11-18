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
# package org.allbinary.graphics.opengles.renderer

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class AllBinaryRendererBase3
(var jproto nil)
(var jnew_0 nil)
(var jm_update nil)
(var jm_add nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryRendererBase3" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))

    
(set jm_update (fn jm_update [this _gl]
        (do
            (while (> (:jm_size (this :f_list)) 0)
                (do
            (var _openGLESImage (:jm_removeAt (this :f_list) 0))
            (if (not (nil? _openGLESImage))
                (do
                (:jm_set _openGLESImage _gl))))))))
    
(set jm_add (fn jm_add [this _image]
        (:jm_add (this :f_list) _image)))

(set jproto @{:jm_update jm_update :jm_add jm_add})


