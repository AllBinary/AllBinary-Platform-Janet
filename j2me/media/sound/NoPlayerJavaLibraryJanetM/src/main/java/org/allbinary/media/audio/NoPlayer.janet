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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ./BasicPlayer :as BasicPlayer)
(defn- NullControl/jnew_0 [& args] (JR/call jfile "./NullControl" "jnew_0" args))

# Java class NoPlayer
(var jproto nil)
(var jcell_NO_PLAYER :jnone)
(var jstatic_NO_PLAYER nil)
(var jsetstatic_NO_PLAYER nil)
(var jnew_0 nil)
(var jm_close nil)
(var jm_getContentType nil)
(var jm_getControl nil)
(var jm_getControls nil)

(set jstatic_NO_PLAYER (fn jstatic_NO_PLAYER []
  (when (= jcell_NO_PLAYER :jnone) (set jcell_NO_PLAYER (jnew_0)))
  jcell_NO_PLAYER))
(set jsetstatic_NO_PLAYER (fn jsetstatic_NO_PLAYER [value] (set jcell_NO_PLAYER value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoPlayer"} jproto))
    (JR/superInit this (BasicPlayer/jnew_0))
    this))
    
(set jm_close (fn jm_close [this]
    nil))
    
(set jm_getContentType (fn jm_getContentType [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_NULL_STRING)))))
    
(set jm_getControl (fn jm_getControl [this _controlType]
    (label jreturn
        (return jreturn (NullControl/jnew_0)))))
    
(set jm_getControls (fn jm_getControls [this]
    (label jreturn
        (return jreturn (array/new-filled 0 nil)))))

(set jproto (table/setproto @{:jm_close jm_close :jm_getContentType jm_getContentType :jm_getControl jm_getControl :jm_getControls jm_getControls} BasicPlayer/jproto))


