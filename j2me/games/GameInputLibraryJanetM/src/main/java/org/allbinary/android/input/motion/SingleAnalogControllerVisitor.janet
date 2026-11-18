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

# Java class SingleAnalogControllerVisitor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_playerInputId]
    (var this (table/setproto @{:jclass "SingleAnalogControllerVisitor" :f_playerInputId 0} jproto))
    
    (JR/superInit this (AnalogControllerVisitor/jnew_0))
        (set (this :f_playerInputId) _playerInputId)
    this))
    
(set jm_process (fn jm_process [this _allbinaryLayerManager _analogLocationInputProcessor]
        (var _analogLocationInput (:jm_getInstanceForPlayer (AnalogLocationInputFactory/jm_getInstance) (this :f_playerInputId)))
        (:jm_process _analogLocationInputProcessor _allbinaryLayerManager _analogLocationInput)))

(set jproto (table/setproto @{:jm_process jm_process} AnalogControllerVisitor/jproto))


