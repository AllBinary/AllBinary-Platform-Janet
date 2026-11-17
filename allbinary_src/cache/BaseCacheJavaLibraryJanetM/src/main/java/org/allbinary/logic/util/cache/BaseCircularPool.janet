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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- CircularIndexUtil/jstatic_NULL_CIRCULAR_INDEX_UTIL [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jstatic_NULL_CIRCULAR_INDEX_UTIL" args))

# Java class BaseCircularPool
(var jproto nil)
(var jnew_0 nil)
(var jm_getNextInstance nil)
(var jm_init nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseCircularPool" :f_circularIndexUtil nil :f_OBJECT_ARRAY nil} jproto))
    (put this :f_circularIndexUtil (CircularIndexUtil/jstatic_NULL_CIRCULAR_INDEX_UTIL))
    (put this :f_OBJECT_ARRAY ((NullUtil/jm_getInstance) :f_NULL_OBJECT_ARRAY))
    this))

    
(set jm_getNextInstance (fn jm_getNextInstance [this]
    (label jreturn
        (var _anyType ((this :f_OBJECT_ARRAY) (:jm_getIndex (this :f_circularIndexUtil))))
        (:jm_next (this :f_circularIndexUtil))
        (return jreturn _anyType))))
    
(set jm_init (fn jm_init [this _allBinaryObjectFactoryInterface]
        (:jm_setIndex (this :f_circularIndexUtil) 0)
        (var _size (:jm_getSize (this :f_circularIndexUtil)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_OBJECT_ARRAY) _index) (:jm_getInstance _allBinaryObjectFactoryInterface)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_getInstance (fn jm_getInstance [this _index]
    (label jreturn
        (return jreturn ((this :f_OBJECT_ARRAY) _index)))))

(set jproto @{:jm_getNextInstance jm_getNextInstance :jm_init jm_init :jm_getInstance jm_getInstance})


