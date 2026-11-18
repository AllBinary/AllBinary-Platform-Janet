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
(defn- NullAnimationFactory/jm_getFactoryInstance [& args] (JR/call jfile "../../../../../org/allbinary/animation/NullAnimationFactory" "jm_getFactoryInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ./BaseTouchInput :as BaseTouchInput)
(defn- TouchButtonLocationHelper/jnew_0 [& args] (JR/call jfile "./TouchButtonLocationHelper" "jnew_0" args))
(defn- BasicTouchButtonCellPositionFactory/jnew_0 [& args] (JR/call jfile "./BasicTouchButtonCellPositionFactory" "jnew_0" args))
(defn- CommonButtons/jm_getInstance [& args] (JR/call jfile "./CommonButtons" "jm_getInstance" args))
(defn- TouchButton/jnew_7 [& args] (JR/call jfile "./TouchButton" "jnew_7" args))
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "./BasicTouchInputFactory" "jm_getInstance" args))

# Java class BasicNeededTouchButtonsBuilder
(var jproto nil)
(var jnew_0 nil)
(var jm_getList nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicNeededTouchButtonsBuilder" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (JR/superInit this (BaseTouchInput/jnew_0))
    this))

    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_CONSTRUCTOR))
            (var _list (BasicArrayListD/jnew_0))
            (var _touchButtonLocationHelper (TouchButtonLocationHelper/jnew_0))
            (var _basicTouchButtonCellPositionFactory (BasicTouchButtonCellPositionFactory/jnew_0))
            (var _commonButtons (CommonButtons/jm_getInstance))
            (var _animationInterface (JR/className (NullAnimationFactory/jm_getFactoryInstance)))
            (var _UP (TouchButton/jnew_7 ((BasicTouchInputFactory/jm_getInstance) :f_UP) _animationInterface _animationInterface (_commonButtons :f_NORMAL_BUTTON) (_basicTouchButtonCellPositionFactory :f_SECOND_FROM_BOTTOM_LEFT) (:jm_getColumnsRemainderHalf _touchButtonLocationHelper) (:jm_getRowsRemainderHalf _touchButtonLocationHelper)))
            (var _DOWN (TouchButton/jnew_7 ((BasicTouchInputFactory/jm_getInstance) :f_DOWN) _animationInterface _animationInterface (_commonButtons :f_NORMAL_BUTTON) (_basicTouchButtonCellPositionFactory :f_BOTTOM_LEFT) (:jm_getColumnsRemainderHalf _touchButtonLocationHelper) (:jm_getRowsRemainderHalf _touchButtonLocationHelper)))
            (var _LEFT (TouchButton/jnew_7 ((BasicTouchInputFactory/jm_getInstance) :f_LEFT) _animationInterface _animationInterface (_commonButtons :f_NORMAL_BUTTON) (_basicTouchButtonCellPositionFactory :f_BOTTOM_SECOND_FROM_RIGHT) (:jm_getColumnsRemainderHalf _touchButtonLocationHelper) (:jm_getRowsRemainderHalf _touchButtonLocationHelper)))
            (var _RIGHT (TouchButton/jnew_7 ((BasicTouchInputFactory/jm_getInstance) :f_RIGHT) _animationInterface _animationInterface (_commonButtons :f_NORMAL_BUTTON) (_basicTouchButtonCellPositionFactory :f_BOTTOM_RIGHT) (:jm_getColumnsRemainderHalf _touchButtonLocationHelper) (:jm_getRowsRemainderHalf _touchButtonLocationHelper)))
            (:jm_add _list _UP)
            (:jm_add _list _DOWN)
            (:jm_add _list _LEFT)
            (:jm_add _list _RIGHT)
            (return jreturn _list))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_GET_LIST) _e)
            (return jreturn (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))))))))

(set jproto (table/setproto @{:jm_getList jm_getList} BaseTouchInput/jproto))


