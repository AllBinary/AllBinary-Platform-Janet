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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/logic/util/cache/BaseCircularPool :as BaseCircularPool)
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class AllBinaryLayerCircularPool
(var jproto nil)
(var jnew_0 nil)
(var jm_initAllBinaryLayerCircularPool nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryLayerCircularPool"} jproto))
    (JR/superInit this (BaseCircularPool/jnew_0))
    this))
    
(set jm_initAllBinaryLayerCircularPool (fn jm_initAllBinaryLayerCircularPool [this _allbinaryLayerFactoryInterface _total]
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance _total))
        (set (this :f_OBJECT_ARRAY) (array/new-filled _total nil))
        (do
            (var _localIndex 0)
            (while (< _localIndex _total)
                (do
            (set ((this :f_OBJECT_ARRAY) _localIndex) (:jm_getInstance _allbinaryLayerFactoryInterface)))
                (do (set _localIndex (JR/i32 (+ _localIndex 1))))))))

(set jproto (table/setproto @{:jm_initAllBinaryLayerCircularPool jm_initAllBinaryLayerCircularPool} BaseCircularPool/jproto))


