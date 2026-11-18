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
# package org.allbinary.canvas

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AppletUtil/jm_isAppletLoader [& args] (JR/call jfile "../../../org/allbinary/AppletUtil" "jm_isAppletLoader" args))
(defn- J2MEUtil/jm_isHTML [& args] (JR/call jfile "../../../org/allbinary/J2MEUtil" "jm_isHTML" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))

# Java class CustomGameMenuUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_add nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CustomGameMenuUtil"} jproto))
    this))

    
(set jm_add (fn jm_add [_canvas]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (if (AppletUtil/jm_isAppletLoader _canvas)
            (do
            nil)
            (if (J2MEUtil/jm_isHTML)
            (do
            nil)
            (do
            (:jm_addCommand _canvas (_gameCommandsFactory :f_EXIT_COMMAND)))))))

(set jproto @{})


