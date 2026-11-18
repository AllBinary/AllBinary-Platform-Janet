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
# package org.allbinary.data

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- Tokenizer/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/logic/string/tokens/Tokenizer" "jnew_1" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../java/lang/Character :as Character)

# Java class CamelCaseUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getAsCamelCase nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CamelCaseUtil" :f_commonSeps nil} jproto))
    (put this :f_commonSeps (CommonSeps/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getAsCamelCase (fn jm_getAsCamelCase [this _string _stringBuilder]
    (label jreturn
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (:jm_delete _stringBuilder 0 (:jm_length _stringBuilder))
        (var _list (BasicArrayListD/jnew_0))
        (var _tokenizer (Tokenizer/jnew_1 ((this :f_commonSeps) :f_UNDERSCORE)))
        (:jm_getTokensFromString _tokenizer _string _list)
        (var _size (:jm_size _list))
        (var _word nil)
        (do
            (var _i 0)
            (while (< _i _size)
                (do
            (set _word (:jm_get _list _i))
            (set _word (if (:jm_isEmpty _stringValidationUtil _word) _word (:jm_toString (:jm_append (:jm_appendchar (StringMaker/jnew_0) (Character/jm_toUpperCase (get _word 0))) (JR/toLowerCase (JR/substring _word 1))))))
            (:jm_append _stringBuilder _word))
                (do (set _i (JR/i32 (+ _i 1))))))
        (return jreturn (:jm_toString _stringBuilder)))))

(set jproto @{:jm_getAsCamelCase jm_getAsCamelCase})


