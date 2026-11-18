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
# package org.allbinary.input.gyro

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- MotionGestureInput/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/input/motion/gesture/MotionGestureInput" "jnew_2" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class OrientationMotionGestureFactory
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
    (var this (table/setproto @{:jclass "OrientationMotionGestureFactory" :f_LEFT nil :f_RIGHT nil :f_UP nil :f_DOWN nil :f_ROLL_LEFT nil :f_ROLL_RIGHT nil} jproto))
    
    
    
    
    
    
        (var _MAX ((InputFactory/jm_getInstance) :f_MAX))
        (set (this :f_LEFT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 20)) "Left Orient"))
        (set (this :f_RIGHT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 21)) "Right Orient"))
        (set (this :f_UP) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 22)) "Up Orient"))
        (set (this :f_DOWN) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 23)) "Down Orient"))
        (set (this :f_ROLL_LEFT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 24)) "Roll Left"))
        (set (this :f_ROLL_RIGHT) (MotionGestureInput/jnew_2 (JR/i32 (- _MAX 25)) "Roll Right"))
    this))

(set jproto @{})


