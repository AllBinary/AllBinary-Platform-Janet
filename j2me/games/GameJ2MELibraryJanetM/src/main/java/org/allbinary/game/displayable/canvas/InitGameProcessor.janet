#
# AllBinary Open License Version 1
# Copyright (c) 2026 AllBinary
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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/canvas/Processor :as Processor)
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))

# Java class InitGameProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_gameCanvas]
    (var this (table/setproto @{:jclass "InitGameProcessor" :f_gameCanvas nil} jproto))
    
    (JR/superInit this (Processor/jnew_0))
        (set (this :f_gameCanvas) _gameCanvas)
    this))
    
(set jm_process (fn jm_process [this]
        (if (:jm_isInGame (ProgressCanvasFactory/jm_getInstance))
            (do
            (:jm_setProcessGameProcessorInit (this :f_gameCanvas))))))

(set jproto (table/setproto @{:jm_process jm_process} Processor/jproto))


