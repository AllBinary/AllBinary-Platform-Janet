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
# package org.allbinary.image

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../java/io/InputStream :as InputStream)
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- ImageFactory/jm_getInstance [& args] (JR/call jfile "./ImageFactory" "jm_getInstance" args))

# Java class ImageCacheBase
(var jproto nil)
(var jnew_0 nil)
(var jm_getImage nil)
(var jm_releaseAll nil)
(var jm_getIndexWH nil)
(var jm_getFromAvailable nil)
(var jm_get nil)
(var jm_getWithKey nil)
(var jm_createImage nil)
(var jm_createImageFromInputStream nil)
(var jm_toString nil)
(var jm_getHashtableP nil)
(var jm_init nil)
(var jm_initProgress nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageCacheBase" :f_logUtil nil :f_imageFactory nil :f_hashtable nil :f_SIZE 0 :f_widths nil :f_heights nil :f_listOfList nil :f_availableListOfList nil :f_volume 0 :f_nextIndex 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_imageFactory (ImageFactory/jm_getInstance))
    (put this :f_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
    (put this :f_SIZE 128)
    (put this :f_widths (array/new-filled (this :f_SIZE) 0))
    (put this :f_heights (array/new-filled (this :f_SIZE) 0))
    (put this :f_listOfList (array/new-filled (this :f_SIZE) nil))
    (put this :f_availableListOfList (array/new-filled (this :f_SIZE) nil))
    (put this :f_volume 0)
    (put this :f_nextIndex 0)
        (do
            (var _index (JR/i32 (- (length (this :f_listOfList)) 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_listOfList) _index) (BasicArrayListD/jnew_0)))
                (do (set _index (JR/i32 (- _index 1))))))
        (do
            (var _index (JR/i32 (- (length (this :f_availableListOfList)) 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_availableListOfList) _index) (BasicArrayListD/jnew_0)))
                (do (set _index (JR/i32 (- _index 1))))))
    this))
    
(set jm_getImage (fn jm_getImage [this _resourceId]
    (label jreturn
        (var _imageCanBeNull (:jm_get (this :f_hashtable) _resourceId))
        (if (nil? _imageCanBeNull)
            (do
            (return jreturn (NullImage/jstatic_NULL_IMAGE))))
        (return jreturn _imageCanBeNull))))
    
(set jm_releaseAll (fn jm_releaseAll [this]
        (do
            (var _index (JR/i32 (- (length (this :f_listOfList)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((this :f_availableListOfList) _index))
            (JR/className ((this :f_availableListOfList) _index)))
                (do (set _index (JR/i32 (- _index 1))))))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "ImageCache: ") (:jm_toString this))) this "releaseAll")))
    
(set jm_getIndexWH (fn jm_getIndexWH [this _width _height]
    (label jreturn
        (var _foundIndex (JR/i32 (- 1)))
        (var _size (length (this :f_widths)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (and (= ((this :f_widths) _index) _width) (= ((this :f_heights) _index) _height))
                (do
                (set _foundIndex _index)
                (return jreturn _foundIndex))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _foundIndex))))
    
(set jm_getFromAvailable (fn jm_getFromAvailable [this _foundIndex _width _height]
    (label jreturn
        (if (not= _foundIndex (JR/i32 (- 1)))
            (do
            (if (> (JR/className ((this :f_availableListOfList) _foundIndex)) 0)
                (do
                (var _list ((this :f_availableListOfList) _foundIndex))
                (return jreturn (:jm_removeAt _list (JR/i32 (- (:jm_size _list) 1))))))))
        (return jreturn (NullImage/jstatic_NULL_IMAGE)))))
    
(set jm_get (fn jm_get [this _caller _width _height]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getWithKey (fn jm_getWithKey [this _key]
        (error (JR/newException "RuntimeException"))))
    
(set jm_createImage (fn jm_createImage [this _caller _width _height]
    (label jreturn
        (return jreturn (:jm_createImage (this :f_imageFactory) _caller _width _height)))))
    
(set jm_createImageFromInputStream (fn jm_createImageFromInputStream [this _key _inputStream]
    (label jreturn
        (return jreturn (:jm_createImageFromInputStream (this :f_imageFactory) _key _inputStream)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (do
            (var _index (JR/i32 (- (this :f_nextIndex) 1)))
            (while (>= _index 0)
                (do
            (var _width ((this :f_widths) _index))
            (var _height ((this :f_heights) _index))
            (var _total (JR/className ((this :f_listOfList) _index)))
            (var _totalAvailable (JR/className ((this :f_availableListOfList) _index)))
            (:jm_append _stringBuffer " w: ")
            (:jm_appendint _stringBuffer _width)
            (:jm_append _stringBuffer " h: ")
            (:jm_appendint _stringBuffer _height)
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
            (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_TOTAL_LABEL))
            (:jm_appendint _stringBuffer _total)
            (:jm_append _stringBuffer " available: ")
            (:jm_appendint _stringBuffer _totalAvailable))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getHashtableP (fn jm_getHashtableP [this]
    (label jreturn
        (return jreturn (this :f_hashtable)))))
    
(set jm_init (fn jm_init [this _image]
    nil))
    
(set jm_initProgress (fn jm_initProgress [this]
    nil))

(set jproto @{:jm_getImage jm_getImage :jm_releaseAll jm_releaseAll :jm_getIndexWH jm_getIndexWH :jm_getFromAvailable jm_getFromAvailable :jm_get jm_get :jm_getWithKey jm_getWithKey :jm_createImage jm_createImage :jm_createImageFromInputStream jm_createImageFromInputStream :jm_toString jm_toString :jm_getHashtableP jm_getHashtableP :jm_init jm_init :jm_initProgress jm_initProgress})


