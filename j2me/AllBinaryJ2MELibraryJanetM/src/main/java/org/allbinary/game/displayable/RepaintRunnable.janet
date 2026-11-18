# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.displayable

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../org/allbinary/thread/ARunnable :as ARunnable)

# Java class RepaintRunnable
(var jproto nil)
(var jnew_1 nil)
(var jm_run nil)

    
(set jnew_1 (fn jnew_1 [_canvas]
    (var this (table/setproto @{:jclass "RepaintRunnable" :f_canvas nil} jproto))
    
    (JR/superInit this (ARunnable/jnew_0))
        (set (this :f_canvas) _canvas)
    this))
    
(set jm_run (fn jm_run [this]
        (try
            (do
            (:jm_repaint (this :f_canvas))
            (:jm_process (DisplayInfoSingleton/jm_getInstance)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (var _logUtil (LogUtil/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) this (_commonStrings :f_RUN) _e))))))

(set jproto (table/setproto @{:jm_run jm_run} ARunnable/jproto))


