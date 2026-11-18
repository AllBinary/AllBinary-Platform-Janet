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
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- BasicColorSetUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/color/BasicColorSetUtil" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(import ../../../../org/allbinary/layer/AllBinaryLayer :as AllBinaryLayer)
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- SWTUtil/jstatic_isSWT [& args] (JR/call jfile "./SWTUtil" "jstatic_isSWT" args))
(defn- SWTBlackPaintable/jnew_0 [& args] (JR/call jfile "./SWTBlackPaintable" "jnew_0" args))
(defn- GameLayerUtil/jm_isOnScreen [& args] (JR/call jfile "./GameLayerUtil" "jm_isOnScreen" args))

# Java class AllBinaryGameLayer
(var jproto nil)
(var jnew_3 nil)
(var jm_createPaintable nil)
(var jm_set nil)
(var jm_move nil)
(var jm_getGameKeyEventList nil)
(var jm_processInput nil)
(var jm_processTick nil)
(var jm_onEvent nil)
(var jm_onViewPositionChangeEvent nil)
(var jm_onChangeEvent nil)
(var jm_paintFirst nil)
(var jm_paintDebug nil)
(var jm_setWidth nil)
(var jm_setHeight nil)

    
(set jm_createPaintable (fn jm_createPaintable []
    (label jreturn
        (if (SWTUtil/jstatic_isSWT)
            (do
            (return jreturn (SWTBlackPaintable/jnew_0))))
        (return jreturn (NullPaintable/jm_getInstance)))))
    
(set jnew_3 (fn jnew_3 [_name _layerInfo _viewPosition]
    (var this (table/setproto @{:jclass "AllBinaryGameLayer" :f_commonStrings nil :f_basicSetColorUtil nil :f_RED nil :f_paintable nil :f_gameKeyEventList nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_basicSetColorUtil (BasicColorSetUtil/jm_getInstance))
    (put this :f_RED ((BasicColorFactory/jm_getInstance) :f_RED))
    (put this :f_paintable (jm_createPaintable))
    (put this :f_gameKeyEventList (BasicArrayListD/jnew_0))
        (JR/superInit this (AllBinaryLayer/jnew_3 _name _layerInfo _viewPosition))
    this))
    
(set jm_set (fn jm_set [this _gl]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_move (fn jm_move [this]
    nil))
    
(set jm_getGameKeyEventList (fn jm_getGameKeyEventList [this]
    (label jreturn
        (return jreturn (this :f_gameKeyEventList)))))
    
(set jm_processInput (fn jm_processInput [this _allBinaryLayerManager]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_processTick (fn jm_processTick [this _allBinaryLayerManager]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onViewPositionChangeEvent (fn jm_onViewPositionChangeEvent [this]
        (:jm_onChangeEvent this (this :f_viewPositionEvent))))
    
(set jm_onChangeEvent (fn jm_onChangeEvent [this _layerManagerEvent]
        (if (GameLayerUtil/jm_isOnScreen this)
            (do
            (:jm_setVisible this true))
            (do
            (:jm_setVisible this false)))))
    
(set jm_paintFirst (fn jm_paintFirst [this _graphics]
        (:jm_paint (this :f_paintable) _graphics)))
    
(set jm_paintDebug (fn jm_paintDebug [this _graphics]
        (var _viewPosition (:jm_getViewPosition this))
        (var _viewX (:jm_getX _viewPosition))
        (var _viewY (:jm_getY _viewPosition))
        (:jm_setBasicColorP (this :f_basicSetColorUtil) _graphics (this :f_RED))
        (:jm_drawRect _graphics _viewX _viewY (:jm_getWidth this) (:jm_getHeight this))))
    
(set jm_setWidth (fn jm_setWidth [this _width]
        ((get AllBinaryLayer/jproto :jm_setLayerWidth) this _width)
        (:jm_setHalfWidth this (brshift _width 1))))
    
(set jm_setHeight (fn jm_setHeight [this _height]
        ((get AllBinaryLayer/jproto :jm_setLayerHeight) this _height)
        (:jm_setHalfHeight this (brshift _height 1))))

(set jproto (table/setproto @{:jm_set jm_set :jm_move jm_move :jm_getGameKeyEventList jm_getGameKeyEventList :jm_processInput jm_processInput :jm_processTick jm_processTick :jm_onEvent jm_onEvent :jm_onViewPositionChangeEvent jm_onViewPositionChangeEvent :jm_onChangeEvent jm_onChangeEvent :jm_paintFirst jm_paintFirst :jm_paintDebug jm_paintDebug :jm_setWidth jm_setWidth :jm_setHeight jm_setHeight} AllBinaryLayer/jproto))


