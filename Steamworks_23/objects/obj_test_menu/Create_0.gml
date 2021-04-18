replaceWith = function(obj) {
	var q = instance_create_layer(0, 0, layer, obj);
	instance_destroy();
	return q;
}