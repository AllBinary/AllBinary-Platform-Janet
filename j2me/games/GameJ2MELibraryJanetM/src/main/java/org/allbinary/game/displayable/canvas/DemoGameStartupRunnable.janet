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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../org/allbinary/thread/ABRunnable :as ABRunnable)

# Java class DemoGameStartupRunnable
(var jproto nil)
(var jcell_TYPE :jnone)
(var jstatic_TYPE nil)
(var jsetstatic_TYPE nil)
(var jnew_1 nil)
(var jm_run nil)
(var jm_getType nil)

(set jstatic_TYPE (fn jstatic_TYPE []
  (when (= jcell_TYPE :jnone) (set jcell_TYPE 4))
  jcell_TYPE))
(set jsetstatic_TYPE (fn jsetstatic_TYPE [value] (set jcell_TYPE value)))

    
(set jnew_1 (fn jnew_1 [_demoCanvas]
    (var this (table/setproto @{:jclass "DemoGameStartupRunnable" :f_logUtil nil :f_demoCanvas nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (JR/superInit this (ABRunnable/jnew_0))
        (set (this :f_demoCanvas) _demoCanvas)
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (:jm_setRunning this true)
            (:jm_stopGameDemo (this :f_demoCanvas))
            (:jm_create (this :f_demoCanvas))
            (:jm_start (this :f_demoCanvas))
            (:jm_setRunning this false))
            ([_e] (do
            (:jm_setRunning this false)
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN) _e))))))
    
(set jm_getType (fn jm_getType [this]
    (label jreturn
        (return jreturn (jstatic_TYPE)))))

(set jproto (table/setproto @{:jm_run jm_run :jm_getType jm_getType} ABRunnable/jproto))


