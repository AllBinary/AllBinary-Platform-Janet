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
# package org.allbinary.math

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AngleIncrementInfo/jnew_1 [& args] (JR/call jfile "./AngleIncrementInfo" "jnew_1" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "./AngleFactory" "jm_getInstance" args))

# Java class AngleIncrementInfoFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getAt nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AngleIncrementInfoFactory" :f_angleIncrementInfo nil} jproto))
    (put this :f_angleIncrementInfo (array/new-filled ((AngleFactory/jm_getInstance) :f_TOTAL_ANGLE) nil))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getAt (fn jm_getAt [this _angleIncrement]
    (label jreturn
        (var _halfAngleIncrement (brshift _angleIncrement 1))
        (var _angleIncrementInfo nil)
        (var _angleIncrementInfoCanBeNull ((this :f_angleIncrementInfo) _halfAngleIncrement))
        (if (nil? _angleIncrementInfoCanBeNull)
            (do
            (set _angleIncrementInfo (AngleIncrementInfo/jnew_1 _angleIncrement))
            (set ((this :f_angleIncrementInfo) _halfAngleIncrement) _angleIncrementInfo)
            (return jreturn _angleIncrementInfo))
            (do
            (set _angleIncrementInfo _angleIncrementInfoCanBeNull)))
        (return jreturn _angleIncrementInfo))))

(set jproto @{:jm_getAt jm_getAt})


