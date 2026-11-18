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
# package org.allbinary.game

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class PlayerType
(var jproto nil)
(var jnew_2 nil)
(var jm_getId nil)
(var jm_getName nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_name _value]
    (var this (table/setproto @{:jclass "PlayerType" :f_id 0 :f_name nil} jproto))
    
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (set (this :f_name) _name)
        (set (this :f_id) _value)
    this))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_getName this)))))

(set jproto @{:jm_getId jm_getId :jm_getName jm_getName :jm_toString jm_toString})


