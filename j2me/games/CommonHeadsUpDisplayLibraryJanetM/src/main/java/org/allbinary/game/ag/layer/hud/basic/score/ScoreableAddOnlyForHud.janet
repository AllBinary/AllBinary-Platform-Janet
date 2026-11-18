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
# package org.allbinary.game.ag.layer.hud.basic.score

(import ../../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../../../org/allbinary/game/score/Scoreable :as Scoreable)

# Java class ScoreableAddOnlyForHud
(var jproto nil)
(var jnew_1 nil)
(var jm_removePoints nil)
(var jm_addPoints nil)
(var jm_getScoreHudWidget nil)

    
(set jnew_1 (fn jnew_1 [_scoreVectorGraphic]
    (var this (table/setproto @{:jclass "ScoreableAddOnlyForHud" :f_scoreHudWidget nil} jproto))
    
        (JR/superInit this (Scoreable/jnew_1 0))
        (set (this :f_scoreHudWidget) _scoreVectorGraphic)
        (:jm_set (:jm_getScoreHudWidget this) 0)
    this))
    
(set jm_removePoints (fn jm_removePoints [this _points]
    nil))
    
(set jm_addPoints (fn jm_addPoints [this _points]
        ((get Scoreable/jproto :jm_addPoints) this _points)
        (:jm_add (:jm_getScoreHudWidget this) _points)))
    
(set jm_getScoreHudWidget (fn jm_getScoreHudWidget [this]
    (label jreturn
        (return jreturn (this :f_scoreHudWidget)))))

(set jproto (table/setproto @{:jm_removePoints jm_removePoints :jm_addPoints jm_addPoints :jm_getScoreHudWidget jm_getScoreHudWidget} Scoreable/jproto))


