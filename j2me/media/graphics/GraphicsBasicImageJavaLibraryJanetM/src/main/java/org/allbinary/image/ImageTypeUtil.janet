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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class ImageTypeUtil
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_isSupported nil)
(var jm_getInstance nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageTypeUtil" :f_PNG nil :f_JPG nil :f_GIF nil :f_list nil} jproto))
    (put this :f_PNG "png")
    (put this :f_JPG "jpg")
    (put this :f_GIF "gif")
    (put this :f_list (BasicArrayListD/jnew_0))
        (:jm_add (this :f_list) (this :f_JPG))
        (:jm_add (this :f_list) (this :f_GIF))
        (:jm_add (this :f_list) (this :f_PNG))
    this))
    
(set jm_isSupported (fn jm_isSupported [this _mediaFileType]
    (var _mediaFileType _mediaFileType)
    (label jreturn
        (set _mediaFileType (JR/toLowerCase _mediaFileType))
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_list)) 1)))
            (while (>= _index 0)
                (do
            (var _name (:jm_get (this :f_list) _index))
            (if (= (JR/compareTo _mediaFileType _name) 0)
                (do
                (return jreturn true))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn false))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))

(set jproto @{:jm_isSupported jm_isSupported})


