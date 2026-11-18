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
(defn- ProgressCanvasFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/Runnable :as Runnable)

# Java class SaveHighScoreRunnable
(var jproto nil)
(var jnew_2 nil)
(var jm_run nil)

    
(set jnew_2 (fn jnew_2 [_isLast _textBox]
    (var this (table/setproto @{:jclass "SaveHighScoreRunnable" :f_progressCanvas nil :f_isLast false :f_textBox nil} jproto))
    (put this :f_progressCanvas (ProgressCanvasFactory/jm_getInstance))
    
    
        (set (this :f_isLast) _isLast)
        (set (this :f_textBox) _textBox)
    this))
    
(set jm_run (fn jm_run [this]
        (var _logUtil (LogUtil/jm_getInstance))
        (try
            (do
            (if (this :f_isLast)
                (do
                (:jm_submit (this :f_textBox)))
                (do
                (:jm_saveHighScore (this :f_textBox)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) this "run" _e)
            (:jm_end (this :f_progressCanvas)))))))

(set jproto @{:jm_run jm_run})


