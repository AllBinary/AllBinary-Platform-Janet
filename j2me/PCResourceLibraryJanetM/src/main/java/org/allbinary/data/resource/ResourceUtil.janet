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
# package org.allbinary.data.resource

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/ByteArrayInputStream :as ByteArrayInputStream)
(import ../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../java/io/FileInputStream :as FileInputStream)
(import ../../../../java/io/InputStream :as InputStream)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StreamUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/io/StreamUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

#J2SE - PC
# Java class ResourceUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setLoadingPaths nil)
(var jm_setClassLoader nil)
(var jm_getResourceAsStream nil)
(var jm_getResourceAsStreamAtStart nil)
(var jm_addResource nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResourceUtil" :f_logUtil nil :f_path nil :f_ext nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_path ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_ext ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    this))
    
(set jm_setLoadingPaths (fn jm_setLoadingPaths [this _path _ext]
        (set (this :f_path) _path)
        (set (this :f_ext) _ext)))
    
(set jm_setClassLoader (fn jm_setClassLoader [this _classLoader]
    nil))
    
(set jm_getResourceAsStream (fn jm_getResourceAsStream [this _resource]
    (label jreturn
        (var _inputStream (:jm_getResourceAsStreamAtStart this _resource 2))
        (if (nil? _inputStream)
            (do
            (set _inputStream (:jm_getResourceAsStreamAtStart this _resource 1))
            (if (nil? _inputStream)
                (do
                (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Unable to obtain: ") _resource))))))))
        (return jreturn _inputStream))))
    
(set jm_getResourceAsStreamAtStart (fn jm_getResourceAsStreamAtStart [this _resource _startIndex]
    (label jreturn
        (var _inputStream (FileInputStream/jnew_1 (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_path)) _resource) (this :f_ext)))))
        (if (not (nil? _inputStream))
            (do
            (var _byteArray (array/new-filled (:jm_available _inputStream) 0))
            (:jm_getByteArray (StreamUtil/jm_getInstance) _inputStream (ByteArrayOutputStream/jnew_0) _byteArray)
            (return jreturn (ByteArrayInputStream/jnew_1 _byteArray))))
        (return jreturn _inputStream))))
    
(set jm_addResource (fn jm_addResource [this _resource _value]
    nil))

(set jproto @{:jm_setLoadingPaths jm_setLoadingPaths :jm_setClassLoader jm_setClassLoader :jm_getResourceAsStream jm_getResourceAsStream :jm_getResourceAsStreamAtStart jm_getResourceAsStreamAtStart :jm_addResource jm_addResource})


