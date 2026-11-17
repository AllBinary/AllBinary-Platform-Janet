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
# package org.allbinary.canvas

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PrimitiveLongSingleton/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/PrimitiveLongSingleton" "jm_getInstance" args))
(defn- ScaleFactorFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/ScaleFactorFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ../../../java/lang/Integer :as Integer)
(import ../../../java/lang/Long :as Long)

# Java class BaseGameStatistics
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_add nil)
(var jm_process nil)
(var jm_nextFrame nil)
(var jm_nextRefresh nil)
(var jm_getRefreshRate nil)
(var jm_getTimeDelayHelper nil)
(var jm_to2DCharArray nil)
(var jm_toStringArray nil)
(var jm_toStringAt nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseGameStatistics" :f_timeDelayHelper nil :f_updateDelayHelper nil :f_totalRefreshes 0 :f_totalFrames 0 :f_gameTickTimeDelayHelper nil :f_DEFAULT_SCALE_FACTOR 0 :f_NOT nil :f_EMPTY_STRING nil :f_STRING_ARRAY nil :f_SPACE_CHAR 0 :f_PLUS_CHAR 0 :f_X_CHAR 0 :f_CHAR_ARRAY nil :f_primitiveLongSingleton nil} jproto))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 (Integer/jstatic_MAX_VALUE)))
    (put this :f_updateDelayHelper (TimeDelayHelper/jnew_1 2000))
    
    
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (put this :f_DEFAULT_SCALE_FACTOR ((ScaleFactorFactory/jm_getInstance) :f_DEFAULT_SCALE_FACTOR))
    (put this :f_NOT "Not enough Time to Calculate")
    (put this :f_EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_STRING_ARRAY @[" Total Time: " (this :f_EMPTY_STRING) " Total Frames: " (this :f_EMPTY_STRING) " Frames/10 Sec: " (this :f_EMPTY_STRING) " Total Paints: " (this :f_EMPTY_STRING) " Paints/10 Sec: " (this :f_EMPTY_STRING)])
    (put this :f_SPACE_CHAR (get " " 0))
    (put this :f_PLUS_CHAR (get "+" 0))
    (put this :f_X_CHAR (get "X" 0))
    (put this :f_CHAR_ARRAY @[@[(get "F" 0) (get "r" 0) (get "a" 0) (get "m" 0) (get "e" 0) (get "s" 0) (get "/" 0) (get "1" 0) (get "0" 0) (get " " 0) (get "S" 0) (get "e" 0) (get "c" 0) (get ":" 0)] @[(get "X" 0) (get "X" 0)] @[(get "P" 0) (get "a" 0) (get "i" 0) (get "n" 0) (get "t" 0) (get "s" 0) (get "/" 0) (get "1" 0) (get "0" 0) (get " " 0) (get "S" 0) (get "e" 0) (get "c" 0) (get ":" 0)] @[(get "X" 0) (get "X" 0)]])
    (put this :f_primitiveLongSingleton (PrimitiveLongSingleton/jm_getInstance))
    this))
    
(set jm_init (fn jm_init [this]
        (:jm_setStartTimeTNT (this :f_timeDelayHelper))
        (set (this :f_totalRefreshes) 0)
        (set (this :f_totalFrames) 0)))
    
(set jm_add (fn jm_add [this _string]
    nil))
    
(set jm_process (fn jm_process [this]
    nil))
    
(set jm_nextFrame (fn jm_nextFrame [this]
        (set (this :f_totalFrames) (+ (this :f_totalFrames) 1))))
    
(set jm_nextRefresh (fn jm_nextRefresh [this]
        (set (this :f_totalRefreshes) (+ (this :f_totalRefreshes) 1))))
    
(set jm_getRefreshRate (fn jm_getRefreshRate [this]
    (label jreturn
        (var _elapsed (:jm_getElapsed (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime)))
        (if (> _elapsed 1)
            (do
            (var _time (JR/i16 (JR/i32 (JR/ldiv (this :f_totalRefreshes) (brshift _elapsed (this :f_DEFAULT_SCALE_FACTOR))))))
            (return jreturn _time))
            (do
            (return jreturn 0))))))
    
(set jm_getTimeDelayHelper (fn jm_getTimeDelayHelper [this]
    (label jreturn
        (return jreturn (this :f_timeDelayHelper)))))
    
(set jm_to2DCharArray (fn jm_to2DCharArray [this]
    (label jreturn
        (var _totalTime (:jm_getElapsed (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime)))
        (set _totalTime (brshift _totalTime (this :f_DEFAULT_SCALE_FACTOR)))
        (if (and (> _totalTime 0) (:jm_isTime (this :f_updateDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime)))
            (do
            (var _framesPerSec (JR/i32 (JR/ldiv (this :f_totalFrames) _totalTime)))
            (if (< _framesPerSec 10)
                (do
                (set (((this :f_CHAR_ARRAY) 1) 0) (this :f_SPACE_CHAR))
                (set (((this :f_CHAR_ARRAY) 1) 1) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) _framesPerSec)))
                (if (< _framesPerSec 100)
                (do
                (var _tens (JR/idiv _framesPerSec 10))
                (var _removeTens (JR/i32 (* _tens 10)))
                (set (((this :f_CHAR_ARRAY) 1) 0) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) _tens))
                (set (((this :f_CHAR_ARRAY) 1) 1) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) (JR/i32 (- _framesPerSec _removeTens)))))
                (do
                (set (((this :f_CHAR_ARRAY) 1) 0) (this :f_PLUS_CHAR))
                (set (((this :f_CHAR_ARRAY) 1) 1) (this :f_PLUS_CHAR)))))
            (var _refreshesPerSec (JR/i32 (JR/ldiv (this :f_totalRefreshes) _totalTime)))
            (if (< _refreshesPerSec 10)
                (do
                (set (((this :f_CHAR_ARRAY) 3) 0) (this :f_X_CHAR))
                (set (((this :f_CHAR_ARRAY) 3) 1) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) _refreshesPerSec)))
                (if (< _refreshesPerSec 100)
                (do
                (var _tens (JR/idiv _refreshesPerSec 10))
                (var _removeTens (JR/i32 (* _tens 10)))
                (set (((this :f_CHAR_ARRAY) 3) 0) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) (JR/idiv _refreshesPerSec 10)))
                (set (((this :f_CHAR_ARRAY) 3) 1) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) (JR/i32 (- _refreshesPerSec _removeTens)))))
                (do
                (set (((this :f_CHAR_ARRAY) 3) 0) (this :f_PLUS_CHAR))
                (set (((this :f_CHAR_ARRAY) 3) 1) (this :f_PLUS_CHAR)))))))
        (return jreturn (this :f_CHAR_ARRAY)))))
    
(set jm_toStringArray (fn jm_toStringArray [this]
    (label jreturn
        (var _totalTime (:jm_getElapsed (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime)))
        (set _totalTime (JR/ldiv _totalTime 10000))
        (if (> _totalTime 0)
            (do
            (set ((this :f_STRING_ARRAY) 1) (JR/str _totalTime))
            (set ((this :f_STRING_ARRAY) 3) (JR/str (this :f_totalFrames)))
            (set ((this :f_STRING_ARRAY) 5) (JR/str (JR/ldiv (this :f_totalFrames) _totalTime)))
            (set ((this :f_STRING_ARRAY) 7) (JR/str (this :f_totalRefreshes)))
            (set ((this :f_STRING_ARRAY) 9) (JR/str (JR/ldiv (this :f_totalRefreshes) _totalTime))))
            (do
            (var _string (this :f_EMPTY_STRING))
            (set ((this :f_STRING_ARRAY) 1) _string)
            (set ((this :f_STRING_ARRAY) 3) _string)
            (set ((this :f_STRING_ARRAY) 5) _string)
            (set ((this :f_STRING_ARRAY) 7) _string)
            (set ((this :f_STRING_ARRAY) 9) _string)))
        (return jreturn (this :f_STRING_ARRAY)))))
    
(set jm_toStringAt (fn jm_toStringAt [this _totalTime]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((this :f_STRING_ARRAY) 0))
        (:jm_appendlong _stringBuffer _totalTime)
        (:jm_append _stringBuffer ((this :f_STRING_ARRAY) 2))
        (:jm_appendlong _stringBuffer (this :f_totalFrames))
        (:jm_append _stringBuffer ((this :f_STRING_ARRAY) 4))
        (:jm_appendlong _stringBuffer (JR/ldiv (this :f_totalFrames) _totalTime))
        (if (> (this :f_totalRefreshes) 0)
            (do
            (:jm_append _stringBuffer ((this :f_STRING_ARRAY) 6))
            (:jm_appendlong _stringBuffer (this :f_totalRefreshes))
            (:jm_append _stringBuffer ((this :f_STRING_ARRAY) 8))
            (:jm_appendlong _stringBuffer (JR/ldiv (this :f_totalRefreshes) _totalTime))
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_NEW_LINE))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _totalTime (:jm_getElapsed (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime)))
        (set _totalTime (JR/ldiv _totalTime 1000))
        (if (> _totalTime 0)
            (do
            (return jreturn (:jm_toStringAt this _totalTime)))
            (do
            (return jreturn (this :f_NOT)))))))

(set jproto @{:jm_init jm_init :jm_add jm_add :jm_process jm_process :jm_nextFrame jm_nextFrame :jm_nextRefresh jm_nextRefresh :jm_getRefreshRate jm_getRefreshRate :jm_getTimeDelayHelper jm_getTimeDelayHelper :jm_to2DCharArray jm_to2DCharArray :jm_toStringArray jm_toStringArray :jm_toStringAt jm_toStringAt :jm_toString jm_toString})


