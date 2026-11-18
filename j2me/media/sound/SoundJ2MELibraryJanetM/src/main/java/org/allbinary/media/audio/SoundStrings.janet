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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class SoundStrings
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

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SoundStrings" :f_STOP_ALL nil :f_CLOSE_ALL nil :f_SOUND nil :f_INIT_SOUND nil :f_STOPPING_SOUND nil :f_CLOSING_SOUND nil} jproto))
    (put this :f_STOP_ALL "stopAll")
    (put this :f_CLOSE_ALL "closeAll")
    (put this :f_SOUND " Sound: ")
    (put this :f_INIT_SOUND "Initializing Sound: ")
    (put this :f_STOPPING_SOUND "Stopping Sound: ")
    (put this :f_CLOSING_SOUND "Closing Sound: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


