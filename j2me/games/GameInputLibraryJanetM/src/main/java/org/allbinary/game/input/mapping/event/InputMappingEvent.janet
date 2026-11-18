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
# package org.allbinary.game.input.mapping.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- InputToGameKeyMapping/jm_getNullInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" "jm_getNullInstance" args))
(import ../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class InputMappingEvent
(var jproto nil)
(var jnew_1 nil)
(var jm_setInputToGameKeyMapping nil)
(var jm_getInputToGameKeyMapping nil)

    
(set jnew_1 (fn jnew_1 [_anyType]
    (var this (table/setproto @{:jclass "InputMappingEvent" :f_inputToGameKeyMapping nil} jproto))
    (put this :f_inputToGameKeyMapping (InputToGameKeyMapping/jm_getNullInstance))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
    this))
    
(set jm_setInputToGameKeyMapping (fn jm_setInputToGameKeyMapping [this _inputToGameKeyMapping]
        (set (this :f_inputToGameKeyMapping) _inputToGameKeyMapping)))
    
(set jm_getInputToGameKeyMapping (fn jm_getInputToGameKeyMapping [this]
    (label jreturn
        (return jreturn (this :f_inputToGameKeyMapping)))))

(set jproto (table/setproto @{:jm_setInputToGameKeyMapping jm_setInputToGameKeyMapping :jm_getInputToGameKeyMapping jm_getInputToGameKeyMapping} AllBinaryEventObject/jproto))


