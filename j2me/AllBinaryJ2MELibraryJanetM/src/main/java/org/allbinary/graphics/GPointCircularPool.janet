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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/logic/util/cache/BaseCircularPool :as BaseCircularPool)
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(defn- CustomGPoint/jm_getInstance3 [& args] (JR/call jfile "./CustomGPoint" "jm_getInstance3" args))

# Java class GPointCircularPool
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_size]
    (var this (table/setproto @{:jclass "GPointCircularPool"} jproto))
    (JR/superInit this (BaseCircularPool/jnew_0))
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance _size))
        (set (this :f_OBJECT_ARRAY) (array/new-filled _size nil))
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_OBJECT_ARRAY) _index) (CustomGPoint/jm_getInstance3 0 0)))
                (do (set _index (JR/i32 (- _index 1))))))
    this))

(set jproto (table/setproto @{} BaseCircularPool/jproto))


