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
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class NumberInSameGroupSequence
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jnew_0)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NumberInSameGroupSequence" :f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE nil :f_NUMBER_ON_SAME_TEAM_SEQUENCE nil} jproto))
    
    
    
    
    
    
    
    
    
    
    
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO) (:jm_getAt _smallIntegerSingletonFactory 100))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE) (:jm_getAt _smallIntegerSingletonFactory 101))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_TWO) (:jm_getAt _smallIntegerSingletonFactory 102))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE) (:jm_getAt _smallIntegerSingletonFactory 103))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR) (:jm_getAt _smallIntegerSingletonFactory 104))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE) (:jm_getAt _smallIntegerSingletonFactory 105))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX) (:jm_getAt _smallIntegerSingletonFactory 106))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN) (:jm_getAt _smallIntegerSingletonFactory 107))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT) (:jm_getAt _smallIntegerSingletonFactory 108))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE) (:jm_getAt _smallIntegerSingletonFactory 109))
        (set (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE) @[(this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_ONE) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_THREE) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_SIX) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT) (this :f_NUMBER_ON_SAME_TEAM_SEQUENCE_NINE)])
    this))

(set jproto @{})


