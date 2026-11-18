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
# package org.allbinary.animation

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PointFactory/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/graphics/PointFactory" "jm_getInstance_0" args))
(defn- BasicGraphicsPipeline/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/graphics/pipeline/BasicGraphicsPipeline" "jnew_1" args))
(defn- NullUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/logic/NullUtil" "jm_getInstance_0" args))
(defn- LogUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance_0" args))
(defn- CommonStrings/jm_getInstance_0 [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance_0" args))
(defn- BasicArrayListS/jnew_1 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListS" "jnew_1" args))
(defn- VectorAnimationUtil/jm_getInstance_0 [& args] (JR/call jfile "./VectorAnimationUtil" "jm_getInstance_0" args))

# Java class VectorMirrorGenerator
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_2 nil)
(var jm_getInstance_2 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VectorMirrorGenerator" :f_logUtil nil :f_vectorAnimationUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance_0))
    (put this :f_vectorAnimationUtil (VectorAnimationUtil/jm_getInstance_0))
    this))
    
(set jm_getInstance_2 (fn jm_getInstance_2 [this _points _width]
    (label jreturn
        (try
            (do
            (var _pointFactory (PointFactory/jm_getInstance_0))
            (var _pointBasicArrayList nil)
            (var _nextPoints nil)
            (var _size2 0)
            (var _size (length _points))
            (var _pointsBasicArrayList (BasicArrayListS/jnew_1 _size))
            (do
                (var _frame 0)
                (while (< _frame _size)
                    (do
                (set _nextPoints (_points _frame))
                (set _size2 (length _nextPoints))
                (set _pointBasicArrayList (BasicArrayListS/jnew_1 _size2))
                (do
                    (var _index 0)
                    (while (< _index _size2)
                        (do
                    (:jm_add _pointBasicArrayList (:jm_createXY _pointFactory ((_nextPoints _index) 0) ((_nextPoints _index) 1))))
                        (do (set _index (JR/i32 (+ _index 1))))))
                (:jm_add _pointsBasicArrayList _pointBasicArrayList))
                    (do (set _frame (JR/i32 (+ _frame 1))))))
            (do
                (var _index 0)
                (while (< _index (length _points))
                    (do
                (:jm_add _pointsBasicArrayList (:jm_getInstance_2 this ((_pointsBasicArrayList :f_objectArray) _index) _width)))
                    (do (set _index (JR/i32 (+ _index 1))))))
            (var _newPoints (:jm_toAnimationArrayFromListOfPointList (this :f_vectorAnimationUtil) _pointsBasicArrayList))
            (return jreturn _newPoints))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance_0))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e)
            (return jreturn ((NullUtil/jm_getInstance_0) :f_NULL_INT_ARRAY_ARRAY_ARRAY))))))))
    
(set jm_getInstance_2 (fn jm_getInstance_2 [this _pointBasicArrayList _width]
    (label jreturn
        (var _graphicsPipe (BasicGraphicsPipeline/jnew_1 _pointBasicArrayList))
        (:jm_createMatrix _graphicsPipe)
        (:jm_mirror _graphicsPipe _width)
        (return jreturn (:jm_getMatrix _graphicsPipe)))))

(set jproto @{:jm_getInstance_2 jm_getInstance_2 :jm_getInstance_2 jm_getInstance_2})


