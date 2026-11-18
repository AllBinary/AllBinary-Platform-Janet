# Generated Code Do Not Modify
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ../../../java/lang/System :as System)

# Java class ArrayUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_copyOf nil)
(var jm_copyOfType nil)
(var jm_copyOfbyte nil)
(var jm_copyOfshort nil)
(var jm_copyOfint nil)
(var jm_copyOflong nil)
(var jm_copyOfchar nil)
(var jm_copyOffloat nil)
(var jm_copyOfdouble nil)
(var jm_copyOfboolean nil)
(var jm_reverse nil)
(var jm_flip nil)
(var jm_toStringFromTwoDimensionaArray nil)
(var jm_toStringFromObjectArray nil)
(var jm_toStringFromByteArray nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ArrayUtil" :f_mathUtil nil} jproto))
    (put this :f_mathUtil (MathUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_copyOf (fn jm_copyOf [this _original _newLength]
    (label jreturn
        (return jreturn (:jm_copyOfType this _original _newLength (JR/className _original))))))
    
(set jm_copyOfType (fn jm_copyOfType [this _original _newLength _newType]
    (label jreturn
        (var _copy (array/new-filled _newLength nil))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOfbyte (fn jm_copyOfbyte [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOfshort (fn jm_copyOfshort [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOfint (fn jm_copyOfint [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOflong (fn jm_copyOflong [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOfchar (fn jm_copyOfchar [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOffloat (fn jm_copyOffloat [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0.0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOfdouble (fn jm_copyOfdouble [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength 0.0))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_copyOfboolean (fn jm_copyOfboolean [this _original _newLength]
    (label jreturn
        (var _copy (array/new-filled _newLength false))
        (JR/arraycopy _original 0 _copy 0 (:jm_min (this :f_mathUtil) (length _original) _newLength))
        (return jreturn _copy))))
    
(set jm_reverse (fn jm_reverse [this _intArray]
        (var _length (JR/i32 (- (length _intArray) 1)))
        (var _temp 0)
        (var _size (JR/idiv _length 2))
        (do
            (var _index 0)
            (while (<= _index _size)
                (do
            (set _temp (_intArray _index))
            (set (_intArray _index) (_intArray (JR/i32 (- _length _index))))
            (set (_intArray (JR/i32 (- _length _index))) _temp))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_flip (fn jm_flip [this _intArray _width _height]
        (var _length (JR/i32 (- _height 1)))
        (var _temp 0)
        (var _index 0)
        (var _rowIndex 0)
        (do
            (var _y 0)
            (while (<= _y (JR/idiv _length 2))
                (do
            (do
                (var _x 0)
                (while (< _x _width)
                    (do
                (set _rowIndex (JR/i32 (* (JR/i32 (- _length _y)) _width)))
                (set _index (JR/i32 (+ _x (JR/i32 (* _y _width)))))
                (set _temp (_intArray _index))
                (set (_intArray _index) (_intArray (JR/i32 (+ _rowIndex _x))))
                (set (_intArray (JR/i32 (+ _rowIndex _x))) _temp))
                    (do (set _x (JR/i32 (+ _x 1)))))))
                (do (set _y (JR/i32 (+ _y 1))))))))
    
(set jm_toStringFromTwoDimensionaArray (fn jm_toStringFromTwoDimensionaArray [this _twoDimensionalIntArray]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _endIndex (length _twoDimensionalIntArray))
        (var _endIndex2 (length (_twoDimensionalIntArray 0)))
        (do
            (var _index 0)
            (while (< _index _endIndex)
                (do
            (:jm_append _stringBuffer (_commonSeps :f_BRACE_OPEN))
            (do
                (var _index2 0)
                (while (< _index2 _endIndex2)
                    (do
                (:jm_appendint _stringBuffer ((_twoDimensionalIntArray _index) _index2))
                (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP)))
                    (do (set _index2 (JR/i32 (+ _index2 1))))))
            (:jm_append _stringBuffer (_commonSeps :f_BRACE_CLOSE))
            (:jm_append _stringBuffer (_commonSeps :f_NEW_LINE)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_toStringFromObjectArray (fn jm_toStringFromObjectArray [this _objectArray]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (do
            (var _index 0)
            (while (< _index (length _objectArray))
                (do
            (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (_objectArray _index)))
            (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_toStringFromByteArray (fn jm_toStringFromByteArray [this _byteArray]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (do
            (var _index 0)
            (while (< _index (length _byteArray))
                (do
            (:jm_appendbyte _stringBuffer (_byteArray _index))
            (:jm_append _stringBuffer (_commonSeps :f_COMMA_SEP)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_copyOf jm_copyOf :jm_copyOfType jm_copyOfType :jm_copyOfbyte jm_copyOfbyte :jm_copyOfshort jm_copyOfshort :jm_copyOfint jm_copyOfint :jm_copyOflong jm_copyOflong :jm_copyOfchar jm_copyOfchar :jm_copyOffloat jm_copyOffloat :jm_copyOfdouble jm_copyOfdouble :jm_copyOfboolean jm_copyOfboolean :jm_reverse jm_reverse :jm_flip jm_flip :jm_toStringFromTwoDimensionaArray jm_toStringFromTwoDimensionaArray :jm_toStringFromObjectArray jm_toStringFromObjectArray :jm_toStringFromByteArray jm_toStringFromByteArray})


