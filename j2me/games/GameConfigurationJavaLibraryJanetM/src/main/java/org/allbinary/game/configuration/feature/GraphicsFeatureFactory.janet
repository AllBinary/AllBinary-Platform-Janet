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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- GraphicsFeature/jnew_1 [& args] (JR/call jfile "./GraphicsFeature" "jnew_1" args))

# Java class GraphicsFeatureFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GraphicsFeatureFactory" :f_NONE nil :f_TRANSPARENT_IMAGE_CREATION nil :f_IMAGE_GRAPHICS nil :f_IMAGE_ROTATION_ON_THE_FLY nil :f_IMAGE_TO_ARRAY_GRAPHICS nil :f_SPRITE_QUARTER_ROTATION_GRAPHICS nil :f_SPRITE_FULL_GRAPHICS nil :f_VECTOR_GRAPHICS nil :f_VECTOR_TO_IMAGE_GRAPHICS nil} jproto))
    (put this :f_NONE (GraphicsFeature/jnew_1 ((StringUtil/jm_getInstance) :f_NULL_STRING)))
    (put this :f_TRANSPARENT_IMAGE_CREATION (GraphicsFeature/jnew_1 "Transparent Image Creation"))
    (put this :f_IMAGE_GRAPHICS (GraphicsFeature/jnew_1 "Image Graphics"))
    (put this :f_IMAGE_ROTATION_ON_THE_FLY (GraphicsFeature/jnew_1 "Image Rotated On The Fly"))
    (put this :f_IMAGE_TO_ARRAY_GRAPHICS (GraphicsFeature/jnew_1 "Image To Array Graphics"))
    (put this :f_SPRITE_QUARTER_ROTATION_GRAPHICS (GraphicsFeature/jnew_1 "Sprite Quarter Rotation Graphics"))
    (put this :f_SPRITE_FULL_GRAPHICS (GraphicsFeature/jnew_1 "Sprite Full Rotation Graphics"))
    (put this :f_VECTOR_GRAPHICS (GraphicsFeature/jnew_1 "BasicArrayList Graphics"))
    (put this :f_VECTOR_TO_IMAGE_GRAPHICS (GraphicsFeature/jnew_1 "BasicArrayList To Image Graphics"))
    this))

(set jproto @{})


