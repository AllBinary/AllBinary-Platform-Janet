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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class Scoreable
(var jproto nil)
(var jcell_ID :jnone)
(var jstatic_ID nil)
(var jsetstatic_ID nil)
(var jnew_1 nil)
(var jm_addPoints nil)
(var jm_removePoints nil)
(var jm_setPoints nil)
(var jm_getPoints nil)

(set jstatic_ID (fn jstatic_ID []
  (when (= jcell_ID :jnone) (set jcell_ID (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 3)))
  jcell_ID))
(set jsetstatic_ID (fn jsetstatic_ID [value] (set jcell_ID value)))

    
(set jnew_1 (fn jnew_1 [_points]
    (var this (table/setproto @{:jclass "Scoreable" :f_points 0} jproto))
    
        (set (this :f_points) _points)
    this))
    
(set jm_addPoints (fn jm_addPoints [this _points]
        (set (this :f_points) (JR/i32 (+ (this :f_points) _points)))))
    
(set jm_removePoints (fn jm_removePoints [this _points]
        (set (this :f_points) (JR/i32 (- (this :f_points) _points)))))
    
(set jm_setPoints (fn jm_setPoints [this _points]
        (set (this :f_points) _points)))
    
(set jm_getPoints (fn jm_getPoints [this]
    (label jreturn
        (return jreturn (this :f_points)))))

(set jproto @{:jm_addPoints jm_addPoints :jm_removePoints jm_removePoints :jm_setPoints jm_setPoints :jm_getPoints jm_getPoints})


