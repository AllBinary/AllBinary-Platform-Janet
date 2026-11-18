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
# package org.allbinary.game.configuration.persistance

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GameDifficultyFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setLevel nil)
(var jm_getLevel nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameDifficultyFactory" :f_level 0} jproto))
    (put this :f_level 0)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setLevel (fn jm_setLevel [this _level]
        (set (this :f_level) _level)))
    
(set jm_getLevel (fn jm_getLevel [this]
    (label jreturn
        (return jreturn (this :f_level)))))

(set jproto @{:jm_setLevel jm_setLevel :jm_getLevel jm_getLevel})


