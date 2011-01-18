// Created by iWeb 3.0.2 local-build-20110118

setTransparentGifURL('Media/transparent.gif');function applyEffects()
{var registry=IWCreateEffectRegistry();registry.registerEffects({shadow_1:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000}),shadow_0:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000}),shadow_3:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000}),shadow_4:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000}),shadow_2:new IWShadow({blurRadius:3,offset:new IWPoint(4.2426,4.2426),color:'#000000',opacity:0.440000}),stroke_0:new IWPhotoFrame([IWCreateImage('En_bref_files/receipt_top_01.png'),IWCreateImage('En_bref_files/receipt_top_02.png'),IWCreateImage('En_bref_files/receipt_top_03.png'),IWCreateImage('En_bref_files/receipt_side_02.png'),IWCreateImage('En_bref_files/receipt_bottom_03.png'),IWCreateImage('En_bref_files/receipt_bottom_02.png'),IWCreateImage('En_bref_files/receipt_bottom_01.png'),IWCreateImage('En_bref_files/receipt_side_01.png')],null,2,1.000000,0.000000,2.000000,0.000000,8.000000,1.000000,9.000000,1.000000,41.000000,1.000000,275.000000,1.000000,275.000000,null,null,null,0.500000),shadow_5:new IWShadow({blurRadius:1,offset:new IWPoint(1.4142,1.4142),color:'#000000',opacity:0.440000})});registry.applyEffects();}
function hostedOnDM()
{return false;}
function onPageLoad()
{loadMozillaCSS('En_bref_files/En_brefMoz.css')
adjustLineHeightIfTooBig('id1');adjustFontSizeIfTooBig('id1');fixAllIEPNGs('Media/transparent.gif');IMpreload('En_bref_files','shapeimage_2','0');Widget.onload();fixupAllIEPNGBGs();applyEffects()}
function onPageUnload()
{Widget.onunload();}
