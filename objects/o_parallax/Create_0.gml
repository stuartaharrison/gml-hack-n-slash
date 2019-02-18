var layer_id = layer_get_id("CloseGravesBackground");
var background_id = layer_background_get_id(layer_id);
layer_background_blend(background_id, close_gray);

layer_id = layer_get_id("FarGravesBackground");
background_id = layer_background_get_id(layer_id);
layer_background_blend(background_id, far_gray);