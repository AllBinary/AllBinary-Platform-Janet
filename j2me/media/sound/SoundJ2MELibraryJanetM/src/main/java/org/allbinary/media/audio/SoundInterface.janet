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
# package org.allbinary.media.audio

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class SoundInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getResource nil)
(var jm_getPlayerP nil)
(var jm_init nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SoundInterface"} jproto))
    this))

    
(set jm_getResource (fn jm_getResource [this]
    (error (JR/newException "AbstractMethodError" "getResource"))))
    
(set jm_getPlayerP (fn jm_getPlayerP [this]
    (error (JR/newException "AbstractMethodError" "getPlayerP"))))
    
(set jm_init (fn jm_init [this]
    (error (JR/newException "AbstractMethodError" "init"))))

(set jproto @{:jm_getResource jm_getResource :jm_getPlayerP jm_getPlayerP :jm_init jm_init})


