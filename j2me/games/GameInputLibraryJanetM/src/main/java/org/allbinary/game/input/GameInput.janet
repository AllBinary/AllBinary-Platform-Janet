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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- InputFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class GameInput
(var jproto nil)
(var jnew_2 nil)
(var jm_add nil)
(var jm_addForRemoval nil)
(var jm_isForRemoval nil)
(var jm_clear nil)
(var jm_removeNonAIInputGameKeyEvents nil)
(var jm_update nil)
(var jm_getRemovalGameKeyEventList nil)
(var jm_getGameKeyEventList nil)

    
(set jnew_2 (fn jnew_2 [_gameKeyEventList _removalGameKeyEventList]
    (var this (table/setproto @{:jclass "GameInput" :f_logUtil nil :f_commonStrings nil :f_gameKeyEventList nil :f_removalGameKeyEventList nil :f_isRemoveDuplicateKeyPresses false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
    
        (set (this :f_gameKeyEventList) _gameKeyEventList)
        (set (this :f_removalGameKeyEventList) _removalGameKeyEventList)
        (set (this :f_isRemoveDuplicateKeyPresses) (:jm_isFeature (Features/jm_getInstance) ((InputFeatureFactory/jm_getInstance) :f_REMOVE_DUPLICATE_KEY_PRESSES)))
    this))
    
(set jm_add (fn jm_add [this _gameKeyEvent]
    (label jreturn
        (if (and (this :f_isRemoveDuplicateKeyPresses) (:jm_contains (this :f_gameKeyEventList) _gameKeyEvent))
            (do
            (return jreturn)))
        (if (not (nil? _gameKeyEvent))
            (do
            (:jm_add (this :f_gameKeyEventList) _gameKeyEvent))
            (do
            (:jm_putF (this :f_logUtil) "Danger Passed Null GameKeyEvent" this ((this :f_commonStrings) :f_ADD)))))))
    
(set jm_addForRemoval (fn jm_addForRemoval [this _gameKeyEvent]
        (:jm_add (this :f_removalGameKeyEventList) _gameKeyEvent)))
    
(set jm_isForRemoval (fn jm_isForRemoval [this _gameKeyEvent]
    (label jreturn
        (return jreturn (:jm_contains (this :f_removalGameKeyEventList) _gameKeyEvent)))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_gameKeyEventList))))
    
(set jm_removeNonAIInputGameKeyEvents (fn jm_removeNonAIInputGameKeyEvents [this]
        (var _list (this :f_gameKeyEventList))
        (var _gameKeyEvent nil)
        (do
            (var _index (:jm_size _list))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _gameKeyEvent ((_list :f_objectArray) _index))
            (if (not= (:jm_getSourceId _gameKeyEvent) 1)
                (do
                (:jm_removeAt _list _index))))))))
    
(set jm_update (fn jm_update [this]
        (var _removeList (this :f_removalGameKeyEventList))
        (var _list (this :f_gameKeyEventList))
        (var _size (:jm_size _removeList))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _anyType ((_removeList :f_objectArray) _index))
            (do
                (var _index2 (:jm_size _list))
                (while (>= (set _index2 (JR/i32 (- _index2 1))) 0)
                    (do
                (if (= ((_list :f_objectArray) _index2) _anyType)
                    (do
                    (:jm_removeAt _list _index2)))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_clear _removeList)))
    
(set jm_getRemovalGameKeyEventList (fn jm_getRemovalGameKeyEventList [this]
    (label jreturn
        (return jreturn (this :f_removalGameKeyEventList)))))
    
(set jm_getGameKeyEventList (fn jm_getGameKeyEventList [this]
    (label jreturn
        (return jreturn (this :f_gameKeyEventList)))))

(set jproto @{:jm_add jm_add :jm_addForRemoval jm_addForRemoval :jm_isForRemoval jm_isForRemoval :jm_clear jm_clear :jm_removeNonAIInputGameKeyEvents jm_removeNonAIInputGameKeyEvents :jm_update jm_update :jm_getRemovalGameKeyEventList jm_getRemovalGameKeyEventList :jm_getGameKeyEventList jm_getGameKeyEventList})


