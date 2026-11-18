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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- J2MEGameKey/jm_getString [& args] (JR/call jfile "./J2MEGameKey" "jm_getString" args))
(defn- J2MEKeyFactory/jm_getInstance [& args] (JR/call jfile "./J2MEKeyFactory" "jm_getInstance" args))

# Java class PlatformKeyFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getString nil)
(var jm_isSubmission nil)
(var jm_isDelete nil)
(var jm_isBackSpace nil)
(var jm_isLeft nil)
(var jm_isRight nil)
(var jm_isUp nil)
(var jm_isDown nil)
(var jm_isEnter nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformKeyFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jm_getString (fn jm_getString [this _keyCode]
    (label jreturn
        (return jreturn (J2MEGameKey/jm_getString _keyCode)))))
    
(set jm_isSubmission (fn jm_isSubmission [this _input]
    (label jreturn
        (return jreturn (:jm_isSubmission (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isDelete (fn jm_isDelete [this _input]
    (label jreturn
        (return jreturn (:jm_isDelete (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isBackSpace (fn jm_isBackSpace [this _input]
    (label jreturn
        (return jreturn (:jm_isBackSpace (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isLeft (fn jm_isLeft [this _input]
    (label jreturn
        (return jreturn (:jm_isLeft (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isRight (fn jm_isRight [this _input]
    (label jreturn
        (return jreturn (:jm_isRight (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isUp (fn jm_isUp [this _input]
    (label jreturn
        (return jreturn (:jm_isUp (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isDown (fn jm_isDown [this _input]
    (label jreturn
        (return jreturn (:jm_isDown (J2MEKeyFactory/jm_getInstance) _input)))))
    
(set jm_isEnter (fn jm_isEnter [this _input]
    (label jreturn
        (return jreturn (:jm_isEnter (J2MEKeyFactory/jm_getInstance) _input)))))

(set jproto @{:jm_getString jm_getString :jm_isSubmission jm_isSubmission :jm_isDelete jm_isDelete :jm_isBackSpace jm_isBackSpace :jm_isLeft jm_isLeft :jm_isRight jm_isRight :jm_isUp jm_isUp :jm_isDown jm_isDown :jm_isEnter jm_isEnter})


