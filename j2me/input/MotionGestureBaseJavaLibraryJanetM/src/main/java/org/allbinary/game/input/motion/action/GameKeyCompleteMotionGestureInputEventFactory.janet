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
# package org.allbinary.game.input.motion.action

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class GameKeyCompleteMotionGestureInputEventFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_updateAll nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameKeyCompleteMotionGestureInputEventFactory" :f_logUtil nil :f_eventList nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_eventList (BasicArrayListD/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_add (fn jm_add [this _gameKeyCompleteMotionGestureInputEvent]
        (:jm_add (this :f_eventList) _gameKeyCompleteMotionGestureInputEvent)))
    
(set jm_updateAll (fn jm_updateAll [this]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_size (this :f_eventList)))) this "updateAll")
        (do
            (var _index (JR/i32 (- (:jm_size (this :f_eventList)) 1)))
            (while (>= _index 0)
                (do
            (var _gameKeyCompleteMotionGestureInputEvent (((this :f_eventList) :f_objectArray) _index))
            (:jm_update _gameKeyCompleteMotionGestureInputEvent))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto @{:jm_add jm_add :jm_updateAll jm_updateAll})


