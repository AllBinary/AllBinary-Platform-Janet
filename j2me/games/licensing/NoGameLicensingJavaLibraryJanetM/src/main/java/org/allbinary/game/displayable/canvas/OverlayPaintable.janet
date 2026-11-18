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
(import ../../../../../org/allbinary/graphics/paint/InitUpdatePaintable :as InitUpdatePaintable)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class OverlayPaintable
(var jproto nil)
(var jnew_0 nil)
(var jm_update nil)
(var jm_paint nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OverlayPaintable" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (JR/superInit this (InitUpdatePaintable/jnew_0))
    this))
    
(set jm_update (fn jm_update [this]
        (try
            (do
            nil)
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_UPDATE) _e))))))
    
(set jm_paint (fn jm_paint [this _graphics]
    nil))

(set jproto (table/setproto @{:jm_update jm_update :jm_paint jm_paint} InitUpdatePaintable/jproto))


