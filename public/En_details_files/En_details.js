// Created by iWeb 3.0.4 local-build-20111106

setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({shadow_1:new IWShadow({blurRadius:1,offset:new IWPoint(4.9497,4.9497),color:'#000000',opacity:0.440000}),shadow_2:new IWShadow({blurRadius:3,offset:new IWPoint(4.2426,4.2426),color:'#000000',opacity:0.440000}),shadow_0:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000})});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('En_details_files/En_detailsMoz.css')
fixAllIEPNGs('Media/transparent.gif');Widget.onload();IMpreload('En_details_files','shapeimage_9','0');applyEffects()}
function onPageUnload()
{Widget.onunload();}
