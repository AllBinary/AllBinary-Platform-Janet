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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class Controllable2
(var jproto nil)
(var jnew_0 nil)
(var jm_setVolume nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Controllable2"} jproto))
    this))

    
(set jm_setVolume (fn jm_setVolume [this _leftVolume _rightVolume]
    (error (JR/newException "AbstractMethodError" "setVolume"))))

(set jproto @{:jm_setVolume jm_setVolume})


