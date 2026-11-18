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
# package org.allbinary.game.ag.layer.hud.basic

(import ../../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameAdStateFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/business/advertisement/GameAdStateFactory" "jm_getInstance" args))
(defn- Processor/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/canvas/Processor" "jm_getInstance" args))
(defn- GameNotification/jnew_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/game/ag/layer/hud/basic/notification/GameNotification" "jnew_0" args))
(import ../../../../../../../org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud :as GameNotificationHud)
(defn- GameNotificationEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" "jm_getInstance" args))
(defn- CustomGPoint/jm_getInstance3 [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/CustomGPoint" "jm_getInstance3" args))
(defn- CustomGPoint/jstatic_NULL_CUSTOM_POINT [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/CustomGPoint" "jstatic_NULL_CUSTOM_POINT" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))
(import ../../../../../../../java/lang/Integer :as Integer)
(import ../../../../../../../java/lang/Boolean :as Boolean)
(defn- SetAndRemoveProcessor/jnew_1 [& args] (JR/call jfile "./SetAndRemoveProcessor" "jnew_1" args))
(defn- NextUnremoveableProcessor/jnew_1 [& args] (JR/call jfile "./NextUnremoveableProcessor" "jnew_1" args))

# Java class PlayerGameNotificationHud
(var jproto nil)
(var jnew_4 nil)
(var jm_updateMeasurement nil)
(var jm_getPoint nil)
(var jm_add nil)
(var jm_processTick nil)
(var jm_setAndRemove nil)
(var jm_setAndRemoveProcess nil)
(var jm_setNextUnremoveable nil)
(var jm_setNextUnremoveableProcess nil)
(var jm_clear nil)
(var jm_paint nil)

    
(set jnew_4 (fn jnew_4 [_location _direction _bufferZone _basicColor]
    (var this (table/setproto @{:jclass "PlayerGameNotificationHud" :f_gameTickTimeDelayHelper nil :f_EMPTY_STRING nil :f_displayInfo nil :f_timeDelayHelper nil :f_circularIndexUtil nil :f_gameNotification nil :f_permanentGameNotification nil :f_setAndRemoveProcessor nil :f_nextUnremoveableProcessor nil :f_processor nil :f_PERMANENT_GAME_NOTIFICATION nil :f_lastString nil :f_string nil :f_point nil :f_width 0} jproto))
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (put this :f_EMPTY_STRING ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_displayInfo (DisplayInfoSingleton/jm_getInstance))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 0))
    
    (put this :f_gameNotification (GameNotification/jnew_0))
    (put this :f_permanentGameNotification (GameNotification/jnew_0))
    (put this :f_setAndRemoveProcessor (SetAndRemoveProcessor/jnew_1 this))
    (put this :f_nextUnremoveableProcessor (NextUnremoveableProcessor/jnew_1 this))
    (put this :f_processor (Processor/jm_getInstance))
    (put this :f_PERMANENT_GAME_NOTIFICATION "Permanent Game Notification: ")
    (put this :f_lastString ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_string (this :f_EMPTY_STRING))
    (put this :f_point (CustomGPoint/jstatic_NULL_CUSTOM_POINT))
    
        (JR/superInit this (GameNotificationHud/jnew_4 _location _direction _bufferZone _basicColor))
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance 0))
        (var _gameNotificationEventHandler (GameNotificationEventHandler/jm_getInstance))
        (:jm_removeAllListeners _gameNotificationEventHandler)
        (:jm_addListenerInterface _gameNotificationEventHandler this)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (try
            (do
            ((get GameNotificationHud/jproto :jm_updateMeasurement) this _graphics)
            (var _font (:jm_getFont _graphics))
            (set (this :f_width) (:jm_stringWidth _font (this :f_string)))
            (:jm_process (this :f_processor))
            (set (this :f_processor) (Processor/jm_getInstance)))
            ([_e] (do
            (var _logUtil (LogUtil/jm_getInstance))
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) this (_commonStrings :f_UPDATE) _e))))))
    
(set jm_getPoint (fn jm_getPoint [this _x _y]
    (label jreturn
        (set (this :f_point) (CustomGPoint/jm_getInstance3 0 0))
        (:jm_setX (this :f_point) _x)
        (:jm_setY (this :f_point) _y)
        (return jreturn (this :f_point)))))
    
(set jm_add (fn jm_add [this _string _seconds _basicColor _permanent]
        (if (:jm_booleanValue _permanent)
            (do
            (if (not= (this :f_lastString) _string)
                (do
                (set (this :f_lastString) _string)
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_PERMANENT_GAME_NOTIFICATION)) _string)) this ((this :f_commonStrings) :f_ADD))))
            (:jm_add (this :f_permanentGameNotification) _string _seconds _basicColor)
            (:jm_setSize (this :f_circularIndexUtil) (:jm_getSize (this :f_permanentGameNotification))))
            (do
            (:jm_add (this :f_gameNotification) _string _seconds _basicColor)))))
    
(set jm_processTick (fn jm_processTick [this]
        (if (:jm_isTime (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
            (do
            (var _gameAdState (:jm_getCurrentInstance (GameAdStateFactory/jm_getInstance)))
            (if (:jm_isShowingAtLocation _gameAdState (:jm_getLocation this))
                (do
                (set (this :f_offsetY) (JR/i32 (- 54))))
                (do
                (set (this :f_offsetY) 0)))
            (if (> (:jm_getSize (this :f_gameNotification)) 0)
                (do
                (:jm_setAndRemove this))
                (if (> (:jm_getSize (this :f_permanentGameNotification)) 0)
                (do
                (:jm_setNextUnremoveable this))
                (do
                (set (this :f_string) (this :f_EMPTY_STRING)))))))))
    
(set jm_setAndRemove (fn jm_setAndRemove [this]
        (set (this :f_string) (JR/className ((this :f_gameNotification) :f_stringList)))
        (set (this :f_processor) (this :f_setAndRemoveProcessor))))
    
(set jm_setAndRemoveProcess (fn jm_setAndRemoveProcess [this]
        (:jm_setX this (brshift (JR/i32 (- (:jm_getLastWidth (this :f_displayInfo)) (this :f_width))) 1))
        (:jm_setX (this :f_point) (:jm_getX this))
        (:jm_setY (this :f_point) (:jm_getY this))
        (var _time (JR/className ((this :f_gameNotification) :f_timeList)))
        (var _iTime (JR/i32 (* (:jm_intValue _time) 1000)))
        (if (= _iTime 0)
            (do
            (set _iTime 500)))
        (set ((this :f_timeDelayHelper) :f_delay) _iTime)
        (:jm_setBasicColorP this (JR/className ((this :f_gameNotification) :f_colorList)))))
    
(set jm_setNextUnremoveable (fn jm_setNextUnremoveable [this]
        (var _index (:jm_getIndex (this :f_circularIndexUtil)))
        (set (this :f_string) ((((this :f_permanentGameNotification) :f_stringList) :f_objectArray) _index))
        (set (this :f_processor) (this :f_nextUnremoveableProcessor))))
    
(set jm_setNextUnremoveableProcess (fn jm_setNextUnremoveableProcess [this]
        (var _index (:jm_getIndex (this :f_circularIndexUtil)))
        (:jm_setX this (brshift (JR/i32 (- (:jm_getLastWidth (this :f_displayInfo)) (this :f_width))) 1))
        (:jm_setX (this :f_point) (:jm_getX this))
        (:jm_setY (this :f_point) (:jm_getY this))
        (var _time ((((this :f_permanentGameNotification) :f_timeList) :f_objectArray) _index))
        (set ((this :f_timeDelayHelper) :f_delay) (JR/i32 (* (:jm_intValue _time) 1000)))
        (:jm_setBasicColorP this ((((this :f_permanentGameNotification) :f_colorList) :f_objectArray) _index))
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_gameNotification))
        (:jm_clear (this :f_permanentGameNotification))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (JR/className (this :f_myFontProcessor))
        ((get GameNotificationHud/jproto :jm_paintString) this _graphics (this :f_string))))

(set jproto (table/setproto @{:jm_updateMeasurement jm_updateMeasurement :jm_getPoint jm_getPoint :jm_add jm_add :jm_processTick jm_processTick :jm_setAndRemove jm_setAndRemove :jm_setAndRemoveProcess jm_setAndRemoveProcess :jm_setNextUnremoveable jm_setNextUnremoveable :jm_setNextUnremoveableProcess jm_setNextUnremoveableProcess :jm_clear jm_clear :jm_paint jm_paint} GameNotificationHud/jproto))


