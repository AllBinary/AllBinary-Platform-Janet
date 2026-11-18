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
# package org.allbinary.game.state

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GameState
(var jproto nil)
(var jnew_2 nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_name _state]
    (var this (table/setproto @{:jclass "GameState" :f_name nil} jproto))
    
        (set (this :f_name) _name)
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto @{:jm_toString jm_toString})


