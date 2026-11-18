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
# package org.allbinary.android.input.motion

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnalogLocationInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory" "jm_getInstance" args))
(import ./AnalogControllerVisitor :as AnalogControllerVisitor)

# Java class AllAnalogControllerVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_process nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllAnalogControllerVisitor"} jproto))
    (JR/superInit this (AnalogControllerVisitor/jnew_0))
    this))

    
(set jm_process (fn jm_process [this _allbinaryLayerManager _analogLocationInputProcessor]
        (var _analogLocationInputList (:jm_getList (AnalogLocationInputFactory/jm_getInstance)))
        (var _analogLocationInput nil)
        (do
            (var _index (JR/i32 (- (:jm_size _analogLocationInputList) 1)))
            (while (>= _index 0)
                (do
            (set _analogLocationInput (:jm_get _analogLocationInputList _index))
            (:jm_process _analogLocationInputProcessor _allbinaryLayerManager _analogLocationInput))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_process jm_process} AnalogControllerVisitor/jproto))


