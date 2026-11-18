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
# package org.allbinary.game.ag.ai

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/logic/util/visitor/Visitor :as Visitor)
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/Boolean :as Boolean)

# Java class ThrustAIVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_visit nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ThrustAIVisitor" :f_logUtil nil :f_TRUE nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_TRUE ((BooleanFactory/jm_getInstance) :f_TRUE))
    (JR/superInit this (Visitor/jnew_0))
    this))
    
(set jm_visit (fn jm_visit [this _anyType]
    (label jreturn
        (try
            (do
            (var _basicAI _anyType)
            (:jm_processKeyAI _basicAI (Canvas/jstatic_UP)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_VISIT) _e))))
        (return jreturn (this :f_TRUE)))))

(set jproto (table/setproto @{:jm_visit jm_visit} Visitor/jproto))


