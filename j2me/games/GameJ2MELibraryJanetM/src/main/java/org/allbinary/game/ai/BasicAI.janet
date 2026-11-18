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
# package org.allbinary.game.ai

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/ai/ArtificialIntelligence :as ArtificialIntelligence)
(defn- CanvasUtil/jm_getKeyName [& args] (JR/call jfile "../../../../org/allbinary/game/displayable/canvas/CanvasUtil" "jm_getKeyName" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class BasicAI
(var jproto nil)
(var jcell_AI_VISITOR :jnone)
(var jstatic_AI_VISITOR nil)
(var jsetstatic_AI_VISITOR nil)
(var jcell_ID :jnone)
(var jstatic_ID nil)
(var jsetstatic_ID nil)
(var jnew_2 nil)
(var jm_processAI nil)
(var jm_processKeyAI nil)
(var jm_setLastKey nil)
(var jm_getLastKey nil)
(var jm_getOwnerLayerInterface nil)
(var jm_getGameInput nil)
(var jm_getName nil)
(var jm_toString nil)
(var jm_getSourceId nil)

(set jstatic_AI_VISITOR (fn jstatic_AI_VISITOR []
  (when (= jcell_AI_VISITOR :jnone) (set jcell_AI_VISITOR (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 2)))
  jcell_AI_VISITOR))
(set jsetstatic_AI_VISITOR (fn jsetstatic_AI_VISITOR [value] (set jcell_AI_VISITOR value)))

(set jstatic_ID (fn jstatic_ID []
  (when (= jcell_ID :jnone) (set jcell_ID (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 1)))
  jcell_ID))
(set jsetstatic_ID (fn jsetstatic_ID [value] (set jcell_ID value)))

    
(set jnew_2 (fn jnew_2 [_ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "BasicAI" :f_logUtil nil :f_commonStrings nil :f_gameKeyEventFactory nil :f_ownerLayerInterface nil :f_gameInput nil :f_lastKey 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_gameKeyEventFactory (GameKeyEventFactory/jm_getInstance))
    
    
    (put this :f_lastKey (JR/i32 (- 1)))
    (JR/superInit this (ArtificialIntelligence/jnew_0))
        (set (this :f_ownerLayerInterface) _ownerLayerInterface)
        (set (this :f_gameInput) _gameInput)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_processKeyAI (fn jm_processKeyAI [this _key]
        (if (not= _key (JR/i32 (- 1)))
            (do
            (:jm_add (this :f_gameInput) (:jm_getInstanceForKey (this :f_gameKeyEventFactory) this _key))))))
    
(set jm_setLastKey (fn jm_setLastKey [this _lastKey]
        (set (this :f_lastKey) _lastKey)))
    
(set jm_getLastKey (fn jm_getLastKey [this]
    (label jreturn
        (return jreturn (this :f_lastKey)))))
    
(set jm_getOwnerLayerInterface (fn jm_getOwnerLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_ownerLayerInterface)))))
    
(set jm_getGameInput (fn jm_getGameInput [this]
    (label jreturn
        (return jreturn (this :f_gameInput)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (JR/className this)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_NEW_LINE))
        (:jm_append _stringBuffer (:jm_getName this))
        (:jm_append _stringBuffer " LastKey: ")
        (:jm_append _stringBuffer (CanvasUtil/jm_getKeyName (:jm_getLastKey this)))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn 1))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_processKeyAI jm_processKeyAI :jm_setLastKey jm_setLastKey :jm_getLastKey jm_getLastKey :jm_getOwnerLayerInterface jm_getOwnerLayerInterface :jm_getGameInput jm_getGameInput :jm_getName jm_getName :jm_toString jm_toString :jm_getSourceId jm_getSourceId} ArtificialIntelligence/jproto))


