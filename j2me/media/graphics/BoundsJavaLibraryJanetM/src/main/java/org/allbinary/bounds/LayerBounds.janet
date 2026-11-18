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
# package org.allbinary.bounds

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))

# Java class LayerBounds
(var jproto nil)
(var jnew_1 nil)
(var jm_getRectangleP nil)
(var jm_visit nil)
(var jm_onEvent nil)
(var jm_onBoundsChangeEvent nil)

    
(set jnew_1 (fn jnew_1 [_rectangle]
    (var this (table/setproto @{:jclass "LayerBounds" :f_logUtil nil :f_rectangle nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
        (set (this :f_rectangle) _rectangle)
    this))
    
(set jm_getRectangleP (fn jm_getRectangleP [this]
    (label jreturn
        (return jreturn (this :f_rectangle)))))
    
(set jm_visit (fn jm_visit [this _boundsVisitorInterface]
    nil))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onBoundsChangeEvent (fn jm_onBoundsChangeEvent [this _boundsChangeEvent]
        (set (this :f_rectangle) (:jm_getRectangle _boundsChangeEvent))))

(set jproto @{:jm_getRectangleP jm_getRectangleP :jm_visit jm_visit :jm_onEvent jm_onEvent :jm_onBoundsChangeEvent jm_onBoundsChangeEvent})


