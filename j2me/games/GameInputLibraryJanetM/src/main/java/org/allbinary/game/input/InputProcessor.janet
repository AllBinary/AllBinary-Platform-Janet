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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameInputStrings/jm_getInstance [& args] (JR/call jfile "./GameInputStrings" "jm_getInstance" args))

# Java class InputProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_keyPressedByDevice nil)
(var jm_keyReleasedByDevice nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InputProcessor" :f_gameInputStrings nil} jproto))
    (put this :f_gameInputStrings (GameInputStrings/jm_getInstance))
    this))

    
(set jm_keyPressedByDevice (fn jm_keyPressedByDevice [this _keyCode _deviceId]
    nil))
    
(set jm_keyReleasedByDevice (fn jm_keyReleasedByDevice [this _canvas _keyCode _deviceId]
    nil))

(set jproto @{:jm_keyPressedByDevice jm_keyPressedByDevice :jm_keyReleasedByDevice jm_keyReleasedByDevice})


