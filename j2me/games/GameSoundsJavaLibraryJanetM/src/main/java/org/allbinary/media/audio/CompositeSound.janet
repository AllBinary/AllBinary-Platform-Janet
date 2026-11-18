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
(import ./Sound :as Sound)
(defn- PlayerComposite/jnew_2 [& args] (JR/call jfile "./PlayerComposite" "jnew_2" args))
(defn- AllBinaryMediaManager/jm_createPlayer [& args] (JR/call jfile "./AllBinaryMediaManager" "jm_createPlayer" args))

# Java class CompositeSound
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)

    
(set jnew_1 (fn jnew_1 [_resource]
    (var this (table/setproto @{:jclass "CompositeSound"} jproto))
        (JR/superInit this (Sound/jnew_1 _resource))
    this))
    
(set jm_init (fn jm_init [this]
        (:jm_setPlayerP this (PlayerComposite/jnew_2 (AllBinaryMediaManager/jm_createPlayer (:jm_getResource this)) 570))))

(set jproto (table/setproto @{:jm_init jm_init} Sound/jproto))


