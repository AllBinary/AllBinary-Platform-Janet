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
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- TouchButtonInput/jnew_2 [& args] (JR/call jfile "./TouchButtonInput" "jnew_2" args))

# Java class BasicTouchInputFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_updateAll nil)
(var jm_updateAllList nil)
(var jm_getList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicTouchInputFactory" :f_logUtil nil :f_SPECIAL_BUTTON_SIX nil :f_SPECIAL_BUTTON_FIVE nil :f_SPECIAL_BUTTON_FOUR nil :f_SPECIAL_BUTTON_THREE nil :f_SPECIAL_BUTTON_TWO nil :f_SPECIAL_BUTTON_ONE nil :f_UP nil :f_LEFT nil :f_RIGHT nil :f_DOWN nil :f_NONE nil :f_initialized false :f_list nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_SPECIAL_BUTTON_SIX (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 30)) "Button 6"))
    (put this :f_SPECIAL_BUTTON_FIVE (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 31)) "Button 5"))
    (put this :f_SPECIAL_BUTTON_FOUR (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 32)) "Button 4"))
    (put this :f_SPECIAL_BUTTON_THREE (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 33)) "Button 3"))
    (put this :f_SPECIAL_BUTTON_TWO (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 34)) "Button 2"))
    (put this :f_SPECIAL_BUTTON_ONE (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 35)) "Button 1"))
    (put this :f_UP (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 36)) "Up Button"))
    (put this :f_LEFT (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 37)) "Left Button"))
    (put this :f_RIGHT (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 38)) "Right Button"))
    (put this :f_DOWN (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 39)) "Down Button"))
    (put this :f_NONE (TouchButtonInput/jnew_2 (JR/i32 (- ((InputFactory/jm_getInstance) :f_MAX) 40)) "No Button"))
    (put this :f_initialized false)
    (put this :f_list (BasicArrayListD/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this _inputToGameKeyMapping]
        (if (not (this :f_initialized))
            (do
            (set (this :f_initialized) true)
            (:jm_add (this :f_list) (this :f_UP))
            (:jm_add (this :f_list) (this :f_LEFT))
            (:jm_add (this :f_list) (this :f_RIGHT))
            (:jm_add (this :f_list) (this :f_DOWN))
            (:jm_add (this :f_list) (this :f_SPECIAL_BUTTON_TWO))
            (:jm_add (this :f_list) (this :f_SPECIAL_BUTTON_FOUR))
            (:jm_add (this :f_list) (this :f_SPECIAL_BUTTON_THREE))
            (:jm_add (this :f_list) (this :f_SPECIAL_BUTTON_ONE))
            (:jm_add (this :f_list) (this :f_SPECIAL_BUTTON_FIVE))
            (:jm_add (this :f_list) (this :f_SPECIAL_BUTTON_SIX))
            (:jm_updateAllList this (this :f_list) _inputToGameKeyMapping)))))
    
(set jm_updateAll (fn jm_updateAll [this _inputToGameKeyMapping]
        (:jm_updateAllList this (:jm_getList this) _inputToGameKeyMapping)))
    
(set jm_updateAllList (fn jm_updateAllList [this _list _inputToGameKeyMapping]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START)) (:jm_size _list))) this "updateAll")
        (do
            (var _index (JR/i32 (- (:jm_size _list) 1)))
            (while (>= _index 0)
                (do
            (var _touchButtonInput (:jm_get _list _index))
            (:jm_update _touchButtonInput _inputToGameKeyMapping))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_list)))))

(set jproto @{:jm_init jm_init :jm_updateAll jm_updateAll :jm_updateAllList jm_updateAllList :jm_getList jm_getList})


