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
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- TouchFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory" "jm_getInstance" args))
(defn- ScrollSelectionFormNoneFactory/jm_getInstance [& args] (JR/call jfile "./ScrollSelectionFormNoneFactory" "jm_getInstance" args))
(defn- CommandCurrentSelectionForm/jnew_6 [& args] (JR/call jfile "./CommandCurrentSelectionForm" "jnew_6" args))

# Java class CommandCurrentSelectionFormFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CommandCurrentSelectionFormFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [_title _items _rectangle _formType _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor]
    (label jreturn
        (if (:jm_isFeature (Features/jm_getInstance) ((TouchFeatureFactory/jm_getInstance) :f_TOUCH_ENABLED))
            (do
            (var _scrollSelectionForm (CommandCurrentSelectionForm/jnew_6 _title _items _border _moveForSmallScreen _backgroundBasicColor _foregroundBasicColor))
            (:jm_init _scrollSelectionForm _rectangle _formType)
            (return jreturn _scrollSelectionForm))
            (do
            (return jreturn (ScrollSelectionFormNoneFactory/jm_getInstance)))))))

(set jproto @{})


