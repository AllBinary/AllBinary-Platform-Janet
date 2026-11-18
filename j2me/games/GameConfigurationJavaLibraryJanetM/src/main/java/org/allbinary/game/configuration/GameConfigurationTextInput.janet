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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class GameConfigurationTextInput
(var jproto nil)
(var jcell_hashtable :jnone)
(var jstatic_hashtable nil)
(var jsetstatic_hashtable nil)
(var jcell_SIMULATOR_IP :jnone)
(var jstatic_SIMULATOR_IP nil)
(var jsetstatic_SIMULATOR_IP nil)
(var jcell_SIMULATOR_PORT :jnone)
(var jstatic_SIMULATOR_PORT nil)
(var jsetstatic_SIMULATOR_PORT nil)
(var jnew_2 nil)
(var jm_update nil)
(var jm_setText nil)
(var jm_getText nil)
(var jm_setLabel nil)
(var jm_getLabel nil)
(var jm_getHashtable nil)

(set jstatic_hashtable (fn jstatic_hashtable []
  (when (= jcell_hashtable :jnone) (set jcell_hashtable (:jm_createHashtable (StdUtil/jm_getInstance))))
  jcell_hashtable))
(set jsetstatic_hashtable (fn jsetstatic_hashtable [value] (set jcell_hashtable value)))

(set jstatic_SIMULATOR_IP (fn jstatic_SIMULATOR_IP []
  (when (= jcell_SIMULATOR_IP :jnone) (set jcell_SIMULATOR_IP (jnew_2 "IP: " "192.168.1.3")))
  jcell_SIMULATOR_IP))
(set jsetstatic_SIMULATOR_IP (fn jsetstatic_SIMULATOR_IP [value] (set jcell_SIMULATOR_IP value)))

(set jstatic_SIMULATOR_PORT (fn jstatic_SIMULATOR_PORT []
  (when (= jcell_SIMULATOR_PORT :jnone) (set jcell_SIMULATOR_PORT (jnew_2 "Port: " "8010")))
  jcell_SIMULATOR_PORT))
(set jsetstatic_SIMULATOR_PORT (fn jsetstatic_SIMULATOR_PORT [value] (set jcell_SIMULATOR_PORT value)))

    
(set jnew_2 (fn jnew_2 [_label _text]
    (var this (table/setproto @{:jclass "GameConfigurationTextInput" :f_label nil :f_text nil} jproto))
    (put this :f_label ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_text ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (:jm_setText this _text)
        (:jm_setLabel this _label)
        (JR/className (jstatic_hashtable))
    this))
    
(set jm_update (fn jm_update [_textField]
        (var _anyType (:jm_getLabel _textField))
        (var _gameConfigurationTextInput (JR/className (jstatic_hashtable)))
        (:jm_setText _gameConfigurationTextInput (:jm_getString _textField))))
    
(set jm_setText (fn jm_setText [this _text]
        (set (this :f_text) _text)))
    
(set jm_getText (fn jm_getText [this]
    (label jreturn
        (return jreturn (this :f_text)))))
    
(set jm_setLabel (fn jm_setLabel [this _label]
        (set (this :f_label) _label)))
    
(set jm_getLabel (fn jm_getLabel [this]
    (label jreturn
        (return jreturn (this :f_label)))))
    
(set jm_getHashtable (fn jm_getHashtable []
    (label jreturn
        (return jreturn (jstatic_hashtable)))))

(set jproto @{:jm_setText jm_setText :jm_getText jm_getText :jm_setLabel jm_setLabel :jm_getLabel jm_getLabel})


