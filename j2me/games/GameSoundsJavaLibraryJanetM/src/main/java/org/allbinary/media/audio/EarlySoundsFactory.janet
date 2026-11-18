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
(import ./BaseSoundsFactory :as BaseSoundsFactory)
(defn- SelectSound/jm_getInstance [& args] (JR/call jfile "./SelectSound" "jm_getInstance" args))
(defn- ErrorSound/jm_getInstance [& args] (JR/call jfile "./ErrorSound" "jm_getInstance" args))

# Java class EarlySoundsFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getSoundInterfaceArray nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "EarlySoundsFactory"} jproto))
    (JR/superInit this (BaseSoundsFactory/jnew_0))
    this))

    
(set jm_getSoundInterfaceArray (fn jm_getSoundInterfaceArray [this]
    (label jreturn
        (var _soundInterfaceArray (array/new-filled 2 nil))
        (var _index 0)
        (set (_soundInterfaceArray (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (SelectSound/jm_getInstance))
        (set (_soundInterfaceArray (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (ErrorSound/jm_getInstance))
        (return jreturn _soundInterfaceArray))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto (table/setproto @{:jm_getSoundInterfaceArray jm_getSoundInterfaceArray} BaseSoundsFactory/jproto))


