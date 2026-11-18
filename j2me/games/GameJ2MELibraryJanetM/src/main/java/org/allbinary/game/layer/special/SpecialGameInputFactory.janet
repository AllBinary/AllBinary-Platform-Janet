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
# package org.allbinary.game.layer.special

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- SpecialGameInput/jnew_0 [& args] (JR/call jfile "./SpecialGameInput" "jnew_0" args))

# Java class SpecialGameInputFactory
(var jproto nil)
(var jcell_NO_SPECIAL_GAME_INPUT :jnone)
(var jstatic_NO_SPECIAL_GAME_INPUT nil)
(var jsetstatic_NO_SPECIAL_GAME_INPUT nil)
(var jnew_0 nil)

(set jstatic_NO_SPECIAL_GAME_INPUT (fn jstatic_NO_SPECIAL_GAME_INPUT []
  (when (= jcell_NO_SPECIAL_GAME_INPUT :jnone) (set jcell_NO_SPECIAL_GAME_INPUT (SpecialGameInput/jnew_0)))
  jcell_NO_SPECIAL_GAME_INPUT))
(set jsetstatic_NO_SPECIAL_GAME_INPUT (fn jsetstatic_NO_SPECIAL_GAME_INPUT [value] (set jcell_NO_SPECIAL_GAME_INPUT value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SpecialGameInputFactory"} jproto))
    this))


(set jproto @{})


