// Created by iWeb 3.0 local-build-20090223

setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({shadow_2:new IWShadow({blurRadius:1,offset:new IWPoint(2.9389,4.0451),color:'#000000',opacity:0.440000}),shadow_3:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000}),shadow_1:new IWShadow({blurRadius:1,offset:new IWPoint(6.3640,6.3640),color:'#000000',opacity:0.440000}),shadow_0:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000})});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('En_details_files/En_detailsMoz.css')
fixAllIEPNGs('Media/transparent.gif');Widget.onload();fixupAllIEPNGBGs();IMpreload('En_details_files','shapeimage_9','0');applyEffects()}
function onPageUnload()
{Widget.onunload();}
