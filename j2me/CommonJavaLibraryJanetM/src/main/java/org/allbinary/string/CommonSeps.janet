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
# package org.allbinary.string

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))

# Java class CommonSeps
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CommonSeps" :f_NEW_LINE nil :f_SEMICOLON nil :f_EQUALS nil :f_SPACE nil :f_COMMA nil :f_COLON nil :f_PERIOD nil :f_UNDERSCORE nil :f_COLON_SEP nil :f_COMMA_SEP nil :f_PARENTHESIS_OPEN nil :f_PARENTHESIS_CLOSE nil :f_BRACE_OPEN nil :f_BRACE_CLOSE nil :f_BRACKET_OPEN nil :f_BRACKET_CLOSE nil :f_DASH nil :f_PERCENT nil :f_AMPERSAND nil :f_FORWARD_SLASH nil :f_BACK_SLASH nil :f_QUESTION nil :f_QUOTE nil :f_QUOTE_END nil :f_COMMENT nil :f_INDENT nil} jproto))
    (put this :f_NEW_LINE "\n")
    (put this :f_SEMICOLON ";")
    (put this :f_EQUALS "=")
    (put this :f_SPACE " ")
    (put this :f_COMMA ",")
    (put this :f_COLON ":")
    (put this :f_PERIOD ".")
    (put this :f_UNDERSCORE "_")
    (put this :f_COLON_SEP (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_COLON)) (this :f_SPACE))))
    (put this :f_COMMA_SEP (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_COMMA)) (this :f_SPACE))))
    (put this :f_PARENTHESIS_OPEN "(")
    (put this :f_PARENTHESIS_CLOSE ")")
    (put this :f_BRACE_OPEN "{")
    (put this :f_BRACE_CLOSE "}")
    (put this :f_BRACKET_OPEN "[")
    (put this :f_BRACKET_CLOSE "]")
    (put this :f_DASH "-")
    (put this :f_PERCENT "%")
    (put this :f_AMPERSAND "&")
    (put this :f_FORWARD_SLASH "/")
    (put this :f_BACK_SLASH "\\")
    (put this :f_QUESTION "?")
    (put this :f_QUOTE "\"")
    (put this :f_QUOTE_END "\",")
    (put this :f_COMMENT "//")
    (put this :f_INDENT "    ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


