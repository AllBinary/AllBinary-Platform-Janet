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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PlayerType/jnew_2 [& args] (JR/call jfile "./PlayerType" "jnew_2" args))

# Java class PlayerTypesFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlayerTypesFactory" :f_PLAYER_TYPE_ONE nil :f_PLAYER_TYPE_TWO nil :f_PLAYER_TYPE_THREE nil} jproto))
    (put this :f_PLAYER_TYPE_ONE (PlayerType/jnew_2 "Player Type One" 0))
    (put this :f_PLAYER_TYPE_TWO (PlayerType/jnew_2 "Player Type Two" 1))
    (put this :f_PLAYER_TYPE_THREE (PlayerType/jnew_2 "Player Type Three" 2))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))

(set jproto @{})


