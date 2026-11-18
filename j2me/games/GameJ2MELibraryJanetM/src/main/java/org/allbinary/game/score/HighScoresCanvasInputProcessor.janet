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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/game/input/PlayerGameInput :as PlayerGameInput)
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class HighScoresCanvasInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_open nil)
(var jm_close nil)
(var jm_onPressGameKeyEvent nil)
(var jm_onDownGameKeyEvent nil)
(var jm_onUpGameKeyEvent nil)
(var jm_paint nil)
(var jm_getHighScoresCanvas nil)

    
(set jnew_1 (fn jnew_1 [_highScoresCanvas]
    (var this (table/setproto @{:jclass "HighScoresCanvasInputProcessor" :f_highScoresCanvas nil} jproto))
    
        (JR/superInit this (PlayerGameInput/jnew_3 (BasicArrayListD/jnew_0) (BasicArrayListD/jnew_0) (JR/i32 (- 1))))
        (set (this :f_highScoresCanvas) _highScoresCanvas)
    this))
    
(set jm_open (fn jm_open [this]
    nil))
    
(set jm_close (fn jm_close [this]
    nil))
    
(set jm_onPressGameKeyEvent (fn jm_onPressGameKeyEvent [this _gameKeyEvent]
        ((get PlayerGameInput/jproto :jm_onPressGameKeyEvent) this _gameKeyEvent)
        (:jm_update this)))
    
(set jm_onDownGameKeyEvent (fn jm_onDownGameKeyEvent [this _gameKeyEvent]
        ((get PlayerGameInput/jproto :jm_onDownGameKeyEvent) this _gameKeyEvent)
        (:jm_update this)))
    
(set jm_onUpGameKeyEvent (fn jm_onUpGameKeyEvent [this _gameKeyEvent]
        ((get PlayerGameInput/jproto :jm_onUpGameKeyEvent) this _gameKeyEvent)
        (:jm_update this)))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))
    
(set jm_getHighScoresCanvas (fn jm_getHighScoresCanvas [this]
    (label jreturn
        (return jreturn (this :f_highScoresCanvas)))))

(set jproto (table/setproto @{:jm_open jm_open :jm_close jm_close :jm_onPressGameKeyEvent jm_onPressGameKeyEvent :jm_onDownGameKeyEvent jm_onDownGameKeyEvent :jm_onUpGameKeyEvent jm_onUpGameKeyEvent :jm_paint jm_paint :jm_getHighScoresCanvas jm_getHighScoresCanvas} PlayerGameInput/jproto))


