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

# Java class Direction
(var jproto nil)
(var jcell_directionArray :jnone)
(var jstatic_directionArray nil)
(var jsetstatic_directionArray nil)
(var jnew_4 nil)
(var jm_getInstance nil)
(var jm_getValue nil)
(var jm_getFrameFactor nil)
(var jm_getOtherName nil)
(var jm_getName nil)
(var jm_toString nil)

(set jstatic_directionArray (fn jstatic_directionArray []
  (when (= jcell_directionArray :jnone) (set jcell_directionArray (array/new-filled 13 nil)))
  jcell_directionArray))
(set jsetstatic_directionArray (fn jsetstatic_directionArray [value] (set jcell_directionArray value)))

    
(set jnew_4 (fn jnew_4 [_name _otherName _value _frameFactor]
    (var this (table/setproto @{:jclass "Direction" :f_name nil :f_otherName nil :f_value 0 :f_frameFactor 0} jproto))
    
    
    
    
        (set (this :f_name) _name)
        (set (this :f_otherName) _otherName)
        (set (this :f_value) _value)
        (set (this :f_frameFactor) _frameFactor)
        (set ((jstatic_directionArray) _value) this)
    this))
    
(set jm_getInstance (fn jm_getInstance [_direction]
    (label jreturn
        (return jreturn ((jstatic_directionArray) _direction)))))
    
(set jm_getValue (fn jm_getValue [this]
    (label jreturn
        (return jreturn (this :f_value)))))
    
(set jm_getFrameFactor (fn jm_getFrameFactor [this]
    (label jreturn
        (return jreturn (this :f_frameFactor)))))
    
(set jm_getOtherName (fn jm_getOtherName [this]
    (label jreturn
        (return jreturn (this :f_otherName)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Direction: ")
        (:jm_append _stringBuffer (:jm_getName this))
        (:jm_append _stringBuffer " Or: ")
        (:jm_append _stringBuffer (:jm_getOtherName this))
        (:jm_append _stringBuffer " Value: ")
        (:jm_appendint _stringBuffer (this :f_value))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getValue jm_getValue :jm_getFrameFactor jm_getFrameFactor :jm_getOtherName jm_getOtherName :jm_getName jm_getName :jm_toString jm_toString})


