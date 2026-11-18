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
# package org.allbinary.media.image

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ImageScaleUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImage2 nil)
(var jm_createImage3 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageScaleUtil"} jproto))
    this))
    
(set jm_createImage2 (fn jm_createImage2 [this _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached]
    (label jreturn
        (return jreturn (:jm_createImage3 this _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached true)))))
    
(set jm_createImage3 (fn jm_createImage3 [this _imageCache _originalImage _scaleNominatorX _scaleDenominatorX _scaleNominatorY _scaleDenominatorY _cached _mutable]
    (label jreturn
        (return jreturn _originalImage))))

(set jproto @{:jm_createImage2 jm_createImage2 :jm_createImage3 jm_createImage3})


