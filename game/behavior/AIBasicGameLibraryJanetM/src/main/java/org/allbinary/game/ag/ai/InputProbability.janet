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
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class InputProbability
(var jproto nil)
(var jcell_INPUT_PROBABILITY :jnone)
(var jstatic_INPUT_PROBABILITY nil)
(var jsetstatic_INPUT_PROBABILITY nil)
(var jnew_4 nil)
(var jm_getLikelyhoodIntegerArray nil)
(var jm_getRepeatLikelyhoodIntegerArray nil)
(var jm_getMax nil)
(var jm_getTimeDelayHelper nil)
(var jm_toHashtable nil)

(set jstatic_INPUT_PROBABILITY (fn jstatic_INPUT_PROBABILITY []
  (when (= jcell_INPUT_PROBABILITY :jnone) (set jcell_INPUT_PROBABILITY (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 0)))
  jcell_INPUT_PROBABILITY))
(set jsetstatic_INPUT_PROBABILITY (fn jsetstatic_INPUT_PROBABILITY [value] (set jcell_INPUT_PROBABILITY value)))

    
(set jnew_4 (fn jnew_4 [_likelyhoodIntegerArray _repeatLikelyhoodIntegerArray _max _timeDelayHelper]
    (var this (table/setproto @{:jclass "InputProbability" :f_likelyhoodIntegerArray nil :f_repeatLikelyhoodIntegerArray nil :f_max 0 :f_timeDelayHelper nil} jproto))
    
    
    
    
        (set (this :f_likelyhoodIntegerArray) _likelyhoodIntegerArray)
        (set (this :f_repeatLikelyhoodIntegerArray) _repeatLikelyhoodIntegerArray)
        (set (this :f_max) _max)
        (set (this :f_timeDelayHelper) _timeDelayHelper)
    this))
    
(set jm_getLikelyhoodIntegerArray (fn jm_getLikelyhoodIntegerArray [this]
    (label jreturn
        (return jreturn (this :f_likelyhoodIntegerArray)))))
    
(set jm_getRepeatLikelyhoodIntegerArray (fn jm_getRepeatLikelyhoodIntegerArray [this]
    (label jreturn
        (return jreturn (this :f_repeatLikelyhoodIntegerArray)))))
    
(set jm_getMax (fn jm_getMax [this]
    (label jreturn
        (return jreturn (this :f_max)))))
    
(set jm_getTimeDelayHelper (fn jm_getTimeDelayHelper [this]
    (label jreturn
        (return jreturn (this :f_timeDelayHelper)))))
    
(set jm_toHashtable (fn jm_toHashtable [this]
    (label jreturn
        (var _hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
        (:jm_put _hashtable (jstatic_INPUT_PROBABILITY) this)
        (return jreturn _hashtable))))

(set jproto @{:jm_getLikelyhoodIntegerArray jm_getLikelyhoodIntegerArray :jm_getRepeatLikelyhoodIntegerArray jm_getRepeatLikelyhoodIntegerArray :jm_getMax jm_getMax :jm_getTimeDelayHelper jm_getTimeDelayHelper :jm_toHashtable jm_toHashtable})


