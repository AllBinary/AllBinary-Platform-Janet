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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- MyFontProcessor/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/MyFontProcessor" "jm_getInstance" args))
(defn- UpdateMyFontProcessor/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" "jnew_1" args))

# Java class CountedLayersHudPaintable
(var jproto nil)
(var jcell_XXStringWidth :jnone)
(var jstatic_XXStringWidth nil)
(var jsetstatic_XXStringWidth nil)
(var jnew_5 nil)
(var jm_updateMeasurement nil)
(var jm_paint nil)
(var jm_paintThreed nil)

(set jstatic_XXStringWidth (fn jstatic_XXStringWidth []
  (when (= jcell_XXStringWidth :jnone) (set jcell_XXStringWidth 0))
  jcell_XXStringWidth))
(set jsetstatic_XXStringWidth (fn jsetstatic_XXStringWidth [value] (set jcell_XXStringWidth value)))

    
(set jnew_5 (fn jnew_5 [_partInterfaceArray _dropSize _startIndex _countedTotalStringColor _countedPartsBorder]
    (var this (table/setproto @{:jclass "CountedLayersHudPaintable" :f_displayInfoSingleton nil :f_partInterfaceArray nil :f_countedTotalStringColor 0 :f_countedPartsBorder 0 :f_startIndex 0 :f_dropSize 0 :f_myFontProcessor nil :f_height 0} jproto))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    
    
    
    
    
    (put this :f_myFontProcessor (UpdateMyFontProcessor/jnew_1 this))
    
        (set (this :f_partInterfaceArray) _partInterfaceArray)
        (set (this :f_startIndex) _startIndex)
        (set (this :f_countedTotalStringColor) _countedTotalStringColor)
        (set (this :f_countedPartsBorder) _countedPartsBorder)
        (set (this :f_dropSize) _dropSize)
    this))
    
(set jm_updateMeasurement (fn jm_updateMeasurement [this _graphics]
        (var _font (:jm_getFont _graphics))
        (set (this :f_height) (:jm_getHeight _font))
        (if (> (this :f_dropSize) (:jm_getHeight _font))
            (do
            (set (this :f_height) (this :f_dropSize))))
        (if (= (jstatic_XXStringWidth) 0)
            (do
            (var _XXString "XX")
            (set jcell_XXStringWidth (:jm_stringWidth _font _XXString))))
        (set (this :f_myFontProcessor) (MyFontProcessor/jm_getInstance))))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_process (this :f_myFontProcessor) _graphics)
        (var _lastWidth (:jm_getLastWidth (this :f_displayInfoSingleton)))
        (var _widthEdge (JR/i32 (- _lastWidth (this :f_dropSize))))
        (var _size (length (this :f_partInterfaceArray)))
        (var _count 0)
        (var _y 0)
        (var _countedLayerInterfaceFactory nil)
        (var _pickedUpLayerInterfaceFactoryInterface nil)
        (var _layerInterface nil)
        (var _charArray nil)
        (do
            (var _index (this :f_startIndex))
            (while (< _index _size)
                (do
            (set _countedLayerInterfaceFactory ((this :f_partInterfaceArray) _index))
            (if (> (:jm_getTotal _countedLayerInterfaceFactory) 0)
                (do
                (set _pickedUpLayerInterfaceFactoryInterface (:jm_getCountedPickedUpLayerInterfaceFactory _countedLayerInterfaceFactory))
                (set _layerInterface (:jm_getIconLayer _pickedUpLayerInterfaceFactoryInterface))
                (set _y (JR/i32 (+ 40 (JR/i32 (* _count (this :f_height))))))
                (:jm_setPosition _layerInterface _widthEdge _y (:jm_getZP _layerInterface))
                (:jm_paint _layerInterface _graphics)
                (:jm_setColor _graphics (this :f_countedTotalStringColor))
                (:jm_paint _countedLayerInterfaceFactory _graphics)
                (set _charArray (:jm_getTotalString _countedLayerInterfaceFactory))
                (:jm_drawChars _graphics _charArray 0 (length _charArray) (JR/i32 (- _widthEdge (:jm_getXOffset _countedLayerInterfaceFactory))) _y 0)
                (set _count (JR/i32 (+ _count 1))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (if (> _count 0)
            (do
            (:jm_setColor _graphics (this :f_countedPartsBorder))
            (:jm_drawRect _graphics (JR/i32 (- _lastWidth (JR/i32 (+ (jstatic_XXStringWidth) (this :f_dropSize))))) 40 (JR/i32 (+ (jstatic_XXStringWidth) (this :f_dropSize))) (JR/i32 (+ (JR/i32 (* _count (this :f_height))) 3)))))))
    
(set jm_paintThreed (fn jm_paintThreed [this _graphics]
    nil))

(set jproto @{:jm_updateMeasurement jm_updateMeasurement :jm_paint jm_paint :jm_paintThreed jm_paintThreed})


