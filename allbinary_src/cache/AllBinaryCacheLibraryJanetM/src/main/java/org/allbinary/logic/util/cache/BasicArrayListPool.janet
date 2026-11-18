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
(import ./AbstractArrayListPool :as AbstractArrayListPool)

# Java class BasicArrayListPool
(var jproto nil)
(var jnew_1 nil)
(var jm_clear nil)
(var jm_remove nil)
(var jm_addAll nil)
(var jm_releaseUsedBackToPool nil)

    
(set jnew_1 (fn jnew_1 [_cacheableInterfaceFactoryInterface]
    (var this (table/setproto @{:jclass "BasicArrayListPool"} jproto))
        (JR/superInit this (AbstractArrayListPool/jnew_1 _cacheableInterfaceFactoryInterface))
    this))
    
(set jm_clear (fn jm_clear [this]
        (JR/className (this :f_buffers))))
    
(set jm_remove (fn jm_remove [this _key]
    (label jreturn
        (var _size (JR/className (this :f_buffers)))
        (if (> _size 0)
            (do
            (return jreturn (JR/className (this :f_buffers))))
            (do
            (return jreturn (:jm_getInstance (this :f_cacheableInterfaceFactoryInterface) _key)))))))
    
(set jm_addAll (fn jm_addAll [this _usedList]
        (do
            (var _index (:jm_size _usedList))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (var _anyType ((_usedList :f_objectArray) _index))
            (:jm_add this _anyType))))
        (:jm_clear _usedList)))
    
(set jm_releaseUsedBackToPool (fn jm_releaseUsedBackToPool [this _usedList]
        (do
            (var _index (:jm_size _usedList))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (var _list ((_usedList :f_objectArray) _index))
            (if (= (:jm_size _list) 0)
                (do
                (:jm_removeAt _usedList _index)
                (:jm_add this _list))))))))

(set jproto (table/setproto @{:jm_clear jm_clear :jm_remove jm_remove :jm_addAll jm_addAll :jm_releaseUsedBackToPool jm_releaseUsedBackToPool} AbstractArrayListPool/jproto))


