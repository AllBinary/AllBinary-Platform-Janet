# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.io.file

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../../java/io/InputStream :as InputStream)
(import ../../../../../java/io/OutputStream :as OutputStream)
(import ../../../../../java/io/Reader :as Reader)
(import ../../../../../java/io/Writer :as Writer)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- NullOutputStream/jstatic_NULL_OUTPUT_STREAM [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/NullOutputStream" "jstatic_NULL_OUTPUT_STREAM" args))
(defn- NullReader/jstatic_NULL_READER [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/NullReader" "jstatic_NULL_READER" args))
(defn- NullWriter/jstatic_NULL_WRITER [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/NullWriter" "jstatic_NULL_WRITER" args))
(defn- StreamUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/io/StreamUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class SimpleFileUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_nullOutputStream nil)
(var jm_nullWriter nil)
(var jm_nullReader nil)
(var jm_loadFileAsList nil)
(var jm_loadFileAsListReturnLine nil)
(var jm_createStringFromArrayOfStrings nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SimpleFileUtil" :f_logUtil nil :f_NULL_WRITER nil :f_NULL_READER nil :f_commonStrings nil :f_nullUtil nil :f_streamUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_NULL_WRITER (jm_nullWriter))
    (put this :f_NULL_READER (jm_nullReader))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_nullUtil (NullUtil/jm_getInstance))
    (put this :f_streamUtil (StreamUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_nullOutputStream (fn jm_nullOutputStream []
    (label jreturn
        (return jreturn (NullOutputStream/jstatic_NULL_OUTPUT_STREAM)))))
    
(set jm_nullWriter (fn jm_nullWriter []
    (label jreturn
        (return jreturn (NullWriter/jstatic_NULL_WRITER)))))
    
(set jm_nullReader (fn jm_nullReader []
    (label jreturn
        (return jreturn (NullReader/jstatic_NULL_READER)))))
    
(set jm_loadFileAsList (fn jm_loadFileAsList [this _inputStream _max _byteArray1]
    (label jreturn
        (return jreturn (:jm_loadFileAsListReturnLine this _inputStream _max _byteArray1 0)))))
    
(set jm_loadFileAsListReturnLine (fn jm_loadFileAsListReturnLine [this _inputStream _max _byteArray1 _includeReturnLine]
    (label jreturn
        (var _stringList (BasicArrayListD/jnew_0))
        (if (nil? _inputStream)
            (do
            (return jreturn _stringList)))
        (var _byteArray ((this :f_nullUtil) :f_NULL_BYTE_ARRAY))
        (try
            (do
            (var _outputStream2 (ByteArrayOutputStream/jnew_1 _max))
            (set _byteArray (:jm_getByteArray (this :f_streamUtil) _inputStream _outputStream2 _byteArray1))
            (:jm_close (this :f_streamUtil) _inputStream))
            ([_e] (do
            (:jm_close (this :f_streamUtil) _inputStream)
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_ADD) _e))))
        (if (nil? _byteArray)
            (do
            (return jreturn _stringList)))
        (var _size (length _byteArray))
        (var _index 0)
        (var _startIndex 0)
        (var _returnLine 0)
        (do
            (while (< _index _size)
                (do
            (set _startIndex _index)
            (do
                (while (and (< _index (JR/i32 (- _size 1))) (not= (_byteArray _index) (JR/i8 (get "\n" 0))))
                    (do
                (set _index (JR/i32 (+ _index 1))))))
            (if (= _includeReturnLine 0)
                (do
                (if (and (> _index 0) (= (_byteArray (JR/i32 (- _index 1))) (JR/i8 (get "\r" 0))))
                    (do
                    (set _returnLine 1))
                    (do
                    (set _returnLine 0)))))
            (var _s (JR/fromChars _byteArray _startIndex (JR/i32 (- (JR/i32 (- (JR/i32 (+ _index _includeReturnLine)) _returnLine)) _startIndex))))
            (:jm_add _stringList _s)
            (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _stringList))))
    
(set jm_createStringFromArrayOfStrings (fn jm_createStringFromArrayOfStrings [this _stringArray]
    (label jreturn
        (var _stringMaker (StringMaker/jnew_0))
        (var _size (length _stringArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_append _stringMaker (_stringArray _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringMaker)))))

(set jproto @{:jm_loadFileAsList jm_loadFileAsList :jm_loadFileAsListReturnLine jm_loadFileAsListReturnLine :jm_createStringFromArrayOfStrings jm_createStringFromArrayOfStrings})


