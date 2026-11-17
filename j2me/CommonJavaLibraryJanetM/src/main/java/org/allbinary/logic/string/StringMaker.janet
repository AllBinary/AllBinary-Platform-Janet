# Generated Code Do Not Modify
# package org.allbinary.logic.string

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/lang/System :as System)
(import ../../../../java/lang/Integer :as Integer)
(import ../../../../java/lang/Long :as Long)
(import ../../../../java/lang/Float :as Float)

# Java class StringMaker
(var jproto nil)
(var jnew_0 nil)
(var jm_append nil)
(var jm_appendchar nil)
(var jm_appendCharArray nil)
(var jm_appendbyte nil)
(var jm_appendshort nil)
(var jm_appendint nil)
(var jm_appendlong nil)
(var jm_appendfloat nil)
(var jm_appendboolean nil)
(var jm_ensureCapacity nil)
(var jm_min nil)
(var jm_delete nil)
(var jm_length nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StringMaker" :f_charArray nil :f_currentLength 0} jproto))
    
    
        (set (this :f_charArray) (array/new-filled 20 0))
    this))
    
(set jm_append (fn jm_append [this _string]
    (label jreturn
        (var _stringLength (length _string))
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentLength) _stringLength)))
        (JR/getChars _string 0 _stringLength (this :f_charArray) (this :f_currentLength))
        (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) _stringLength)))
        (return jreturn this))))
    
(set jm_appendchar (fn jm_appendchar [this _c]
    (label jreturn
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentLength) 1)))
        (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) _c)
        (return jreturn this))))
    
(set jm_appendCharArray (fn jm_appendCharArray [this _charArray _start _end]
    (label jreturn
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentLength) (JR/i32 (- _end _start)))))
        (do
            (var _index _start)
            (while (< _index _end)
                (do
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (_charArray _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn this))))
    
(set jm_appendbyte (fn jm_appendbyte [this _b]
    (label jreturn
        (:jm_append this (JR/str _b))
        (return jreturn this))))
    
(set jm_appendshort (fn jm_appendshort [this _b]
    (label jreturn
        (:jm_append this (JR/str _b))
        (return jreturn this))))
    
(set jm_appendint (fn jm_appendint [this _i]
    (label jreturn
        (:jm_append this (JR/str _i))
        (return jreturn this))))
    
(set jm_appendlong (fn jm_appendlong [this _l]
    (label jreturn
        (:jm_append this (JR/str _l))
        (return jreturn this))))
    
(set jm_appendfloat (fn jm_appendfloat [this _f]
    (label jreturn
        (:jm_append this (JR/float _f))
        (return jreturn this))))
    
(set jm_appendboolean (fn jm_appendboolean [this _bool]
    (label jreturn
        (if _bool
            (do
            (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentLength) 4)))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "t" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "r" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "u" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "e" 0)))
            (do
            (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentLength) 5)))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "f" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "a" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "l" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "s" 0))
            (set ((this :f_charArray) (do (def jold (this :f_currentLength)) (set (this :f_currentLength) (JR/i32 (+ (this :f_currentLength) 1))) jold)) (get "e" 0))))
        (return jreturn this))))
    
(set jm_ensureCapacity (fn jm_ensureCapacity [this _minSize]
        (var _oldCapacity (length (this :f_charArray)))
        (if (> _minSize _oldCapacity)
            (do
            (var _newCapacity (JR/i32 (* _oldCapacity 3)))
            (if (< _newCapacity _minSize)
                (do
                (set _newCapacity _minSize)))
            (var _copy (array/new-filled _newCapacity 0))
            (var _min (:jm_min this (length (this :f_charArray)) _newCapacity))
            (JR/arraycopy (this :f_charArray) 0 _copy 0 _min)
            (set (this :f_charArray) _copy)))))
    
(set jm_min (fn jm_min [this _value _value2]
    (label jreturn
        (return jreturn (if (<= _value _value2) _value _value2)))))
    
(set jm_delete (fn jm_delete [this _start _end]
    (label jreturn
        (set (this :f_currentLength) (JR/i32 (- (this :f_currentLength) (JR/i32 (- _end _start)))))
        (return jreturn this))))
    
(set jm_length (fn jm_length [this]
    (label jreturn
        (return jreturn (this :f_currentLength)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (JR/fromChars (this :f_charArray) 0 (this :f_currentLength))))))

(set jproto @{:jm_append jm_append :jm_appendchar jm_appendchar :jm_appendCharArray jm_appendCharArray :jm_appendbyte jm_appendbyte :jm_appendshort jm_appendshort :jm_appendint jm_appendint :jm_appendlong jm_appendlong :jm_appendfloat jm_appendfloat :jm_appendboolean jm_appendboolean :jm_ensureCapacity jm_ensureCapacity :jm_min jm_min :jm_delete jm_delete :jm_length jm_length :jm_toString jm_toString})


