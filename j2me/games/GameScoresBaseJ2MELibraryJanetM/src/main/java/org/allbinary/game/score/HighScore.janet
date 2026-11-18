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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/io/ByteArrayOutputStream :as ByteArrayOutputStream)
(import ../../../../java/io/DataOutputStream :as DataOutputStream)
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ../../../../java/lang/Long :as Long)

# Java class HighScore
(var jproto nil)
(var jnew_4 nil)
(var jm_getId nil)
(var jm_getName nil)
(var jm_getScore nil)
(var jm_getAsBytes nil)
(var jm_getGameInfo nil)
(var jm_getScoreString nil)
(var jm_setName nil)
(var jm_toString nil)

    
(set jnew_4 (fn jnew_4 [_id _name _gameInfo _score]
    (var this (table/setproto @{:jclass "HighScore" :f_id 0 :f_name nil :f_gameInfo nil :f_score 0 :f_scoreString nil} jproto))
    
    
    
    
    
        (set (this :f_id) _id)
        (set (this :f_name) _name)
        (set (this :f_gameInfo) _gameInfo)
        (set (this :f_score) _score)
        (set (this :f_scoreString) (JR/str (this :f_score)))
    this))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_getScore (fn jm_getScore [this]
    (label jreturn
        (return jreturn (this :f_score)))))
    
(set jm_getAsBytes (fn jm_getAsBytes [this]
    (label jreturn
        (var _byteArrayOutputStream (ByteArrayOutputStream/jnew_0))
        (var _outputStream (DataOutputStream/jnew_1 _byteArrayOutputStream))
        (:jm_writeUTF _outputStream (:jm_getName this))
        (:jm_writeLong _outputStream (:jm_getScore this))
        (return jreturn (:jm_toByteArray _byteArrayOutputStream)))))
    
(set jm_getGameInfo (fn jm_getGameInfo [this]
    (label jreturn
        (return jreturn (this :f_gameInfo)))))
    
(set jm_getScoreString (fn jm_getScoreString [this]
    (label jreturn
        (return jreturn (this :f_scoreString)))))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_name) _name)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _commonSeps (CommonSeps/jm_getInstance))
        (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_appendlong (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_name)) (_commonSeps :f_COLON)) (this :f_score)) (_commonSeps :f_FORWARD_SLASH)) (this :f_scoreString)))))))

(set jproto @{:jm_getId jm_getId :jm_getName jm_getName :jm_getScore jm_getScore :jm_getAsBytes jm_getAsBytes :jm_getGameInfo jm_getGameInfo :jm_getScoreString jm_getScoreString :jm_setName jm_setName :jm_toString jm_toString})


