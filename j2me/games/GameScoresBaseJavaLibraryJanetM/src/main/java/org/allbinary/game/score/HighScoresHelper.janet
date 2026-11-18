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

# Java class HighScoresHelper
(var jproto nil)
(var jnew_0 nil)
(var jm_setHighScoresArray nil)
(var jm_getNextHighScores nil)
(var jm_isAnyHighScores nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoresHelper" :f_circularIndexUtil nil :f_lastIndex 0} jproto))
    (put this :f_circularIndexUtil (CircularIndexUtil/jm_createInstanceAt 0 0))
    (put this :f_lastIndex (JR/i32 (- 1)))
    (JR/superInit this (HighScoresHelperBase/jnew_0))
    this))

    
(set jm_setHighScoresArray (fn jm_setHighScoresArray [this _highScoresArrayP]
        ((get HighScoresHelperBase/jproto :jm_setHighScoresArray) this _highScoresArrayP)
        (:jm_setSize (this :f_circularIndexUtil) (length (this :f_highScoresArrayP)))))
    
(set jm_getNextHighScores (fn jm_getNextHighScores [this]
    (label jreturn
        (var _highScores ((this :f_highScoresArrayP) (:jm_getIndex (this :f_circularIndexUtil))))
        (var _index 0)
        (do
            (while (and (or (< (:jm_getTotal _highScores) 1) (= (this :f_lastIndex) (:jm_getIndex (this :f_circularIndexUtil)))) (< _index (length (this :f_highScoresArrayP))))
                (do
            (:jm_next (this :f_circularIndexUtil))
            (set _highScores ((this :f_highScoresArrayP) (:jm_getIndex (this :f_circularIndexUtil))))
            (set _index (JR/i32 (+ _index 1))))))
        (set (this :f_lastIndex) (:jm_getIndex (this :f_circularIndexUtil)))
        (return jreturn _highScores))))
    
(set jm_isAnyHighScores (fn jm_isAnyHighScores [this]
    (label jreturn
        (if (< (length (this :f_highScoresArrayP)) 1)
            (do
            (return jreturn false)))
        (var _anyScores false)
        (var _highScores nil)
        (do
            (var _index (JR/i32 (- (length (this :f_highScoresArrayP)) 1)))
            (while (>= _index 0)
                (do
            (set _highScores ((this :f_highScoresArrayP) _index))
            (if (> (:jm_getTotal _highScores) 0)
                (do
                (set _anyScores true))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn _anyScores))))

(set jproto (table/setproto @{:jm_setHighScoresArray jm_setHighScoresArray :jm_getNextHighScores jm_getNextHighScores :jm_isAnyHighScores jm_isAnyHighScores} HighScoresHelperBase/jproto))


