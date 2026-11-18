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
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/canvas/Processor :as Processor)

# Java class FormPlayerGameInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_playerGameInputCompositeInterface]
    (var this (table/setproto @{:jclass "FormPlayerGameInputProcessor" :f_playerGameInputCompositeInterface nil} jproto))
    
    (JR/superInit this (Processor/jnew_0))
        (set (this :f_playerGameInputCompositeInterface) _playerGameInputCompositeInterface)
    this))
    
(set jm_process (fn jm_process [this]
        (JR/className (:jm_getPlayerGameInput (this :f_playerGameInputCompositeInterface)))))

(set jproto (table/setproto @{:jm_process jm_process} Processor/jproto))


