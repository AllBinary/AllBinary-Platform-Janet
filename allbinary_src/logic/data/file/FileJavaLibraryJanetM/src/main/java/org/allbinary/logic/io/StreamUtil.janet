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
# package org.allbinary.logic.io

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../java/io/Closeable :as Closeable)
(import ../../../../java/io/InputStream :as InputStream)
(import ../../../../java/io/OutputStream :as OutputStream)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class StreamUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_get nil)
(var jm_getByteArray nil)
(var jm_close nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StreamUtil" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))
    
(set jm_get (fn jm_get [this _inputStream _outputStream _buffer]
    (label jreturn
        (var _len 0)
        (do
            (var jbreak false)
            (while (and (not jbreak) true)
                (label jcontinue
            (set _len (:jm_read _inputStream _buffer 0 (length _buffer)))
            (if (not= _len (JR/i32 (- 1)))
                (do
                nil)
                (do
                (do (set jbreak true) (return jcontinue))))
            (:jm_write _outputStream _buffer 0 _len))))
        (return jreturn _outputStream))))
    
(set jm_getByteArray (fn jm_getByteArray [this _inputStream _outputStream2 _byteArray]
    (label jreturn
        (var _outputStream _outputStream2)
        (defer (do
            (:jm_close this _outputStream))
            (try
            (do
            (:jm_get this _inputStream _outputStream _byteArray)
            (return jreturn (:jm_toByteArray _outputStream)))
            ([_e] (do
            (error _e))))))))
    
(set jm_close (fn jm_close [this _closeable]
    (label jreturn
        (try
            (do
            (if (not (nil? _closeable))
                (do
                (:jm_close _closeable)))
            (return jreturn true))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CLOSE) _e)
            (return jreturn false)))))))

(set jproto @{:jm_get jm_get :jm_getByteArray jm_getByteArray :jm_close jm_close})


