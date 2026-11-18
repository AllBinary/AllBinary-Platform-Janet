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
(import ../../../../java/io/InputStream :as InputStream)
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(import ../../../../java/lang/Thread :as Thread)

#J2SE - J2ME
# Java class ResourceUtil
(var jproto nil)
(var jcell_classLoader :jnone)
(var jstatic_classLoader nil)
(var jsetstatic_classLoader nil)
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

(set jstatic_classLoader (fn jstatic_classLoader []
  (when (= jcell_classLoader :jnone) (set jcell_classLoader ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_classLoader))
(set jsetstatic_classLoader (fn jsetstatic_classLoader [value] (set jcell_classLoader value)))

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ResourceUtil" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))
    
(set jm_setLoadingPaths (fn jm_setLoadingPaths [this _path _ext]
        (:jm_putF (this :f_logUtil) ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED) this "setLoadingPaths")))
    
(set jm_setClassLoader (fn jm_setClassLoader [this _classLoader]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Resource Loader: ") (JR/className _classLoader))) this "setClassLoader")
        (set jcell_classLoader _classLoader)))
    
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
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _index (JR/indexOf _resource (_commonSeps :f_COLON)))
        (var _resourcePath (JR/substring _resource (JR/i32 (+ _index _startIndex))))
        (var _inputStream (JR/className (JR/className _resource)))
        (if (not (nil? _inputStream))
            (do
            (return jreturn _inputStream)))
        (var _classLoader (jstatic_classLoader))
        (set _inputStream (:jm_getResourceAsStream _classLoader _resourcePath))
        (if (not (nil? _inputStream))
            (do
            (return jreturn _inputStream)))
        (set _inputStream (JR/className (JR/className (Thread/jm_currentThread))))
        (if (not (nil? _inputStream))
            (do
            (return jreturn _inputStream)))
        (return jreturn _inputStream))))
    
(set jm_addResource (fn jm_addResource [this _resource _value]
    nil))

(set jproto @{:jm_setLoadingPaths jm_setLoadingPaths :jm_setClassLoader jm_setClassLoader :jm_getResourceAsStream jm_getResourceAsStream :jm_getResourceAsStreamAtStart jm_getResourceAsStreamAtStart :jm_addResource jm_addResource})


