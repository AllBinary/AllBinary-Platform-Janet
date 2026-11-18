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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- LayerCollisionUtil/jm_getInstance [& args] (JR/call jfile "./LayerCollisionUtil" "jm_getInstance" args))
(defn- CollisionTypeFactory/jm_getInstance [& args] (JR/call jfile "./CollisionTypeFactory" "jm_getInstance" args))

# Java class CollidableBaseBehavior
(var jproto nil)
(var jnew_1 nil)
(var jm_update nil)
(var jm_getName nil)
(var jm_setCollidable nil)
(var jm_isCollidable nil)
(var jm_collide nil)
(var jm_isCollision nil)
(var jm_isCollisionInterface nil)
(var jm_collideInterface nil)
(var jm_paint nil)
(var jm_getCollisionTypeWith nil)

    
(set jnew_1 (fn jnew_1 [_collidable]
    (var this (table/setproto @{:jclass "CollidableBaseBehavior" :f_logUtil nil :f_commonStrings nil :f_layerCollisionUtil nil :f_collidable false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_layerCollisionUtil (LayerCollisionUtil/jm_getInstance))
    (put this :f_collidable true)
        (set (this :f_collidable) _collidable)
    this))
    
(set jm_update (fn jm_update [this]
    nil))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (JR/className this)))))
    
(set jm_setCollidable (fn jm_setCollidable [this _collidable]
        (set (this :f_collidable) _collidable)))
    
(set jm_isCollidable (fn jm_isCollidable [this _ownerLayer]
    (label jreturn
        (return jreturn (this :f_collidable)))))
    
(set jm_collide (fn jm_collide [this _ownerLayer _allbinaryCollidableLayer]
        (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((this :f_commonStrings) :f_NOT_IMPLEMENTED)) ((CommonLabels/jm_getInstance) :f_COLON_SEP)) (JR/className this)))))))
    
(set jm_isCollision (fn jm_isCollision [this _ownerLayer _collisionLayer]
    (label jreturn
        (return jreturn (:jm_isCollision (this :f_layerCollisionUtil) _ownerLayer _collisionLayer)))))
    
(set jm_isCollisionInterface (fn jm_isCollisionInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
    (label jreturn
        (return jreturn (:jm_isCollision (this :f_layerCollisionUtil) _ownerLayer _collidableInterfaceCompositeInterface)))))
    
(set jm_collideInterface (fn jm_collideInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_paint (fn jm_paint [this _ownerLayer _graphics]
    nil))
    
(set jm_getCollisionTypeWith (fn jm_getCollisionTypeWith [this _layerInterface]
    (label jreturn
        (return jreturn ((CollisionTypeFactory/jm_getInstance) :f_NONE)))))

(set jproto @{:jm_update jm_update :jm_getName jm_getName :jm_setCollidable jm_setCollidable :jm_isCollidable jm_isCollidable :jm_collide jm_collide :jm_isCollision jm_isCollision :jm_isCollisionInterface jm_isCollisionInterface :jm_collideInterface jm_collideInterface :jm_paint jm_paint :jm_getCollisionTypeWith jm_getCollisionTypeWith})


