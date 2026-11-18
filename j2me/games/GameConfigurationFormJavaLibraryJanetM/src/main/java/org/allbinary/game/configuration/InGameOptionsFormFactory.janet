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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommandForm/jm_getNullCommandForm [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/screen/CommandForm" "jm_getNullCommandForm" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- InGameOptionsForm/jnew_4 [& args] (JR/call jfile "./InGameOptionsForm" "jnew_4" args))

# Java class InGameOptionsFormFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_get nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InGameOptionsFormFactory" :f_logUtil nil :f_SINGLETON nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_SINGLETON (CommandForm/jm_getNullCommandForm))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this _commandListener _initInterface _title _backgrounBasicColor _foregroundBasicColor]
        (try
            (do
            (if (= (this :f_SINGLETON) (CommandForm/jm_getNullCommandForm))
                (do
                (:jm_init _initInterface)
                (set (this :f_SINGLETON) (InGameOptionsForm/jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_INIT) _e))))))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn (this :f_SINGLETON)))))

(set jproto @{:jm_init jm_init :jm_get jm_get})


