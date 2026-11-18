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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(import ./HighScoresBase :as HighScoresBase)
(defn- HighScoresHelperBase/jnew_0 [& args] (JR/call jfile "./HighScoresHelperBase" "jnew_0" args))

# Java class NoHighScoresFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_fetchHighScores nil)
(var jm_createHighScoresHelper nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoHighScoresFactory" :f_logUtil nil :f_NO_HIGH_SCORES nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_NO_HIGH_SCORES (array/new-filled 0 nil))
    (JR/superInit this (HighScoresBase/jnew_0))
    this))
    
(set jm_fetchHighScores (fn jm_fetchHighScores [this _gameInfo _highScoresResultsListener]
        (:jm_putF (this :f_logUtil) "Getting No HighScores" this "fetchHighScores")
        (:jm_setHighScoresArray _highScoresResultsListener (this :f_NO_HIGH_SCORES))))
    
(set jm_createHighScoresHelper (fn jm_createHighScoresHelper [this]
    (label jreturn
        (return jreturn (HighScoresHelperBase/jnew_0)))))

(set jproto (table/setproto @{:jm_fetchHighScores jm_fetchHighScores :jm_createHighScoresHelper jm_createHighScoresHelper} HighScoresBase/jproto))


