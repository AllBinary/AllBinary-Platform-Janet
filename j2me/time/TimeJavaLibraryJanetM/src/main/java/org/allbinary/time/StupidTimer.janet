# Generated Code Do Not Modify
# package org.allbinary.time

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- ThreadObjectUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/thread/ThreadObjectUtil" "jm_getInstance" args))
(import ../../../java/lang/Boolean :as Boolean)

# Java class StupidTimer
(var jproto nil)
(var jnew_0 nil)
(var jm_visitBool nil)
(var jm_visit nil)
(var jm_stopWaiting nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StupidTimer" :f_logUtil nil :f_commonStrings nil :f_nullUtil nil :f_threadObjectUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_nullUtil (NullUtil/jm_getInstance))
    (put this :f_threadObjectUtil (ThreadObjectUtil/jm_getInstance))
    this))

    
(set jm_visitBool (fn jm_visitBool [this _visitorInterface]
    (label jreturn
        (var _result (:jm_visit _visitorInterface ((this :f_nullUtil) :f_NULL_OBJECT)))
        (var _result2 (:jm_booleanValue _result))
        (return jreturn _result2))))
    
(set jm_visit (fn jm_visit [this _visitorInterface _timeDelayHelper]
        (var _tookTooLong false)
        (var _WAITING_FOR "Waiting for: ")
        (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) _WAITING_FOR) (:jm_toString_1 (StringUtil/jm_getInstance) _visitorInterface))) this ((this :f_commonStrings) :f_VISIT))
        (var _index 0)
        (do
            (var jbreak false)
            (while (and (not jbreak) (:jm_visitBool this _visitorInterface))
                (label jcontinue
            (if (= (% _index 10) 0)
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) _WAITING_FOR) _index)) this ((this :f_commonStrings) :f_VISIT))))
            (set _index (JR/i32 (+ _index 1)))
            (do
                (:jm_waitObjectFor (this :f_threadObjectUtil) this 1800))
            (if (:jm_isTimeTNT _timeDelayHelper)
                (do
                (set _tookTooLong true)
                (do (set jbreak true) (return jcontinue)))))))
        (if _tookTooLong
            (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_VISIT) (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Took Too Long: ") (:jm_toString_1 (StringUtil/jm_getInstance) _visitorInterface))))))
            (do
            (PreLogUtil/jm_put (:jm_toString _timeDelayHelper) this ((this :f_commonStrings) :f_VISIT))))))
    
(set jm_stopWaiting (fn jm_stopWaiting [this]
        (do
            (:jm_notifyObject (this :f_threadObjectUtil) this))))

(set jproto @{:jm_visitBool jm_visitBool :jm_visit jm_visit :jm_stopWaiting jm_stopWaiting})


