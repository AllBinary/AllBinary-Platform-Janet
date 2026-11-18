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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GPoint/jm_toStringStatic [& args] (JR/call jfile "../../../../../org/allbinary/graphics/GPoint" "jm_toStringStatic" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ./CurrentlyPressedTouchButtonSingleton :as CurrentlyPressedTouchButtonSingleton)

# Java class CurrentlyPressedTouchButtonSingletonDebug
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_appendTouchButtonInput nil)
(var jm_append nil)
(var jm_clearLog nil)
(var jm_releaseAndNotFired nil)
(var jm_releaseAndFired nil)
(var jm_releaseAndFired2 nil)
(var jm_releaseAndFiredAssociated nil)
(var jm_pressedAndFired nil)
(var jm_pressedAndNotFired nil)
(var jm_removeAt nil)
(var jm_remove nil)
(var jm_add nil)
(var jm_toString nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_0)))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CurrentlyPressedTouchButtonSingletonDebug" :f_string nil :f_listString nil :f_appendText nil :f_PRESSED_AND_FIRED nil :f_PRESSED_AND_NOT_FIRED nil :f_ASSOCIATED_RELEASED_AND_FIRED nil :f_RELEASED_AND_FIRED nil :f_RELEASED_AND_FIRED_2 nil :f_RELEASED_AND_NOT_FIRED nil} jproto))
    (put this :f_string ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_listString ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_appendText ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_PRESSED_AND_FIRED "pressed & fired")
    (put this :f_PRESSED_AND_NOT_FIRED "pressed in button but not fired")
    (put this :f_ASSOCIATED_RELEASED_AND_FIRED "assoc. rel & fired")
    (put this :f_RELEASED_AND_FIRED "rel & fired 1")
    (put this :f_RELEASED_AND_FIRED_2 "rel & fired 2")
    (put this :f_RELEASED_AND_NOT_FIRED "rel & not fired")
    (JR/superInit this (CurrentlyPressedTouchButtonSingleton/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))
    
(set jm_appendTouchButtonInput (fn jm_appendTouchButtonInput [this _append _touchButtonInput]
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (:jm_toString _touchButtonInput))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer _append)
        (set (this :f_appendText) (:jm_toString _stringBuffer))
        (set (this :f_string) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_listString)) (this :f_appendText))))))
    
(set jm_append (fn jm_append [this _append]
        (set (this :f_appendText) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_appendText)) _append)))
        (set (this :f_string) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_listString)) (this :f_appendText))))))
    
(set jm_clearLog (fn jm_clearLog [this _x _y]
        (set (this :f_appendText) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (GPoint/jm_toStringStatic _x _y 0)) ((CommonSeps/jm_getInstance) :f_SPACE))))
        (set (this :f_string) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_listString)) (this :f_appendText))))))
    
(set jm_releaseAndNotFired (fn jm_releaseAndNotFired [this]
        (:jm_append this (this :f_RELEASED_AND_NOT_FIRED))))
    
(set jm_releaseAndFired (fn jm_releaseAndFired [this _touchButtonInput]
        (:jm_appendTouchButtonInput this (this :f_RELEASED_AND_FIRED) _touchButtonInput)))
    
(set jm_releaseAndFired2 (fn jm_releaseAndFired2 [this _touchButtonInput]
        (:jm_appendTouchButtonInput this (this :f_RELEASED_AND_FIRED_2) _touchButtonInput)))
    
(set jm_releaseAndFiredAssociated (fn jm_releaseAndFiredAssociated [this _touchButtonInput]
        (:jm_appendTouchButtonInput this (this :f_ASSOCIATED_RELEASED_AND_FIRED) _touchButtonInput)))
    
(set jm_pressedAndFired (fn jm_pressedAndFired [this _touchButtonInput]
        (:jm_appendTouchButtonInput this (this :f_PRESSED_AND_FIRED) _touchButtonInput)))
    
(set jm_pressedAndNotFired (fn jm_pressedAndNotFired [this _touchButtonInput]
        (:jm_appendTouchButtonInput this (this :f_PRESSED_AND_NOT_FIRED) _touchButtonInput)))
    
(set jm_removeAt (fn jm_removeAt [this _index]
    (label jreturn
        (var _touchButtonInput ((get CurrentlyPressedTouchButtonSingleton/jproto :jm_removeAt) this _index))
        (set (this :f_listString) (JR/toString (this :f_list)))
        (set (this :f_string) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_listString)) (this :f_appendText))))
        (return jreturn _touchButtonInput))))
    
(set jm_remove (fn jm_remove [this _touchButtonInput]
    (label jreturn
        (var _isRemoved ((get CurrentlyPressedTouchButtonSingleton/jproto :jm_remove) this _touchButtonInput))
        (set (this :f_listString) (JR/toString (this :f_list)))
        (set (this :f_string) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_listString)) (this :f_appendText))))
        (return jreturn _isRemoved))))
    
(set jm_add (fn jm_add [this _touchButtonInput]
        ((get CurrentlyPressedTouchButtonSingleton/jproto :jm_add) this _touchButtonInput)
        (set (this :f_listString) (JR/toString (this :f_list)))
        (set (this :f_string) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_listString)) (this :f_appendText))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (this :f_string)))))

(set jproto (table/setproto @{:jm_appendTouchButtonInput jm_appendTouchButtonInput :jm_append jm_append :jm_clearLog jm_clearLog :jm_releaseAndNotFired jm_releaseAndNotFired :jm_releaseAndFired jm_releaseAndFired :jm_releaseAndFired2 jm_releaseAndFired2 :jm_releaseAndFiredAssociated jm_releaseAndFiredAssociated :jm_pressedAndFired jm_pressedAndFired :jm_pressedAndNotFired jm_pressedAndNotFired :jm_removeAt jm_removeAt :jm_remove jm_remove :jm_add jm_add :jm_toString jm_toString} CurrentlyPressedTouchButtonSingleton/jproto))


