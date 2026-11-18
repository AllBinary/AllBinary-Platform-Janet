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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../java/lang/Integer :as Integer)
(defn- NumberInSameGroupSequence/jm_getInstance [& args] (JR/call jfile "./NumberInSameGroupSequence" "jm_getInstance" args))
(defn- NumberOnOwnGroupSequenceAI/jnew_4 [& args] (JR/call jfile "./NumberOnOwnGroupSequenceAI" "jnew_4" args))

# Java class NumberOnOwnGroupSequenceAIFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NumberOnOwnGroupSequenceAIFactory" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _hashtable _artificialIntelligenceInterface _ownerLayerInterface _gameInput]
    (label jreturn
        (var _integerArray ((NumberInSameGroupSequence/jm_getInstance) :f_NUMBER_ON_SAME_TEAM_SEQUENCE))
        (var _list (BasicArrayListD/jnew_0))
        (do
            (var _index 0)
            (var jbreak false)
            (while (and (not jbreak) (< _index (length _integerArray)))
                (label jcontinue
            (var _integerCanBeNull (:jm_get _hashtable (_integerArray _index)))
            (if (nil? _integerCanBeNull)
                (do
                (do (set jbreak true) (return jcontinue))))
            (:jm_add _list _integerCanBeNull))
                (unless jbreak (set _index (JR/i32 (+ _index 1))))))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Total AI Properties: ")
        (:jm_appendint _stringBuffer (:jm_size _list))
        (:jm_append _stringBuffer " == Total AI: ")
        (:jm_appendint _stringBuffer (length _artificialIntelligenceInterface))
        (:jm_append _stringBuffer " + 1")
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_GET_INSTANCE))
        (if (> (JR/i32 (- (length _artificialIntelligenceInterface) 1)) (:jm_size _list))
            (do
            (error (JR/newException "Exception" "Not enough AI properties."))))
        (if (< (JR/i32 (- (length _artificialIntelligenceInterface) 1)) (:jm_size _list))
            (do
            (error (JR/newException "Exception" "Too Many AI properties."))))
        (var _numberOnSameTeam (array/new-filled (:jm_size _list) nil))
        (do
            (var _index 0)
            (while (< _index (length _numberOnSameTeam))
                (do
            (set (_numberOnSameTeam _index) ((_list :f_objectArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (NumberOnOwnGroupSequenceAI/jnew_4 _numberOnSameTeam _artificialIntelligenceInterface _ownerLayerInterface _gameInput)))))

(set jproto @{:jm_getInstance jm_getInstance})


