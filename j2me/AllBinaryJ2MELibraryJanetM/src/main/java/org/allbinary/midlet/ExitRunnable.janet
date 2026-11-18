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
# package org.allbinary.midlet

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../java/lang/Runnable :as Runnable)

# Java class ExitRunnable
(var jproto nil)
(var jnew_3 nil)
(var jm_run nil)

    
(set jnew_3 (fn jnew_3 [_midlet _processor _isProgress]
    (var this (table/setproto @{:jclass "ExitRunnable" :f_logUtil nil :f_commonStrings nil :f_midlet nil :f_processor nil :f_isProgress false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
        (set (this :f_midlet) _midlet)
        (set (this :f_isProgress) _isProgress)
        (set (this :f_processor) _processor)
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START_RUNNABLE) this ((this :f_commonStrings) :f_RUN))
            (:jm_destroyAppInRunnable (this :f_midlet) false (this :f_isProgress))
            (:jm_setDisplay (this :f_midlet) (NullCanvas/jstatic_NULL_CANVAS))
            (:jm_notifyDestroyed (this :f_midlet))
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_END_RUNNABLE) this ((this :f_commonStrings) :f_RUN))
            (:jm_process (this :f_processor)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_RUN) _e)
            (try
                (do
                (:jm_process (this :f_processor)))
                ([_e2] (do
                (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_RUN) _e)))))))))

(set jproto @{:jm_run jm_run})


