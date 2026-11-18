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
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Runnable :as Runnable)
(defn- NoPlayer/jstatic_NO_PLAYER [& args] (JR/call jfile "./NoPlayer" "jstatic_NO_PLAYER" args))

# Java class Sound
(var jproto nil)
(var jnew_1 nil)
(var jm_getResource nil)
(var jm_getPlayerP nil)
(var jm_setPlayerP nil)
(var jm_init nil)
(var jm_getDuration nil)
(var jm_run nil)

    
(set jnew_1 (fn jnew_1 [_resource]
    (var this (table/setproto @{:jclass "Sound" :f_resource nil :f_player nil} jproto))
    
    (put this :f_player (NoPlayer/jstatic_NO_PLAYER))
        (set (this :f_resource) _resource)
    this))
    
(set jm_getResource (fn jm_getResource [this]
    (label jreturn
        (return jreturn (this :f_resource)))))
    
(set jm_getPlayerP (fn jm_getPlayerP [this]
    (label jreturn
        (return jreturn (this :f_player)))))
    
(set jm_setPlayerP (fn jm_setPlayerP [this _player]
        (set (this :f_player) _player)))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_getDuration (fn jm_getDuration [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (:jm_start (this :f_player)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_put (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN)))))))

(set jproto @{:jm_getResource jm_getResource :jm_getPlayerP jm_getPlayerP :jm_setPlayerP jm_setPlayerP :jm_init jm_init :jm_getDuration jm_getDuration :jm_run jm_run})


