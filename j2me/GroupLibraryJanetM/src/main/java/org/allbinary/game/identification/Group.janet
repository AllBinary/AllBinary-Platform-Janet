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
# package org.allbinary.game.identification

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- GroupCommonFactory/jm_getInstance [& args] (JR/call jfile "./GroupCommonFactory" "jm_getInstance" args))

# Java class Group
(var jproto nil)
(var jnew_2 nil)
(var jm_getGroupName nil)
(var jm_setName nil)
(var jm_getGroupId nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_teamName _teamId]
    (var this (table/setproto @{:jclass "Group" :f_name nil :f_teamId 0 :f_string nil} jproto))
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    
    (put this :f_string ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (set (this :f_teamId) _teamId)
        (:jm_setName this _teamName)
    this))
    
(set jm_getGroupName (fn jm_getGroupName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_name) _name)
        (var _groupCommonFactory (GroupCommonFactory/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (_groupCommonFactory :f_GROUP_NAME_LABEL))
        (:jm_append _stringBuffer (this :f_name))
        (:jm_append _stringBuffer (_groupCommonFactory :f_ID_LABEL))
        (:jm_appendshort _stringBuffer (this :f_teamId))
        (set (this :f_string) (:jm_toString _stringBuffer))))
    
(set jm_getGroupId (fn jm_getGroupId [this]
    (label jreturn
        (return jreturn (this :f_teamId)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (this :f_string)))))

(set jproto @{:jm_getGroupName jm_getGroupName :jm_setName jm_setName :jm_getGroupId jm_getGroupId :jm_toString jm_toString})


