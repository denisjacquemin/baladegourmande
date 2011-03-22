// Created by iWeb 3.0.3 local-build-20110322

setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({stroke_0:new IWPhotoFrame([IWCreateImage('Acces_files/notebook_ul.png'),IWCreateImage('Acces_files/notebook_top.png'),IWCreateImage('Acces_files/notebook_ur.png'),IWCreateImage('Acces_files/notebook_right.png'),IWCreateImage('Acces_files/notebook_lr.png'),IWCreateImage('Acces_files/notebook_bottom.png'),IWCreateImage('Acces_files/notebook_ll.png'),IWCreateImage('Acces_files/notebook_left.png')],null,0,1.000000,3.000000,2.000000,1.000000,3.000000,18.000000,16.000000,17.000000,19.000000,76.000000,123.000000,79.000000,122.000000,null,null,null,0.400000)});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('Acces_files/AccesMoz.css')
fixAllIEPNGs('Media/transparent.gif');Widget.onload();fixupAllIEPNGBGs();applyEffects()}
function onPageUnload()
{Widget.onunload();}
