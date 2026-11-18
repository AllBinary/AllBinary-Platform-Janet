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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/canvas/Processor :as Processor)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class StartIntermissionProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_gameCanvas]
    (var this (table/setproto @{:jclass "StartIntermissionProcessor" :f_logUtil nil :f_commonStrings nil :f_gameCanvas nil :f_WAIT 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    (put this :f_WAIT 5000)
    (JR/superInit this (Processor/jnew_0))
        (set (this :f_gameCanvas) _gameCanvas)
    this))
    
(set jm_process (fn jm_process [this]
        (if (JR/className (JR/className (:jm_getStartIntermissionInterface (this :f_gameCanvas))))
            (do
            (:jm_putF (this :f_logUtil) "Intermission End" this ((this :f_commonStrings) :f_PROCESS))
            (JR/className (:jm_getStartIntermissionInterface (this :f_gameCanvas)))))))

(set jproto (table/setproto @{:jm_process jm_process} Processor/jproto))


