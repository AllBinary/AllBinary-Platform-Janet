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
# package org.allbinary.graphics.displayable.screen

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/canvas/Processor :as Processor)
(defn- ScreenRepaintUtil/jm_repaint [& args] (JR/call jfile "./ScreenRepaintUtil" "jm_repaint" args))

# Java class ScreenRepaintProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_displayable]
    (var this (table/setproto @{:jclass "ScreenRepaintProcessor" :f_displayable nil} jproto))
    
    (JR/superInit this (Processor/jnew_0))
        (set (this :f_displayable) _displayable)
    this))
    
(set jm_process (fn jm_process [this]
        (ScreenRepaintUtil/jm_repaint (this :f_displayable))))

(set jproto (table/setproto @{:jm_process jm_process} Processor/jproto))


