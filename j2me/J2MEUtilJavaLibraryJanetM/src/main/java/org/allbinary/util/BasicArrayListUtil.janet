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
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))
(import ../../../java/lang/System :as System)
(defn- ImmutableBasicArrayList/jnew_2 [& args] (JR/call jfile "./ImmutableBasicArrayList" "jnew_2" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "./BasicArrayListD" "jnew_0" args))

# Java class BasicArrayListUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getRandom nil)
(var jm_getRandomIndex nil)
(var jm_reverse nil)
(var jm_log nil)
(var jm_getImmutableInstance nil)
(var jm_main nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicArrayListUtil" :f_NULL_ARRAY_OF_ARRAY nil :f_myRandomFactory nil :f_immutableInstance nil} jproto))
    (put this :f_NULL_ARRAY_OF_ARRAY (seq [jindex1 :range [0 0]] (array/new-filled 0 nil)))
    (put this :f_myRandomFactory (MyRandomFactory/jm_getInstance))
    (put this :f_immutableInstance (ImmutableBasicArrayList/jnew_2 "Immutable" 0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getRandom (fn jm_getRandom [this _list]
    (label jreturn
        (var _i_random (:jm_getRandomIndex this _list))
        (return jreturn ((_list :f_objectArray) _i_random)))))
    
(set jm_getRandomIndex (fn jm_getRandomIndex [this _list]
    (label jreturn
        (return jreturn (:jm_getAbsoluteNextInt (this :f_myRandomFactory) (:jm_size _list))))))
    
(set jm_reverse (fn jm_reverse [this _list]
        (var _lastMinusOneIndex (JR/i32 (- (:jm_size _list) 2)))
        (var _temp nil)
        (var _size (JR/idiv _lastMinusOneIndex 2))
        (var _secondSwapIndex 0)
        (do
            (var _index 0)
            (while (<= _index _size)
                (do
            (set _secondSwapIndex (JR/i32 (- _lastMinusOneIndex _index)))
            (set _temp (:jm_removeAt _list _index))
            (:jm_addAt _list _index (:jm_removeAt _list _secondSwapIndex))
            (:jm_addAt _list (JR/i32 (+ _secondSwapIndex 1)) _temp))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_log (fn jm_log [this _list]
    (label jreturn
        (var _S_LABEL " s: ")
        (var _size (:jm_size _list))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_TOTAL_LABEL))
        (:jm_appendint _stringBuffer _size)
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (var _usedList ((_list :f_objectArray) _index))
            (:jm_append _stringBuffer _S_LABEL)
            (:jm_appendint _stringBuffer (:jm_size _usedList)))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getImmutableInstance (fn jm_getImmutableInstance [this]
    (label jreturn
        (return jreturn (this :f_immutableInstance)))))
    
(set jm_main (fn jm_main [_args]
        (var _commonPhoneStrings (CommonPhoneStrings/jm_getInstance))
        (var _list (BasicArrayListD/jnew_0))
        (:jm_add _list (_commonPhoneStrings :f_ONE))
        (:jm_add _list (_commonPhoneStrings :f_TWO))
        (:jm_add _list (_commonPhoneStrings :f_THREE))
        (:jm_add _list (_commonPhoneStrings :f_FOUR))
        (:jm_add _list (_commonPhoneStrings :f_FIVE))
        (:jm_add _list (_commonPhoneStrings :f_SIX))
        (:jm_add _list (_commonPhoneStrings :f_SEVEN))
        (:jm_add _list (_commonPhoneStrings :f_EIGHT))
        (:jm_add _list (_commonPhoneStrings :f_NINE))
        (:jm_reverse (jm_getInstance) _list)
        (print (:jm_toString _list))))

(set jproto @{:jm_getRandom jm_getRandom :jm_getRandomIndex jm_getRandomIndex :jm_reverse jm_reverse :jm_log jm_log :jm_getImmutableInstance jm_getImmutableInstance})


