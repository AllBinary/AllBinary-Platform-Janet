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
# package org.allbinary.game.score.displayable

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- ABSystemWrapper/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/ABSystemWrapper" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../org/allbinary/thread/ARunnable :as ARunnable)

# Java class HighScoreRunnable
(var jproto nil)
(var jnew_1 nil)
(var jm_run nil)

    
(set jnew_1 (fn jnew_1 [_highScoresCanvas]
    (var this (table/setproto @{:jclass "HighScoreRunnable" :f_highScoresCanvas nil} jproto))
    
    (JR/superInit this (ARunnable/jnew_0))
        (set (this :f_highScoresCanvas) _highScoresCanvas)
    this))
    
(set jm_run (fn jm_run [this]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _logUtil (LogUtil/jm_getInstance))
        (var _highScoresCanvas (this :f_highScoresCanvas))
        (try
            (do
            (var _isHTML (J2MEUtil/jm_isHTML))
            (if (not _isHTML)
                (do
                (do
                    (while (not (_highScoresCanvas :f_hasPainted))
                        (do
                    nil)))
                (set (_highScoresCanvas :f_hasPainted) false)))
            (var _stringMaker (StringMaker/jnew_0))
            (var _systemWrapper (ABSystemWrapper/jm_getInstance))
            (var _currentTimeMillis (:jm_currentTimeMillis _systemWrapper))
            (:jm_putF _logUtil (:jm_toString (:jm_appendlong (:jm_append _stringMaker "HighScoresCanvas - Request repaint to be sure: ") _currentTimeMillis)) this (_commonStrings :f_RUN))
            (JR/className (_highScoresCanvas :f_repaintBehavior))
            (if (not _isHTML)
                (do
                (do
                    (while (not (_highScoresCanvas :f_hasPainted))
                        (do
                    nil)))))
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (:jm_putF _logUtil (:jm_toString (:jm_appendlong (:jm_append _stringMaker "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ") _currentTimeMillis)) this (_commonStrings :f_RUN))
            (:jm_executeUpdate _highScoresCanvas))
            ([_e] (do
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN) _e))))))

(set jproto (table/setproto @{:jm_run jm_run} ARunnable/jproto))


