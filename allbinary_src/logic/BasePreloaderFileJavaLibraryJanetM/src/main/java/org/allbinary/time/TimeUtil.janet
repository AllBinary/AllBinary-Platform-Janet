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
# package org.allbinary.time

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/util/Calendar :as Calendar)
(import ../../../java/lang/Integer :as Integer)

# Java class TimeUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jcell_calendar :jnone)
(var jstatic_calendar nil)
(var jsetstatic_calendar nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setCalendar nil)
(var jm_setCalendarWithTime nil)
(var jm_setExpirationCalendar nil)
(var jm_getTotalTime nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jstatic_calendar (fn jstatic_calendar []
  (when (= jcell_calendar :jnone) (set jcell_calendar (Calendar/jm_getInstance)))
  jcell_calendar))
(set jsetstatic_calendar (fn jsetstatic_calendar [value] (set jcell_calendar value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TimeUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setCalendar (fn jm_setCalendar [this _calendar _yearString _monthString _dayString _hourString]
        (var _year (:jm_intValue _yearString))
        (var _month (:jm_intValue _monthString))
        (var _day (:jm_intValue _dayString))
        (var _hour (:jm_intValue _hourString))
        (:jm_set _calendar _year _month _day _hour 0)))
    
(set jm_setCalendarWithTime (fn jm_setCalendarWithTime [this _calendar _yearString _monthString _dayString _hourString _minuteString _secondString]
        (var _year (:jm_intValue _yearString))
        (var _month (:jm_intValue _monthString))
        (var _day (:jm_intValue _dayString))
        (var _hour (:jm_intValue _hourString))
        (var _minute (:jm_intValue _minuteString))
        (var _second (:jm_intValue _secondString))
        (:jm_set _calendar _year _month _day _hour _minute _second)))
    
(set jm_setExpirationCalendar (fn jm_setExpirationCalendar [this _calendar _yearsString _monthsString _daysString _hoursString _minutesString _secondsString]
        (var _year (JR/i32 (+ (:jm_get _calendar (Calendar/jstatic_YEAR)) (:jm_intValue _yearsString))))
        (var _month (JR/i32 (+ (:jm_get _calendar (Calendar/jstatic_MONTH)) (:jm_intValue _monthsString))))
        (var _day (JR/i32 (+ (:jm_get _calendar (Calendar/jstatic_DAY_OF_MONTH)) (:jm_intValue _daysString))))
        (var _hour (JR/i32 (+ (:jm_get _calendar (Calendar/jstatic_HOUR)) (:jm_intValue _hoursString))))
        (var _minute (JR/i32 (+ (:jm_get _calendar (Calendar/jstatic_MINUTE)) (:jm_intValue _minutesString))))
        (var _second (JR/i32 (+ (:jm_get _calendar (Calendar/jstatic_SECOND)) (:jm_intValue _secondsString))))
        (:jm_set _calendar _year _month _day _hour _minute _second)))
    
(set jm_getTotalTime (fn jm_getTotalTime [this _yearString _monthString _dayString _hourString _minuteString _secondString]
    (label jreturn
        (var _time (JR/className (jstatic_calendar)))
        (:jm_setExpirationCalendar this (jstatic_calendar) _yearString _monthString _dayString _hourString _minuteString _secondString)
        (var _timeDelta (JR/className (jstatic_calendar)))
        (return jreturn (- _timeDelta _time)))))

(set jproto @{:jm_setCalendar jm_setCalendar :jm_setCalendarWithTime jm_setCalendarWithTime :jm_setExpirationCalendar jm_setExpirationCalendar :jm_getTotalTime jm_getTotalTime})


