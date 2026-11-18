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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CellPositionFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/CellPositionFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/graphics/paint/Paintable :as Paintable)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- TouchButtonLocationHelper/jnew_0 [& args] (JR/call jfile "./TouchButtonLocationHelper" "jnew_0" args))
(defn- CommonButtons/jm_getInstance [& args] (JR/call jfile "./CommonButtons" "jm_getInstance" args))
(defn- TouchButton/jm_createButton [& args] (JR/call jfile "./TouchButton" "jm_createButton" args))
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "./BasicTouchInputFactory" "jm_getInstance" args))
(defn- TouchButtonBlankResource/jm_getInstance [& args] (JR/call jfile "./TouchButtonBlankResource" "jm_getInstance" args))

# Java class TouchButtonsMappingPaintable
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)
(var jm_createPaintableTable nil)
(var jm_paint nil)

    
(set jnew_1 (fn jnew_1 [_basicColor]
    (var this (table/setproto @{:jclass "TouchButtonsMappingPaintable" :f_logUtil nil :f_foregroundColor 0 :f_paintableTable nil :f_touchButtonLocationHelper nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_paintableTable (seq [jindex1 :range [0 0]] (array/new-filled 0 nil)))
    (put this :f_touchButtonLocationHelper (TouchButtonLocationHelper/jnew_0))
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_foregroundColor) (:jm_intValue _basicColor))
        (:jm_init this)
    this))
    
(set jm_init (fn jm_init [this]
        (try
            (do
            (set (this :f_paintableTable) (:jm_createPaintableTable this)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "updateRectangle" _e))))))
    
(set jm_createPaintableTable (fn jm_createPaintableTable [this]
    (label jreturn
        (var _totalColumns (:jm_getTotalColumns (this :f_touchButtonLocationHelper)))
        (var _totalRows (:jm_getTotalRows (this :f_touchButtonLocationHelper)))
        (var _paintableTable (seq [jindex1 :range [0 _totalColumns]] (array/new-filled _totalRows nil)))
        (var _cellPositionFactory (CellPositionFactory/jm_getInstance))
        (var _commonButtons (CommonButtons/jm_getInstance))
        (do
            (var _index (JR/i32 (- _totalColumns 1)))
            (while (>= _index 0)
                (do
            (do
                (var _rowIndex (JR/i32 (- _totalRows 1)))
                (while (>= _rowIndex 0)
                    (do
                (set (((this :f_paintableTable) _index) _rowIndex) (TouchButton/jm_createButton ((BasicTouchInputFactory/jm_getInstance) :f_NONE) (TouchButtonBlankResource/jm_getInstance) (_commonButtons :f_NORMAL_BUTTON) (:jm_getInstanceColRow _cellPositionFactory _index _rowIndex) (:jm_getColumnsRemainderHalf (this :f_touchButtonLocationHelper)) (:jm_getRowsRemainderHalf (this :f_touchButtonLocationHelper)))))
                    (do (set _rowIndex (JR/i32 (- _rowIndex 1)))))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn _paintableTable))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (var _totalColumns (:jm_getTotalColumns (this :f_touchButtonLocationHelper)))
        (var _totalRows (:jm_getTotalRows (this :f_touchButtonLocationHelper)))
        (do
            (var _index (JR/i32 (- _totalColumns 1)))
            (while (>= _index 0)
                (do
            (do
                (var _rowIndex (JR/i32 (- _totalRows 1)))
                (while (>= _rowIndex 0)
                    (do
                (JR/className (((this :f_paintableTable) _index) _rowIndex)))
                    (do (set _rowIndex (JR/i32 (- _rowIndex 1)))))))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_createPaintableTable jm_createPaintableTable :jm_paint jm_paint} Paintable/jproto))


