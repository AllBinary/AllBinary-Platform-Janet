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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

#J2ME
# Java class ResourceUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setLoadingPaths nil)
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
    (var this (table/setproto @{:jclass "ResourceUtil" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))
    
(set jm_setLoadingPaths (fn jm_setLoadingPaths [this _path _ext]
        (:jm_putF (this :f_logUtil) ((CommonStrings/jm_getInstance) :f_NOT_IMPLEMENTED) this "setLoadingPaths")))
    
(set jm_getResourceAsStream (fn jm_getResourceAsStream [this _resource]
    (label jreturn
        (var _inputStream (JR/className (JR/className _resource)))
        (if (nil? _inputStream)
            (do
            (set _inputStream (:jm_getResourceAsStreamAtStart this _resource 2))
            (if (nil? _inputStream)
                (do
                (set _inputStream (:jm_getResourceAsStreamAtStart this _resource 1))
                (if (nil? _inputStream)
                    (do
                    (var _stringMaker (StringMaker/jnew_0))
                    (var _index (JR/lastIndexOf _resource (get "/" 0)))
                    (var _resourcePath (JR/substring _resource (JR/i32 (+ _index 1))))
                    (set _inputStream (JR/className (JR/className _resource)))
                    (if (nil? _inputStream)
                        (do
                        (set _resourcePath (JR/substring _resource _index))
                        (set _inputStream (JR/className (JR/className _resource)))
                        (if (nil? _inputStream)
                            (do
                            (var _RES "res")
                            (set _resourcePath (:jm_toString (:jm_append (:jm_append _stringMaker _RES) (JR/substring _resource _index))))
                            (set _inputStream (JR/className (JR/className _resource)))
                            (if (nil? _inputStream)
                                (do
                                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                                (set _resourcePath (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker "/") _RES) (JR/substring _resource _index))))
                                (set _inputStream (JR/className (JR/className _resource)))
                                (var _COLON ((CommonSeps/jm_getInstance) :f_COLON))
                                (if (nil? _inputStream)
                                    (do
                                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                                    (set _resourcePath (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker _RES) _COLON) (JR/substring _resource _index))))
                                    (set _inputStream (JR/className (JR/className _resource)))
                                    (if (nil? _inputStream)
                                        (do
                                        (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                                        (set _resourcePath (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker _RES) _COLON) (JR/substring _resource (JR/i32 (+ _index 1))))))
                                        (set _inputStream (JR/className (JR/className _resource)))
                                        (if (nil? _inputStream)
                                            (do
                                            (var _RESOURCE_STRING "resource")
                                            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                                            (set _resourcePath (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker _RESOURCE_STRING) _COLON) (JR/substring _resource _index))))
                                            (set _inputStream (JR/className (JR/className _resource)))
                                            (if (nil? _inputStream)
                                                (do
                                                (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                                                (set _resourcePath (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker _RESOURCE_STRING) _COLON) (JR/substring _resource (JR/i32 (+ _index 1))))))
                                                (set _inputStream (JR/className (JR/className _resource)))
                                                (if (nil? _inputStream)
                                                    (do
                                                    (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
                                                    (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append _stringMaker "Unable to obtain: ") _resource))))))))))))))))))))))))))
        (return jreturn _inputStream))))
    
(set jm_getResourceAsStreamAtStart (fn jm_getResourceAsStreamAtStart [this _resource _startIndex]
    (label jreturn
        (var _stringMaker (StringMaker/jnew_0))
        (var _index (JR/indexOf _resource ((CommonSeps/jm_getInstance) :f_COLON)))
        (var _resourcePath (JR/substring _resource (JR/i32 (+ _index _startIndex))))
        (var _inputStream (JR/className (JR/className _resource)))
        (if (not (nil? _inputStream))
            (do
            (return jreturn _inputStream)))
        (return jreturn _inputStream))))
    
(set jm_addResource (fn jm_addResource [this _resource _value]
    nil))

(set jproto @{:jm_setLoadingPaths jm_setLoadingPaths :jm_getResourceAsStream jm_getResourceAsStream :jm_getResourceAsStreamAtStart jm_getResourceAsStreamAtStart :jm_addResource jm_addResource})


