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
# package org.allbinary.logic.communication.log

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))

# Java class ForcedLogUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_log nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ForcedLogUtil"} jproto))
    this))

    
(set jm_log (fn jm_log [_message _anyType]
        (try
            (do
            (error (JR/newException "Exception" _message)))
            ([_e] (do
            (PreLogUtil/jm_putOE ((CommonStrings/jm_getInstance) :f_EXCEPTION) _anyType "log" _e))))))

(set jproto @{})


