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
(defn- PrimaryThreadPool/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/thread/PrimaryThreadPool" "jm_getInstance" args))
(import ../../../java/lang/Runnable :as Runnable)
(import ./AllBinaryMidlet :as AllBinaryMidlet)
(defn- MidletExitProcessorFactory/jm_getInstance [& args] (JR/call jfile "./MidletExitProcessorFactory" "jm_getInstance" args))
(defn- ExitRunnable/jnew_3 [& args] (JR/call jfile "./ExitRunnable" "jnew_3" args))

#J2SEForJ2ME
# Java class ProgressMidlet
(var jproto nil)
(var jnew_1 nil)
(var jm_preInit nil)
(var jm_exitProgress nil)

    
(set jnew_1 (fn jnew_1 [_clientInformationFactory]
    (var this (table/setproto @{:jclass "ProgressMidlet" :f_abeClientInformation nil} jproto))
    
    (JR/superInit this (AllBinaryMidlet/jnew_0))
        (:jm_preInit this)
        (set (this :f_abeClientInformation) (:jm_getInstance _clientInformationFactory))
    this))
    
(set jm_preInit (fn jm_preInit [this]
    nil))
    
(set jm_exitProgress (fn jm_exitProgress [this _isProgress]
        (var _processor (:jm_getExitInstance (MidletExitProcessorFactory/jm_getInstance) this))
        (try
            (do
            (var _primaryThreadPool (PrimaryThreadPool/jm_getInstance))
            (var _runnable (ExitRunnable/jnew_3 this _processor _isProgress))
            (:jm_runTask _primaryThreadPool _runnable))
            ([_e] (do
            (JR/className (this :f_logUtil))
            (try
                (do
                (:jm_process _processor))
                ([_e2] (do
                (JR/className (this :f_logUtil))))))))))

(set jproto (table/setproto @{:jm_preInit jm_preInit :jm_exitProgress jm_exitProgress} AllBinaryMidlet/jproto))


