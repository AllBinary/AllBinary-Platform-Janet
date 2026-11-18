# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))

# Java class ScaleProperties
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_toString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ScaleProperties" :f_scaleX 0.0 :f_scaleY 0.0 :f_scaleWidth 0 :f_scaleHeight 0 :f_shouldScale false} jproto))
    
    
    
    
    
    this))

    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_appendfloat (:jm_append (:jm_appendfloat (:jm_append (:jm_appendboolean (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_COLON_SEP)) (this :f_shouldScale)) "scaleX: ") (this :f_scaleX)) "scaleY: ") (this :f_scaleY)) "scaleWidth: ") (this :f_scaleWidth)) "scaleHeight: ") (this :f_scaleHeight)))))))

(set jproto @{:jm_toString jm_toString})


