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
# package org.allbinary.game.layer.identification

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LayerManagerEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/layer/event/LayerManagerEventHandler" "jm_getInstance" args))
(import ../../../../../org/allbinary/layer/event/LayerManagerEventListener :as LayerManagerEventListener)
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class GroupLayerManagerListener
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_clear nil)
(var jm_getGroupSizeFromInterface nil)
(var jm_getGroupSize nil)
(var jm_getList nil)
(var jm_getListById nil)
(var jm_getGroupSizeById nil)
(var jm_areAllOtherGroupsEmpty nil)
(var jm_isIdInList nil)
(var jm_areAllOtherGroupsLessThan nil)
(var jm_init nil)
(var jm_onEvent nil)
(var jm_onCreateLayerManagerEvent nil)
(var jm_onDeleteLayerManagerEvent nil)
(var jm_log nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GroupLayerManagerListener" :f_logUtil nil :f_list nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_list (BasicArrayListD/jnew_0))
    (JR/superInit this (LayerManagerEventListener/jnew_0))
        (:jm_addListener (LayerManagerEventHandler/jm_getInstance) this)
    this))
    
(set jm_clear (fn jm_clear [this]
        (var _groupList nil)
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (set _groupList (((this :f_list) :f_objectArray) _index))
            (:jm_clear _groupList))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_getGroupSizeFromInterface (fn jm_getGroupSizeFromInterface [this _groupInterfaceCompositeInterface]
    (label jreturn
        (var _groupInterfaceArray (:jm_getGroupInterface _groupInterfaceCompositeInterface))
        (return jreturn (:jm_getGroupSize this (_groupInterfaceArray 0))))))
    
(set jm_getGroupSize (fn jm_getGroupSize [this _groupInterface]
    (label jreturn
        (var _id (:jm_getGroupId _groupInterface))
        (return jreturn (:jm_getGroupSizeById this _id)))))
    
(set jm_getList (fn jm_getList [this _groupInterface]
    (label jreturn
        (var _id (:jm_getGroupId _groupInterface))
        (return jreturn (:jm_getListById this _id)))))
    
(set jm_getListById (fn jm_getListById [this _groupId]
    (label jreturn
        (var _groupList (((this :f_list) :f_objectArray) _groupId))
        (return jreturn _groupList))))
    
(set jm_getGroupSizeById (fn jm_getGroupSizeById [this _groupId]
    (label jreturn
        (var _groupList (((this :f_list) :f_objectArray) _groupId))
        (var _size (:jm_size _groupList))
        (return jreturn _size))))
    
(set jm_areAllOtherGroupsEmpty (fn jm_areAllOtherGroupsEmpty [this _groupInterface]
    (label jreturn
        (var _id (:jm_getGroupId _groupInterface))
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (if (not= _id _index)
                (do
                (var _groupSize (:jm_getGroupSizeById this _index))
                (if (not= _groupSize 0)
                    (do
                    (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Group Size: ") _groupSize)) this "areAllOtherGroupsEmpty")
                    (return jreturn false))))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn true))))
    
(set jm_isIdInList (fn jm_isIdInList [this _id _excludeGroupList]
    (label jreturn
        (var _size (:jm_size _excludeGroupList))
        (var _groupInterfaceArray nil)
        (var _groupInterface nil)
        (var _groupId 0)
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (set _groupInterfaceArray ((_excludeGroupList :f_objectArray) _index))
            (var _size2 (length _groupInterfaceArray))
            (do
                (var _index2 0)
                (while (< _index2 _size2)
                    (do
                (set _groupInterface (_groupInterfaceArray _index2))
                (set _groupId (:jm_getGroupId _groupInterface))
                (if (= _groupId _id)
                    (do
                    (return jreturn true))))
                    (do (set _index2 (JR/i32 (+ _index2 1)))))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn false))))
    
(set jm_areAllOtherGroupsLessThan (fn jm_areAllOtherGroupsLessThan [this _excludeGroupList _maxSize]
    (label jreturn
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (if (not (:jm_isIdInList this _index _excludeGroupList))
                (do
                (var _groupSize (:jm_getGroupSizeById this _index))
                (if (>= _groupSize _maxSize)
                    (do
                    (return jreturn false))))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn true))))
    
(set jm_init (fn jm_init [this _total]
        (do
            (while (<= (:jm_size (this :f_list)) (JR/i32 (+ _total 1)))
                (do
            (:jm_add (this :f_list) (BasicArrayListD/jnew_0)))))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onCreateLayerManagerEvent (fn jm_onCreateLayerManagerEvent [this _layerManagerEvent]
        (var _layerInterface (:jm_getLayerInterface _layerManagerEvent))
        (var _groupInterfaceArray (:jm_getGroupInterface _layerInterface))
        (var _size (length _groupInterfaceArray))
        (var _id 0)
        (var _groupList nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _id (JR/className (_groupInterfaceArray _index)))
            (set _groupList (((this :f_list) :f_objectArray) _id))
            (if (nil? _groupList)
                (do
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "id: ") _id)) this "onCreateLayerManagerEvent")))
            (if (not (:jm_contains _groupList _layerInterface))
                (do
                (:jm_add _groupList _layerInterface))
                (do
                nil)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_onDeleteLayerManagerEvent (fn jm_onDeleteLayerManagerEvent [this _layerManagerEvent]
        (var _layerInterface (:jm_getLayerInterface _layerManagerEvent))
        (var _groupInterfaceArray (:jm_getGroupInterface _layerInterface))
        (var _size (length _groupInterfaceArray))
        (var _id 0)
        (var _groupList nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _id (JR/className (_groupInterfaceArray _index)))
            (set _groupList (((this :f_list) :f_objectArray) _id))
            (:jm_remove _groupList _layerInterface))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_log (fn jm_log [this]
        (var _stringBuffer (StringMaker/jnew_0))
        (var _GROUP "Group: ")
        (var _SPACE ((CommonSeps/jm_getInstance) :f_SPACE))
        (var _TOTAL_LABEL ((CommonLabels/jm_getInstance) :f_TOTAL_LABEL))
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index (JR/i32 (- _size 1)))
            (while (>= _index 0)
                (do
            (var _groupList (((this :f_list) :f_objectArray) _index))
            (:jm_append _stringBuffer _GROUP)
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer _SPACE)
            (:jm_append _stringBuffer _TOTAL_LABEL)
            (:jm_appendint _stringBuffer (:jm_size _groupList))
            (:jm_append _stringBuffer _SPACE))
                (do (set _index (JR/i32 (- _index 1))))))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this "log")))

(set jproto (table/setproto @{:jm_clear jm_clear :jm_getGroupSizeFromInterface jm_getGroupSizeFromInterface :jm_getGroupSize jm_getGroupSize :jm_getList jm_getList :jm_getListById jm_getListById :jm_getGroupSizeById jm_getGroupSizeById :jm_areAllOtherGroupsEmpty jm_areAllOtherGroupsEmpty :jm_isIdInList jm_isIdInList :jm_areAllOtherGroupsLessThan jm_areAllOtherGroupsLessThan :jm_init jm_init :jm_onEvent jm_onEvent :jm_onCreateLayerManagerEvent jm_onCreateLayerManagerEvent :jm_onDeleteLayerManagerEvent jm_onDeleteLayerManagerEvent :jm_log jm_log} LayerManagerEventListener/jproto))


