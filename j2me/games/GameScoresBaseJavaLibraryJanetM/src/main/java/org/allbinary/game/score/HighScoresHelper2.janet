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
(defn- CircularIndexUtil/jm_createInstanceAt [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstanceAt" args))
(import ./HighScoresHelperBase :as HighScoresHelperBase)
(defn- NullHighScoresSingletonFactory/jm_getInstance [& args] (JR/call jfile "./NullHighScoresSingletonFactory" "jm_getInstance" args))

# Java class HighScoresHelper2
(var jproto nil)
(var jnew_0 nil)
(var jm_setSelectedHighScores nil)
(var jm_getSelectedHighScores nil)
(var jm_setHighScoresArray nil)
(var jm_selectHighScores nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresHelper2" :f_circularIndexUtil nil :f_selectedHighScores nil} jproto))
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstanceAt 0 0))
    (put this :f_selectedHighScores (NullHighScoresSingletonFactory/jm_getInstance))
    (JR/superInit this (HighScoresHelperBase/jnew_0))
    this))

    
(set jm_setSelectedHighScores (fn jm_setSelectedHighScores [this _selectedHighScores]
        (set (this :f_selectedHighScores) _selectedHighScores)))
    
(set jm_getSelectedHighScores (fn jm_getSelectedHighScores [this]
    (label jreturn
        (return jreturn (this :f_selectedHighScores)))))
    
(set jm_setHighScoresArray (fn jm_setHighScoresArray [this _highScoresArrayP]
        ((get HighScoresHelperBase/jproto :jm_setHighScoresArray) this _highScoresArrayP)
        (:jm_setSize (this :f_circularIndexUtil) (length (this :f_highScoresArrayP)))
        (:jm_selectHighScores this)))
    
(set jm_selectHighScores (fn jm_selectHighScores [this]
    (label jreturn
        (if (= (length (this :f_highScoresArrayP)) 0)
            (do
            (:jm_setSelectedHighScores this (NullHighScoresSingletonFactory/jm_getInstance))
            (return jreturn)))
        (:jm_next (this :f_circularIndexUtil))
        (var _highScores ((this :f_highScoresArrayP) (:jm_getIndex (this :f_circularIndexUtil))))
        (var _index 0)
        (do
            (while (and (< (:jm_getTotal _highScores) 1) (< _index (length (this :f_highScoresArrayP))))
                (do
            (set _highScores ((this :f_highScoresArrayP) (:jm_next (this :f_circularIndexUtil))))
            (set _index (JR/i32 (+ _index 1))))))
        (:jm_setSelectedHighScores this _highScores))))

(set jproto (table/setproto @{:jm_setSelectedHighScores jm_setSelectedHighScores :jm_getSelectedHighScores jm_getSelectedHighScores :jm_setHighScoresArray jm_setHighScoresArray :jm_selectHighScores jm_selectHighScores} HighScoresHelperBase/jproto))


