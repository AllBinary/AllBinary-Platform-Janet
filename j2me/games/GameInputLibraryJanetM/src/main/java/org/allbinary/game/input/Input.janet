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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class Input
(var jproto nil)
(var jnew_2 nil)
(var jm_getId nil)
(var jm_setId nil)
(var jm_getName nil)
(var jm_setName nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_id _name]
    (var this (table/setproto @{:jclass "Input" :f_id 0 :f_name nil} jproto))
    
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (:jm_setId this _id)
        (:jm_setName this _name)
    this))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))
    
(set jm_setId (fn jm_setId [this _key]
        (set (this :f_id) _key)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_setName (fn jm_setName [this _keyName]
        (set (this :f_name) _keyName)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Name: ")
        (:jm_append _stringBuffer (:jm_getName this))
        (:jm_append _stringBuffer " Id: ")
        (:jm_appendint _stringBuffer (:jm_getId this))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getId jm_getId :jm_setId jm_setId :jm_getName jm_getName :jm_setName jm_setName :jm_toString jm_toString})


