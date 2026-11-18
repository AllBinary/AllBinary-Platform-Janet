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
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- ScreenInfo/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/form/ScreenInfo" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/logic/util/visitor/Visitor :as Visitor)

# Java class LimitCommandsVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_visit nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LimitCommandsVisitor" :f_isNotSmallDisplay false} jproto))
    
    (JR/superInit this (Visitor/jnew_0))
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (set (this :f_isNotSmallDisplay) (or (and (:jm_isPortrait _displayInfo) (> (:jm_getLastHeight _displayInfo) ((ScreenInfo/jm_getInstance) :f_SMALL_WIDTH))) (and (not (:jm_isPortrait _displayInfo)) (> (:jm_getLastHeight _displayInfo) ((ScreenInfo/jm_getInstance) :f_SMALL_HEIGHT)))))
    this))
    
(set jm_visit (fn jm_visit [this _anyType]
    (label jreturn
        (var _command _anyType)
        (var _booleanFactory (BooleanFactory/jm_getInstance))
        (if (or (or (or (this :f_isNotSmallDisplay) (= (:jm_getPriority _command) 1)) (= _command ((GameCommandsFactory/jm_getInstance) :f_EXIT_COMMAND))) (= _command ((GameCommandsFactory/jm_getInstance) :f_EXIT_WITHOUT_PROGRESS_COMMAND)))
            (do
            (return jreturn (_booleanFactory :f_TRUE)))
            (do
            (return jreturn (_booleanFactory :f_FALSE)))))))

(set jproto (table/setproto @{:jm_visit jm_visit} Visitor/jproto))


