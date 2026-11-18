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
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyFactory" "jm_getInstance" args))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "./InputFactory" "jm_getInstance" args))

# Java class J2MEKeyFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_isSubmission nil)
(var jm_isDelete nil)
(var jm_isBackSpace nil)
(var jm_isUp nil)
(var jm_isDown nil)
(var jm_isLeft nil)
(var jm_isRight nil)
(var jm_isEnter nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "J2MEKeyFactory" :f_gameKeyFactory nil} jproto))
    (put this :f_gameKeyFactory (GameKeyFactory/jm_getInstance))
    this))
    
(set jm_init (fn jm_init [this]
        (var _gameKeyArray @[((this :f_gameKeyFactory) :f_DOWN) ((this :f_gameKeyFactory) :f_FIRE) ((this :f_gameKeyFactory) :f_GAME_A) ((this :f_gameKeyFactory) :f_GAME_B) ((this :f_gameKeyFactory) :f_GAME_C) ((this :f_gameKeyFactory) :f_GAME_D) ((this :f_gameKeyFactory) :f_KEY_NUM0) ((this :f_gameKeyFactory) :f_KEY_NUM1) ((this :f_gameKeyFactory) :f_KEY_NUM2) ((this :f_gameKeyFactory) :f_KEY_NUM3) ((this :f_gameKeyFactory) :f_KEY_NUM4) ((this :f_gameKeyFactory) :f_KEY_NUM5) ((this :f_gameKeyFactory) :f_KEY_NUM6) ((this :f_gameKeyFactory) :f_KEY_NUM7) ((this :f_gameKeyFactory) :f_KEY_NUM8) ((this :f_gameKeyFactory) :f_KEY_NUM9) ((this :f_gameKeyFactory) :f_KEY_POUND) ((this :f_gameKeyFactory) :f_KEY_STAR) ((this :f_gameKeyFactory) :f_LEFT) ((this :f_gameKeyFactory) :f_LEVEL_DOWN) ((this :f_gameKeyFactory) :f_LEVEL_UP) ((this :f_gameKeyFactory) :f_NONE) ((this :f_gameKeyFactory) :f_RIGHT) ((this :f_gameKeyFactory) :f_UP)])
        (var _inputFactory (InputFactory/jm_getInstance))
        (do
            (var _index (length _gameKeyArray))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (:jm_add _inputFactory (JR/className (_gameKeyArray _index)) (_gameKeyArray _index)))))))
    
(set jm_isSubmission (fn jm_isSubmission [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_FIRE))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isDelete (fn jm_isDelete [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_GAME_D))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isBackSpace (fn jm_isBackSpace [this _input]
    (label jreturn
        (return jreturn false))))
    
(set jm_isUp (fn jm_isUp [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_UP))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isDown (fn jm_isDown [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_DOWN))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isLeft (fn jm_isLeft [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_LEFT))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isRight (fn jm_isRight [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_RIGHT))
            (do
            (return jreturn true)))
        (return jreturn false))))
    
(set jm_isEnter (fn jm_isEnter [this _input]
    (label jreturn
        (if (= _input ((this :f_gameKeyFactory) :f_FIRE))
            (do
            (return jreturn true)))
        (return jreturn false))))

(set jproto @{:jm_init jm_init :jm_isSubmission jm_isSubmission :jm_isDelete jm_isDelete :jm_isBackSpace jm_isBackSpace :jm_isUp jm_isUp :jm_isDown jm_isDown :jm_isLeft jm_isLeft :jm_isRight jm_isRight :jm_isEnter jm_isEnter})


