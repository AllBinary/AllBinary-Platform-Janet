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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- TouchButtonLocationHelper/jnew_0 [& args] (JR/call jfile "./TouchButtonLocationHelper" "jnew_0" args))

# Java class BasicTouchButtonCellPositionFactory
(var jproto nil)
(var jnew_0 nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicTouchButtonCellPositionFactory" :f_logUtil nil :f_commonStrings nil :f_TOP_RIGHT nil :f_TOP_LEFT nil :f_SECOND_FROM_TOP_LEFT nil :f_SECOND_FROM_TOP_RIGHT nil :f_TOP_SECOND_FROM_LEFT nil :f_TOP_SECOND_FROM_RIGHT nil :f_BOTTOM_RIGHT nil :f_BOTTOM_SECOND_FROM_RIGHT nil :f_SECOND_FROM_BOTTOM_RIGHT nil :f_THIRD_FROM_BOTTOM_RIGHT nil :f_FOURTH_FROM_BOTTOM_RIGHT nil :f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT nil :f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT nil :f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT nil :f_BOTTOM_THIRD_FROM_RIGHT nil :f_BOTTOM_FOURTH_FROM_RIGHT nil :f_BOTTOM_SECOND_FROM_LEFT nil :f_SECOND_FROM_BOTTOM_LEFT nil :f_THIRD_FROM_BOTTOM_LEFT nil :f_BOTTOM_LEFT nil :f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_CONSTRUCTOR))
        (var _touchButtonLocationHelper (TouchButtonLocationHelper/jnew_0))
        (var _cellPositionFactory (CellPositionFactory/jm_getInstance))
        (:jm_init _cellPositionFactory (:jm_getTotalColumns _touchButtonLocationHelper) (:jm_getTotalRows _touchButtonLocationHelper))
        (set (this :f_TOP_LEFT) (:jm_getInstanceColRow _cellPositionFactory 0 0))
        (set (this :f_TOP_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 1)) 0))
        (set (this :f_BOTTOM_LEFT) (:jm_getInstanceColRow _cellPositionFactory 0 (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 1))))
        (set (this :f_BOTTOM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 1)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 1))))
        (set (this :f_BOTTOM_SECOND_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 2)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 1))))
        (set (this :f_SECOND_FROM_BOTTOM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 1)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 2))))
        (set (this :f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 2)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 2))))
        (set (this :f_BOTTOM_SECOND_FROM_LEFT) (:jm_getInstanceColRow _cellPositionFactory 1 (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 1))))
        (set (this :f_SECOND_FROM_BOTTOM_LEFT) (:jm_getInstanceColRow _cellPositionFactory 0 (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 2))))
        (set (this :f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT) (:jm_getInstanceColRow _cellPositionFactory 1 (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 2))))
        (if (> (:jm_getTotalRows _touchButtonLocationHelper) 2)
            (do
            (set (this :f_SECOND_FROM_TOP_LEFT) (:jm_getInstanceColRow _cellPositionFactory 0 1))
            (set (this :f_SECOND_FROM_TOP_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 1)) 1)))
            (do
            (set (this :f_SECOND_FROM_TOP_LEFT) (_cellPositionFactory :f_NONE))
            (set (this :f_SECOND_FROM_TOP_RIGHT) (_cellPositionFactory :f_NONE))))
        (if (>= (:jm_getTotalRows _touchButtonLocationHelper) 4)
            (do
            (set (this :f_THIRD_FROM_BOTTOM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 1)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 3))))
            (set (this :f_FOURTH_FROM_BOTTOM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 1)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 4))))
            (set (this :f_THIRD_FROM_BOTTOM_LEFT) (:jm_getInstanceColRow _cellPositionFactory 0 (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 3)))))
            (do
            (set (this :f_THIRD_FROM_BOTTOM_RIGHT) (_cellPositionFactory :f_NONE))
            (set (this :f_FOURTH_FROM_BOTTOM_RIGHT) (_cellPositionFactory :f_NONE))
            (set (this :f_THIRD_FROM_BOTTOM_LEFT) (_cellPositionFactory :f_NONE))))
        (if (>= (:jm_getTotalColumns _touchButtonLocationHelper) 4)
            (do
            (set (this :f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 3)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 2))))
            (set (this :f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 4)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 2))))
            (set (this :f_BOTTOM_THIRD_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 3)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 1))))
            (set (this :f_BOTTOM_FOURTH_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 4)) (JR/i32 (- (:jm_getTotalRows _touchButtonLocationHelper) 1))))
            (set (this :f_TOP_SECOND_FROM_LEFT) (:jm_getInstanceColRow _cellPositionFactory 1 0))
            (set (this :f_TOP_SECOND_FROM_RIGHT) (:jm_getInstanceColRow _cellPositionFactory (JR/i32 (- (:jm_getTotalColumns _touchButtonLocationHelper) 2)) 0)))
            (do
            (set (this :f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT) (_cellPositionFactory :f_NONE))
            (set (this :f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT) (_cellPositionFactory :f_NONE))
            (set (this :f_BOTTOM_THIRD_FROM_RIGHT) (_cellPositionFactory :f_NONE))
            (set (this :f_BOTTOM_FOURTH_FROM_RIGHT) (_cellPositionFactory :f_NONE))
            (set (this :f_TOP_SECOND_FROM_LEFT) (_cellPositionFactory :f_NONE))
            (set (this :f_TOP_SECOND_FROM_RIGHT) (_cellPositionFactory :f_NONE))))
    this))

(set jproto @{})


