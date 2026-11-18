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

# Java class GameInfoData
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInfoData" :f_GAME_TYPE nil :f_GAME_MODE nil :f_PLAYER_TYPE nil :f_HIGHEST_LEVEL nil :f_CURRENT_LEVEL nil :f_SOFTWARE_INFORMATION nil} jproto))
    (put this :f_GAME_TYPE "GAME_TYPE")
    (put this :f_GAME_MODE "GAME_MODE")
    (put this :f_PLAYER_TYPE "PLAYER_TYPE")
    (put this :f_HIGHEST_LEVEL "HIGHEST_LEVEL")
    (put this :f_CURRENT_LEVEL "CURRENT_LEVEL")
    (put this :f_SOFTWARE_INFORMATION "SOFTWARE_INFORMATION")
    this))

(set jproto @{})


