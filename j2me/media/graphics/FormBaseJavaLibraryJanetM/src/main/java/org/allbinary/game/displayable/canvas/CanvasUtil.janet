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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_FIRE [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_FIRE" args))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))

# Java class CanvasUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_getKeyName nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CanvasUtil"} jproto))
    this))
    
(set jm_getKeyName (fn jm_getKeyName [_key]
    (label jreturn
        (var _commonPhoneStrings (CommonPhoneStrings/jm_getInstance))
        (if (= _key (Canvas/jstatic_UP))
            (do
            (return jreturn (_commonPhoneStrings :f_UP)))
            (if (= _key (Canvas/jstatic_DOWN))
            (do
            (return jreturn (_commonPhoneStrings :f_DOWN)))
            (if (= _key (Canvas/jstatic_RIGHT))
            (do
            (return jreturn (_commonPhoneStrings :f_RIGHT)))
            (if (= _key (Canvas/jstatic_LEFT))
            (do
            (return jreturn (_commonPhoneStrings :f_LEFT)))
            (if (= _key (Canvas/jstatic_FIRE))
            (do
            (return jreturn (_commonPhoneStrings :f_FIRE))))))))
        (return jreturn "UNKNOWN KEY"))))

(set jproto @{})


