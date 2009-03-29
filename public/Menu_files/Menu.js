// Created by iWeb 3.0 local-build-20090329

setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({shadow_0:new IWShadow({blurRadius:10,offset:new IWPoint(7.0711,7.0711),color:'#000000',opacity:0.750000})});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('Menu_files/MenuMoz.css')
fixAllIEPNGs('Media/transparent.gif');IMpreload('Menu_files','shapeimage_2','0');Widget.onload();applyEffects()}
function onPageUnload()
{Widget.onunload();}
