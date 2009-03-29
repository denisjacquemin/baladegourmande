// Created by iWeb 3.0 local-build-20090329

setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({shadow_0:new IWShadow({blurRadius:1,offset:new IWPoint(6.3640,6.3640),color:'#000000',opacity:0.440000})});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('Inscriptions_files/InscriptionsMoz.css')
detectBrowser();fixAllIEPNGs('Media/transparent.gif');IMpreload('Inscriptions_files','shapeimage_2','0');Widget.onload();fixupAllIEPNGBGs();applyEffects()}
function onPageUnload()
{Widget.onunload();}
