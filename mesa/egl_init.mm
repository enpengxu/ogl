<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1363310127161" ID="ID_747247792" MODIFIED="1363310351209" TEXT="egl Initialization">
<node CREATED="1363310372903" ID="ID_567079975" MODIFIED="1363310515583" POSITION="right" TEXT="eglGetDisplay ( nativeDisplay )">
<node CREATED="1363310520177" ID="ID_985923466" MODIFIED="1363310728333">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      _eglGetNativePlatform
    </p>
    <p>
      EGLPlatformType plat = _eglGetNativePlatform(nativeDisplay);
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-1"/>
<attribute_layout NAME_WIDTH="89"/>
<node CREATED="1363310800114" ID="ID_810723534" MODIFIED="1363317516402" TEXT="_eglGetNativePlatformFromEnv"/>
<node CREATED="1363317523118" ID="ID_353862071" MODIFIED="1363317543036" TEXT="_eglNativePlatformDetectNativeDisplay"/>
</node>
<node CREATED="1363310543954" ID="ID_787105489" MODIFIED="1363310751573">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      _eglFindDisplay
    </p>
    <p>
      _EGLDisplay *dpy = _eglFindDisplay(plat, (void *) nativeDisplay);
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-2"/>
<node CREATED="1363318001214" ID="ID_465974207" MODIFIED="1363318120522" TEXT="Find from _eglGlobal.DisplayList"/>
<node CREATED="1363318094927" ID="ID_1262712213" MODIFIED="1363318154610" TEXT="Alloc _EGLDisplay"/>
<node CREATED="1363318155750" ID="ID_1849469296" MODIFIED="1363318176601" TEXT="add to _eglGlobal.DisplayList"/>
</node>
<node CREATED="1363310561141" ID="ID_722723736" MODIFIED="1363310767406">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      _eglGetDisplayHandle
    </p>
    <p>
      return _eglGetDisplayHandle(dpy);
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-3"/>
</node>
</node>
<node CREATED="1363318588219" ID="ID_1964586520" MODIFIED="1363318606846" POSITION="right" TEXT="eglInitialize (display, major, minor)">
<node CREATED="1363318660327" ID="ID_879490324" MODIFIED="1363318667773" TEXT="_eglLockDisplay ( display)"/>
<node CREATED="1363318670202" ID="ID_788497019" MODIFIED="1363318786496" TEXT="disp-&gt;Initialized == false ?">
<node CREATED="1363318792015" ID="ID_777132940" MODIFIED="1363318795506" TEXT="_eglMatchDriver">
<node CREATED="1363318891538" ID="ID_277578567" MODIFIED="1363318910687" TEXT="_eglLockMutext (&amp;_eglModuleMutex)"/>
<node CREATED="1363318912436" ID="ID_1026899438" MODIFIED="1363318945529" TEXT="best_drv = _eglMatchAndInitialize (dpy)">
<node CREATED="1363319187806" ID="ID_572377628" MODIFIED="1363319227051" TEXT="if best_drv == 0 then fail to sw mode"/>
</node>
<node CREATED="1363319980230" ID="ID_627104320" MODIFIED="1363319991370" TEXT="_eglUnlockMutext"/>
</node>
</node>
<node CREATED="1363318800669" ID="ID_1312901534" MODIFIED="1363318809850" TEXT="_eglUnLockDisplay"/>
</node>
</node>
</map>
