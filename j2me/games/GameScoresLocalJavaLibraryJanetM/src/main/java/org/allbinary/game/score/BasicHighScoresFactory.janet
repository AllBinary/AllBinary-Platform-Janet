# Generated Code Do Not Modify
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(import ./HighScoresBase :as HighScoresBase)
(defn- RecordStoreHighScores/jm_getInstance [& args] (JR/call jfile "./RecordStoreHighScores" "jm_getInstance" args))
(defn- ScoreComparator/jnew_1 [& args] (JR/call jfile "./ScoreComparator" "jnew_1" args))
(defn- HighScoresHelper2/jnew_0 [& args] (JR/call jfile "./HighScoresHelper2" "jnew_0" args))

# Java class BasicHighScoresFactory
(var jproto nil)
(var jnew_2 nil)
(var jm_fetchHighScores nil)
(var jm_fetchHighScoresPreload nil)
(var jm_createHighScoresHelper nil)
(var jm_loaded nil)

    
(set jnew_2 (fn jnew_2 [_abeClientInformation _softwareInformation]
    (var this (table/setproto @{:jclass "BasicHighScoresFactory" :f_logUtil nil :f_abeClientInformation nil :f_highScoresArray nil :f_TOP nil :f_SCORES nil :f_PERSONAL_HIGH_SCORES nil :f_FETCH nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_highScoresArray (array/new-filled 1 nil))
    (put this :f_TOP "Top")
    (put this :f_SCORES "Scores")
    (put this :f_PERSONAL_HIGH_SCORES "Personal Top Scores")
    (put this :f_FETCH "fetchHighScores")
    (JR/superInit this (HighScoresBase/jnew_0))
        (set (this :f_abeClientInformation) _abeClientInformation)
    this))
    
(set jm_fetchHighScores (fn jm_fetchHighScores [this _gameInfo _highScoresResultsListener]
        (:jm_putF (this :f_logUtil) "Getting Local HighScores" this (this :f_FETCH))
        (:jm_fetchHighScoresPreload this _gameInfo _highScoresResultsListener true)))
    
(set jm_fetchHighScoresPreload (fn jm_fetchHighScoresPreload [this _gameInfo _highScoresResultsListener _preload]
        (try
            (do
            (set ((this :f_highScoresArray) 0) (RecordStoreHighScores/jm_getInstance (this :f_abeClientInformation) _gameInfo (this :f_TOP) (this :f_PERSONAL_HIGH_SCORES) (this :f_SCORES) (ScoreComparator/jnew_1 true)))
            (:jm_setHighScoresArray _highScoresResultsListener (this :f_highScoresArray)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this (this :f_FETCH) _e))))))
    
(set jm_createHighScoresHelper (fn jm_createHighScoresHelper [this]
    (label jreturn
        (return jreturn (HighScoresHelper2/jnew_0)))))
    
(set jm_loaded (fn jm_loaded [_index2]
    (label jreturn
        (if (>= _index2 0)
            (do
            (return jreturn true)))
        (return jreturn false))))

(set jproto (table/setproto @{:jm_fetchHighScores jm_fetchHighScores :jm_fetchHighScoresPreload jm_fetchHighScoresPreload :jm_createHighScoresHelper jm_createHighScoresHelper} HighScoresBase/jproto))


