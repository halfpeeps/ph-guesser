function getObjCenterPos(objectID){
	var objSprite = object_get_sprite(objectID)
	var objSpriteWidth = sprite_get_width(objSprite)
	var objSpriteHeight = sprite_get_height(objSprite)
	
	var objCenterX = objectID.x - objSpriteWidth
	var objCenterY = objectID.y - objSpriteHeight
	
	var objCenter = [objCenterX, objCenterY]
	
	return objCenter
}