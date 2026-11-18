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
# package org.allbinary.logic.math

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- BasicDecimal/jnew_1 [& args] (JR/call jfile "./BasicDecimal" "jnew_1" args))

# Java class Orientation
(var jproto nil)
(var jcell_NONE :jnone)
(var jstatic_NONE nil)
(var jsetstatic_NONE nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_3 nil)
(var jm_getInstance nil)
(var jm_toString nil)

(set jstatic_NONE (fn jstatic_NONE []
  (when (= jcell_NONE :jnone) (set jcell_NONE (jnew_3 0 0 0)))
  jcell_NONE))
(set jsetstatic_NONE (fn jsetstatic_NONE [value] (set jcell_NONE value)))

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_3 0 0 0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance [_yaw _pitch _roll]
    (label jreturn
        (JR/className ((jstatic_SINGLETON) :f_yaw))
        (JR/className ((jstatic_SINGLETON) :f_pitch))
        (JR/className ((jstatic_SINGLETON) :f_roll))
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_3 (fn jnew_3 [_yaw _pitch _roll]
    (var this (table/setproto @{:jclass "Orientation" :f_yaw nil :f_pitch nil :f_roll nil} jproto))
    (put this :f_yaw (BasicDecimal/jnew_1 0))
    (put this :f_pitch (BasicDecimal/jnew_1 0))
    (put this :f_roll (BasicDecimal/jnew_1 0))
        (:jm_setint (this :f_yaw) _yaw)
        (:jm_setint (this :f_pitch) _pitch)
        (:jm_setint (this :f_roll) _roll)
    this))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Y: ")
        (:jm_append _stringBuffer (:jm_toString (this :f_yaw)))
        (:jm_append _stringBuffer " P: ")
        (:jm_append _stringBuffer (:jm_toString (this :f_pitch)))
        (:jm_append _stringBuffer " R: ")
        (:jm_append _stringBuffer (:jm_toString (this :f_roll)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_toString jm_toString})


