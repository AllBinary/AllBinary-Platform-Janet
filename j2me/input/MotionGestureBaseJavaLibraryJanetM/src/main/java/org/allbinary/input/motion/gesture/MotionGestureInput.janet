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
(import ../../../../../org/allbinary/game/input/Input :as Input)
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))

# Java class MotionGestureInput
(var jproto nil)
(var jnew_2 nil)

    
(set jnew_2 (fn jnew_2 [_id _name]
    (var this (table/setproto @{:jclass "MotionGestureInput"} jproto))
        (JR/superInit this (Input/jnew_2 _id _name))
        (var _inputFactory (InputFactory/jm_getInstance))
        (:jm_add _inputFactory (:jm_getId this) this)
    this))

(set jproto (table/setproto @{} Input/jproto))


