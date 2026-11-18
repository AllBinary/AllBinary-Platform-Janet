# Generated Code Do Not Modify
# package org.allbinary.logic.math.permutations

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../../org/allbinary/logic/util/visitor/Visitor :as Visitor)
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ../../../../../java/lang/System :as System)

# Java class IntPermutationVisitor
(var jproto nil)
(var jnew_1 nil)
(var jm_visit nil)
(var jm_print_1 nil)
(var jm_print_2 nil)

    
(set jnew_1 (fn jnew_1 [_data]
    (var this (table/setproto @{:jclass "IntPermutationVisitor" :f_data nil :f_stringBuilder nil} jproto))
    
    (put this :f_stringBuilder (StringMaker/jnew_0))
    (JR/superInit this (Visitor/jnew_0))
        (set (this :f_data) _data)
    this))
    
(set jm_visit (fn jm_visit [this _anyType]
    (label jreturn
        (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
        (:jm_print_2 this (this :f_data) (this :f_stringBuilder))
        (return jreturn ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))))
    
(set jm_print_1 (fn jm_print_1 [this _data]
        (var _stringBuilder (StringMaker/jnew_0))
        (:jm_print_2 this _data _stringBuilder)))
    
(set jm_print_2 (fn jm_print_2 [this _data _stringBuilder]
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _size (length _data))
        (do
            (var _i 0)
            (while (< _i _size)
                (do
            (:jm_appendint _stringBuilder (_data _i))
            (:jm_append _stringBuilder (_commonSeps :f_SPACE)))
                (do (set _i (JR/i32 (+ _i 1))))))
        (print (:jm_toString _stringBuilder))))

(set jproto (table/setproto @{:jm_visit jm_visit :jm_print_1 jm_print_1 :jm_print_2 jm_print_2} Visitor/jproto))


