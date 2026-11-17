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
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./BaseBasicArrayListCache :as BaseBasicArrayListCache)

# Java class IndexedBasicArrayListCache
(var jproto nil)
(var jnew_0 nil)
(var jm_createCache nil)
(var jm_init nil)
(var jm_getAt nil)
(var jm_addDefault nil)
(var jm_addObject nil)
(var jm_add nil)
(var jm_addArray nil)
(var jm_clear nil)

    
(set jm_createCache (fn jm_createCache [_size]
    (label jreturn
        (var _indexedBasicArrayListCache (jnew_0))
        (:jm_init _indexedBasicArrayListCache _size)
        (return jreturn _indexedBasicArrayListCache))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "IndexedBasicArrayListCache" :f_commonStrings nil :f_size 0 :f_index 0} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_size 0)
    (put this :f_index 0)
    this))
    
(set jm_init (fn jm_init [this _size]
        (if (< (this :f_size) _size)
            (do
            (JR/className (this :f_list))
            (do
                (var _index (JR/i32 (- _size 1)))
                (while (>= _index (this :f_size))
                    (do
                (:jm_addDefault this))
                    (do (set _index (JR/i32 (- _index 1))))))
            (set (this :f_size) _size)))))
    
(set jm_getAt (fn jm_getAt [this _index]
    (label jreturn
        (return jreturn (((this :f_list) :f_objectArray) _index)))))
    
(set jm_addDefault (fn jm_addDefault [this]
    nil))
    
(set jm_addObject (fn jm_addObject [this _anyType]
        (JR/className (this :f_list))))
    
(set jm_add (fn jm_add [this _cacheableInterface]
        (JR/className (this :f_list))))
    
(set jm_addArray (fn jm_addArray [this _cacheableInterfaces]
        (error (JR/newException "Exception" "No Imple"))))
    
(set jm_clear (fn jm_clear [this]
        (set (this :f_index) 0)))

(set jproto (table/setproto @{:jm_init jm_init :jm_getAt jm_getAt :jm_addDefault jm_addDefault :jm_addObject jm_addObject :jm_add jm_add :jm_addArray jm_addArray :jm_clear jm_clear} BaseBasicArrayListCache/jproto))


