# Generated Code Do Not Modify
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ../../../java/lang/System :as System)
(defn- ArrayUtil/jm_getInstance [& args] (JR/call jfile "./ArrayUtil" "jm_getInstance" args))
(defn- BasicArrayListS/jnew_1 [& args] (JR/call jfile "./BasicArrayListS" "jnew_1" args))

#This is a very fast and simple resizable list.
# Java class BasicArrayList
(var jproto nil)
(var jcell_SIZE :jnone)
(var jstatic_SIZE nil)
(var jnew_1 nil)
(var jm_addAt nil)
(var jm_add nil)
(var jm_removeAt nil)
(var jm_remove nil)
(var jm_removeAll2 nil)
(var jm_addAll2 nil)
(var jm_addAllList nil)
(var jm_addAll nil)
(var jm_ensureCapacity nil)
(var jm_trimToSize nil)
(var jm_indexOf nil)
(var jm_lastIndexOf nil)
(var jm_get nil)
(var jm_set nil)
(var jm_clear nil)
(var jm_size nil)
(var jm_isEmpty nil)
(var jm_contains nil)
(var jm_toArray nil)
(var jm_toArrayType nil)
(var jm_clone nil)
(var jm_toString nil)

(set jstatic_SIZE (fn jstatic_SIZE []
  (when (= jcell_SIZE :jnone) (set jcell_SIZE ", Size: "))
  jcell_SIZE))

    
(set jnew_1 (fn jnew_1 [_objectArray]
    (var this (table/setproto @{:jclass "BasicArrayList" :f_arrayUtil nil :f_objectArray nil :f_currentIndex 0} jproto))
    (put this :f_arrayUtil (ArrayUtil/jm_getInstance))
    
    (put this :f_currentIndex 0)
        (set (this :f_objectArray) _objectArray)
    this))
    
(set jm_addAt (fn jm_addAt [this _index _element]
        (if (or (> _index (this :f_currentIndex)) (< _index 0))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_INDEX_LABEL))
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer (jstatic_SIZE))
            (:jm_appendint _stringBuffer (this :f_currentIndex))
            (error (JR/newException "IndexOutOfBoundsException" (:jm_toString _stringBuffer)))))
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentIndex) 1)))
        (JR/arraycopy (this :f_objectArray) _index (this :f_objectArray) (JR/i32 (+ _index 1)) (JR/i32 (- (this :f_currentIndex) _index)))
        (set ((this :f_objectArray) _index) _element)
        (set (this :f_currentIndex) (JR/i32 (+ (this :f_currentIndex) 1)))))
    
(set jm_add (fn jm_add [this _anyType]
    (label jreturn
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentIndex) 1)))
        (set ((this :f_objectArray) (do (def jold (this :f_currentIndex)) (set (this :f_currentIndex) (JR/i32 (+ (this :f_currentIndex) 1))) jold)) _anyType)
        (return jreturn true))))
    
(set jm_removeAt (fn jm_removeAt [this _index]
    (label jreturn
        (if (>= _index (this :f_currentIndex))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_INDEX_LABEL))
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer (jstatic_SIZE))
            (:jm_appendint _stringBuffer (this :f_currentIndex))
            (error (JR/newException "IndexOutOfBoundsException" (:jm_toString _stringBuffer)))))
        (var _oldValue ((this :f_objectArray) _index))
        (var _numMoved (JR/i32 (- (JR/i32 (- (this :f_currentIndex) _index)) 1)))
        (if (> _numMoved 0)
            (do
            (JR/arraycopy (this :f_objectArray) (JR/i32 (+ _index 1)) (this :f_objectArray) _index _numMoved)))
        (set ((this :f_objectArray) (set (this :f_currentIndex) (JR/i32 (- (this :f_currentIndex) 1)))) nil)
        (return jreturn _oldValue))))
    
(set jm_remove (fn jm_remove [this _anyType]
    (label jreturn
        (if (nil? _anyType)
            (do
            (do
                (var _index 0)
                (while (< _index (this :f_currentIndex))
                    (do
                (if (nil? ((this :f_objectArray) _index))
                    (do
                    (var _numMoved (JR/i32 (- (JR/i32 (- (this :f_currentIndex) _index)) 1)))
                    (if (> _numMoved 0)
                        (do
                        (JR/arraycopy (this :f_objectArray) (JR/i32 (+ _index 1)) (this :f_objectArray) _index _numMoved)))
                    (set ((this :f_objectArray) (set (this :f_currentIndex) (JR/i32 (- (this :f_currentIndex) 1)))) nil)
                    (return jreturn true))))
                    (do (set _index (JR/i32 (+ _index 1)))))))
            (do
            (do
                (var _index 0)
                (while (< _index (this :f_currentIndex))
                    (do
                (if (or (= _anyType ((this :f_objectArray) _index)) (= _anyType ((this :f_objectArray) _index)))
                    (do
                    (var _numMoved (JR/i32 (- (JR/i32 (- (this :f_currentIndex) _index)) 1)))
                    (if (> _numMoved 0)
                        (do
                        (JR/arraycopy (this :f_objectArray) (JR/i32 (+ _index 1)) (this :f_objectArray) _index _numMoved)))
                    (set ((this :f_objectArray) (set (this :f_currentIndex) (JR/i32 (- (this :f_currentIndex) 1)))) nil)
                    (return jreturn true))))
                    (do (set _index (JR/i32 (+ _index 1))))))))
        (return jreturn false))))
    
(set jm_removeAll2 (fn jm_removeAll2 [this _list]
    (label jreturn
        (var _result true)
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (:jm_remove this (:jm_get _list _index))
                (do
                nil)
                (do
                (set _result false))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _result))))
    
(set jm_addAll2 (fn jm_addAll2 [this _list]
    (label jreturn
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentIndex) (_list :f_currentIndex))))
        (var _listSize (_list :f_currentIndex))
        (do
            (var _index 0)
            (while (< _index _listSize)
                (do
            (set ((this :f_objectArray) (do (def jold (this :f_currentIndex)) (set (this :f_currentIndex) (JR/i32 (+ (this :f_currentIndex) 1))) jold)) ((_list :f_objectArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn true))))
    
(set jm_addAllList (fn jm_addAllList [this _list]
    (label jreturn
        (var _newObjectArray (:jm_toArray _list))
        (return jreturn (:jm_addAll this _newObjectArray)))))
    
(set jm_addAll (fn jm_addAll [this _newObjectArray]
    (label jreturn
        (var _numSize (length _newObjectArray))
        (:jm_ensureCapacity this (JR/i32 (+ (this :f_currentIndex) _numSize)))
        (JR/arraycopy _newObjectArray 0 (this :f_objectArray) (this :f_currentIndex) _numSize)
        (set (this :f_currentIndex) (JR/i32 (+ (this :f_currentIndex) _numSize)))
        (return jreturn (not= _numSize 0)))))
    
(set jm_ensureCapacity (fn jm_ensureCapacity [this _minSize]
        (var _oldCapacity (length (this :f_objectArray)))
        (if (> _minSize _oldCapacity)
            (do
            (var _newCapacity (JR/i32 (+ (brshift (JR/i32 (* _oldCapacity 3)) 1) 1)))
            (if (< _newCapacity _minSize)
                (do
                (set _newCapacity _minSize)))
            (set (this :f_objectArray) (:jm_copyOf (this :f_arrayUtil) (this :f_objectArray) _newCapacity))))))
    
(set jm_trimToSize (fn jm_trimToSize [this]
        (var _oldCapacity (length (this :f_objectArray)))
        (if (< (this :f_currentIndex) _oldCapacity)
            (do
            (set (this :f_objectArray) (:jm_copyOf (this :f_arrayUtil) (this :f_objectArray) (this :f_currentIndex)))))))
    
(set jm_indexOf (fn jm_indexOf [this _anyType]
    (label jreturn
        (if (nil? _anyType)
            (do
            (do
                (var _i 0)
                (while (< _i (this :f_currentIndex))
                    (do
                (if (nil? ((this :f_objectArray) _i))
                    (do
                    (return jreturn _i))))
                    (do (set _i (JR/i32 (+ _i 1)))))))
            (do
            (do
                (var _i 0)
                (while (< _i (this :f_currentIndex))
                    (do
                (if (= _anyType ((this :f_objectArray) _i))
                    (do
                    (return jreturn _i))))
                    (do (set _i (JR/i32 (+ _i 1))))))))
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_lastIndexOf (fn jm_lastIndexOf [this _anyType]
    (label jreturn
        (if (nil? _anyType)
            (do
            (do
                (var _i (JR/i32 (- (this :f_currentIndex) 1)))
                (while (>= _i 0)
                    (do
                (if (nil? ((this :f_objectArray) _i))
                    (do
                    (return jreturn _i))))
                    (do (set _i (JR/i32 (- _i 1)))))))
            (do
            (do
                (var _i (JR/i32 (- (this :f_currentIndex) 1)))
                (while (>= _i 0)
                    (do
                (if (= _anyType ((this :f_objectArray) _i))
                    (do
                    (return jreturn _i))))
                    (do (set _i (JR/i32 (- _i 1))))))))
        (return jreturn (JR/i32 (- 1))))))
    
(set jm_get (fn jm_get [this _index]
    (label jreturn
        (if (>= _index (this :f_currentIndex))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_INDEX_LABEL))
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer (jstatic_SIZE))
            (:jm_appendint _stringBuffer (this :f_currentIndex))
            (error (JR/newException "IndexOutOfBoundsException" (:jm_toString _stringBuffer)))))
        (return jreturn ((this :f_objectArray) _index)))))
    
(set jm_set (fn jm_set [this _index _element]
    (label jreturn
        (if (>= _index (this :f_currentIndex))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_INDEX_LABEL))
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer (jstatic_SIZE))
            (:jm_appendint _stringBuffer (this :f_currentIndex))
            (error (JR/newException "IndexOutOfBoundsException" (:jm_toString _stringBuffer)))))
        (var _oldValue ((this :f_objectArray) _index))
        (set ((this :f_objectArray) _index) _element)
        (return jreturn _oldValue))))
    
(set jm_clear (fn jm_clear [this]
        (do
            (var _i 0)
            (while (< _i (this :f_currentIndex))
                (do
            (set ((this :f_objectArray) _i) nil))
                (do (set _i (JR/i32 (+ _i 1))))))
        (set (this :f_currentIndex) 0)))
    
(set jm_size (fn jm_size [this]
    (label jreturn
        (return jreturn (this :f_currentIndex)))))
    
(set jm_isEmpty (fn jm_isEmpty [this]
    (label jreturn
        (return jreturn (= (this :f_currentIndex) 0)))))
    
(set jm_contains (fn jm_contains [this _anyType]
    (label jreturn
        (return jreturn (>= (:jm_indexOf this _anyType) 0)))))
    
(set jm_toArray (fn jm_toArray [this]
    (label jreturn
        (return jreturn (:jm_copyOf (this :f_arrayUtil) (this :f_objectArray) (this :f_currentIndex))))))
    
(set jm_toArrayType (fn jm_toArrayType [this _objectArray]
    (label jreturn
        (if (< (length _objectArray) (this :f_currentIndex))
            (do
            (return jreturn (:jm_copyOfType (this :f_arrayUtil) (this :f_objectArray) (this :f_currentIndex) (JR/className _objectArray)))))
        (JR/arraycopy (this :f_objectArray) 0 _objectArray 0 (this :f_currentIndex))
        (if (> (length _objectArray) (this :f_currentIndex))
            (do
            (set (_objectArray (this :f_currentIndex)) nil)))
        (return jreturn _objectArray))))
    
(set jm_clone (fn jm_clone [this]
    (label jreturn
        (var _size (:jm_size this))
        (var _list (BasicArrayListS/jnew_1 _size))
        (var _anyType nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _anyType ((this :f_objectArray) _index))
            (:jm_add _list _anyType))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _list))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _COMMA_SEP ((CommonSeps/jm_getInstance) :f_COMMA_SEP))
        (var _stringBuffer (StringMaker/jnew_0))
        (do
            (var _index 0)
            (while (< _index (this :f_currentIndex))
                (do
            (:jm_append _stringBuffer (JR/toString ((this :f_objectArray) _index)))
            (:jm_append _stringBuffer _COMMA_SEP))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_addAt jm_addAt :jm_add jm_add :jm_removeAt jm_removeAt :jm_remove jm_remove :jm_removeAll2 jm_removeAll2 :jm_addAll2 jm_addAll2 :jm_addAllList jm_addAllList :jm_addAll jm_addAll :jm_ensureCapacity jm_ensureCapacity :jm_trimToSize jm_trimToSize :jm_indexOf jm_indexOf :jm_lastIndexOf jm_lastIndexOf :jm_get jm_get :jm_set jm_set :jm_clear jm_clear :jm_size jm_size :jm_isEmpty jm_isEmpty :jm_contains jm_contains :jm_toArray jm_toArray :jm_toArrayType jm_toArrayType :jm_clone jm_clone :jm_toString jm_toString})


