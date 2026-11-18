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
# package org.allbinary.direction

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- Direction/jnew_4 [& args] (JR/call jfile "./Direction" "jnew_4" args))

# Java class DirectionFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DirectionFactory" :f_NAME nil :f_LEFT nil :f_RIGHT nil :f_DOWN nil :f_UP nil :f_UP_LEFT nil :f_UP_RIGHT nil :f_DOWN_LEFT nil :f_DOWN_RIGHT nil :f_NOT_BORDERED_WITH nil :f_NO_DIRECTION nil :f_TOP nil :f_BOTTOM nil :f_ALL_DIRECTION nil} jproto))
    (put this :f_NAME "DIRECTION")
    (put this :f_LEFT (Direction/jnew_4 ((CommonPhoneStrings/jm_getInstance) :f_LEFT) "WEST" 0 1))
    (put this :f_RIGHT (Direction/jnew_4 ((CommonPhoneStrings/jm_getInstance) :f_RIGHT) "EAST" 1 0))
    (put this :f_DOWN (Direction/jnew_4 ((CommonPhoneStrings/jm_getInstance) :f_DOWN) "SOUTH" 2 0))
    (put this :f_UP (Direction/jnew_4 ((CommonPhoneStrings/jm_getInstance) :f_UP) "NORTH" 3 0))
    
    
    
    
    (put this :f_NOT_BORDERED_WITH (Direction/jnew_4 "NOT_BORDERED_WITH" "NOT_BORDERED_WITH" 8 0))
    (put this :f_NO_DIRECTION (Direction/jnew_4 "NO_DIRECTION" "NO_DIRECTION" 9 0))
    (put this :f_TOP (Direction/jnew_4 "TOP" "TOP" 10 0))
    (put this :f_BOTTOM (Direction/jnew_4 "BOTTOM" "BOTTOM" 11 0))
    (put this :f_ALL_DIRECTION (Direction/jnew_4 "ALL_DIRECTION" "ALL_DIRECTION" 12 0))
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (set (this :f_UP_LEFT) (Direction/jnew_4 "UP LEFT" (:jm_toString (:jm_append (:jm_append (:jm_append _stringBuffer (:jm_getOtherName (this :f_UP))) (_commonSeps :f_SPACE)) (:jm_getOtherName (this :f_LEFT)))) 4 0))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (set (this :f_UP_RIGHT) (Direction/jnew_4 "UP RIGHT" (:jm_toString (:jm_append (:jm_append (:jm_append _stringBuffer (:jm_getOtherName (this :f_UP))) (_commonSeps :f_SPACE)) (:jm_getOtherName (this :f_RIGHT)))) 5 0))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (set (this :f_DOWN_LEFT) (Direction/jnew_4 "DOWN LEFT" (:jm_toString (:jm_append (:jm_append (:jm_append _stringBuffer (:jm_getOtherName (this :f_DOWN))) (_commonSeps :f_SPACE)) (:jm_getOtherName (this :f_LEFT)))) 6 0))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (set (this :f_DOWN_RIGHT) (Direction/jnew_4 "DOWN RIGHT" (:jm_toString (:jm_append (:jm_append (:jm_append _stringBuffer (:jm_getOtherName (this :f_DOWN))) (_commonSeps :f_SPACE)) (:jm_getOtherName (this :f_RIGHT)))) 7 0))
    this))

(set jproto @{})


