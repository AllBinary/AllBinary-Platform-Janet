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
(defn- Player/jstatic_UNREALIZED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_UNREALIZED" args))
(defn- Player/jstatic_REALIZED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_REALIZED" args))
(defn- Player/jstatic_PREFETCHED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_PREFETCHED" args))
(defn- Player/jstatic_STARTED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_STARTED" args))
(defn- Player/jstatic_CLOSED [& args] (JR/call jfile "../../../../javax/microedition/media/Player" "jstatic_CLOSED" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class PlayerStateUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_convert nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlayerStateUtil" :f_commonStrings nil :f_UNREALIZED nil :f_REALIZED nil :f_PREFETCHED nil :f_STARTED nil :f_CLOSED nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_UNREALIZED "UNREALIZED")
    (put this :f_REALIZED "REALIZED")
    (put this :f_PREFETCHED "PREFETCHED")
    (put this :f_STARTED "STARTED")
    (put this :f_CLOSED "CLOSED")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_convert (fn jm_convert [this _state]
    (label jreturn
        (if (= _state (Player/jstatic_UNREALIZED))
            (do
            (return jreturn (this :f_UNREALIZED)))
            (if (= _state (Player/jstatic_REALIZED))
            (do
            (return jreturn (this :f_REALIZED)))
            (if (= _state (Player/jstatic_PREFETCHED))
            (do
            (return jreturn (this :f_PREFETCHED)))
            (if (= _state (Player/jstatic_STARTED))
            (do
            (return jreturn (this :f_STARTED)))
            (if (= _state (Player/jstatic_CLOSED))
            (do
            (return jreturn (this :f_CLOSED))))))))
        (return jreturn ((this :f_commonStrings) :f_UNKNOWN)))))

(set jproto @{:jm_convert jm_convert})


