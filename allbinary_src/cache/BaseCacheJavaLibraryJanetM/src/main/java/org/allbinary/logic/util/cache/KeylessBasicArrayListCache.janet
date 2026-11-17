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
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ./IndexedBasicArrayListCache :as IndexedBasicArrayListCache)

# Java class KeylessBasicArrayListCache
(var jproto nil)
(var jnew_0 nil)
(var jm_get nil)
(var jm_clear nil)
(var jm_log nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "KeylessBasicArrayListCache" :f_logUtil nil :f_basicArrayListUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_basicArrayListUtil (BasicArrayListUtil/jm_getInstance))
    this))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (try
            (do
            (if (>= (this :f_index) (:jm_size (this :f_list)))
                (do
                (:jm_addDefault this)))
            (var _list (:jm_getAt this (do (def jold (this :f_index)) (set (this :f_index) (JR/i32 (+ (this :f_index) 1))) jold)))
            (return jreturn _list))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_GET) _e)
            (return jreturn (:jm_getImmutableInstance (this :f_basicArrayListUtil)))))))))
    
(set jm_clear (fn jm_clear [this]
        (IndexedBasicArrayListCache/jm_clear this)
        (var _basicArrayList nil)
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_list)) 1)))
            (while (>= _index 0)
                (do
            (set _basicArrayList (((this :f_list) :f_objectArray) _index))
            (:jm_clear _basicArrayList))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_log (fn jm_log [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "S: ")
        (:jm_appendint _stringBuffer (:jm_size (this :f_list)))
        (var _S_LABEL " s: ")
        (var _basicArrayList nil)
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_list)) 1)))
            (while (>= _index 0)
                (do
            (:jm_append _stringBuffer _S_LABEL)
            (set _basicArrayList (((this :f_list) :f_objectArray) _index))
            (:jm_appendint _stringBuffer (:jm_size _basicArrayList)))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_get jm_get :jm_clear jm_clear :jm_log jm_log} IndexedBasicArrayListCache/jproto))


