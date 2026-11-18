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
# package org.allbinary.animation.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- PositionStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/math/PositionStrings" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class AnimationFactoryInitializationVisitor
(var jproto nil)
(var jnew_0 nil)
(var jm_visit nil)
(var jm_toString nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnimationFactoryInitializationVisitor" :f_width 0 :f_height 0 :f_dx 0 :f_dy 0 :f_originalDx 0 :f_originalDy 0} jproto))
    
    
    
    
    
    
    this))

    
(set jm_visit (fn jm_visit [this]
    nil))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _commonLabels (CommonLabels/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_appendfloat (:jm_append _stringBuffer ((PositionStrings/jm_getInstance) :f_DX_LABEL)) (this :f_dx))
        (:jm_appendfloat (:jm_append _stringBuffer ((PositionStrings/jm_getInstance) :f_DY_LABEL)) (this :f_dy))
        (:jm_append _stringBuffer (_commonLabels :f_WIDTH_LABEL))
        (:jm_appendint _stringBuffer (this :f_width))
        (:jm_append _stringBuffer (_commonSeps :f_SPACE))
        (:jm_append _stringBuffer (_commonLabels :f_HEIGHT_LABEL))
        (:jm_appendint _stringBuffer (this :f_height))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_visit jm_visit :jm_toString jm_toString})


