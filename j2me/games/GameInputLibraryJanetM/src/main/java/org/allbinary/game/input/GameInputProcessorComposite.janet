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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ./PlayerGameInput :as PlayerGameInput)

# Java class GameInputProcessorComposite
(var jproto nil)
(var jnew_2 nil)
(var jm_update nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_name _gameInputProcessorInterface]
    (var this (table/setproto @{:jclass "GameInputProcessorComposite" :f_name nil :f_gameInputProcessorInterface nil :f_NAME_LABEL nil} jproto))
    
    
    (put this :f_NAME_LABEL " GameInputProcessorInterface: ")
        (JR/superInit this (PlayerGameInput/jnew_3 (BasicArrayListD/jnew_0) (BasicArrayListD/jnew_0) (JR/i32 (- 1))))
        (set (this :f_name) _name)
        (set (this :f_gameInputProcessorInterface) _gameInputProcessorInterface)
    this))
    
(set jm_update (fn jm_update [this]
        (try
            (do
            (var _list (:jm_getGameKeyEventList this))
            (:jm_onInput (this :f_gameInputProcessorInterface) _list))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((get PlayerGameInput/jproto :jm_toString) this)) (this :f_NAME_LABEL)) (this :f_name)))))))

(set jproto (table/setproto @{:jm_update jm_update :jm_toString jm_toString} PlayerGameInput/jproto))


