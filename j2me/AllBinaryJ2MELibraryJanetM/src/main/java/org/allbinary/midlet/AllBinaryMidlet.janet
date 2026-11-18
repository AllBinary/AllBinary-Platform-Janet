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
(defn- Display/jm_getDisplay [& args] (JR/call jfile "../../../javax/microedition/lcdui/Display" "jm_getDisplay" args))
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(import ../../../javax/microedition/midlet/MIDlet :as MIDlet)
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- Memory/jm_getInfo [& args] (JR/call jfile "../../../org/allbinary/system/Memory" "jm_getInfo" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))

# Java class AllBinaryMidlet
(var jproto nil)
(var jcell_NULL_ALLBINARY_MIDLET :jnone)
(var jstatic_NULL_ALLBINARY_MIDLET nil)
(var jsetstatic_NULL_ALLBINARY_MIDLET nil)
(var jnew_0 nil)
(var jm_getNullInstance nil)
(var jm_setDisplay nil)
(var jm_getDisplay nil)
(var jm_getCurrentDisplayable nil)
(var jm_setDestroyed nil)
(var jm_isDestroyed nil)
(var jm_startApp nil)
(var jm_pauseApp nil)
(var jm_destroyAppInRunnable nil)
(var jm_destroyApp nil)
(var jm_setStartStateHashtable nil)
(var jm_getStartStateHashtable nil)
(var jm_getCurrentStateHashtable nil)
(var jm_commandAction nil)

(set jstatic_NULL_ALLBINARY_MIDLET (fn jstatic_NULL_ALLBINARY_MIDLET []
  (when (= jcell_NULL_ALLBINARY_MIDLET :jnone) (set jcell_NULL_ALLBINARY_MIDLET ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_NULL_ALLBINARY_MIDLET))
(set jsetstatic_NULL_ALLBINARY_MIDLET (fn jsetstatic_NULL_ALLBINARY_MIDLET [value] (set jcell_NULL_ALLBINARY_MIDLET value)))

    
(set jm_getNullInstance (fn jm_getNullInstance []
    (label jreturn
        (if (= (jstatic_NULL_ALLBINARY_MIDLET) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_NULL_ALLBINARY_MIDLET (jnew_0))))
        (return jreturn (jstatic_NULL_ALLBINARY_MIDLET)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryMidlet" :f_logUtil nil :f_commonStrings nil :f_SET_DISPLAY nil :f_SETTING_ nil :f__DISPLAY_ nil :f_SETTING_NO_TITLE nil :f_hashtable nil :f_midletDestroyed false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_SET_DISPLAY "setDisplay")
    (put this :f_SETTING_ "Setting: ")
    (put this :f__DISPLAY_ " Display: ")
    (put this :f_SETTING_NO_TITLE "Setting: No Title, Display: ")
    (put this :f_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
    
    (JR/superInit this (MIDlet/jnew_0))
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_CONSTRUCTOR) this "AllBinaryMidlet::AllBinaryMidlet")
    this))
    
(set jm_setDisplay (fn jm_setDisplay [this _newDisplay]
        (var _title ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (if (not= _newDisplay (NullCanvas/jstatic_NULL_CANVAS))
            (do
            (set _title (:jm_getTitle _newDisplay))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_SETTING_)) _title) (this :f__DISPLAY_)) (:jm_toString_1 (StringUtil/jm_getInstance) _newDisplay))) this (this :f_SET_DISPLAY))))
        (var _display (:jm_getDisplay this))
        (:jm_setCurrent _display _newDisplay)))
    
(set jm_getDisplay (fn jm_getDisplay [this]
    (label jreturn
        (return jreturn (Display/jm_getDisplay this)))))
    
(set jm_getCurrentDisplayable (fn jm_getCurrentDisplayable [this]
    (label jreturn
        (return jreturn (JR/className (Display/jm_getDisplay this))))))
    
(set jm_setDestroyed (fn jm_setDestroyed [this _destroyed]
        (set (this :f_midletDestroyed) _destroyed)))
    
(set jm_isDestroyed (fn jm_isDestroyed [this]
    (label jreturn
        (return jreturn (this :f_midletDestroyed)))))
    
(set jm_startApp (fn jm_startApp [this]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_pauseApp (fn jm_pauseApp [this]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_destroyAppInRunnable (fn jm_destroyAppInRunnable [this _unconditional _isProgress]
    nil))
    
(set jm_destroyApp (fn jm_destroyApp [this _unconditional]
        (var _METHOD_NAME "AllBinaryMidlet::destroyApp")
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this _METHOD_NAME)
            (PreLogUtil/jm_put (Memory/jm_getInfo) this _METHOD_NAME)
            (:jm_setDestroyed this true))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this _METHOD_NAME _e))))))
    
(set jm_setStartStateHashtable (fn jm_setStartStateHashtable [this _hashtable]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_toString_1 (StringUtil/jm_getInstance) _hashtable))) this "setStartStateHashtable")
        (set (this :f_hashtable) _hashtable)))
    
(set jm_getStartStateHashtable (fn jm_getStartStateHashtable [this]
    (label jreturn
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_hashtable)))) this "getStartStateHashtable")
        (return jreturn (this :f_hashtable)))))
    
(set jm_getCurrentStateHashtable (fn jm_getCurrentStateHashtable [this]
    (label jreturn
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this "getStateHashtable")
        (return jreturn ((StdUtil/jm_getInstance) :f_NULL_TABLE)))))
    
(set jm_commandAction (fn jm_commandAction [this _command _displayable]
    nil))

(set jproto (table/setproto @{:jm_setDisplay jm_setDisplay :jm_getDisplay jm_getDisplay :jm_getCurrentDisplayable jm_getCurrentDisplayable :jm_setDestroyed jm_setDestroyed :jm_isDestroyed jm_isDestroyed :jm_startApp jm_startApp :jm_pauseApp jm_pauseApp :jm_destroyAppInRunnable jm_destroyAppInRunnable :jm_destroyApp jm_destroyApp :jm_setStartStateHashtable jm_setStartStateHashtable :jm_getStartStateHashtable jm_getStartStateHashtable :jm_getCurrentStateHashtable jm_getCurrentStateHashtable :jm_commandAction jm_commandAction} MIDlet/jproto))


