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
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- GameFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" "jm_getInstance" args))
(defn- Anchor/jstatic_TOP_LEFT [& args] (JR/call jfile "../../../../org/allbinary/graphics/Anchor" "jstatic_TOP_LEFT" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- ImageCreationUtil/jm_getInstance [& args] (JR/call jfile "./ImageCreationUtil" "jm_getInstance" args))

# Java class ImageCopyUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_createImageForRotation nil)
(var jm_createImage nil)
(var jm_createImageScale nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ImageCopyUtil" :f_logUtil nil :f_commonStrings nil :f_imageCreationUtil nil :f_anchor 0 :f_gameFeatureFactory nil :f_features nil :f_NO_COPY nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_imageCreationUtil (ImageCreationUtil/jm_getInstance))
    (put this :f_anchor (Anchor/jstatic_TOP_LEFT))
    (put this :f_gameFeatureFactory (GameFeatureFactory/jm_getInstance))
    (put this :f_features (Features/jm_getInstance))
    (put this :f_NO_COPY "J2ME does not need to copy images after initial loading")
    this))
    
(set jm_createImageForRotation (fn jm_createImageForRotation [this _originalImage]
    (label jreturn
        (return jreturn (:jm_createImage this _originalImage)))))
    
(set jm_createImage (fn jm_createImage [this _originalImage]
    (label jreturn
        (if (not (:jm_isFeature (this :f_features) ((this :f_gameFeatureFactory) :f_POST_IMAGE_LOADING_MODIFICATION)))
            (do
            (:jm_put (this :f_logUtil) (this :f_NO_COPY) this ((this :f_commonStrings) :f_CONSTRUCTOR) (JR/newException "Exception"))
            (return jreturn _originalImage)))
        (var _image (:jm_createImageWH (this :f_imageCreationUtil) (:jm_getWidth _originalImage) (:jm_getHeight _originalImage)))
        (if (:jm_isMutable _image)
            (do
            (JR/className (:jm_getGraphics _image))
            (return jreturn _image))
            (do
            (error (JR/newException "Exception" "Not Mutable")))))))
    
(set jm_createImageScale (fn jm_createImageScale [this _originalImage _canvasScale _resize]
    (label jreturn
        (if (not (:jm_isFeature (this :f_features) ((this :f_gameFeatureFactory) :f_POST_IMAGE_LOADING_MODIFICATION)))
            (do
            (:jm_put (this :f_logUtil) (this :f_NO_COPY) this ((this :f_commonStrings) :f_CONSTRUCTOR) (JR/newException "Exception"))
            (return jreturn _originalImage)))
        (var _newWidth (* (:jm_getWidth _originalImage) _canvasScale))
        (var _newHeight (* (:jm_getHeight _originalImage) _canvasScale))
        (if _resize
            (do
            (if (< _newWidth _newHeight)
                (do
                (set _newWidth _newHeight)))
            (if (< _newHeight _newWidth)
                (do
                (set _newHeight _newWidth)))))
        (var _image (:jm_createImageWH (this :f_imageCreationUtil) _newWidth _newHeight))
        (if (:jm_isMutable _image)
            (do
            (var _halfWidthDelta (JR/idiv (JR/i32 (- _newWidth (:jm_getWidth _originalImage))) 2))
            (var _halfHeightDelta (JR/idiv (JR/i32 (- _newHeight (:jm_getHeight _originalImage))) 2))
            (var _graphics (:jm_getGraphics _image))
            (:jm_drawImage _graphics _originalImage _halfWidthDelta _halfHeightDelta (this :f_anchor))
            (return jreturn _image))
            (do
            (error (JR/newException "Exception" "Not Mutable")))))))

(set jproto @{:jm_createImageForRotation jm_createImageForRotation :jm_createImage jm_createImage :jm_createImageScale jm_createImageScale})


