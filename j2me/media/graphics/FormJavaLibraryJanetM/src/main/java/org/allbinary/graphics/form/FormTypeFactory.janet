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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- FormType/jnew_1 [& args] (JR/call jfile "./FormType" "jnew_1" args))

# Java class FormTypeFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getFormType nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FormTypeFactory" :f_UNK nil :f_NULL_FORM_TYPE nil :f_TEMP_HORIZONTAL_FORM nil :f_HORIZONTAL_FORM nil :f_VERTICAL_CENTER_FORM nil} jproto))
    (put this :f_UNK "Unknown FormType")
    (put this :f_NULL_FORM_TYPE (FormType/jnew_1 ((StringUtil/jm_getInstance) :f_NULL_STRING)))
    (put this :f_TEMP_HORIZONTAL_FORM (FormType/jnew_1 "TempHorizontal"))
    (put this :f_HORIZONTAL_FORM (FormType/jnew_1 "Horizontal"))
    (put this :f_VERTICAL_CENTER_FORM (FormType/jnew_1 "Vertical"))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getFormType (fn jm_getFormType [this]
    (label jreturn
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (var _formType nil)
        (if (:jm_isPortrait _displayInfo)
            (do
            (set _formType (this :f_VERTICAL_CENTER_FORM)))
            (do
            (set _formType (this :f_HORIZONTAL_FORM))))
        (return jreturn _formType))))

(set jproto @{:jm_getFormType jm_getFormType})


