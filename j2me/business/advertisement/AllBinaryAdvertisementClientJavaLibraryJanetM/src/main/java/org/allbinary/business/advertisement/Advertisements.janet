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
# package org.allbinary.business.advertisement

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- LockedUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/system/security/licensing/LockedUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class Advertisements
(var jproto nil)
(var jnew_0 nil)
(var jm_addPage nil)
(var jm_startRandomPage nil)
(var jm_processRandomPage nil)
(var jm_stopAllPage nil)
(var jm_addBanner nil)
(var jm_startAll nil)
(var jm_stopAllBanner nil)
(var jm_getBanner nil)
(var jm_stopAll nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Advertisements" :f_bannerList nil :f_pageList nil :f_myRandomFactory nil} jproto))
    (put this :f_bannerList (BasicArrayListD/jnew_0))
    (put this :f_pageList (BasicArrayListD/jnew_0))
    (put this :f_myRandomFactory (MyRandomFactory/jm_getInstance))
    this))

    
(set jm_addPage (fn jm_addPage [this _advertisementProcessorInterface]
        (if (not (:jm_contains (this :f_pageList) _advertisementProcessorInterface))
            (do
            (:jm_add (this :f_pageList) _advertisementProcessorInterface)))))
    
(set jm_startRandomPage (fn jm_startRandomPage [this]
        (var _size (:jm_size (this :f_pageList)))
        (if (> _size 0)
            (do
            (var _random (:jm_getAbsoluteNextInt (this :f_myRandomFactory) _size))
            (var _advertisementProcessorInterface (((this :f_pageList) :f_objectArray) _random))
            (:jm_start _advertisementProcessorInterface)))))
    
(set jm_processRandomPage (fn jm_processRandomPage [this]
        (if (:jm_isLocked (LockedUtil/jm_getInstance))
            (do
            (var _size (:jm_size (this :f_pageList)))
            (if (> _size 0)
                (do
                (var _random (:jm_getAbsoluteNextInt (this :f_myRandomFactory) _size))
                (var _advertisementProcessorInterface (((this :f_pageList) :f_objectArray) _random))
                (:jm_process _advertisementProcessorInterface)))))))
    
(set jm_stopAllPage (fn jm_stopAllPage [this]
        (do
            (var _index (:jm_size (this :f_pageList)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (var _advertisementProcessorInterface (((this :f_pageList) :f_objectArray) _index))
            (:jm_stop _advertisementProcessorInterface))))))
    
(set jm_addBanner (fn jm_addBanner [this _advertisementProcessorInterface]
        (if (not (:jm_contains (this :f_bannerList) _advertisementProcessorInterface))
            (do
            (:jm_add (this :f_bannerList) _advertisementProcessorInterface)))))
    
(set jm_startAll (fn jm_startAll [this]
        (do
            (var _index (:jm_size (this :f_bannerList)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (var _advertisementProcessorInterface (((this :f_bannerList) :f_objectArray) _index))
            (:jm_start _advertisementProcessorInterface))))))
    
(set jm_stopAllBanner (fn jm_stopAllBanner [this]
        (do
            (var _index (:jm_size (this :f_bannerList)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (var _advertisementProcessorInterface (((this :f_bannerList) :f_objectArray) _index))
            (:jm_stop _advertisementProcessorInterface))))))
    
(set jm_getBanner (fn jm_getBanner [this _index]
    (label jreturn
        (var _advertisementProcessorInterface (((this :f_bannerList) :f_objectArray) _index))
        (return jreturn _advertisementProcessorInterface))))
    
(set jm_stopAll (fn jm_stopAll [this]
        (:jm_stopAllBanner this)
        (:jm_stopAllPage this)))

(set jproto @{:jm_addPage jm_addPage :jm_startRandomPage jm_startRandomPage :jm_processRandomPage jm_processRandomPage :jm_stopAllPage jm_stopAllPage :jm_addBanner jm_addBanner :jm_startAll jm_startAll :jm_stopAllBanner jm_stopAllBanner :jm_getBanner jm_getBanner :jm_stopAll jm_stopAll})


