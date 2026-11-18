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
# package org.allbinary.input.motion.gesture

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- MotionGestureInput/jnew_2 [& args] (JR/call jfile "./MotionGestureInput" "jnew_2" args))

# Java class TouchMotionGestureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchMotionGestureFactory" :f_LEFT nil :f_RIGHT nil :f_UP nil :f_DOWN nil :f_PRESSED nil :f_RELEASED nil :f_DIAGONAL_DOWN_RIGHT nil :f_DIAGONAL_DOWN_LEFT nil :f_DIAGONAL_UP_RIGHT nil :f_DIAGONAL_UP_LEFT nil :f_SCROLL_UP nil :f_SCROLL_DOWN nil :f_NO_MOTION nil :f_LAST_MOTION nil} jproto))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        (var _MAX ((InputFactory/jm_getInstance) :f_MAX))
        (set (this :f_LEFT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 3)) "Left Touch"))
        (set (this :f_RIGHT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 4)) "Right Touch"))
        (set (this :f_UP) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 5)) "Up Touch"))
        (set (this :f_DOWN) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 6)) "Down Touch"))
        (set (this :f_PRESSED) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 7)) "Screen Press"))
        (set (this :f_RELEASED) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 8)) "Released"))
        (set (this :f_DIAGONAL_DOWN_RIGHT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 9)) "Diagonal Dn R"))
        (set (this :f_DIAGONAL_DOWN_LEFT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 10)) "Diagonal Dn L"))
        (set (this :f_DIAGONAL_UP_RIGHT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 11)) "Diagonal Up R"))
        (set (this :f_DIAGONAL_UP_LEFT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 12)) "Diagonal Up L"))
        (set (this :f_SCROLL_UP) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 13)) "Scroll Up"))
        (set (this :f_SCROLL_DOWN) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 14)) "Scroll Down"))
        (set (this :f_NO_MOTION) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 2)) "No Motion"))
        (set (this :f_LAST_MOTION) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 19)) "Last Motion"))
    this))

(set jproto @{})


