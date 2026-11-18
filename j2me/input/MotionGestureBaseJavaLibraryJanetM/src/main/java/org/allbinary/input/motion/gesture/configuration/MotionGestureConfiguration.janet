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
# package org.allbinary.input.motion.gesture.configuration

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- MotionGestureToMotionGestureActionAssociation/jnew_2 [& args] (JR/call jfile "../../../../../../org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation" "jnew_2" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class MotionGestureConfiguration
(var jproto nil)
(var jnew_0 nil)
(var jm_addMotionGestureAction nil)
(var jm_clearMotionGestureAction nil)
(var jm_getAssociateCommandActionsList nil)
(var jm_isDiagonalMotionGestureAllowed nil)
(var jm_isExecutingActionsAllowed nil)
(var jm_setExecutingActionsAllowed nil)
(var jm_setDiagonalMotionGestureAllowed nil)
(var jm_getDiagonalTolerance nil)
(var jm_setDiagonalTolerance nil)
(var jm_getMinimumMotionGesture nil)
(var jm_setMinimumMotionGesture nil)
(var jm_getButton nil)
(var jm_setButton nil)
(var jm_getColor nil)
(var jm_setColor nil)
(var jm_getMouseButtonMask nil)
(var jm_setMouseButtonMask nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MotionGestureConfiguration" :f_diagonalMotionGestureAllowed false :f_diagonalTolerance 0 :f_minimumMotionGesture 0 :f_button nil :f_color nil :f_executingActions false :f_mouseButtonMask 0 :f_activeCommands nil} jproto))
    (put this :f_diagonalMotionGestureAllowed true)
    (put this :f_diagonalTolerance 7)
    (put this :f_minimumMotionGesture 9)
    (put this :f_button ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_color ((BasicColorFactory/jm_getInstance) :f_BLUE))
    (put this :f_executingActions true)
    (put this :f_mouseButtonMask 0)
    (put this :f_activeCommands (BasicArrayListD/jnew_0))
    this))
    
(set jm_addMotionGestureAction (fn jm_addMotionGestureAction [this _list _commandAction]
        (:jm_add (this :f_activeCommands) (MotionGestureToMotionGestureActionAssociation/jnew_2 _list _commandAction))))
    
(set jm_clearMotionGestureAction (fn jm_clearMotionGestureAction [this]
        (:jm_clear (this :f_activeCommands))))
    
(set jm_getAssociateCommandActionsList (fn jm_getAssociateCommandActionsList [this]
    (label jreturn
        (return jreturn (this :f_activeCommands)))))
    
(set jm_isDiagonalMotionGestureAllowed (fn jm_isDiagonalMotionGestureAllowed [this]
    (label jreturn
        (return jreturn (this :f_diagonalMotionGestureAllowed)))))
    
(set jm_isExecutingActionsAllowed (fn jm_isExecutingActionsAllowed [this]
    (label jreturn
        (return jreturn (this :f_executingActions)))))
    
(set jm_setExecutingActionsAllowed (fn jm_setExecutingActionsAllowed [this _executingActionAllowed]
        (set (this :f_executingActions) _executingActionAllowed)))
    
(set jm_setDiagonalMotionGestureAllowed (fn jm_setDiagonalMotionGestureAllowed [this _diagonalMotionGestureAllowed]
        (set (this :f_diagonalMotionGestureAllowed) _diagonalMotionGestureAllowed)))
    
(set jm_getDiagonalTolerance (fn jm_getDiagonalTolerance [this]
    (label jreturn
        (return jreturn (this :f_diagonalTolerance)))))
    
(set jm_setDiagonalTolerance (fn jm_setDiagonalTolerance [this _diagonalTolerance]
        (set (this :f_diagonalTolerance) _diagonalTolerance)))
    
(set jm_getMinimumMotionGesture (fn jm_getMinimumMotionGesture [this]
    (label jreturn
        (return jreturn (this :f_minimumMotionGesture)))))
    
(set jm_setMinimumMotionGesture (fn jm_setMinimumMotionGesture [this _minimumMotionGesture]
        (set (this :f_minimumMotionGesture) _minimumMotionGesture)))
    
(set jm_getButton (fn jm_getButton [this]
    (label jreturn
        (return jreturn (this :f_button)))))
    
(set jm_setButton (fn jm_setButton [this _button]
        (set (this :f_button) _button)))
    
(set jm_getColor (fn jm_getColor [this]
    (label jreturn
        (return jreturn (this :f_color)))))
    
(set jm_setColor (fn jm_setColor [this _color]
        (set (this :f_color) _color)))
    
(set jm_getMouseButtonMask (fn jm_getMouseButtonMask [this]
    (label jreturn
        (return jreturn (this :f_mouseButtonMask)))))
    
(set jm_setMouseButtonMask (fn jm_setMouseButtonMask [this _mouseButtonMask]
        (set (this :f_mouseButtonMask) _mouseButtonMask)))

(set jproto @{:jm_addMotionGestureAction jm_addMotionGestureAction :jm_clearMotionGestureAction jm_clearMotionGestureAction :jm_getAssociateCommandActionsList jm_getAssociateCommandActionsList :jm_isDiagonalMotionGestureAllowed jm_isDiagonalMotionGestureAllowed :jm_isExecutingActionsAllowed jm_isExecutingActionsAllowed :jm_setExecutingActionsAllowed jm_setExecutingActionsAllowed :jm_setDiagonalMotionGestureAllowed jm_setDiagonalMotionGestureAllowed :jm_getDiagonalTolerance jm_getDiagonalTolerance :jm_setDiagonalTolerance jm_setDiagonalTolerance :jm_getMinimumMotionGesture jm_getMinimumMotionGesture :jm_setMinimumMotionGesture jm_setMinimumMotionGesture :jm_getButton jm_getButton :jm_setButton jm_setButton :jm_getColor jm_getColor :jm_setColor jm_setColor :jm_getMouseButtonMask jm_getMouseButtonMask :jm_setMouseButtonMask jm_setMouseButtonMask})


