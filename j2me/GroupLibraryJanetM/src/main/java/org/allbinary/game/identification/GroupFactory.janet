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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- Group/jnew_2 [& args] (JR/call jfile "./Group" "jnew_2" args))

# Java class GroupFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getNextGroup nil)
(var jm_getNextGroupByName nil)
(var jm_init nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GroupFactory" :f_logUtil nil :f_NULL_GROUP_ARRAY nil :f_list nil :f_index 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_NULL_GROUP_ARRAY (array/new-filled 0 nil))
    (put this :f_list (BasicArrayListD/jnew_0))
    (put this :f_index 0)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getNextGroup (fn jm_getNextGroup [this]
    (label jreturn
        (var _group (((this :f_list) :f_objectArray) (this :f_index)))
        (set (this :f_index) (JR/i32 (+ (this :f_index) 1)))
        (return jreturn _group))))
    
(set jm_getNextGroupByName (fn jm_getNextGroupByName [this _name]
    (label jreturn
        (var _group (:jm_getNextGroup this))
        (:jm_setName _group _name)
        (return jreturn _group))))
    
(set jm_init (fn jm_init [this _groups _nameArray]
        (var _stringMaker (StringMaker/jnew_0))
        (var _stringUtil (StringUtil/jm_getInstance))
        (var _TEAM "Team ")
        (:jm_clear (this :f_list))
        (set (this :f_index) 0)
        (var _size (:jm_size (this :f_list)))
        (var _name nil)
        (do
            (while (< _size _groups)
                (do
            (set _name (_stringUtil :f_EMPTY_STRING))
            (if (< _size (length _nameArray))
                (do
                (set _name (_nameArray _size)))
                (do
                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                (set _name (:jm_toString (:jm_appendint (:jm_append _stringMaker _TEAM) _size)))))
            (:jm_add (this :f_list) (Group/jnew_2 _name (JR/i16 (JR/i32 (+ _size 3)))))
            (set _size (JR/i32 (+ _size 1))))))))

(set jproto @{:jm_getNextGroup jm_getNextGroup :jm_getNextGroupByName jm_getNextGroupByName :jm_init jm_init})


