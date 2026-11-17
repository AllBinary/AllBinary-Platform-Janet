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
# package org.allbinary.logic.math

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonPhoneStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonPhoneStrings" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class MathData
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MathData" :f_EQUALS nil :f_PLUS nil :f_GREATER_THAN nil :f_MINUS nil :f_DIVIDE nil :f_MULTIPLY nil} jproto))
    
    (put this :f_PLUS "+")
    (put this :f_GREATER_THAN ">")
    
    
    
        (var _commonSeps (CommonSeps/jm_getInstance))
        (set (this :f_EQUALS) (_commonSeps :f_EQUALS))
        (set (this :f_MINUS) (_commonSeps :f_DASH))
        (set (this :f_DIVIDE) (_commonSeps :f_FORWARD_SLASH))
        (set (this :f_MULTIPLY) ((CommonPhoneStrings/jm_getInstance) :f_STAR))
    this))

(set jproto @{})


