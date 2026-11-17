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
# package org.allbinary.logic.util.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/logic/util/cache/BaseCircularPool :as BaseCircularPool)
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class AllBinaryEventCircularPool
(var jproto nil)
(var jnew_1 nil)
(var jm_initAllBinaryEventCircularPool nil)

    
(set jnew_1 (fn jnew_1 [_max]
    (var this (table/setproto @{:jclass "AllBinaryEventCircularPool"} jproto))
        (set (this :f_OBJECT_ARRAY) (array/new-filled _max nil))
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance _max))
    this))
    
(set jm_initAllBinaryEventCircularPool (fn jm_initAllBinaryEventCircularPool [this _allBinaryEventObjectFactoryInterface]
        (JR/className (this :f_circularIndexUtil))
        (var _size (JR/className (this :f_circularIndexUtil)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set ((this :f_OBJECT_ARRAY) _index) (:jm_getInstance _allBinaryEventObjectFactoryInterface)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_initAllBinaryEventCircularPool jm_initAllBinaryEventCircularPool} BaseCircularPool/jproto))


