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
# package org.allbinary.game.ag.ai

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))

# Java class ReverseVelocityBoundsVisitor
(var jproto nil)
(var jnew_1 nil)
(var jm_getX nil)
(var jm_getY nil)
(var jm_minX nil)
(var jm_maxX nil)
(var jm_minY nil)
(var jm_maxY nil)

    
(set jnew_1 (fn jnew_1 [_layerInterface]
    (var this (table/setproto @{:jclass "ReverseVelocityBoundsVisitor" :f_logUtil nil :f_velocityInterface nil :f_layerInterface nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
        (set (this :f_layerInterface) _layerInterface)
        (var _velocityInterfaceCompositeInterface _layerInterface)
        (set (this :f_velocityInterface) (:jm_getVelocityProperties _velocityInterfaceCompositeInterface))
    this))
    
(set jm_getX (fn jm_getX [this]
    (label jreturn
        (return jreturn (:jm_getXP (this :f_layerInterface))))))
    
(set jm_getY (fn jm_getY [this]
    (label jreturn
        (return jreturn (:jm_getYP (this :f_layerInterface))))))
    
(set jm_minX (fn jm_minX [this]
        (if (< (JR/className (:jm_getVelocityXBasicDecimalP (this :f_velocityInterface))) 0)
            (do
            (JR/className (:jm_getVelocityXBasicDecimalP (this :f_velocityInterface)))))))
    
(set jm_maxX (fn jm_maxX [this]
        (if (> (JR/className (:jm_getVelocityXBasicDecimalP (this :f_velocityInterface))) 0)
            (do
            (JR/className (:jm_getVelocityXBasicDecimalP (this :f_velocityInterface)))))))
    
(set jm_minY (fn jm_minY [this]
        (if (< (JR/className (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface))) 0)
            (do
            (JR/className (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface)))))))
    
(set jm_maxY (fn jm_maxY [this]
        (if (> (JR/className (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface))) 0)
            (do
            (JR/className (:jm_getVelocityYBasicDecimalP (this :f_velocityInterface)))))))

(set jproto @{:jm_getX jm_getX :jm_getY jm_getY :jm_minX jm_minX :jm_maxX jm_maxX :jm_minY jm_minY :jm_maxY jm_maxY})


