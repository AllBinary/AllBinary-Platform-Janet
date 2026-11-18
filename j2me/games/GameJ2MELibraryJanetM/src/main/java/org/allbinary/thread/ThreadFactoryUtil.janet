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
# package org.allbinary.thread

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- AllBinaryGameCanvas/jstatic_TYPE [& args] (JR/call jfile "../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" "jstatic_TYPE" args))
(defn- DemoCanvas/jstatic_TYPE [& args] (JR/call jfile "../../../org/allbinary/game/displayable/canvas/DemoCanvas" "jstatic_TYPE" args))
(defn- RunnableCanvasSingleThreadStartRunnable/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable" "jnew_1" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../java/lang/Thread :as Thread)
(import ../../../java/lang/Runnable :as Runnable)
(defn- PrimaryThreadPool/jm_getInstance [& args] (JR/call jfile "./PrimaryThreadPool" "jm_getInstance" args))

# Java class ThreadFactoryUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getInstanceGameCanvasRunnable nil)
(var jm_getInstanceForRunnable nil)
(var jm_getInstanceType nil)
(var jm_start nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ThreadFactoryUtil" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstanceGameCanvasRunnable (fn jm_getInstanceGameCanvasRunnable [this _runnable]
    (label jreturn
        (return jreturn (:jm_getInstanceType this _runnable (:jm_getType _runnable))))))
    
(set jm_getInstanceForRunnable (fn jm_getInstanceForRunnable [this _runnable]
    (label jreturn
        (return jreturn (:jm_getInstanceType this _runnable (:jm_getType _runnable))))))
    
(set jm_getInstanceType (fn jm_getInstanceType [this _runnable _type]
    (label jreturn
        (var _commonStrings (CommonStrings/jm_getInstance))
        (if (J2MEUtil/jm_isHTML)
            (do
            (if (or (= _type (DemoCanvas/jstatic_TYPE)) (= _type (AllBinaryGameCanvas/jstatic_TYPE)))
                (do
                (var _demoGameSingleThreadStartRunnable (RunnableCanvasSingleThreadStartRunnable/jnew_1 _runnable))
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ") (:jm_toString_1 (StringUtil/jm_getInstance) _runnable))) this (_commonStrings :f_CONSTRUCTOR))
                (var _primaryThreadPool (PrimaryThreadPool/jm_getInstance))
                (:jm_runTask _primaryThreadPool _demoGameSingleThreadStartRunnable))
                (do
                (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Using Pseudo Thread for Runnable under PlayN/HTML5: ") (:jm_toString_1 (StringUtil/jm_getInstance) _runnable))) this (_commonStrings :f_CONSTRUCTOR))
                (var _primaryThreadPool (PrimaryThreadPool/jm_getInstance))
                (:jm_runTask _primaryThreadPool _runnable)))))
        (var _thread (Thread/jnew_2 _runnable (:jm_toString _runnable)))
        (:jm_putF (this :f_logUtil) (:jm_toString _thread) this (_commonStrings :f_CONSTRUCTOR))
        (return jreturn _thread))))
    
(set jm_start (fn jm_start [this _thread]
        (:jm_start _thread)))

(set jproto @{:jm_getInstanceGameCanvasRunnable jm_getInstanceGameCanvasRunnable :jm_getInstanceForRunnable jm_getInstanceForRunnable :jm_getInstanceType jm_getInstanceType :jm_start jm_start})


