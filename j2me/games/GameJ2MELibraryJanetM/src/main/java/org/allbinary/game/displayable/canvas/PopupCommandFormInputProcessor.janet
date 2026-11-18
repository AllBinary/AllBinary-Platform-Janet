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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CommandFormInputProcessor :as CommandFormInputProcessor)

# Java class PopupCommandFormInputProcessor
(var jproto nil)
(var jnew_5 nil)
(var jm_processInput nil)
(var jm_processMotionInput nil)

    
(set jnew_5 (fn jnew_5 [_gameKeyEventList _playerInputId _gameCanvas _form _popupMenuInputProcessor]
    (var this (table/setproto @{:jclass "PopupCommandFormInputProcessor"} jproto))
        (JR/superInit this (CommandFormInputProcessor/jnew_4 _gameKeyEventList _playerInputId _gameCanvas _form))
    this))
    
(set jm_processInput (fn jm_processInput [this _key]
    (label jreturn
        (return jreturn ((get CommandFormInputProcessor/jproto :jm_processInput) this _key)))))
    
(set jm_processMotionInput (fn jm_processMotionInput [this _motionGestureEvent]
        ((get CommandFormInputProcessor/jproto :jm_processMotionInput) this _motionGestureEvent)))

(set jproto (table/setproto @{:jm_processInput jm_processInput :jm_processMotionInput jm_processMotionInput} CommandFormInputProcessor/jproto))


