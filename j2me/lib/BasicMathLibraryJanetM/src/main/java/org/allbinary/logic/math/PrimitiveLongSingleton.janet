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

# Java class PrimitiveLongSingleton
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getNumberFromChar nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PrimitiveLongSingleton" :f_UNK nil :f_NUMBER_ARRAY nil :f_NUMBER_CHAR_ARRAY nil :f_NUMBER_CHAR_ARRAYS nil :f_ZERO nil} jproto))
    (put this :f_UNK @[(get "U" 0) (get "n" 0) (get "k" 0)])
    (put this :f_NUMBER_ARRAY @[0 1 2 3 4 5 6 7 8 9])
    (put this :f_NUMBER_CHAR_ARRAY @[(get "0" 0) (get "1" 0) (get "2" 0) (get "3" 0) (get "4" 0) (get "5" 0) (get "6" 0) (get "7" 0) (get "8" 0) (get "9" 0)])
    (put this :f_NUMBER_CHAR_ARRAYS @[@[(get "0" 0)] @[(get "1" 0)] @[(get "2" 0)] @[(get "3" 0)] @[(get "4" 0)] @[(get "5" 0)] @[(get "6" 0)] @[(get "7" 0)] @[(get "8" 0)] @[(get "9" 0)]])
    (put this :f_ZERO @[((this :f_NUMBER_CHAR_ARRAY) 0)])
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getNumberFromChar (fn jm_getNumberFromChar [this _numberAsChar]
    (label jreturn
        (var _size (length (this :f_NUMBER_CHAR_ARRAY)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (= ((this :f_NUMBER_CHAR_ARRAY) _index) _numberAsChar)
                (do
                (return jreturn ((this :f_NUMBER_ARRAY) _index)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (error (JR/newException "Exception" (:jm_toString (:jm_appendchar (:jm_append (StringMaker/jnew_0) "numberAsChar was not in array: ") _numberAsChar)))))))

(set jproto @{:jm_getNumberFromChar jm_getNumberFromChar})


