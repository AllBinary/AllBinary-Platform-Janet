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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "./BasicTouchInputFactory" "jm_getInstance" args))

# Java class CancelTouchButtonInputFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getCancel nil)

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
    (var this (table/setproto @{:jclass "CancelTouchButtonInputFactory" :f_cancelInputArray nil} jproto))
    (put this :f_cancelInputArray (array/new-filled ((InputFactory/jm_getInstance) :f_MAX) nil))
        (var _basicTouchInputFactory (BasicTouchInputFactory/jm_getInstance))
        (do
            (var _index (JR/i32 (- (length (this :f_cancelInputArray)) 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_cancelInputArray) _index) (_basicTouchInputFactory :f_NONE)))
                (do (set _index (JR/i32 (- _index 1))))))
        (set ((this :f_cancelInputArray) (JR/className (_basicTouchInputFactory :f_UP))) (_basicTouchInputFactory :f_DOWN))
        (set ((this :f_cancelInputArray) (JR/className (_basicTouchInputFactory :f_DOWN))) (_basicTouchInputFactory :f_UP))
        (set ((this :f_cancelInputArray) (JR/className (_basicTouchInputFactory :f_LEFT))) (_basicTouchInputFactory :f_RIGHT))
        (set ((this :f_cancelInputArray) (JR/className (_basicTouchInputFactory :f_RIGHT))) (_basicTouchInputFactory :f_LEFT))
    this))
    
(set jm_getCancel (fn jm_getCancel [this _touchButtonInput]
    (label jreturn
        (return jreturn ((this :f_cancelInputArray) (:jm_getId _touchButtonInput))))))

(set jproto @{:jm_getCancel jm_getCancel})


