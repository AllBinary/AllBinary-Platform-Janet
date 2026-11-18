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
(defn- DownGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" "jm_getInstance" args))
(defn- UpGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" "jm_getInstance" args))

# Java class GameEventHandlerUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_removeAllListeners nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameEventHandlerUtil"} jproto))
    this))

    
(set jm_removeAllListeners (fn jm_removeAllListeners []
        (:jm_removeAllListeners (UpGameKeyEventHandler/jm_getInstance))
        (:jm_removeAllListeners (DownGameKeyEventHandler/jm_getInstance))))

(set jproto @{})


