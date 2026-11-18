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
# package org.allbinary.game.part

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CountedPickedUpLayerInterfaceFactoryPool/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(defn- CountedLayerInterfaceFactoryPart/jnew_2 [& args] (JR/call jfile "./CountedLayerInterfaceFactoryPart" "jnew_2" args))

# Java class MakeCountedPartsSingletonArrayFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getUpdated nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MakeCountedPartsSingletonArrayFactory" :f_logUtil nil :f_list nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_list (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getUpdated (fn jm_getUpdated [this _partInterfaceArray]
    (label jreturn
        (set (this :f_list) (BasicArrayListD/jnew_0))
        (do
            (var _index 0)
            (while (< _index (length _partInterfaceArray))
                (do
            (:jm_add (this :f_list) (_partInterfaceArray _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _countedBasicArrayList (:jm_getList (CountedPickedUpLayerInterfaceFactoryPool/jm_getInstance)))
        (var _layerInterfaceFactoryInterface nil)
        (var _size (:jm_size _countedBasicArrayList))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _layerInterfaceFactoryInterface ((_countedBasicArrayList :f_objectArray) _index))
            (:jm_add (this :f_list) (CountedLayerInterfaceFactoryPart/jnew_2 0 _layerInterfaceFactoryInterface)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Total Parts: ")
        (:jm_appendint _stringBuffer (:jm_size (this :f_list)))
        (:jm_append _stringBuffer " Counted: ")
        (:jm_appendint _stringBuffer (:jm_size _countedBasicArrayList))
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_GET_INSTANCE))
        (var _newPartInterfaceArray (array/new-filled (:jm_size (this :f_list)) nil))
        (var _newSize (length _newPartInterfaceArray))
        (do
            (var _index 0)
            (while (< _index _newSize)
                (do
            (set (_newPartInterfaceArray _index) (:jm_get (this :f_list) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _newPartInterfaceArray))))

(set jproto @{:jm_getUpdated jm_getUpdated})


