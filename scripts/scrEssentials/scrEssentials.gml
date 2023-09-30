// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function curvesAnimate(curve, channel, time) {
	var _channel = animcurve_get_channel(animcurve_get(curve), channel);
	var _val = animcurve_channel_evaluate(_channel, time);
	return _val;
}

function hex(argument0) {
	return (argument0 & $FF) << 16 | (argument0 & $FF00) | (argument0 & $FF0000) >> 16;
}