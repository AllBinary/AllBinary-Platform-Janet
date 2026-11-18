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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./NamedInterface :as NamedInterface)

# Java class LayerInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getHeight nil)
(var jm_getWidth nil)
(var jm_getHalfHeight nil)
(var jm_getHalfWidth nil)
(var jm_getXP nil)
(var jm_getYP nil)
(var jm_getZP nil)
(var jm_getX2 nil)
(var jm_getY2 nil)
(var jm_getZ2 nil)
(var jm_isVisible nil)
(var jm_moveDXYZ nil)
(var jm_setVisible nil)
(var jm_implmentsTickableInterface nil)
(var jm_implmentsCollidableInterface nil)
(var jm_implmentsGameInputInterface nil)
(var jm_implmentsArtificialIntelligenceCompositeInterface nil)
(var jm_getType nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerInterface"} jproto))
    this))

    
(set jm_getHeight (fn jm_getHeight [this]
    (error (JR/newException "AbstractMethodError" "getHeight"))))
    
(set jm_getWidth (fn jm_getWidth [this]
    (error (JR/newException "AbstractMethodError" "getWidth"))))
    
(set jm_getHalfHeight (fn jm_getHalfHeight [this]
    (error (JR/newException "AbstractMethodError" "getHalfHeight"))))
    
(set jm_getHalfWidth (fn jm_getHalfWidth [this]
    (error (JR/newException "AbstractMethodError" "getHalfWidth"))))
    
(set jm_getXP (fn jm_getXP [this]
    (error (JR/newException "AbstractMethodError" "getXP"))))
    
(set jm_getYP (fn jm_getYP [this]
    (error (JR/newException "AbstractMethodError" "getYP"))))
    
(set jm_getZP (fn jm_getZP [this]
    (error (JR/newException "AbstractMethodError" "getZP"))))
    
(set jm_getX2 (fn jm_getX2 [this]
    (error (JR/newException "AbstractMethodError" "getX2"))))
    
(set jm_getY2 (fn jm_getY2 [this]
    (error (JR/newException "AbstractMethodError" "getY2"))))
    
(set jm_getZ2 (fn jm_getZ2 [this]
    (error (JR/newException "AbstractMethodError" "getZ2"))))
    
(set jm_isVisible (fn jm_isVisible [this]
    (error (JR/newException "AbstractMethodError" "isVisible"))))
    
(set jm_moveDXYZ (fn jm_moveDXYZ [this _dx _dy _dz]
    (error (JR/newException "AbstractMethodError" "moveDXYZ"))))
    
(set jm_setVisible (fn jm_setVisible [this _visible]
    (error (JR/newException "AbstractMethodError" "setVisible"))))
    
(set jm_implmentsTickableInterface (fn jm_implmentsTickableInterface [this]
    (error (JR/newException "AbstractMethodError" "implmentsTickableInterface"))))
    
(set jm_implmentsCollidableInterface (fn jm_implmentsCollidableInterface [this]
    (error (JR/newException "AbstractMethodError" "implmentsCollidableInterface"))))
    
(set jm_implmentsGameInputInterface (fn jm_implmentsGameInputInterface [this]
    (error (JR/newException "AbstractMethodError" "implmentsGameInputInterface"))))
    
(set jm_implmentsArtificialIntelligenceCompositeInterface (fn jm_implmentsArtificialIntelligenceCompositeInterface [this]
    (error (JR/newException "AbstractMethodError" "implmentsArtificialIntelligenceCompositeInterface"))))
    
(set jm_getType (fn jm_getType [this]
    (error (JR/newException "AbstractMethodError" "getType"))))

(set jproto @{:jm_getHeight jm_getHeight :jm_getWidth jm_getWidth :jm_getHalfHeight jm_getHalfHeight :jm_getHalfWidth jm_getHalfWidth :jm_getXP jm_getXP :jm_getYP jm_getYP :jm_getZP jm_getZP :jm_getX2 jm_getX2 :jm_getY2 jm_getY2 :jm_getZ2 jm_getZ2 :jm_isVisible jm_isVisible :jm_moveDXYZ jm_moveDXYZ :jm_setVisible jm_setVisible :jm_implmentsTickableInterface jm_implmentsTickableInterface :jm_implmentsCollidableInterface jm_implmentsCollidableInterface :jm_implmentsGameInputInterface jm_implmentsGameInputInterface :jm_implmentsArtificialIntelligenceCompositeInterface jm_implmentsArtificialIntelligenceCompositeInterface :jm_getType jm_getType})


