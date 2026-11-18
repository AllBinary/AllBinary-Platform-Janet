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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))

# Java class GameLayerUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_isOnScreen nil)
(var jm_isInside nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameLayerUtil"} jproto))
    this))
    
(set jm_isOnScreen (fn jm_isOnScreen [_layer]
    (label jreturn
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _viewPosition (:jm_getViewPosition _layer))
        (return jreturn (jm_isInside (:jm_getX _viewPosition) (:jm_getY _viewPosition) (:jm_getX2 _viewPosition) (:jm_getY2 _viewPosition) 0 0 (:jm_getLastWidth _displayInfo) (:jm_getLastHeight _displayInfo))))))
    
(set jm_isInside (fn jm_isInside [_rectX1 _rectY1 _rectX2 _rectY2 _rect2X1 _rect2Y1 _rect2X2 _rect2Y2]
    (label jreturn
        (if (and (and (and (> _rectX1 _rect2X1) (< _rectX2 _rect2X2)) (> _rectY1 _rect2Y1)) (< _rectY2 _rect2Y2))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto @{})


