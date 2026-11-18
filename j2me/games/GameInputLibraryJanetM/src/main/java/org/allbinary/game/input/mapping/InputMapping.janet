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
# package org.allbinary.game.input.mapping

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- InputToGameKeyMapping/jm_getNullInstance [& args] (JR/call jfile "./InputToGameKeyMapping" "jm_getNullInstance" args))

# Java class InputMapping
(var jproto nil)
(var jnew_0 nil)
(var jm_getTotalMapped nil)
(var jm_isDefaultNew nil)
(var jm_getDefault nil)
(var jm_removeAll nil)
(var jm_remove nil)
(var jm_addMapping nil)
(var jm_add nil)
(var jm_isMapped nil)
(var jm_getMappedInput nil)
(var jm_getHashtable nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InputMapping" :f_logUtil nil :f_commonStrings nil :f_hashtable nil :f_mappedList nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
    (put this :f_mappedList (BasicArrayListD/jnew_0))
    this))
    
(set jm_getTotalMapped (fn jm_getTotalMapped [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_hashtable))))))
    
(set jm_isDefaultNew (fn jm_isDefaultNew [this]
    (label jreturn
        (return jreturn false))))
    
(set jm_getDefault (fn jm_getDefault [this]
    (label jreturn
        (return jreturn (InputToGameKeyMapping/jm_getNullInstance)))))
    
(set jm_removeAll (fn jm_removeAll [this]
        (:jm_clear (this :f_hashtable))
        (:jm_clear (this :f_mappedList))))
    
(set jm_remove (fn jm_remove [this _input _mappedToInput]
        (var _stringBuffer (StringMaker/jnew_0))
        (var _stringUtil (StringUtil/jm_getInstance))
        (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_START_LABEL))
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil _input))
        (:jm_append _stringBuffer " == ")
        (:jm_append _stringBuffer (:jm_toString_1 _stringUtil _mappedToInput))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this "InputMapping::remove")
        (var _list (:jm_getMappedInput this _input))
        (if (:jm_contains _list _mappedToInput)
            (do
            (:jm_remove _list _mappedToInput)
            (:jm_remove (this :f_mappedList) _mappedToInput)
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer "Removed: ")
            (:jm_append _stringBuffer (:jm_toString_1 _stringUtil _input))
            (:jm_append _stringBuffer " == ")
            (:jm_append _stringBuffer (:jm_toString_1 _stringUtil _mappedToInput))
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this "InputMapping::remove"))
            (do
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer "Not Deleted: ")
            (:jm_append _stringBuffer (:jm_toString_1 _stringUtil _input))
            (:jm_append _stringBuffer " == ")
            (:jm_append _stringBuffer (:jm_toString_1 _stringUtil _mappedToInput))
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this "InputMapping::remove")))))
    
(set jm_addMapping (fn jm_addMapping [this _inputToGameKeyMapping]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_add (fn jm_add [this _input _mappedToInput]
        (var _list (:jm_getMappedInput this _input))
        (if (not (:jm_contains _list _mappedToInput))
            (do
            (:jm_add _list _mappedToInput)
            (:jm_add (this :f_mappedList) _mappedToInput)))))
    
(set jm_isMapped (fn jm_isMapped [this _input]
    (label jreturn
        (return jreturn (:jm_contains (this :f_mappedList) _input)))))
    
(set jm_getMappedInput (fn jm_getMappedInput [this _id]
    (label jreturn
        (var _mappingInputCanBeNullList (:jm_get (this :f_hashtable) _id))
        (if (nil? _mappingInputCanBeNullList)
            (do
            (var _list (BasicArrayListD/jnew_0))
            (:jm_put (this :f_hashtable) _id _list)
            (return jreturn _list)))
        (return jreturn _mappingInputCanBeNullList))))
    
(set jm_getHashtable (fn jm_getHashtable [this]
    (label jreturn
        (return jreturn (this :f_hashtable)))))

(set jproto @{:jm_getTotalMapped jm_getTotalMapped :jm_isDefaultNew jm_isDefaultNew :jm_getDefault jm_getDefault :jm_removeAll jm_removeAll :jm_remove jm_remove :jm_addMapping jm_addMapping :jm_add jm_add :jm_isMapped jm_isMapped :jm_getMappedInput jm_getMappedInput :jm_getHashtable jm_getHashtable})


