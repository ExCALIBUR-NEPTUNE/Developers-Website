#! /bin/bash
# check synchonism between excalibur-wa and devweb repos
# excalibur-wa clones git@git.ccfe.ac.uk:/warter/excalibur-wa
# devweb clones git@github.com:ExCALIBUR-NEPTUNE/Developers-Website.git
#
echo "++++diff ~/excalibur-wa/tex/bib/jpapers.tex ~/devweb/jpapers.tex"
diff -b  ~/excalibur-wa/tex/bib/jpapers.tex ~/devweb/jpapers.tex
echo "++++diff ~/excalibur-wa/tex/metackn.tex ~/devweb/metackn.tex"
diff -b  ~/excalibur-wa/tex/metackn.tex ~/devweb/metackn.tex
echo "++++diff ~/excalibur-wa/tex/stdefns.tex ~/devweb/stdefns.tex"
diff -b  ~/excalibur-wa/tex/stdefns.tex ~/devweb/stdefns.tex
echo "++++diff ~/excalibur-wa/tex/d31/approboxw.tex ~/devweb/approboxw.tex"
sed -e "s/{..\/corpics/{.\/corpics/" ~/excalibur-wa/tex/d31/approboxw.tex > ~/excalibur-wa/tex/d31/approboxw.tex.sav
diff -b  ~/excalibur-wa/tex/d31/approboxw.tex.sav ~/devweb/approboxw.tex
echo "++++diff ~/excalibur-wa/tex/d31/DevMan.tex ~/devweb/OP/DevMan.tex"
diff -b  ~/excalibur-wa/tex/d31/DevMan.tex ~/devweb/OP/DevMan.tex
echo "++++diff ~/excalibur-wa/tex/d33/objdisc.tex ~/devweb/OP/objdisc.tex"
diff -b  ~/excalibur-wa/tex/d33/objdisc.tex ~/devweb/OP/objdisc.tex
echo "++++diff ~/excalibur-wa/tex/index/conv.tex(../index->REF) ~/devweb/REF/conv.tex"
sed -e "s/\\input{..\/index/\\input{REF/" ~/excalibur-wa/tex/index/conv.tex > ~/excalibur-wa/tex/index/conv.tex.sav
diff -b  ~/excalibur-wa/tex/index/conv.tex.sav ~/devweb/REF/conv.tex
echo "++++diff ~/excalibur-wa/tex/rr_toksci/estimates.tex ~/devweb/TS/estimates.tex"
sed -e "s/^%DW//" -e "1d" ~/excalibur-wa/tex/rr_toksci/estimates.tex > ~/excalibur-wa/tex/rr_toksci/estimates.tex.sav
diff -b  ~/excalibur-wa/tex/rr_toksci/estimates.tex.sav ~/devweb/TS/estimates.tex
echo "++++diff ~/excalibur-wa/tex/rr_toksci/geometry.tex ~/devweb/TS/geometry.tex"
diff -b  ~/excalibur-wa/tex/rr_toksci/geometry.tex ~/devweb/TS/geometry.tex
echo "++++diff ~/excalibur-wa/tex/rr_toksci/introduction.tex ~/devweb/TS/introduction.tex"
diff -b  ~/excalibur-wa/tex/rr_toksci/introduction.tex ~/devweb/TS/introduction.tex
echo "++++diff ~/excalibur-wa/tex/rr_toksci/overall_capabilities.tex ~/devweb/TS/overall_capabilities.tex"
sed -e "s/{..\/pics/{.\/pics/" ~/excalibur-wa/tex/rr_toksci/overall_capabilities.tex > ~/excalibur-wa/tex/rr_toksci/overall_capabilities.tex.sav
diff -b  ~/excalibur-wa/tex/rr_toksci/overall_capabilities.tex.sav ~/devweb/TS/overall_capabilities.tex
echo "++++diff ~/excalibur-wa/tex/rr_toksci/physics_capabilities.tex ~/devweb/TS/physics_capabilities.tex"
sed -e "s/{..\/pics/{.\/pics/" -e "s/{..\/png/{.\/png/"  ~/excalibur-wa/tex/rr_toksci/physics_capabilities.tex >  ~/excalibur-wa/tex/rr_toksci/physics_capabilities.tex.sav
diff -b  ~/excalibur-wa/tex/rr_toksci/physics_capabilities.tex.sav ~/devweb/TS/physics_capabilities.tex
echo "++++diff ~/excalibur-wa/tex/rr_toksci/physics_model.tex ~/devweb/TS/physics_model.tex"
sed -e "s/{..\/pics/{.\/pics/" -e "s/{..\/png/{.\/png/"  ~/excalibur-wa/tex/rr_toksci/physics_model.tex > ~/excalibur-wa/tex/rr_toksci/physics_model.tex.sav
diff -b  ~/excalibur-wa/tex/rr_toksci/physics_model.tex.sav ~/devweb/TS/physics_model.tex
echo "++++diff ~/excalibur-wa/tex/eqs/tabsymbeqs.tex ~/devweb/REF/symb.tex"
diff -b  ~/excalibur-wa/tex/eqs/tabsymbeqs.tex ~/devweb/REF/symb.tex
# excalibur-wa likely always be ahead of devweb in the following
echo "++++diff ~/excalibur-wa/tex/pics/puppeteer_wab.png ~/devweb/pics/puppeteer_wab.png"
diff  ~/excalibur-wa/tex/pics/puppeteer_wab.png ~/devweb/pics/puppeteer_wab.png
echo "++++diff ~/excalibur-wa/tex/pics/aggregates.png ~/devweb/pics/aggregates.png"
diff  ~/excalibur-wa/tex/pics/aggregates.png ~/devweb/pics/aggregates.png
echo "++++diff ~/excalibur-wa/tex/pics/baseclasses.png ~/devweb/pics/baseclasses.png"
diff  ~/excalibur-wa/tex/pics/baseclasses.png ~/devweb/pics/baseclasses.png
echo "++++diff ~/excalibur-wa/tex/corpics/blanksign.png ~/devweb/corpics/blanksign.png"
diff  ~/excalibur-wa/tex/corpics/blanksign.png ~/devweb/corpics/blanksign.png
echo "++++diff ~/excalibur-wa/tex/corpics/cofaplus.png ~/devweb/corpics/cofaplus.png"
diff  ~/excalibur-wa/tex/corpics/cofaplus.png ~/devweb/corpics/cofaplus.png
echo "++++diff ~/excalibur-wa/tex/png/colpri.png ~/devweb/png/colpri.png"
diff  ~/excalibur-wa/tex/png/colpri.png ~/devweb/png/colpri.png
echo "++++diff ~/excalibur-wa/tex/pics/dimensions2.png ~/devweb/pics/dimensions2.png"
diff  ~/excalibur-wa/tex/pics/dimensions2.png ~/devweb/pics/dimensions2.png
echo "++++diff ~/excalibur-wa/tex/png/hierarchygroup.png ~/devweb/png/hierarchygroup.png"
diff  ~/excalibur-wa/tex/png/hierarchygroup.png ~/devweb/png/hierarchygroup.png
echo "++++diff ~/excalibur-wa/tex/png/neptune.png ~/devweb/png/neptune.png"
diff  ~/excalibur-wa/tex/png/neptune.png ~/devweb/png/neptune.png
echo "++++diff ~/excalibur-wa/tex/pics/proxyflow2.png ~/devweb/pics/proxyflow2.png"
diff  ~/excalibur-wa/tex/pics/proxyflow2.png ~/devweb/pics/proxyflow2.png
echo "++++diff ~/excalibur-wa/tex/png/trident.png ~/devweb/png/trident.png"
diff  ~/excalibur-wa/tex/png/trident.png ~/devweb/png/trident.png
echo "++++diff -b  ~/excalibur-wa/tex/bib/active.bib ~/devweb/bib/active.bib"
diff -b  ~/excalibur-wa/tex/bib/active.bib ~/devweb/bib/active.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/dg1srt.bib ~/devweb/bib/dg1srt.bib"
diff -b  ~/excalibur-wa/tex/bib/dg1srt.bib ~/devweb/bib/dg1srt.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/exc.bib ~/devweb/bib/exc.bib"
diff -b  ~/excalibur-wa/tex/bib/exc.bib ~/devweb/bib/exc.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/misc.bib ~/devweb/bib/misc.bib"
diff -b  ~/excalibur-wa/tex/bib/misc.bib ~/devweb/bib/misc.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/neuts.bib ~/devweb/bib/neuts.bib"
diff -b  ~/excalibur-wa/tex/bib/neuts.bib ~/devweb/bib/neuts.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/new.bib ~/devweb/bib/new.bib"
diff -b  ~/excalibur-wa/tex/bib/new.bib ~/devweb/bib/new.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/reac.bib ~/devweb/bib/reac.bib"
diff -b  ~/excalibur-wa/tex/bib/reac.bib ~/devweb/bib/reac.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/t33rp3.bib ~/devweb/bib/t33rp3.bib"
diff -b  ~/excalibur-wa/tex/bib/t33rp3.bib ~/devweb/bib/t33rp3.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/warv.bib ~/devweb/bib/warv.bib"
diff -b  ~/excalibur-wa/tex/bib/warv.bib ~/devweb/bib/warv.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/waynes.bib ~/devweb/bib/waynes.bib"
diff -b  ~/excalibur-wa/tex/bib/mc.bib ~/devweb/bib/warv.bib
echo "++++diff -b  ~/excalibur-wa/tex/bib/waynes.bib ~/devweb/bib/waynes.bib"
#tidy up
rm -f ~/excalibur-wa/tex/d31/approboxw.tex.sav
rm -f ~/excalibur-wa/tex/index/conv.tex.sav
rm -f ~/excalibur-wa/tex/rr_toksci/estimates.tex.sav
rm -f ~/excalibur-wa/tex/rr_toksci/overall_capabilities.tex.sav
rm -f ~/excalibur-wa/tex/rr_toksci/physics_capabilities.tex.sav
rm -f ~/excalibur-wa/tex/rr_toksci/physics_model.tex.sav
