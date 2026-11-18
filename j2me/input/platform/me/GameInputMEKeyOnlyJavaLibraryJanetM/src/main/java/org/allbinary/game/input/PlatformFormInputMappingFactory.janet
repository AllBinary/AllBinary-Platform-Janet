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
(defn- InputToGameKeyMapping/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" "jnew_0" args))
(defn- InputToGameKeyMapping/jm_getNullInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" "jm_getNullInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyFactory" "jm_getInstance" args))

# Java class PlatformFormInputMappingFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getOrCreate nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PlatformFormInputMappingFactory" :f_logUtil nil :f_inputToGameKeyMapping nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_inputToGameKeyMapping (InputToGameKeyMapping/jm_getNullInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jm_getOrCreate (fn jm_getOrCreate [this]
    (label jreturn
        (try
            (do
            (if (= (this :f_inputToGameKeyMapping) (InputToGameKeyMapping/jm_getNullInstance))
                (do
                (var _inputToGameKeyMapping (InputToGameKeyMapping/jnew_0))
                (var _gameKeyFactory (GameKeyFactory/jm_getInstance))
                (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_UP) (_gameKeyFactory :f_UP))
                (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_DOWN) (_gameKeyFactory :f_DOWN))
                (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_LEFT) (_gameKeyFactory :f_LEFT))
                (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_RIGHT) (_gameKeyFactory :f_RIGHT))
                (:jm_add _inputToGameKeyMapping (_gameKeyFactory :f_KEY_NUM1) (_gameKeyFactory :f_GAME_A))
                (set (this :f_inputToGameKeyMapping) _inputToGameKeyMapping))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e))))
        (return jreturn (this :f_inputToGameKeyMapping)))))

(set jproto @{:jm_getOrCreate jm_getOrCreate})


