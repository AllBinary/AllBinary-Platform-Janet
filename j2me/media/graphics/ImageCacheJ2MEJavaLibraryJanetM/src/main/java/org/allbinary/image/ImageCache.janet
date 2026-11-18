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
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- ResourceUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/data/resource/ResourceUtil" "jm_getInstance" args))
(defn- GDResources/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/gd/resource/GDResources" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- Memory/jm_getInfo [& args] (JR/call jfile "../../../org/allbinary/system/Memory" "jm_getInfo" args))
(import ../../../java/lang/Thread :as Thread)
(import ./ImageCacheBase :as ImageCacheBase)

# Java class ImageCache
(var jproto nil)
(var jcell_NULL_IMAGE_CACHE :jnone)
(var jstatic_NULL_IMAGE_CACHE nil)
(var jsetstatic_NULL_IMAGE_CACHE nil)
(var jnew_0 nil)
(var jm_addListener nil)
(var jm_getIndex nil)
(var jm_get nil)
(var jm_getWithKey nil)
(var jm_loadImageForAnimation nil)
(var jm_progressEnded nil)
(var jm_runTask nil)
(var jm_isLazy nil)

(set jstatic_NULL_IMAGE_CACHE (fn jstatic_NULL_IMAGE_CACHE []
  (when (= jcell_NULL_IMAGE_CACHE :jnone) (set jcell_NULL_IMAGE_CACHE (jnew_0)))
  jcell_NULL_IMAGE_CACHE))
(set jsetstatic_NULL_IMAGE_CACHE (fn jsetstatic_NULL_IMAGE_CACHE [value] (set jcell_NULL_IMAGE_CACHE value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageCache" :f_commonStrings nil :f_tsUtil nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (JR/superInit this (ImageCacheBase/jnew_0))
    this))
    
(set jm_addListener (fn jm_addListener [this _renderer]
    nil))
    
(set jm_getIndex (fn jm_getIndex [this _key]
    (label jreturn
        (var _gdResources (GDResources/jm_getInstance))
        (var _resourceStringArray (_gdResources :f_resourceStringArray))
        (var _size (length _resourceStringArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (= (_resourceStringArray _index) _key)
                (do
                (return jreturn _index))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (JR/className (this :f_logUtil))
        (error (JR/newException "RuntimeException")))))
    
(set jm_get (fn jm_get [this _caller _width _height]
    (label jreturn
        (var _foundIndex (:jm_getIndexWH this _width _height))
        (var _image (:jm_getFromAvailable this _foundIndex _width _height))
        (if (= _image (NullImage/jstatic_NULL_IMAGE))
            (do
            (set (this :f_volume) (JR/i32 (+ (this :f_volume) (JR/i32 (* _width _height)))))
            (if (> (this :f_volume) 32000)
                (do
                (:jm_gc (this :f_tsUtil))
                (set (this :f_volume) 0)))
            (set _image (:jm_createImage this _caller _width _height))
            (var _widths (this :f_widths))
            (if (> (this :f_nextIndex) (JR/i32 (- (length _widths) 1)))
                (do
                (if (= _foundIndex (JR/i32 (- 1)))
                    (do
                    (set _foundIndex (this :f_nextIndex))
                    (set (_widths (this :f_nextIndex)) _width)
                    (set ((this :f_heights) (this :f_nextIndex)) _height)
                    (set (this :f_nextIndex) (JR/i32 (+ (this :f_nextIndex) 1)))))
                (JR/className ((this :f_listOfList) _foundIndex))))))
        (return jreturn _image))))
    
(set jm_getWithKey (fn jm_getWithKey [this _key]
    (label jreturn
        (var _image (:jm_getImage this _key))
        (if (= _image (NullImage/jstatic_NULL_IMAGE))
            (do
            (var _resourceUtil (ResourceUtil/jm_getInstance))
            (var _resourceInputStream (:jm_getResourceAsStream _resourceUtil _key))
            (if (nil? _resourceInputStream)
                (do
                (error (JR/newException "RuntimeException" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Image resource is not available for key: ") (:jm_toString_1 (StringUtil/jm_getInstance) _key)))))))
            (try
                (do
                (set _image (:jm_createImageFromInputStream this _key _resourceInputStream)))
                ([_e] (do
                (JR/className (this :f_logUtil))
                (JR/className (this :f_logUtil))
                (:jm_gc (this :f_tsUtil))
                (:jm_gc (this :f_tsUtil))
                (JR/className (this :f_logUtil))
                (Thread/jm_sleep 100)
                (set _image (:jm_createImageFromInputStream this _key _resourceInputStream)))))
            (if (J2MEUtil/jm_isHTML)
                (do
                nil)
                (do
                (:jm_close _resourceInputStream)))
            (JR/className (this :f_hashtable))))
        (return jreturn _image))))
    
(set jm_loadImageForAnimation (fn jm_loadImageForAnimation [this]
    nil))
    
(set jm_progressEnded (fn jm_progressEnded [this]
    nil))
    
(set jm_runTask (fn jm_runTask [this]
    nil))
    
(set jm_isLazy (fn jm_isLazy [this]
    (label jreturn
        (return jreturn false))))

(set jproto (table/setproto @{:jm_addListener jm_addListener :jm_getIndex jm_getIndex :jm_get jm_get :jm_getWithKey jm_getWithKey :jm_loadImageForAnimation jm_loadImageForAnimation :jm_progressEnded jm_progressEnded :jm_runTask jm_runTask :jm_isLazy jm_isLazy} ImageCacheBase/jproto))


