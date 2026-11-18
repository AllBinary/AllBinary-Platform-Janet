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

# Java class HighScoreCommandsBaseFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_isHighScoreCommand nil)
(var jm_getIndex nil)

    
(set jnew_1 (fn jnew_1 [_HIGH_SCORE_COMMANDS]
    (var this (table/setproto @{:jclass "HighScoreCommandsBaseFactory" :f_logUtil nil :f_HIGH_SCORE_COMMANDS nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
        (set (this :f_HIGH_SCORE_COMMANDS) _HIGH_SCORE_COMMANDS)
    this))
    
(set jm_isHighScoreCommand (fn jm_isHighScoreCommand [this _command]
    (label jreturn
        (do
            (var _index (JR/i32 (- (length (this :f_HIGH_SCORE_COMMANDS)) 1)))
            (while (>= _index 0)
                (do
            (if (= _command ((this :f_HIGH_SCORE_COMMANDS) _index))
                (do
                (return jreturn true))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn false))))
    
(set jm_getIndex (fn jm_getIndex [this _command]
    (label jreturn
        (do
            (var _index (JR/i32 (- (length (this :f_HIGH_SCORE_COMMANDS)) 1)))
            (while (>= _index 0)
                (do
            (if (= _command ((this :f_HIGH_SCORE_COMMANDS) _index))
                (do
                (return jreturn _index))))
                (do (set _index (JR/i32 (- _index 1))))))
        (error (JR/newException "Exception" "No Such Command")))))

(set jproto @{:jm_isHighScoreCommand jm_isHighScoreCommand :jm_getIndex jm_getIndex})


