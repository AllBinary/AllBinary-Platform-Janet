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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/util/Enumeration :as Enumeration)
(defn- PointFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/PointFactory" "jm_getInstance" args))
(defn- LayerInterfaceFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/layer/LayerInterfaceFactory" "jm_getInstance" args))
(defn- EnumerationUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/EnumerationUtil" "jm_getInstance" args))
(defn- LayerPlacementTypeFactory/jm_getInstance [& args] (JR/call jfile "./LayerPlacementTypeFactory" "jm_getInstance" args))

# Java class LayerPlacer
(var jproto nil)
(var jnew_2 nil)
(var jm_processList nil)
(var jm_process nil)
(var jm_getPoint nil)

    
(set jnew_2 (fn jnew_2 [_layerInterfaceVisitor _dimension]
    (var this (table/setproto @{:jclass "LayerPlacer" :f_enumerationUtil nil :f_layerInterfaceVisitor nil :f_dimension nil} jproto))
    (put this :f_enumerationUtil (EnumerationUtil/jm_getInstance))
    
    
        (set (this :f_layerInterfaceVisitor) _layerInterfaceVisitor)
        (set (this :f_dimension) _dimension)
    this))
    
(set jm_processList (fn jm_processList [this _list]
        (var _size (:jm_size _list))
        (var _layerPlacementInterface nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _layerPlacementInterface ((_list :f_objectArray) _index))
            (:jm_process this _layerPlacementInterface))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_process (fn jm_process [this _layerPlacementInterface]
        (var _relativePoint (:jm_getPoint this _layerPlacementInterface))
        (var _layerInterfaceFactory (LayerInterfaceFactory/jm_getInstance))
        (var _hashtable (:jm_getInstance _layerPlacementInterface))
        (var _enumeration (:jm_keys _hashtable))
        (var _point nil)
        (var _layerHashtable nil)
        (var _x 0)
        (var _y 0)
        (var _z 0)
        (var _layerInterface nil)
        (do
            (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                (do
            (set _point (:jm_nextElement (this :f_enumerationUtil) _enumeration))
            (set _layerHashtable (:jm_get _hashtable _point))
            (set _x (JR/i32 (+ (:jm_getX _point) (:jm_getX _relativePoint))))
            (set _y (JR/i32 (+ (:jm_getY _point) (:jm_getY _relativePoint))))
            (set _z (JR/i32 (+ (:jm_getZ _point) (:jm_getZ _relativePoint))))
            (set _layerInterface (:jm_getNexInstance _layerInterfaceFactory _layerHashtable _x _y _z))
            (:jm_visit (this :f_layerInterfaceVisitor) _layerInterface))))))
    
(set jm_getPoint (fn jm_getPoint [this _layerPlacementInterface]
    (label jreturn
        (var _pointFactory (PointFactory/jm_getInstance))
        (var _layerPlacementType (:jm_getLayerType _layerPlacementInterface))
        (if (= _layerPlacementType ((LayerPlacementTypeFactory/jm_getInstance) :f_MAP))
            (do
            (var _width (:jm_getWidth _layerPlacementInterface))
            (var _height (:jm_getHeight _layerPlacementInterface))
            (var _x (JR/idiv (JR/i32 (- (:jm_getX (this :f_dimension)) _width)) 2))
            (var _y (JR/idiv (JR/i32 (- (:jm_getY (this :f_dimension)) _height)) 2))
            (return jreturn (:jm_createXY _pointFactory _x _y)))
            (if (= _layerPlacementType ((LayerPlacementTypeFactory/jm_getInstance) :f_UP))
            (do
            (var _width (:jm_getWidth _layerPlacementInterface))
            (var _height (:jm_getHeight _layerPlacementInterface))
            (var _x (JR/idiv (JR/i32 (- (:jm_getX (this :f_dimension)) _width)) 2))
            (var _y (JR/i32 (- _height)))
            (return jreturn (:jm_createXY _pointFactory _x _y)))
            (do
            (error (JR/newException "Exception" "PlacementType Not Recognized"))))))))

(set jproto @{:jm_processList jm_processList :jm_process jm_process :jm_getPoint jm_getPoint})


