
# ZAP Scanning Report

Generated on Sat, 24 Jul 2021 00:29:59


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 4 |
| Low | 5 |
| Informational | 6 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| Application Error Disclosure | Medium | 1 | 
| CSP: style-src unsafe-inline | Medium | 5 | 
| CSP: Wildcard Directive | Medium | 5 | 
| Source Code Disclosure - PHP | Medium | 1 | 
| Absence of Anti-CSRF Tokens | Low | 2 | 
| Incomplete or No Cache-control Header Set | Low | 7 | 
| Permissions Policy Header Not Set | Low | 11 | 
| Server Leaks Information via "X-Powered-By" HTTP Response Header Field(s) | Low | 10 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| Base64 Disclosure | Informational | 10 | 
| Information Disclosure - Sensitive Information in URL | Informational | 1 | 
| Information Disclosure - Suspicious Comments | Informational | 11 | 
| Modern Web Application | Informational | 11 | 
| Storable and Cacheable Content | Informational | 11 | 
| Timestamp Disclosure - Unix | Informational | 10 | 

## Alert Detail


  
  
  
  
### Application Error Disclosure
##### Medium (Medium)
  
  
  
  
#### Description
<p>This page contains an error/warning message that may disclose sensitive information like the location of the file that produced the unhandled exception. This information can be used to launch further attacks against the web application. The alert could be a false positive if the error message is found inside a documentation page.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/pages/_error-23200e9246600e4853bc.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/pages/_error-23200e9246600e4853bc.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `Internal Server Error`
  
  
  
  
Instances: 1
  
### Solution
<p>Review the source code of this page. Implement custom error pages. Consider implementing a mechanism to provide a unique error reference/identifier to the client (browser) while logging the details on the server side and not exposing them to the user.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
Instances: 5
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 693
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### CSP: Wildcard Directive
##### Medium (Medium)
  
  
  
  
#### Description
<p>The following directives either allow wildcard sources (or ancestors), are not defined, or are overly broadly defined: </p><p>frame-ancestors, form-action</p><p></p><p>The directive(s): frame-ancestors, form-action are among the directives that do not fallback to default-src, missing/excluding them is the same as allowing anything.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
Instances: 5
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 693
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Source Code Disclosure - PHP
##### Medium (Medium)
  
  
  
  
#### Description
<p>Application Source Code was disclosed by the web server - PHP</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/images/other/hero.png](https://monsuivipsy.fabrique.social.gouv.fr/images/other/hero.png)
  
  
  * Method: `GET`
  
  
  * Evidence: `<?=%\x001eúÀ{ÄÂ\x0002ô\x0004ØØmT\x000e\x000e\x001cPÖ@Ló\x001c<C\x000biùo½ý¶2~@LïÒ¥\x0017¨ºº>óÏÒA\x000eé®[·\x001f£9sæ.!!\x000e\x001f>ÈaÛ.±\x0004w¼ù&[Bo0A¦ËhíÎ®NJIIUHLLD\x000ceFÚñãÇu·CH\x001fÌk\x0016¯µü¢p*LAæu£ÌHC,Äkd^''O\x000eñ\x001a,TêCó¥\x0017é¶µùn3ë \x0006×õVþ¡ã\x0012b©¾º£\x001b§Äus?Ù;:»i×ÃÔÐÊ+\x000fU\x0003\x0002\x00142êëkc\x0012?hßxÅ];wÒêU«8ìoå2^}åeZ°p!»1LHÕrpýè? \x000b\x0017.È\x0013\x000e±\x0005táü9¶Þ¦ÔÔ4Ú¹k·\x0010×ÅK(È\x001aD?ÿùÏd|ñçe&Æ\x0016v^xÃ\x0018)úVýß\x0007ù@Ff¤ie xÝß6Ä"âumC¼fc2-g²d^k,Gr.þA~/ËHFï6³\x000eGkÿ
\x000b&|°uÔÓÇ¦ïÀ\x0004GàÔñ3BÇ¦µ\x0017*5@Ø\x0007ëGÁÛÎÂ*zì±Ç$»öêÕ+²=,¯ULN],6ÂÒINJ\x0016\x0017ìC\x001fþ\x0008UTTRNN.½úÚkbgRB½\x001dVºnº\x001d;"£gY<&\x0013cæævjmï\x0018r°Àè4£Éîâõ\x0005ýâµ%$HÉ¼îí!§\x001dúÊâ
ò,â50YÈÈU©ï-Ç(''GæÊûÝnÌdaÑ¯¶®Ââ"éZY%õv÷¨\x0016®\+£ÚÚ&&HjæÕ'3W¸(¹$Î9d	\x001a´¿ýûöÓ}÷ßG\x001fÿøÇiÖÌYTßÐHqññBª]l\x0011õðþá~Ý~Ûí¬\x001bâ\x0003ì\x000co7C²a´qÃFÊÌÌ¢\x0002^\x0005Ñ¤=-Ã.vÛ6nÚDóç/ µk×¹ÈÐÄØ!"<Ú9ø`óQ\x000fé\x000fFúf\x0019m\x001b°¾yÝÕ£\x0007\x0010¯[Z[¤çµ_´Z¹
ñ\x0017´	ÝÃÈ\x001dE3J}\x0008ºÞ*õ$;ÂB±úâ^\x000bHD9ÐB­,\x000cÇP]u=ÍKOoòr²¨É§Wå+\x0017ÒÞÝ\x0007éÖ;6¹ZBôô¶²Xx3yÓ
XV²\x0015bÛÏ|ö³2.æG>$åü·¹¥¾ü¯RKsl?»p\x000e\x0015Î#½ß|óu!\x001d4ÒÂ~öîÙK\x000b\x0016,¤g}\x0012\x0013\x0013i\x0005\x000bÛ&Æ\x001e8öúx1\x0005Íà$k£ÉØn(\x001dAn"^«rL\,Õt·¹z^ËtY\x0011¯ÃE¼ÎÌÌ4¸6Ë\x0001Ñ×çõA=½È!ú¾\x000f K\x0006ÿ%®UlóúôÔ¶WhóºU@­\x001d\x001d\x0014@I\x000e4K?L7Þ´\x0012c¢EK²Û{Ø*ZÈ.$Z\x000c&Ê\x0014^¹\x0000ph~¾Òj$;;[þ\x0016\x0014Ìp=\x0010àz}\x001cPsçÎa1{«e	\x0008\x000cì¤ÍüÇ2£hã\x0004ä	UT5Q\x0002ôÁÁÆ¿ó¡ÌH32°qÀ4\x0016¯KK´Jý\x0000É¼®­¯hqO·"^ç³«?Äk`2\x001cÑñ\x000fÈHF²xed±D¾'Ç\x0006.gëæ4¿ò''ÆÓý÷ßFï²PÝÓÖÍ.\x0013GÖ\x0002B÷¼ç&\x000c\x0017Ú\x0001Iôõ³ùü\x0001\x001aNLËÓÈó6¢º¿1W?QD4~@À"6:ã!=\x000f$¦EZý\x00019eåååºÛ¹×h\x001b¢e^;ÕÌëzÖ{ÖÔ L®`Ë(!>þ<M"L£ZböÈ1\x0002ã{ÝÀ@²£¿Ä³  |Ðð_§ë¤ÏHI¤\x0007ï»Ú8j\x0006\x0002\x0008\x0008Ü"­\x0015¿\x0014*²È\x001d\x0019öi¶V¢ÈÄÔDTd\x0018
\x0007F3¯Òf\x0016Ð2¯_ÿ·\x0007øLOI¥ÆæFú56*´\x0008&¯µ«ÖLøJ}wL\x0006\x0001{V\x001cè-¬o´Í¬¿ä3ÅÊ>öC¢ý¸\x0003\x0004Z´¸¸h\x000e\x0006¹l\x001f#mÝ\x0001\x0014\x0011úi
\x000cÊ&\x0013&<13ÒÈÈÈþ¶!jæ5$V\x0016Ö\x0013ââÄEs².ZSSÃ\x0004\x001a%=¯CCC'MX\x001f\x000cdë/ÙÑHæµ6³!¡KY;ºÃù\x001dÊ´X/p8í|0tS-¢Ã?OÁf»Y\x0013!âµ\x0019i\x001cýBÊ\x001e \x0017iî:ÄkjqE³\x0005­(1.^iÌûÓz^ggfv1YMª6\x0012\x0013ÝMsUêûj\x001b¢W©ïp\x0018k3\x000b³'<ò=l}e2!½ÊÏ©l{tyt2	Ù\x001ddq&s´m#\x0005/áûCÈ	oPf¤é¯óh3k¤çµæ¢imC´Ìkâ×X±h	WUòkÚ%M\x0004ûLáHkzzz\x0015[f540ÑÉHÄ \x0008¶ø!¼A¯³#f¤éµuGHÈ\x0012\x0016\x001eç²kWIö¾*iÊo	\x000c§ÐTþí92f	"\x0013&ü\x0001\x0016JpP°îv¯\ü1=h3Ò4ñúì\x0019%Ù\x0011y\x0006sÐ6DíaLn\x0000âujrò¤rÑNFµ6³¾Âúºâ5ÚÌZæÂê±Zóøâ=\oÂ?À£2"^\x001f:h¬^ënª×\x000béõªx\x001ddUÄk©I#ª­Q\x000c¡ð\x0008Ú°~ý.dè´õU©o¤Í¬ÝG¥¾1DdbhJ}26#ÍH²£ÖP_\x0013¯ë\x001bêäþì\x001cE¼Õô"»´Eæ5ÄëØèØIQ©ïNFQ\x001c;Üz4ÀiòqÑ\x0019i\x0007
XF¨GÓ¢rJÛ\x0010%w	×µ
õ	"\x0002!ÕÖÖ(×Ym\x001c}»@\x000c\x0013\ú¾ÈhÃ
~wà¯Í¬	\x0013c\x0001eF1ñúôiý`&^#3@¼æ×X¹p	UTWJG¶Ö6êëíc½(Åë´ºÉ&^\x0003\x0013rñ\x000fÜ4_mCô¦Ç*\x001dFFNG'9»KÈÙy\x001c¼¸ØjÉ[Í	\x0013Þ0Ú3Ò´2\x0016Ivt¤IÛú\x0006)u×ìÒe¤¤êwöÈ\x0002¶«Rßx\x0008¡Ìë@c|ëè­ {ë^
ì½J\x0016{\x001bñáßqX\x001fO·&#æ&
\x000cC&LøÑ\x0019iF&\x0000HkâW¶¤rfÌ g_zAîïf7/=9\x001a\x001a%á±¥I©NÌëuk'M¥¾;&2\x0019-BH\x001f¾µÍKg#z\x0011~$=Ùéè&góëD'(·µ\x0004rHÖ\x001a3@»v:Z¨·þq²Dm&gì-dÂ7\x000ceFZQ¾¾\x000cñ\x001an\x001aþ¢lgR)âu{+%ÆÅQ}c½ä\x0018ÕÔTST\x0004Äë¬I)^\x0003\x0013ÙMÛ\x000c½ÈWH_/¿ÈwÙ~8\x001dÔWÿ\x0007
ì:JÁ\x0018c­Mõ\x0010½qHP\x000c9ZvP_×¤´M\x0003pØæ4­8V²¯\x0003,ÔÙ¥$þj×ñLFÒÿG$-,|ò×ÀD%#×X"_×#i3\x000b8¼ßò­\x0014fo¢@«2\x0013£ò\x0019¾¼Bn¬Ä\x000f\x0006&\x0010Õ<Ã\x0007@\x00170á	Å\x0012×¯ÔËe¤\x000c\x0004ÍÔ\x0000\x001cîâ5ÊAV°x]ÍÑ³ªò
j¬W\x0012'Ãø|¬â50QÝ´ÍøÇ_¥¾6³>ûÉ /£î\x0019
	ld«G)ë@1méåR:}ø4uS\x0017Y\x001c\x0016 å«VPRr"`¡`k õµ\x001e kì\x00162aÂ\x001dFÅkDÑ|EÝâX,¨8\x0007mXKGOªÞ\x0017z\x0018\x0015Ì¤W_zöíÙKÑ¬ÆDÇ%5YÅk`¢ZF´J}o?Úüùóu+õmv?Å\x001d\x0007ÉÚsW\x0018u"HW\x000f½þâëtéòEZ±i\x0019Ýzÿító=·RJB*½ü÷¨¦ª¡	\x000câèF\x0017&9ðM\x000c\x0019iF+õ!SÀES\x001aªå»öwÛmH§Ob-BÂB$ \x0013ÍÔd\x0015¯j\x0019¹Æ\x0012yk3[PP »\x0003zÞ\x0008C\¬æ\x001d\x0014¤6RC.Òk/¾Fs\x0016\x0016ÒìÂYä.4-]»¢Sbè­×wÐÃ~P±øaKOÔ¬Å$$\x0013
2#ÍH\x0003~Ö #XF\x0010¯»z\x0014i\x0000âuwo\x000fEGFQ¯­R¥§º½·\x000fmf'­x
LÄ³ÉU©?\x0016mfíûyõRòðC\x001fÞsò²óhöBòT¼qà\x0014p8ÕÁVVsê.è@.\x0000
\x0015fúåÔÑ\x0019iX`ÌHËåZä:\Óc)6**8z6\x0017eÌÐ[³vL ÎÎÌ´â50\x0011ÉÈU©ïK¼\x001eIÙ¾ö\x001cñ\x0008ëímí2\x001ahÑê\x0005Ò
âu?®ss³¨±¶Åõ\x0008ãÁé\x0006 \x001bv\x0012[[[+\x0016\x0015®_¹zN\x0019¨G21ù`tFZkk+\x0015k~ %;*×ù.ñ:+'V.ZB/¿õ&m¹éFZ½n
½³ómÊHK£eK\x0016?3YÅk`"n¥¾nÛ\x0010\x001fmf¶F
¶)¤\x0002B9u¤,]"îÖ¾·öRé%¥\x00171ùÊ¶ÉÆf0ØÈ\x001a\x0014ÂÏíw\x0017¥G\x0012\x000e~aÞçþð\x0007\x0019¬\x0008\x001dÝ\x0002þ÷W¿ýutvÐ»ï¾C¹yy®×\x0018kà5Ð_Ùn·VÙ\x0018\x0003ë\x0011ñÚ¨^¤EÒ$ózÑ|*¹V,·!Vc\x0012ÈU«éÝûiÏþ}\x001cÁ³R~n\x000e=óâÓ®m;&"\x0019-òW©6³zðÙf¶û2\x0013»\x0001â(..¥Ì¼\x000c\x0002ãäÎÌ§ä,u\x0007ÿ=#\x000f® Ågoi£þþ4Î Hþæ\x0006÷5ÂªWÃáÖ>~ßùË_è±Çþ,
i	óÓbcâø èÈ·vÈ4YàìÙstâDk\x0006\x001aÞy{{\x001b?^)â%n#ñ³©Qé[Û(\x0014+?'Ve*ÅhCâ\x001dÿíå×>vì¨çÞ}û\x0006ìß$§Ñ:H£\x0003\x001bá¦áwÄï*â5ææ%'%\x0011Ðp¾>oölôÈ¡cEÇéÂ¥\x000b¸{ÒêEÀD\x0014°7û+½á\x001bôï³RßÑ]IVWb#ûø]!2\x000c¾yFn+­\x00082òr¨§»ÂÂC¨¾¦R\x0012]Ïs\x0004¦R )÷\x0017/§¹sæÐSÃ²QTÇ.ZfV\x0016½ôÒKÔÕÕÍ_\x0012\x0016\x0010Õâ%ùþ\x0017)/7\x000e\x001f>ÂÑÁ\x0018éiqÖmì>~ý\x001b_¡Àç¿ðEú¯ÿü\x000fÄÊü´õë7ÐO~üC\x00163s)÷¢è\x0004?7\x001eýèGéÅ\x0017^ k×®±Å·V¯^-û«ªªb\x000bíWâúÂÅÝ³gD_/_F¼}	ÍU@	dbè\x0018Ê4#×ð
 `kâ5©\x0016\x0017\x000f@Âb¿XdÐf\x0016¦§xz\x0017MbL4Ë(t*õõ,#ßmfùNG\x0007ÿÀý\x001f¹ÇÖÝ/\x0012:\x0015«¢­¥^ýû«ôæó¯S]y\x001dÕVUS\x000c\x0013EP\x0006à°wSPä|ò,ÅK\x001eç\x0003
=¹\x000f\x001d<D÷Þ{/ÅÆÅÒR&íÛ·ËAÕ××K×¯QYy)¹DJ«5P\x0006=¦¤¤Ê¾JJ´Ðç>ÿ9)DÜ-7Òü\x0005\x000b¨Éãô©BLïÿûäó¾ç=wÑÅ\x0017Ùª¥W_}Uº\x0019DFF°Åu.ñý]]LZK¿øÅÏyµí ×_{Iªþßÿû\x000fÖÍJi\x001f»\x000fiÞáÀ©àCÅhÏHÓ2¯AHJæu¿x­
j+£àIDî¢IFF"^û«Ô×MvôÙfD\x001bðg²PscReg{'½õüÛ4oé<ºï÷QÆtÚµã\x001dZµqUCtLa\x0018<\x0004\x0000:\x0017DFhB]\x001cù@í\x000bÏ¿@sçÎW·Ýz+Í;ÉÌN7Þx£XF\x0018O\x001d\x001e\x0011A·òcek	'\x0002ø\x0000\x00042{ö,2\x001b\x0016\x001eÆÖÎóTQYN\x0007\x000f\x001e \x0019\x001cÝ»À\x0016Ö{Þó\x001ev\x000bÛø\x000eÐ¾ýûeµ\x0008\x0013kèõ7Þ ø¸\x0004ºpþ\x0002Í.-\x0016Úê5kp\x001fÕ\x0014sÙ{ù;5\x0004é-[¼¦QL'´óïßÔÜFCô¼6 \x0017¡Å¬\x0019i^\x0004w\x001eú\x0018y\x000e@¼v'¢F\x0001bÐ°ßâÔz\x00110ÑÈÈo¥>"\x000c*õ}D5,H\x0016\x001aÕ(\x0018ÿ¨óç/¤#ï\x001cvYRMõ­´pÃ"ÖrÙì\x000e¤]¯¿M3ógQ|r¼<\x000e«È\x0019±÷3x \x001fVÇ{ï»OÄÄ}ìãôÎîÝtßý÷STt\x000cÝzÛíôÄ\x0013O°eGK-çÚ)1×#Øz9Ì\x001aÂ\x000b/¾Hk×­W£1\x0016±°vïÚM?úñèÁ\x0007ßGuuuB°õuõ?#ªkj(+;u¦\x0013ÊQ\x0014|_3Ù}Û·w\x0015H¦²ª£wW%5áÊ+Ä'Z\x0013-\´6lÜ(A\x0016Ö¸\x001eþà\x0007ÙªºD§NOªA\x0012c`\x000e4tò±g\x001bÒóf^ïçEÃ\x00084ËH"i3òx1Qº;Fó±Å\x000cõhÈkRÛ$%¢ÛcÀ¤Ö¦\x0019¸Rßî§mH`X&9º\x000eS`p¬¬0s\x0016Ï¦sÇÎÒá]\x0007iÁE,õEetôÝ£L×.rY\x000c8FÒ Y
îom/_.b2¬Õ«×¸î¿í¶Ûè[nqeó[ß\x0012r\x0019þéÏ|V\Re\x001c
¿F_\x001cpúô§):*]½8zähjà\x0003\x000fùUIÉô<*	qË-ï	º\x0010z;54ÔsÄî]Z¾bvgG'??rT]ê½ï½BCèñÇ \x000f>ü\x0010ÐéS§%Úf$00ÕÐÂës\x000fÿ\x001eAAÆO
£3Ò\x000e\x001f>LF \x0011"i9\x0005ùôì/(â5/( (	XHql?\x0019ñ¡dÑ(c±¿J}Cmfý=\x0018
7éIÒJ\x0019\x0003øîøÀ­lÅ¼KÛÿö\x001cE\x0004KkÏÀPZ°r\x0001\x001f\x00089®§Ú{Éô>>êB}¿¶Óý¯û¨jeR­öxµ?\x0012Ï\x0006¸^3gÍ¢\x001c\x0016§\x0015sÜ)Ö\x000f.\x001a233åorr
Ý}÷=®×HLL`÷®Ðuû\x0006v\x0007ñwóæ-´iÓf!ÃÏ|î³\x0010

ÖÕ
\x001b¥\x0006
'ßtöÒðÑkëZ(4,"ÂO\x001dÊ´'ô=)\x0010\x0011\x0016d\\x0010µ¨·"^»ô,§ª\x0017)\x0012C,/dÛ¶n3Éh\x0014!mf\x0011I@8Ó\x001bFÜf6}ñp&$[%»a \x001dÁ?ämwÝÎ.K\x001bõuØ(8"­HÉ\x0015ÒøÄÖ×IöÐ5d
\x0003\x0019í\x0019\x001bËQ®\x001ezØ\x0015×»Îã\x00045hd\x00087RÛ\x0016Vã7Íå"¶8zÅ½O\x001cotF\x001aéc\x00062¯qüãw\x0013-(>]ôz¹?Åkttt8Ôh\x001a\x001f\x001fÐ\x00021°1ÈjÝES\x0000\x0013I3\x00121\x0008e Ã\x001eÛ§ÛfÖAø{xÿ=\x0003²­\x0011a\x0003	$¥'HT"nÒ&Æ!\x0016Q_è"
LºÆ\x0000XkÚh\x001a\x0013ã°Ð`&¢¨!G\x0014E/
Ðo\x001bLüúúzÝí4ñ\x001a\x0011Ô\Ö\x00075ñ:\x001bâµÃ!5 «Æ\x0006ÅE\x001aâ50Èh¿JýììlÊeíÃ\x001fD/Ò\x000b±Z\x0013ÉòAêéná\x001f×w}\x0019\x001eCó¾øÛ)(\x0011®Y\x0014;Õ1Ì\x0006	ëx-=ÜÅkÖ\x000fA|° )"\x0001\x0016kÎkæ.\x0002P¿J}=«\x0008øl\x0004èe\x001döi²Q4ÙzÈÞ×ÆÏíâK§\ïc·¬;h&Ö§È\x001a¢\L\x000cÆPf¤
`iâµy$9F\x0008\x0002¬­©ícc¢(À\x001aPLS\x0000\x0013E3Ò­Ô×Óê@YBrR?ÏfX1\x0013R\x0005ÿÀdq\x0006³\x0014Ïe³\x001f\x001e?Ì=N0Ò|\x001f\x001a\x0019i "èx¸x×®dGä¹9dGÅëæ© ^\x0003\x0013\úhà
z´
\x0018¢má\x001f;d\x0006\x0005\x0014`\x000e\x000801\x0014(3Òµ5y
Ï\x0000V\x0011Ò5\x0014ñZqÑRÄ*\x0012\x0017/\x0008í7s$
Q4\x0016¯§\x0004\x0011\x0001\x0013ÅÿX¬W©¯ìh7ï\x001d&\x0011\x0018:f^£TÇÈ4M¼Fä-·\x0000âõY¹Åz)^K\x001d1	D-°\x000e\x000f\x000f2â50QÈh¿Jý\x0005\x000b\x0016¬Í¬	\x0013c\x0000§Á\x0019i\x0007\x000e\x001c #Ðj\x0015µ\x001eFx\x0008¯Cc\x0015ÍHË/Jâ50a,#Å±È4ÖÒfÖñÈjdù;qÂñ\x0002ËHkÀ?@¼Nê/Å¥¶Zé6Äk`"hF¹¸À2\x001av¥¾6³Þ #Ø
\x000bà\x0015ÈÙÑ©äÀäE;i^¹nÂ\x0018ÎHì`dF\x001a5\x0002* j\x0016WJr¿xíT5£\x000e´\x0015¡©%^\x0003\x0013D\x000ceªfoØ²eß\x001døk3ëÞ\x001e
(¹FÄ~w@g+@2CÉ^0\x0019ä4Ûð\x0003DµôÅk´9«j?þ\x0010\x0011¡\x0014_Ò³³dH# ×NpÝÓÓ-ÓT\x0013¯@F\x0011ÊôU©\x000f\x0018ªÔ×Y¥¤\x0003bE\x0005YOdF²"å,Ñ1\x0003(ÇÂ¥è\x00189*ÊÉ¾b\x00059
dÖP*õõ\x000f\x0010Ñ\x0019i\x0000Ò\x0000StîLÛ\x0010%ïT\x001dÕÌk×|ðî¦) \x0019-iê«RÓ¦Mº;6³~Ü+<\x0012pæ$YO$KD$_"Èâh\x0010ZMH¤\x0000^y\x0002NN©EÇÄ\x0018ÀÈ4#ùE{¥>z^»2¯cbD¸UdÇÆF%¿\x0008â5\x0013Ô:H'\x0002\x0019¸Rßá§ÊS!¢\x0013\x0014XQM\x0016þaI#!¸eL~v¼®:\x000fÍõ\x001c6\x0003ÊÊÉÒÔH&Lxb(3ÒÐ»Ê\x0008´ÌktLJsëy¤jFJ²c[æµÝj7Ý´Q«Rß×X¢uëÖùÝ\x0001Ìå\x0000?Ã\x0014\x0003JKÈZVÁñÑþÔ\x0006ÖÎ\x001d;J
ì¶Á`ZÈ¯ïÚ\x0006Ä\x0015xæ4Ù7n\x0012\x0013Ù	
Cvä¨¾x­å\x0017!£d^kâu²+¿Ô¸íªxPÌâu1M!L\x00042J}rÞ 7=\x0016mf}¹h\x0001Ýl\x0015fºSîÀx¢½{éâÉ\x0013T¸t)\x0015.[.w×\x0014Ó§¢MwßCyóæ*ý°Øe«¯:®dj0¡ÂÎ¤\x0010\x0012¬L@>m ¦æ¢!S[Äkµm\x0008ô"\x001cv¶Ôë.^ó!:e\x001d5\o2Ú¤µËð&ò¨Í,\x0013O@Ñ	²÷·-zg7UÓ]~B\x0010JUÝ»Ä´4JÊÊ¢WþügJËË¥Ð0åà@ëY\x000b\x001fPÎhÿ	&¦\x0017\x0006ÛÌîÛ·@##h¦îâµô0²;aþ5æ>	ßÅ\x00135¯·fäJv\x001cI¥¾7»ÈÒÙ.B´%X\x0019MTS^F%\x0017/Ò\x001bi×öç¨¦¬TîïâÕèð7%7káBºâ¶9Ñ´¥Lpä\x0018\x0019ÈG3y­å\x0018)âõ\x0002x¬Tê;ÔÐ¾ÖÃ()!~Je^k¸d$ú°;9\x0016ðÕ4$ðò%,9®Ûû_{6Þs¯øä©l\x0005u¶*$\x0003\x0017­I«îÊ\x0015Ê;*¯^í\x0017³ >Úh­#,f	Ê´Ñ6³ØÎô\x0000d`cZK¼ÆÔ\x000fZ\x0006+¾F\x0015¯a\x0019Ù¬6Ó2\x001aEÿ¥õ0ò\x0006Cmf½\x001d\x0018HÓ¯­gÝGq\x0001\x001bjkdXc\x001c¯4a,\x0016¶3ùäÍ_ Å¥¦Rlb"ÍY³B¼0
4A\x001c£¼4fÇ+^¼t~øÃ\x001fÒoýkÃ-b\x0002\x00104ª¶qP·¶ÖÙDÌ¹3à¢! cd`£\x0016EÓ2¯ÝÅk»:È©6UkR£»q1ÑÅÛ·no¦)ëJFZ¥¾¯fCmf½>Koÿ>¯=K3\x0016.\x0010ß\x001b+NÎ¹êÐ§m\x0014ìW~/Ý¼2GF¹´$­Q÷ÏÛþÏO"³Ë0BºÉ­µµE\x001ahaè¢Ö\x001c«¼¼T\x0006&¶·µòÖª¥Vû\x0017l\x0002d4µÝeÁÊ\x000bßqþüyªàhßqú\x0019mÌebìa\x001fÂ´²²2Ýí4½\x0008Q2×ZÏëLuF6	¤iL{ILHâ5p=\x0005l¿âõ¼yót+õa\x0019y;0\x0002Ú;È¢iPL\x001c
L@säft|<µÔ7°Ûö*E0ñ\x0014._Fñ2ÉÕIå¬)eÎå"#èQ\x000e5ì:\x0010N1­\x001f;F<ò\x0008EÐ÷¾÷];w\x000e½üòô­o}þé\x001f¿AóæÏ£K\x0017/Ñ,ÞçIàýòW¿¡g}Z""8P\x0017.XHØ|ð\x0007)'7¶mÛ&¹$\x001fxè!Ñ$f\x0016\x0016Ò_þò8­_·LL\x000c\x0018f4Ù\x0011×Nud5\x0004ë³ªxé±bq^d§ÆzµZ,»h
âºZFþò0P\x000f¾ÚÌ:»»D|v\x0007È©_\x000b!ü\x000bÇQ\x0004LUñ5ziëV¶úä`(e×+[K%@¢\x0019~øÀÁ|Uìÿú-äÙè\x0007ßÿ>\x001d:|-[ÂÄô!yìêË4kölúÊWþÚÚÛè³ý¬®¶Ùzi÷î]t×]wQFF\x0006­2ïþ\x000c[n¿ûÝïÄ4GÓöRÖ±yö\x0019±°*Ê+)3+LL\x000c\x0018vÀ \x0019!­\x0005\x001e&^\x0014Èýx­,¸(\x0003©­Qz\x0018%±eÄká,\x000f¸^d¿I #i3«|(õáÕ%u¡ªâb:ÈQ³,&[\x001f~\x0016®]G·>ô°ÌÉ*cñúôþ\x0003Ã\x0016L°:ÃÌÉ.\x0013$à%áñÅ\x0017_¤\x0017/ÐºµëÙ|îaÁ±ÒÒÓé\x0002ßfÇ\x0011Ö \x0016Ì1k\x001c\x0011|^¬\x0018,\x0003\x0010³Ì@Æ1Lz'O\x0014Q\x001dò \x001f°ét(.]\x0017WÑÄÈ0DÖÑ¦×Ø¯×©)¢\x0013âxAZ2=Ö!n³ÚÃ\x00085iSQ¼\x0006®\x0017\x0019¹ÄëáêE¨Ô÷\x0015Érðiéë'¹ü\x0005\x000bèä=\x001cº_DsW®T\x000cË\x000eøkn»ZÙO¿rú\x0014-A\x001dæÞ±¦cÏÊñºÿuì6½ðüvz]¨/|á\x000b´jÕ*zægé¯ý\x000b=úèÇD9s\x0016»b%RÎÒÝÝÃ\x0007W,UWUQAÁL9¸Ð\x0006"\x000f¬Ë.SVf¾^²x1¥1qv°6ÆdÖÀæz\x0012ÙA`T\x0005¤¾qèúïPf¤2ì\x0008+\x000br×V%2Y\x0013¯I!6¶Ñ©Åkl\x0017\x001b\x0013]4\x0015Åkàz\x001då?åUáËpU*YÏñV ëÔ*ØÝÓ§tÚó&`³x\x001dôúkdILrÝ·cÛßåu6°è\x000c­\x0008èêê¤GÑe&¢[X§RKF\x001d\x001dd1\x001cùù^M0Xé0q i¯\x000f\x0002A\x000foX?\x0010\x001aA4°z`\x0001\x0005ñý\x0010¶ÃY(ïîê¢øx*fs<++KêYìîÙ»._¾LwÞq\x00075³É\x001e\x001açwI9:]\x0018=ôõ±ÛÃ\x0016Hb|\x001c[!!Cz^hH.!!4¯7V\x000b@£}\x001c\x0003X[9Ð±â
ôÌ¶§iÝõ´\x00178Ö8`a¿øÜó"^oZ·êù§ÿ¼í^¸^\x0002¶Têõ½\x0011OÄk«÷|'»9¤eX«þý¦ûî£ÝÛ·Óößü¢XÄ¶\x0006\x0005S\x0017ë9élÜñ¡\x000fS\x0018Z8@'â\x0003Ãö|¿/_P!Á\x0000×u@DÃÔñÈîc«\x0013\x0012\x0013å¯b\x0013åä(V×Ü¹Jd\x000f=¶l¹\x0001{`/Ci\x0000gÄ	ÐÈj
¦\x000e¶`BFFg¤íÝ»@k\x001bó )5J®\x0015Ëí,ªi-fáN65j\x0003\x001b§®x
\/2\x001aqY±VòQ\x001fÄ?¢õ\x001f+G&,j]\x001aæÛßôÞ\x00078*QOm|	_Î\x0004\x0011É¾¹õ¸°kæd1Û±fÍ¸7W\x001b<L\x0011ZÛ:Ò\x000bu0\x0002Y×ÈØ´}C\x0006Âx½lãZz5M I\x0015¯áÎ#õ£Ym\x001b2Åkàzn¥¾xíPû\x000fûÅg+GÇ`éXÔIµ8âäâK#ê%\x0007¿\x001fûº5¢9\x0003C¦&@BpÏÓR\x0013
w\x0007Uà4Ô¿\x0008QÙs\x0006:;B¼\x000eVK\x0014ñ:YÄë\x0018
	\x000e\x0011\x0017Mt#GÿÀÆ©,^\x0003×CÀ\x0016ñ\x001ab/2Ò\x0013¯¡£øk\x001b\x0002Xøñ¾U«8ÌÏ:O \x001eÉ\x000eÞÞÆ$è1h
#0ÐJÉIC%"Å
´\x001af4ó\x001ape^kâuJ²Té;\x001cÚôXe`ãT\x0017¯ëa\x0019I²#\x000e\x0006on\x001az»èUêÛíNÝ6³jÛúdå°9Áïf\x000b	ÙÓHDÈß[\x001c3òÈ#Õ$¢)\x000eÅ \x001eº\x000bî¶!ú\x0004våÊ\x0015	VèAëa¤e^\x0017\x0017+ÛI\x001eëÐô";µµ¶I¶>Äk~ïSºýèuqÓ´z´áVêÃ\x0014\x000e
2öÖ\x0011Ô·f-\x0005ph4 ªZ¬ W&Gb<_1ÊÖ$!\x0013~á\x001e´ð\x0007£mC\x0010ÈÔà\x0012¯¯Éý\x0010¯Z4å¢Õ£%ñ±Ê÷OÉ2\x0010
×\x0010þ\x0006¡xÃHÛÌz\x0005»`øDr$$
¼_ÛID&üÀ5#ÍAeÄE\x0003`\x0019y\x0015¯U\x0017Í!.kF\x0004Z¦¶e4ÞÑfüãO¼^¿Þ\x001d^Y¿Ð¢fÚÅ	\x0003\x0018Ê´£Gênã_,ây\x001d-âu°¢\x0015!û\x001a
ÕÔ\x000e¨h\x001bòô\x0013Oï¢)ñ&#W¥þpÃú}6»¡Ú \x0013&F\x000b\x0008±[
¸h\x0010¯ÌH\x001bÔ6ÄM¼v8\x001cýÓ@0¨Q\x0011¯#ÂÃ¦ü¸ñ&#W¥¾·2ììlÝÌUmfM\x0018#H\x0003~«±\x0019i¾ÊÜ¡Õ£A¼NËbñºD-ÕÈHm\x001b\x0002"µ\x0015#=¯\x001d»ic¼5#¿úFÛÌ\x001aé'3ðI½\x0014ÐÛêHr\x0004qDÍ\x001anN5a\x0018 \x0006#9F\x000f\x001f&#@\x0011,\x0000Ý49­¿ç5º3 \x000eMk¦ÖÖ¦L\x0002\x0011ñÚ\x00190å-£ñ$#\x0014~ù­Ô×Ó\x0000£J\x0005Ñ¶r¢ódé¨&­,Xu¬ì3\x0019ÙÓ\x0017ñ;B\x0012ÓÊ2á\x001bFg¤\x0001'N\x0018\x000bvimfÑÁsù¦uôÌóÛå6¢\x001djn\x0011Âû®¶!LF,1d4Ø`\x0019Á·ö\x0006ÝdG_mf=`én¥²w*È\x0019\x001cÉ|\x0013,õj\x001aYì½d½²QçÈ1ãvr\x0006\x001a¯O21½`tF\x001aÜ³#Gôg¤4ñ\x001a\x001eBDtØ\x0010¯ÙjG«\x0019§:+Mk\x001bHÚ¶­ÛLÍh\x0014±\x0018?\x0002*Û\x001bÖÇì(]2ê(%ë¹mdéi!gX<Û×Áý=­5à¾ðD²t6RÀµ×Ä2aÂ\x001bì\x0006Û@>uJzlZE\x0019Õø #\x0000zì¨èFvÉ¼\x000egò
²ZwÑ4ÀxÑ&­Rß6þ|ý6³6Uª£\x0002/½ÉVPB8D\x0003òC\x0006EáB¢) ¹,
gÈ	o\x0019i\x0006,##@\x0000-ó\x001aÖPÎ|*..Ûì(!}EÀnlRÄëX\x000eé;-S;ÙQÃxºi~+õ/_®»\x0003T0[}ð§¥§\x0002®¼Eà(%ÔÛÛC¥\x0017NÓÕ«g¨¯Ó&ús,£ìÜY.\x0001Û\x0019@\x0001åûÈ8×\x0014µM\x000cä\x0018\x0019\x0006¶
Ñô¢®®.!#­¨\x0016ú\x000e5Ñ\x0011dÔÎ\x00160%g¤yÃxYF®J}_¡O½\x001eF8(,>È\x0002ý­\x0003¯¾N\x0016Õ%\x0005ÔP[E/=õ{*¹vf\x0016.§¥ë·PZF\x0016í~õ\x0019:~hG¿íí6²´U	\x0013î\x0018JÙÃ\x0006ô"@+e;#Õ\x001eFèîèP[Ì:D¼V3¯c¢(À\x001aPLÓ\x0000ãe\x0019¹*õµRO\x0018©Ô÷\x0015Õ\x0008hºÄKM\x0003/;	r»±®Þ}õyZ½åvÊÈ)PkàO3æ-¤§¶þ2sæQbJºlïdkÊÒ|mèt2aBÑ\x0019i°ö\x001f×Ý\x000eV\x0011~±_\x0011¯£\x0014ñ\x001aVQP\x0010/ÔlÉK,oÛÔ/^7O\x0007ñ\x001a\x00187ËÈ_¥> 7=ÖfsøðÝÙ¹ª8L\x0014\x001a§ng£×{ÖÝr\x0017EÐéc{e\x001bd³^=[D!¡´þÖ÷Ðwß6#\x0002k(Q_»Ùmb\x0000ÎHC}Y¸è\x000fÄë\x0018E?B©Øþ¢9ÌëºÚZ¢±x=-\x0008\x0018/2Zä¯R_¯\x001aôx¯&sw=\x0013IË=;uh/\x0015ÌYBåèWSÛZ-IG\x000eì¢gÿü\x000bÊÍ*¤ºj\x001c<ýïÅáìä÷æÃ
$³%þtÑ\x0019i{öì!#ÐÚÌjz&^c`£Ã®ÌGÃù¡µ A3µé"^\x0003ãå¦möW©o¤Í¬¯Ñ2\x0001uçx©ÑFù8éÜ¹\x0003ôþG¿FõuåTX¸\x0002¥üW\x001c&«û\x001fù\x001c]»t¬Áò#\x000f¨µX$SÒ+í¬'ADêþ7Ý$]øF\x0003Ð\x0005Hßði\x000eÏ4³\x0012Æ\x000eFg¤\x001d:t@«ISô¢~ñ:Ãú*jw\x001bc=Äk`<,£ÍøÇ_\x0019ÈÚµkýîÀ¡5 \x001e\x0004¶Ú*9¯\x0010D{K3Â\x0011\x0014ÄqáÔ1zîÉ_Q]U\x001c\x0000G÷¼E¯<ûGÑ­``\x0005Xû5(6-ÖèAV\x001b\x001e}úgdÇ¥K\x0017i/¯¸\x000f
Òaåá:VO\x000c\x0007p%Tj#ªµÛþ¾Ép!/]º$×÷îÝCUUÃ\x0017ÍñV_}íU9°M>"^\x001bm\x001b¢MU,£~ñ:)1Y-U,£Új¥Íìt\x0012¯ñ°\úHâò\x0006½é±¾ÛÌ2ts\x00084LÑë()-SÇVn¼æ4¯dq0C~à¹R|U"eæÏâ÷QCQQñ®½XzZÉæE@g\x0016)eSzöìÙtã7	)îxk\x0007à\x000fäóõ¯~úÓ\x001fK>\x0008¢!\x001fÿø'èùíÏÑµâktóM·R>\x001fpo¾ù¦\x0010Óm·ßA;w¾Mï¾»¾ñoHApZz<·ºªRÓÒ)²	\x000b\x00078\x0006\x0008\x0008©Y9øôîT¹k×NéÕöÂ\x000bTPPàÊì51r\x0018\x0006b9sF?OM\x000bécatÏ¼NNI¡à\x0010EÂH\x000clTGYO#ñ\x001a\x0018\x000fËÈo¥þÚÌ:9ÂæèsÝ´9»]"w([HÉ©®\x0013:2.
æ.\x000cðóÇ\x000fQ!\x0013HKÛ3:cÐîA>øä§¨´´¾÷½ï²Å\x0015LOþí¯´å\x001b©¼¬T&À^¹|>÷¹ÏÒQ\x000eívvvÐöç·Ó\x001dL<0µ/^¸(dsöÜ9Þî\x0012\x001d?^D3\x000bfï{æé§©\x000fÊï|çßè©§¢¿ÿýI\x0019Ô÷ÿï?è?ü>ß÷¤èoû[úüN:)ï	ß\x0002zßÀª£j&ÄÈû@)\x0001êj8,ë\x0015åòú\x0016R2q]swµI\x0017¸¯´´Ln\x0007\x0004XLmLèE\x0001úä\x000e!º¢¢Bw;÷×î×29V-Õ²¯\x0011qnâ50\x001ed;ÒJ}HÞ}÷nULD
ÕÉYí/¦³Ç\x000es\x0014í«ZG[#G>.ÓÌYêë¢(1$áö÷G\x001c¦/~éKB\x0014å¼ïôô\x000c!ÕÛn¿N8I÷Þ{·Dí=\x000eËfÕªÕô·'ÿF\x0016-\x0014«ÜÕ«W(>!A¾÷>ð /îíí£^|n¹å\x0016úèÇ>F×®^¥\x0013'(÷óá\x000f.3y]ºt®^¹"£²Ã#Tñ³»~ö??¥ÌÌ\x000cy¾¢\x0008­êïô_ÿý_2\x000c\x0012äùÜsÏÑsÏ>K­mmBr?øþÓcÞ*½ÿ~úÍo~Mÿñïß£î®\x000e:sö4=õäTÁ$\x0007>xà\x0000íçK_¦#ÎHÛop,f\x0019á\x0018x­õ=ÊÌk\x001cãÒÙQÍ/\x0008vÓ4ÂX\x0011ê;\x0016û«ÔÇðB=ølÊh±# ¨ÿÅ\x0012\x0012©¾©\x001b\x0015»««­2*+»½P/È\x001b/<Ik6ß©4æÇ.ºÉ±¼IÁñqñrB÷;ß¡\x0015ËWPFzºåEEÇä`9Ã\x0007Ôü\x0005¤ñ\x0019\x0005¢/­^½ÉªKJéÙg¡Xôîêì¢T6Ç[(WÈK\x0017/Pn^\x001e»s%2M\x0016VNjj\x001aßîºóNy~Bb\x0012ÅÅÆÑ¹séµ×_sÊ\x001c;zCÉÍtu¬ðð\x0008êä÷së­·QÁÌ\x0002¶ÀÎÒÿý¿ßÒ\x001b¶ÜÄîïljhl ó|?Èù£\x001fý(ÛeÖ¼òÊËìJÞ¤¸L¢Ï=·]^sÇ\x001boÐ³Ï=C\x0007\x000e\x001e S'OPmm
Mf\x000c§¡çPf¤
U¼F\x001aÀÜ\x000bø)ûµdG¥\x0001¿Ã\x0015IÃñÅVì´²ÆZ3\x0012ÿË_¥¾6³¾#\x001a|hdÿ-6«Wo¼Þ|îotÛ\x0003\x001f¢9WÒ\x001cZ½PCu\x0005íÙù\x0012Í3rò\x000b\x0015±\x001aVQh\x000c9cs¼î=\x000fïÿûJbZRäI}á_ÕmÖ¬Ùb%¥¦¦ò\x0001Ô@·ßy\x0007]/½úê+´zÕ*\x0014»hÑ"Ú½{7ÝÀ
l¬~õµ×\x0008Ä·xñ"6Ã\x0003éú#Gê:èË_þ
mÝú'ÊÈÌ¤Ý»vñþgÒëL\x000cØ\x000f\x0012êºØ\x0005´$Ä³eÔM\x001b7ndòÅï'P¬)¸¹\x0018©\x001d\x001cd÷ù_üBÞ\x0017,¤Åü\x001eà&Þyç]â¢F±ù_U]-'À\x0003\x0007i\x0011?÷Å^\x0012«\x000e® ´'Lê\x000b¹nÝ:þ7\x0011\x0014Z#\x0007\x0013\x0012è~\x001avòäI2\x0002­&
YnA>½sPiÜ¯µ
Áñhw:¥¡\x001a\x0000ñÚnµd4Ø¬W©?²6³\x0016%kº]³ PYÒæ-^Címôô~Aé3r(24êKÉÁ\¸tÝ\x0016Ê)P\x0008Ïe«È6ç\x001eòEÍ"#£ä¢ÝÎÎî'.t¦\x0004\x0012\x0012É¤xùÌgÕmôù/|´-No}ûÛò\x0018ÄxkpìkÞü\x0005*VÎ£>ÊÑÀP±\x0012yL\x001d;J\x000f=üA&©,y}¸SU"Ã½H\x001e\x0012\x0012ÆBû\x001cùqÀc\x0005®baü}\x000f>ÈZÕqº÷{é<\x000bÝ99y,¤ï¤Â9s)>>6lÜÀ$ø\x0018mºe£Ì;w¸w²ö?ünü~\x0011¢ahcg\x000f¿C\x0018cmpF\x001a\x0016)#4-¿\x0008ÇD?Ùý\x0005.\x0005×!y-\x0011Yþí4ñ:)!¡ùé­Ûi\x001aa¬2¿ú8õ*õý·åèCÊb²V"gPªÜ\x0003âZµÝÂETS^Æ$ÐÇ+Q\x0001¥däKÎ\x0016¾·t7=s-;óxÞèdëx¨VÐOtZ\x0006®\x0006\x0014\x000eÏ5Ëu;%Eù\x000cYY
ÉAw\x0005¥Ì\x000fPöÆQ·/~éË\x00129ÃÉv\x0007\x0006ÜÏ`ÞW~~dø#\x001fÈw±5\x0014\x0017\x001fG\x001füà(6.V¬ììLúÉ"V\x001b²k¶U³uº^}åUÊÌÊ¢e¬á\x001d;v]Ê\x0016Z½f¬³\x000bð\x001d±×ÒÚ1D226#
\x0006Ýí4ñ\x001a¿7\x0016(\x0010
UÜ38¨GM¼æ\x0007¦U\x0004¹æ¯R4ÚÌ:ù\x0007M,$B¾Qò£ã\x0007OJ¥ä4×mõü±t7=a\x001e9Q;qÏ4w\x0012r\x0016ÂÇCÐ{´h¥$Ö~pÑ©ZuÙÒê"5-µ­Uôæ·\x0016-ZÂ:ÓB×\°Ï~ösò!Ò3Y\x0008èî±QK[7¥'Ç\x000eéy2#Íx
Ô\x000842\x0012½hÑ\x0002x¥×ÒÇ#ÆM
ýzÑt\x0013¯±\x0014°u+õG«Í¬={#\x001dQ/4à¹ª/Þ¿!¿¾6r¤/'GÖZÈD4\x0016ÀwÇÂ9\1dÃEÞ²yà×(`\x0001Ñú4OVÀ\x001aohh¡\x0014r\x0018_s]3Ò\x000clkT/Ò\x001aðke xÜßß®6SûY\x001bN×\x001aÆÒ2ÊÅ?#ªÔ7ØfÖ\x0019\x0018Lö;ÈRò\x0016\x00056ór\x0018Õ\x0012H\x000evY\x0002xåA\x001e\x0011õu\x0011E$-óFrF¤Òt\x0005Vé;î¸]®û²¼¦\x0002@(i©ñ\x001fw\x0018lz#4X±øÎÝÉè\x0003xN©uÈQ[£Da\x0019Ù¬6ÓM\x001bElÖ«Ô\x001f6³*ÐÇÚw\x0007Q\x0007»k-WÈÒZC\x0016\x001c(\x0015I!gt>9"ÒÍWR4©\x000e£\x0013`=\x0001Y ÈxZE£×\x001aáC´¶X\x0003\mCC¨·»\x0017A]\x0011°;Úi q1ÑÅÛ¶nk¦i±$#¿úFÛÌZ2#
¥\x0013L8\x0019D\x0019xMdX«UûfI©	\x00030:#
õFf¤iùE\x0008^x\x001d©×ÑBBZ¿kdÌÃHLHÀ:m*õÝ1Ñf¯¾6³\x000e­\cÈÐ'Àã¶	\x0013þ!âµ\x0001küàÁd\x0004È/Âqì\x0012¯Ïxd^;\x001cj¥¾ÚL
=Î]4
1Vd´\x0019ÿ`5ðU\x0006¢×ÃHK\x00052ab¼ ÍH3$^\x001b\x0005\x0019K¼.)ûQ +­Si¨Ö¨¦\x0008$±eÄkç´Ó±"#WæõpÃú6»Ýì¼hb\atF\x001aé#Gên§ä9
lÀ¯µ
ILLR\4ñÕTW['÷£¡Út\x0014¯±"£MZ7¿\x001a\x0019©zú¾ÛÌ0160:#
âõ¹sçt·Ó\x0008\x0010ñÚ-ó:$$ØU­ow*â5\x0002>±1ÑEÛ·nvâ50Vg{îH¬"ÀgY\x0013&Æ\x0008È\x000e02#íÔii½¢\x0007_×(uªî\x0019\x0012\x001e{ÔÌë\x0018%·«¦)Æ\ú#i\x001bâ\x0006ág\x0013\x0013\x000b8â\x0014ÈîÝglFV\x0006"ãy­Tê+-ñWË¼Îâ50\x0016däÒ|­\x001eÃo3kÂÄØÀhYl§\x001e° c{X>¹\x001e×Ud°~ÚÃh:×ÀXÑfº¨ôöEF+V¬ð»\x0003ßmfM\x0018\x001b\x0018\x0006b9:\x0004ñ\x001aA\x0018yÌcËH\x0013¯Q+(zS±Õ°þt\x0016¯±8ãE¼öU©)ýýÁgY\x0013&Æ\x0008Fg¤µ¶¶\x001a\x0016¯µ:7´s4M\x0013¯\x001dNm>VÖ8íÅk`LÜ4âµ±Dv3¬obatF\x001a
@k¦&dd·Qd´x*}u`#Ú¿ 1\x001eÄkÞtÚZEÀhTê#zà+U^¯\x001e
¢µ&&0ÎH3yí_¤e^C/\x0002_\x0004\x000b©¦ZÕ\x0012ãAPÓ²\x000cDÃhQ.þÉéË2ÒË¼¶ûm3«\x0000\e\x0017\x0013×©D%ÔÈÌÂ\x000f\x0013CÇPf¤\x0019\x0015¯Ý\x001bðçÎÁâµ\x0012±G[`i¾¯æ\x00185õ%Öâ50Ú²®JýáõE¼Ö90¢GÙd9s:û§Àjå°ÊàD<h;-ê¸+@»bq[
Õþ5®Wu{ÜÄÔ¸h\x0006\x001dqL£¯\x001e Sh4ä\x000f¡&m÷o\x0014÷\x000e
Õâq¥{Û§xz\x0017Mc6\x0019-B\x0014
·J}ôo6ÔfVÇw\x0007Ù\x0005\x000fº_éúê$­û«Úý*\x001e¢ _yÜâz¯N\x001a<ÞÚ\x0012À3ÐÔø6YÜZT(\x000fÈ;ö$6·\x0011\x0013&±M\ÀÂ\x000e\x000e26#­¼¼\w;­\x0011"j8\x0017:ºÝÄkjÑÛGô¼Æ\x0002\x001e\x0011\x001e6­­"`Ô-#èE¾Búîý}A¯Í¬?(\x0004`é'\x0011P ÜÈL½æºO
 _0ÙA%5\x000fkÍõÞ¼Xk\x0016µ\x0002\n©¥;rûëÚIjc\x0001ÂXÌH\x0003 ^»2¯ÕfjZ~Qkk+é©)Ó^¼\x0006F6ã\x001f¨¾æ¿ëVêÓÄA?!È¿4\ø³Ö\x001c®ÖÜj{\ÙN±Ö nZÜ¶ÑÞââ±~«KµÖúÍ´ÖBÖ\x000fuè§\x001eÎHÓ2¯ûÅk¥	\x001bÚÈ4F®I pÑx
ÞMÓ\x001c£IFy
_ÙWY½H\x001aDiË\x0014«Góg­é;\x0006\x0003áôâzª×\-d¼J\x001f(;©e5>¬5õ­)ÄFÎ~×SîëwCÝ­µÄ6\x0015¬5â5\x001fCéy
È|½EóûÅk¨Q4\x0010Rm­¢\x0017!Æ\x001ei\x0019ÑèÁU©?Üé±FÄëé\x000cJ\x0012#vAå\x001fwrrºÎéf­9a­)×-r[#2µF¸N\x0013ÊZ¥b5ÐÙ±£³ÃPYx\x0006Úô\x0016M¼~ç7jÏëä$êíîéoÀßØ\x001fIÛ¶uIF4zÈõ×fÖÈ$\x0010d^\x000f©Í¬aÁe­Y\x0006Ü3,\x000cÅZ\x000cê/ö\x00160PßµFj$Ô2ÀZóí\x000e­÷µÑ\x0019i°b0\\x000fU \x000bÄëNU¼±D\x000eE_Tú\x00189ÅM\x000bçí¬Ö]dbÔÈÈU©ïK¼6ÞfÖ$£É±¶Ö<µ5wkÍæJ,ëß\x0006VNHðPF\x0013\x0019¶oß>2\x0002M/\x0002yö±xmQ[(.SÕJ}+\x0018Kä´LïdG
£EF¢\x0017!¬ßÖÖæuÕ«WûÝÙfvzÃµ6TmÍ(2#íÀ\x0003d\x0004Z\x000f#×¨Ô/V+õS]¹ExÝvu\x0012HbbÂ´æ
£eH¥¾¿¶!³gÏö»\x0003èEf=ñÌH3 QÂÝ2yÔ\x0016 ?óºXn#óÚ©V\x000b@/ÒÊ@ÐÃ(À\x001aPL&F\x0016!qËW¥¾¡6³È/2ÛÌ\x0018G@Ã1ÓÖÑÑa(Ç\x0008z\x0011¼\x0003@\x0011¯ç»jÒ\x0012%"§MÕ"Î,^7âµQ³°"´ÍìT\x000bëØPÊ@ôÀK.\x0019\x0006Ï\x0000ÐÄë\x000evÕ¬ìlÑ!°¾JF,^#ÆâµID*FrI­Ô÷EF7ÜpÞ>Ì6³&Æ\x001dFÝ´¡×\x000e%âµju%%%JÓ}%ûCú3ÐLÍ\x0014¯û1\x001ad$þ\x0017Ü4_«Ç¼yóüîÀl3kb¼!¤AÆ\x000e»\x0013\x0006g¤i\x001d\x0011Ê\x001f ^§¦(.\x001a6Úí® )^\x000fÄh«Rßx}ÓM7ùÝ­oüÛÌZ<þ^¶!\x0006ô"vä\x0008\x0019\x0016IÃ¢,\x0003\x001bÝÚh@¼R§f^âõ@\x0006\x0003¸*õqñ\x0004ÚÌêVêK¡âøÑÂÅ\x0017¨èDè\x0007\x000f\x001dòÙîd¤0ºò\x0018 r>È^ÔÎâõùóçu·Uäy4äÞ%&%¹k§û(kS¼\x001eQ±üUê\x001bi3\x000b\x0013v¸a}<«W9¼º¦;é@\\<=þçÇéô©Sôî;»e \x001eÚC*þ>\x0016\`RKÆ¬jÒ\x0003 0£oµ´´.²øibâÁè´3§OûÔBÝáyÝ¥.pJ~Z\x001b¨6Ted×1Ò¤G×X¢áVê\x0003Ãm3\x000bN8ÚÑMÏ7µÉu+RûÙô\x000eeÂøpJ\x001cÅø8ØRSRø\x0000ë¡¿oÛFÿôOÿ,S\x001b~úijll ¯~õ«ôìsÏÉìóÛn¿Þ}÷\x001djjl¤Ïþ\x000b\x0014ÄsûsÏRZz:-Z´X\x000e°¨è(Iéohh¤ää$\x0019;\x0013\x0010\x0010(¢å®Ý»õ#&Æ\x001fFg¤
¥Í¬»xíT÷­ä\x0017¹ôÝ*õMñz FJFñÏ+õGìøvK\x0007}\x0007Åvµ\x0015Ç«MíÔÐk£Ð`¯ÏikoÁzKÙj ­m¥\x000b\x0016\x0015TWWGÇ\x001d£ÿü¯ÿ¢Ç\x001fÖ­]Çc\x000b½½ómºxá\x0002ë_7ÒSOm£´´4Ú¹s'}à\x0003\x000fQ-\x0013\x0010".\x0010êw¼ù&[Y
ô½ï}OBÂ\x000f¾ïýdbba(3ÒN±õl\x0004e¤×Z²c&õ%æPBûêÀF)^\x000fÄHÝ´Ezúºmfí#\x001bcÝÁ®Ôïªhkm\x0013=VÛL[kéBW/¥\x0006yÝÞÎ«Ö/ñ\x000búÊW¾Jûöî×na"Åû;w\x001eeçäPjj*_RèêÕ«´jÕ*É\x000e\x0017WÍï
\x001b7±éB3gÎ¤êª*JáëEÇÓÂBúÝï~K|¨¥µUå"ÂÃÈÄÄta4à¢A6*^#¬Eµ_¼.û£Ù\x001dSz´c|¬³¿ç5×v«ÝtÓÜ0R2Zì¯R\x001f6³\x0001Ã\x001bi¬÷|6=¾\x001aOM£9á!twB\x0014úPÊÊÊiÉÒ%´|Årvµ\x0016{5»p6½øÒKTYY!þüìÙb±áEô6[@«W¯Êm×®^\x0011ªC´=Ýôò+¯Pá¹R0Í+áÊ«¥`3!>aØ.¨±"^\x001bf¤\x000cD³p\x000eà9ó\x0016/ÌëÐ\x0010JJI®\x0012ÖwÚ]\x0003\x001b\x0012\x0012·oÝ^L&\\x0018¦[©¯79\x0016\x0018QYæÆ>\x001bEò\x000bÝ½\x0014ÎK{úèÆ¸HÏÁ\x0000É¼¼\!Ï|ös"8~â\x0013\x0012+\x0007Z\x0010>ËÝ÷Ü#þý¿ü\x0015^\x0019\x000fÓç>÷9Jckió¦Môæ\x001bo°6æØF¿úÕÿu\x0004³\x001bw¾ý6EFEÑËiÞüyj'\x0002\x0013\x0013	Fg¤\x0019uÑ´J}\x001cK°;ÕÌkÌHÓ~:ÉF\x0013¯¹L«È\x0003#!#ÝJ}½\x001eFb4 ö}Åë¹a!´§µNòõ(^íNðß¸\x0000¿-l5kE\x000bÅ"OJRö\µEØ&+7/ÏÕºâ¡?È®Û\x0015zõÕWeµûù?Bjx\x001c¿öµ¯S%Z>?\x0007!á9sç\x0007¥þgt`£{$
ÝãÐ\x001fHTc%*ËkÕâØÄÄx¼Ýdb\x0000FDFzúzzÑpÅk¬5/6¶R\x001d?¿-¢DÖh¾@L m\x000e§«ûàhÀÝýÄuX?ÚxnDÍpÑ\x001eà\x0015\x0012Z\x0012\x0010\x0013\x0013C&&\x001edGcâµQ½H¤imC4½(Këy-}ì\x001c­uf×0\x0012Íh¿Jý\x0008ÖTô"iÃi3NÏ0\x0011½ÔØFË£Â)\x0008³N&¦\x000b=½Ã·ÇÒ1
\x000f ;ï¼ËÔ&)\x001cNc.\x001aÅÈ4@+\x00030wÑB*¾vMîQHªõ\x0003Âú6«ÍtÓ<0\x00122Zì¯8ÖÈ\x0018kM$6
ÐÖ®Ö\x000eÖ\x0002¨ê7\x001eN&+?ð+¨ý¤¼æø}~Kk\x001756u\x0018ò\x000e}\x0015ï:M&\x001a\x0012Ð¿çðáC´wÏ\x001eêîRòÑ`)TWWJö»¤êT;!eÖº\x0003­
\x001csHU12#MÓ\x0000±
2\x0010h©È5Ó\x001að£í®FFq1ÑÅ,^7\x0001\x0018®\x000bÈÈWq¬6³h\x001bb\x001db\x001f¿ìÅ±Ö\x0013Á\x0014ÄVU=[W$ÇÉõÇj(ÏGn\x0011\x000eð+¥õtðè5*¯l¢Ïl3\x001f0A®Ä7÷\x000eÅe
H{\x000e_¦ÕËó|º¥å\x0019?¡F,MDüäÇ?¦¢ãÇD;qr%}âãààÀ9òÔB©©éôßßÿo*))¥üäÇ\x0014Ê\x0011¨/|áì
çÑXÀapFÚ\x001e&N#p×D¼Võ"WæµC\x0019\x001aÚÝÛ#\x0004ãÅLvôáZFºúkÖ¬ñ»\x0003m^ÕPþþhJ\x0008
¤Or\x0018\x001fÄó"»kOÖ5Óª\x001båv¯}òýïì»H\x000fÞ½
g§Q	\x0013Î¹Utéj-5°¥ôîþËôÒ§¨®¾þ¼m?5³(\x001eCÝ=6:¹Zþb¤vSK'»\x000eÐÑÙ£\x0001ê/A1»U\x000e\x0004òºî¼óNúÅ/~)YëpÍÿðÇ?P~~>}ÿû? ò2ºvõ\x001aýÃW¿Bw±ûtíÛ·»J5´ïÔ[ÏP¿é¡ÌH;|ø0\x0019{ÏkôãÒz\x0018A¼¶»e^#£\x001f@~\x0011¿]db\x0010k\x0019éVê¯\¹Òï\x000eÛf6­¢[¢#n [cëZ+_VJ3H\l\x0004\x0005\x0007Yyê 2k -I»÷_¤¼dª©k¡FÞ¦²¦V-É£\x0012¶zzzúèZi#\x0013Q\x001fÕ7vPEU\x0000áì
Â"JK¡ç_;Án_'Ý°~¶\x001dÇNÒÍçRDx0à\x0003,ÐJÙÙ9ôï|² üÇ?n¥¯ýkô³ý\x0012`%°å\x0016\x001d3

´î ½N\x0014)óÉ ³\x001c.*¦¶.*JUü\x001b­XK=¼(TóïßlÉÂ!4à78#ÉÃhÛ\x0010­¡+ÙñZ±ÜÎÌÊR*õU×S\x001bKÄß©\x0017yÁp-#¿úX-´/¤Í¬F8\x000e·ëz{êìêe\x0013\x000fô3å\x0018\x001fEåL,á¡AÔÚÖM\x0017®ÖPvf\x0002\x0015\x0016¤RIE\x0003­_U@¯ÕQnv\x000254¶Óâ:J`M î»c1µ³Etê|%»yVª®m¥%ó3´êé·NËê\x0008«ËÃL@(¯ùþ\x0017ÊËË£K.2ôP\x001c(½åT^Q.m!Ñ¡Ò½pÎ\x001c9Ï_®¢³l½ÂZÝsè2<WIõ
í´í#BR\x0006\x000fa\x0012Ñ\x0019i(é8}ú´îvH
ÑÄk\x0017x]¬×¦J	])\x0005ÑÚ ¡)^{Ç°Ý4ú7Þx£Þó%÷b<ÛÌ¦$E³XÚK»ö_ 6\x0016²¹\x001cN¯ï>Kó\x000bÓYP\x000c§«L&YéñTS2\x001e> {h\x0000¸cÐl|PíÚ{\x0016ÎÉâÇËÅµ´aÕLªäíÐ":"Tjär²\x0012Èkô³ÿ\x000fýô§?aÁºfÍEQQôòK/Ñw¾û\x001dúÀC\x000fQ\x0018ëDÕÕÕRû÷Î;ïÒæÍ\x0008ËÌùË5tïmY\x000e°ÒÝ·.¤° jïêa])XtùÉCrÕì\x0006\x001d:#
Ä©4àWÅëP´
ITÜ4µÕlG{È\x001a±1ÑE¦xí\x001dÃqÓ \x0017Åú«Ô7\x0012I\x001bï\x0014Ìóî]AxjDTî»}\x0014Æâ`;ÐÞÑË\x0007J\x0018Ý\x0013±BCé¶\x001bçñI\x0012ÌáÚnWFçX7b×+22²3âåý7µtÐBXEu\x001c-\x0016V
¶\x00086Cÿ*n¿ýN¡V¶\x001c>÷ù/JVòG\x001e}^}å\x0015iG|ÿý\x000fÐùóçèûÿýß\x0012qûÚ×¿AIÔÛg\x0013"""D~#äs\x00053á\x001f?U&\x0019ûsf¦²µ\x001a9´à\x000cEo4ß\x0007\x0006×=^¬D\	âÂiâ5£LxÅpÉÈo¥þºuëüîàzµ
e·ì³\x001fÚèÒ
´Yhì\x0016\x0013\x001d*\x0007PRBºµ"°fE>á\x0001Ttª\x001eº:³ÞIóX\x0004×ª¿oÙ2O@Ñ\x0012â"M"r\x0003º\x001fÞzë-o[K¸õÖ[éæoï\x000e÷Í?_Êj\x0002ÙõÅ­µâ¸íùr2ßÂ\x001a\x001c\¬%ó³içóÅÁAvÓ
g¥\x0019>\3Ò\x000c<a(âµ¶_r\x0013¯ÑJF\x0013®ÖÐÜ¨Têâµ\x000c6éUêëõ¯GY
CM²T\x00168\x0007\x0018óTA²ÿ1\x001c¸mUËJ`\x001d\x0018\x000cm2¬ûm¥?_\x000b""\x0007Ö\x0013Âú±ªAàà0Ù¾¸¬µ¦\x0008qï3R¶1Fs¾2#m(â5\x0001¦&;¢m\x0008©\x001d\x001bLñÚ\x0008e\x0019ù«Ô/,,pmfG\x00031Ña¦Ås\x001dï\x001eQO¸Yaláfg%\x000e)ùTfL¼>yò¤îvx-)\x001eì¢-ß¸T2¶£££ÔQÝuTWc×F0TóD·R_or,0Òj&¦'B90]³ÜìD\x001ajìÃè4\x0008×ª[å\x000f^ã\x0018mCr\x000bf¸×IòzZµ)^\x001bÃPÉÈU©ï«ýX¶5ab¸0ê¦½ùæd\x0004Z²#,$\x0011©ýUñZz\x0018±UÔÃç	´ÕhqáMñÚ\x000fLF£Q©\x001f`ZE&Æ\x0011Fg¤
%ÙQsÑ¢¢åL\x0001I)J\x000f#\x001aIs%;¢m)^ûÅPÉÈo¥>°eË\x0016¿;\x0018iY\x0013&
¥R_ßEC¡«ÑH\x001a¢~Úsr\x000bòèìé3r;#3S\x0002¢XGµÚ4i¨f×þ0dËÈ_¥¾\x0011\x0017m¤mfM\x0018*@\x000eV\x0003mfÛÛÛéÜ¹sºÛØ´HR\x00062-#t\x0012ÕJ}§´uÊ(k\x0000mC~âé]dÂ'Â
¹¸À2òEFg¤	\x0013ã\x0007Á\x0019içÎ\x001bÒ4\x0000e ¹3g¸ÚH\x0003~U¸´æ&\x0019e\x0015\x0011\x001efZE:\x0018
\x0019xí¯m^²ãHÛÌ01Thá#3Òö\x001f0y­M\x0002$-UK\x001fÙåýÍÔ\x0014ñº³£\x0013Q4äId¤¡Ñf|ùþ*õ\x000b

üîÀn3Cú&Æ\x001fF4J\x0008ÑF&\x0000èbê.^×«âuFv¦\x001aÒWªõµ1ÖpÑv	¿\x0018
\x0019-\x000cÆ÷V©\x000fó\x0014×þ`³ÛMñÚÄ¸BÄë\x0000cÉCm3«uv<sF\x0011¯\x0011ÖýïP«õ1Ü\x0013@$×qÓ2ÒÁÜ4.±6³Î!µ5ab¤P\x001dõ\x0017@\x000cÝ¼páîvÐLá!ÀòÁ¹2\x0010­=H:HkÂ_[Ó\x001fIÛ¶uIF:0Ê\x000c®Jýáô\x0001\x0014
'¤çuËÐ\x0013^ä¤\x001cHè-ú(y³ø=Â_
HvÌ)èo\x001byyBD¤¸jèy
ñ:ÈjÝE&t1\x00142h¯Ìë\x0005\x000b\x0016øÝÃÙ_%?\x001cXhè$\x0014þô§®ç(­(ôßÅ¥Ëhßþ}^ß78iôF#\x0018=(\x0015õÆZ\x0001\x001bíy
½\x0008ûC\x0015\x0002ÈÈ¢ÀESBúN©kko\x0013m\x0015âµÓâ4{^\x001bÑBYIv\x0004|YFèMã\x000fv\x0019K4ÌÉ±¤L\x00059ßÙCQÁVâ{"h
Â);8È'\x0011ôöö±)Ý-¯\x0003åé§ÑÔ7ßr+-\¸H²m1\x0001bÅåÒ\x001c\x001ec232¥\x001d*zÒH¯#R\x0018ÛÂûxòof`\x000eÙl;ßzK¦ËbÄµ\x0003¥\x0004DÿEtñâE2\x0002-ó\x001aÏx]«×h3ë\x0010HÆ\x0006¥¾-1\x0011#Î\x0003L\x0017Í\x0000\x000c[Fþ*õ³øÐ­Ô±DÃ³øUi[\x0017­@¢\x0013\x0005ó~\x001aø`ø]ußçhòòòEÄD\x0013ý  \x0010zèáGè¹ç£*úÑ~@!\x0018\x0000ùÅ/Ð¾}ûè_þå_dÕ{â'ä {ñ¥\x0017é\x001b_û\x0007&±mRÉ½uëVÞn¿¤þÿíÉ'EðÄÁ¬ÝÔ421±à4_dÇ¢"c|¡å\x0018á\ÌkU¼NJNÂ+J
®Z³\x001aIC\x000f#S¼6\x0006#d¤[©o$Ùq$mf\x001bÈ.vuÓÖNºÆÖN\x0007óa\x001cGHbtª°ÓBv\x001fA §Odò,=þøÙúÉàÇNÐ>ô!Ú¸i3effÑ'>þqJOK­´´Zè\x0008Ìw¿û]v÷¬ÒýñÖÛØ¢Z0^í57w\x000eýéO\x0010·\x000fÙ·ññqdbbÁ!zþ1×jP¼\x0006\x0011ie%xÎ¼E\x000bY¼V,#i3k×¦Ø]4\x0016¯MñÚ\x0018èEþÄë±®ÔOæ\x0003 -¢
±474â\x0000¶7µÑ1>]4X8°f`½¼µcô\^»f­ôA
ÂéS§Ù=[EW®\¢¥KRM9::0E${V¯^ÍÂd(ÝÊnÝ³giõªÕ\x0014Ì¤ÜÙ¥ûÄ
ì¡P>H¯W³8\x0013¾á48=Ö¨^¤I\x0015Ú(ëÄÔT\x0019e:JjÏV³ÊôØf¢±xm\x0012A\x0018"#­R¸a}cdmf\x001byµ\x0011\x0016B!A´$"n TÖrC|K^8`>ùÉOÑj& ¬Z°®ñ³fõ\x001a;o\x001eåsH6..\x001aØ·_µj¥´y5»®°x=gî\JKË ]»vË\x0000ÂËLXX9KI\x0017Ø÷¢EX[J¤«W®ÈÔ\x000bhR&&\x000e"^\x001f<x@k\x001b\x0002òQÄkåôÁX"r8©©±Q¼\x00084S3Åkã0"`ë×zd\x0019iÃµ\x001cp(wõÒpú¯:ê°ñ\x000fnqRf~ÓûT^¹ÒÒ4-ÇI<ò!µ\x0007²î»ï~¹¾nízûøá\x000fD\x000ebR\x0008ï=÷Þ#$¼páB9¨÷\x001f8@wÞy\x0017kI/Ñ±cÇiË
[¨¢²R\x0004p³GÓÄ\x0002~\x000f#Ç\x001ci#.\x001a éE°®3s²Y¼Öò×N5Ç\x0008\x001a\x0014\x0000ñ# »È!\x0018!#\x0011¯ýô
µµ\x000e#¶ÕµÐþö.zOB4°öÅ¬8zµ£h6¿ÿ»ÖYë_íÞA@\x001bÈ§aíÚu®}æÏ_ è·¾õmU;pN`¤=ñ¸h\x0006+õ´\x000542\x0002á$¦&³x­dfg¹5Â:ÒÚÌB¼\x000e°\x0006\x0014	CÐûµrqY:J}û0*õ\x001eù?ÔÌ?îíñQtµ»Ò8ò~UæÐXC\x0004¢\×\x001að;%ÇD4\x0011àºnbbA\x00066\x001aÐ\x001aê\x001b\x000cÏH\x001b,^+¤¨\x0012ÃU©\x000fâõÐ ÷k¹Äk_zÑúõëI\x000fCuapj?V×L9¡At¨µÎvtS\x0001ëEûøúÏ«\x001aéD;Ì:ÖI\x000fã\x000fÑhhb@¬^\x0003aý½ûö\x0011hV³&^'¥¥Hæutt\x000c\x0006¸8LñzÐûµ¤R\x001f«?BóÞ g\x0019
§Íl/\x001fHÕ=}\x0014É¡û,>\x0008îd\x0017mMT8}#+¶pD-!Èê÷ ¥râlù-\x0016³,Ä8Ð×çÏ=FgÏg°ÅÿÏ\x0005}\x0005@`yY¸ûcýö×úÛ\x0019íì¨UêÃK@Û\x0010º\x0018^äì¯GkjPÄë\x00183ózÈÐÓ\úÞÜ´¨¨(\x0003úèì8´ÃÏÊZL\x001c\x0013Q-\x0013Ò£©qôÓza;Ý¢>þÁW±íôûv:s¡\x0016ÍË¢Ön:w¹\x0016Ïå\x0007«\x001d]6^µ0Û.C\x001dÝßYie\x0013Ås¤.B×U^ÝÌ«`¯ÈQuo:Ëû\x001dÊðÀébúùÏN?ûù,Úú§?Ñ#å9}ê$}å«_¥o~óTVZ*îÎïÿð\x0007þ\x001bNc\x0005§ÁÉ±°öÏ?OF Uêkâµ«çµ6°QÕ4ñ\x001add×C\x001e\x0019ùm3«GDd^\x000f±Í,~ôÏ¤ÄÉÒÕí»ÙÉÔË!S\x0010\x0011ÞIN²ãµ\x0006&$¹^t¦ì\x001c;{±\x000e\x0017RB|\x0004\x00156\x0008A¾÷Î¥|½Î\¬¢÷Ý½þ¼í\x0000Ýuã|\x0019ÓÉD\x0014-cqjëÛ¨£³:ÂÃ\x0014¢ÒÈÈIê
ìÞõi3òóiÎÜ9þ°cÇ\x000eúå/Eõ

ôûäx!²ôïÿþ=úô§?C.^¤cGûîÈã;ÄM\x001c;V
wÀU22#
Äqúôi2\x0002Í2ÒÄk­mô¼%æTºj:\x0012Äk»ÕnºiC?2rUêû¤\x0019m3k\x001dFÏki£¼ÊE\x0018Ü\x0005uúB\x0005Ý¶y\x001e\x000bTVÑD\x00155-ôð½Ë)226¬* à @J *¶|Úd-Èæ\x0010}\x0013¥§ÄÊ\®ÿ~'=xÏ2zûÝó´eýl:v²Î_©¦\x000f?°.]­¡+ÅuTS×JQ¡´yílzs÷Y?'fÏH¡é&:çßª½­]jûÐõ\x0010õ^11±RjóO|ÂBÃ)OjEô':pì\x001a]¼\+lR|$%&DÑòÅ¹tüT	µ²N\x0018\x0015\x001eJ«æ
Yt¶!Áú\x0007Luuµ«a¾?hÍ÷\x0001×«nÜH»U­I³ÐBi¨æ\x001eÛüôÖmÅdÂ0üýb²t!ÇÈ\x0017\x0019é××£Í,
Z/^­¥çß<IGN°cU«µ­æÏN§Sç*iÍò|*còiië\x0016W®¬ª\x0005J+ÍÌK¤ªÚ6Z¹$W¶0¾Ó!ÞGJR\x0014åf&ð~k(';®\«£ûîX"ÏßöâQL'ÏUÐt..¦ôt)8`­ÐF;w¾M+W­\x0014\x0006\x0018.Y9¹ì&;èâ\x001aÚ¸f&?§K\x0016óªèä2êëµów\Ï¿Mæ¦Æjpx¤løÂÞ½ÆÄk÷×\x0010¯y}­¢cbøü\x0008&ÉwUÛÍB¼N1ÖNÓ*\x001a"üZF "D$\x001bÖ¿\x001emfxöÙ\x000fo¢n\x0008à\x0011!b\x0019­gk\x0008aø8&à:^µ¢hFN\x0012Å±uôü«'háü\x000cêe
©¾¡:»m´jI\x001e:[Asg¥Ò\x001b»ÏQ\x0018\x000bæwÞ4þþâ1_A)É1T]Ó*\x0004uò\956wÊs¦+À\x0017µµ5´bÅJ]XHÿú¯ß¤O}êb\x0001}æ³¥·ßÞI?þ8Us\x0008}ã¦M\x0014ÍZcSK'Eðõ0,:]*¯g"ÃC('=£TÖa¸hNCmb°Ý¡CÈ\x0008´Ìkx	\x0010¯*Ñ%%)Å±LC"bÃ*RÚDa\x0011ÞM&\x0004d´É_¥>´ÜÜ\ò\x0007ßãÝÙ\x0011ï4*2D.Àìä\x0001ZÄÿoïKãºË<¿¾\x000f©\x000fI­[²Zå;±âØ9!9\x0000\x000b$,;\x001b\x0006X\x0008»[\x0005Ì,¥6\x0014,Å&³ÃÎníRìPsÀ\x0014å0\x000cIHH@#
!	9qìø¾$Ù²­ûîûï÷½÷o=µ%uKÖeûýªZ¯ûõ©î÷ÿ½ïû}×ÆÖ\x001a9ïhk\x0012¢lüôÍb\x0015á¬ÖÌú]8Ìrß²©\x001cë¥Ú »\x000cqÎµñ\x001aÚÑN~nOï\x0008»fuô6ÉÏ³\x001bxóu-t%ã#\x001fù¸+pi\x001ezø§t¶§¶lÙBÁ²2º÷Þ{¥\x0013\x0002\x0012Gù.]\x0012cIjáÀÀàð\x00045+¨ûÌX£'O\x000fPme®Û\x001e^\x0006§µ-|ÌÁÂ)¶Í¬rÓf\x0012¯µ\x0019i\x0019­\x000cdXk\x001b°>ï7-£ybNË\x0008aÌÙBúÅ´M¥³ä°//\x0019åc&+_%0\x0002.§ö\x0015@d÷û¦´2¿Î÷J©\x0008¬¬ÖµÕ¢3iac\x000bÕT\x0007¤%Êç>y³hb ±+¹$ÄXDÚÜ\x001cz=4A
ßþö½ÓBíUU~ª
ùH«èãÀ\x0004»f\x001d/\x001f¥\x001dÛÂ488No¾ÝM»n^Oó\x0005ÈÁá,,^ÃÂQ"t! »£ú_*kªsmC\x001a\x001a\x001bô°¾>hH##iÀoOwya62jÇ\x001fXF*O$\x001fÅ´ÍHÙK³\x001dÄ\x0002×¬o`\x0002~·¸|F\x0012S½J½ÎÜãMhP%7ÆÛùÞºÜäïÐ¦ßò¸­¬M&é8ërÐù d/\x0004ÅÎHC=Z13Ò\x0010ESx}\x0003×Ïþê9¹\x001d
Uæ\x0012\x001dE/\x001a\x0019\x0015R.\x000bø;\x001fÝýèüû\x001d_árú*:BmC.¶ÍìjÝn£º\7Éféñ±\x000f¶
7Ùí¶Ïû;W/jFÚ+ÅÍHS\x001d\x0001É¼fñ\x001a=Ð|\x001fídÐI4«'<"¬\x000fñ\x001fm&;.\x0000³Q®R¶2íÛ·Ó\¸6³W
TM\x0014ùS(&fóÁËßr2®4þ\x0003@7\x0002\x0016FþÙâg¤\x001d(nF¤å×ÐLV\x0004"êUÍÔ ^©\x0017-\x0004³ZFså\x00170¹mf/wà[éL$é¹ÑIé^y5©1&o¸2\x001c¹k+õÐÒµ^79PK&Á|f¤½õÇ·¨\x0018ä×h¦\x0006@/Ò5f¦éE\x0015fÛb&2\x0002ËÌY©ßÚÚJ³ÃQl¿ÿ+\x0003 ¡þdþ©\x0019\x0018£\x0001& n\x0002(Ú>HÑþÉ\x0018=Âi\x000fÐ×êB´Öí4	©\x0008dD¼^¼6³¨Ë4¶
xÝ©Q~$mD3ÐP-eOÑ\x00020\x001fÕ?sUê/uÙË\x0011°z~76I>z~xnú$2GÓóBÕí$\x001fàÏqØûóÇ{èÍÉØ%®¾-\x000fvðà¬ýÜ0f^ÃEÛÒvUÎ2
Uj\x0005²*ÊdGH\x001bÁïÝ{Lñz\x0001ék+T©_LY³ÇÏ\x0014ðMü¸oþüÄYéËTl7\x0000<¦]¸¯:GÇã)æÀ|ÚÌ¢cg1ÈÏ¼Î×U¤
Èu¶Å\x0001ôÁ&ê"\x0013\x000bÂLdtë\ú@¡°~Jô\x000fsé\x0000ø\x001a~ÄDôW§û(¦Ï[×óù\x0002Mé;§{)n³¢Ø\x0019i°\x000e\x001f:DÅ ?óô9À\x0013®¡\x0019õ7×Ùl\x0007X\x0010f´æªÔ¿ùæ©\x0010D¼¶4\x0010ÉoØÕúßgúébf\x0012à|î\x0017Xð6)~f\x0014;#
âu±×*¢¬ÄëÎNÍèÑÄëlÎ*R×"^gÍ\x0019i\x000bEþ¯«ÔM/Ú¹c\x0007\x0015ÂBÚÌ^èe\x000bñ[]½Òúäbæ×xx`Òdb& \x0010PÌ44+¦Ñâu\x0015u:%·z\x0011¤\x000cÕ6Ä\x0014¯/\x000eùd\x0014Æ¹*õo¼é&*\x0004ÓÐ¬ ÿÛ3@ýpYéâ×ØÇB6\6\x0013\x0017¢Ø\x0019iÅ6ß¿@¼ÞvuN¼é±°tB4ÅëE@þ¯×^¨R¿¶e\x001d±å3Ág(ÿ Ð1Y"55l!mf/\x0016³	ÂÊ|^nà³¼6\x0019¥g\x0006Ç
\x0016Ãà«ªrÚ©f\x0013üÝ\x001eÄM«3\x000f¹¨d\x0011Ç\x001dz+\x0015\x0003#\x0019ÁK¨¬\x0012¯Ñ6\x0004Dc=\x001eOÐ¨)^/
ò\x0013¶ÍU©6³;¯i\x0013W\x0001w'ñVúGg0º\x0007WìÚA¿È{´ë/¥H\x0003\x000bÔ¦o,Í\x0006\x001c?ÿù3,"'_ Hë[[¥:üñÇ&M¾ÚÛÛgL3À{&XÌt2ù.%÷OçÅµëÃû^ïóÒ_¯­£{8ÒöÆxæ\x0002\\x0013±ÂõTW\x001aæ3#í­·KvÄ±\x000eàä<88HÞ×ªã£4SSÉ¡rS¼¾H\`\x0019ÍU©\x0012\x0010·t]´ÊÈ ¿Ý&½ª+\x001c6
ñ\x0005ÙÃÕ¸8\x001dT¥ïÃý%|ñ° íàç 
>Jx^¥è\x0016<Æ\x0017üÃú\x00166î(îã\x001f\x001a%ºXQ¾@ÁJfåMBãÏu­t\x0015ôðgG¢%Îd¨\x001aßµ«]\x0012aÉ:y¢½É÷¾÷·L¥è\x0007?ø¾4e¸	<y2×&b!8Là\dñå_ï/ï))¬\x0006áÿ\x001eH§É\x000cTNG±3Ò D\x0017Ûf\x0016\x0011^\x0017rE¸eí´J}É¼F4	ih87È\x0014¯/\x0012FË¨\x001d.¦Rj±ÏT¢=ó
Â\x0002SUÞYu4kKYZ°0°T2BX»?­¿"ë­­¥\x001bÞû>z÷®÷H¿ïÿð©ÿ\75×ÑáwöÑ\x001fßzne\x000b	Â%ú\x001eßùïïþÌ ^t\x0016øèGoþ;O>¹¾øÅ/ÉTOúSBb2¦êÈ
\x0001û\x001dG½¢| \x0016Z\x001epÍ6¸iÍýÓ±\x0014\x0015dÆ\x001c£\x000fX)ª\x0015Ì\ÓÓS¸#'Äk¬\x00035(ÜÚ2]¼N§5½ßw O;i¡mÈc?~¬L,\x0018Æ_°`¥þÖ­[i±±X\x0004vÇnË\x0011Ø¾ë3Îðâ¶9hÓÎk©~Ó\x0006rPÜ\x001b¤L2B\x0003±4Eù½é¶Ûh_÷iTûÚ«¯ÓÓçéà£48:B\x000f=ô\x0013éÙü/~\x000fà³ôüoC·Þº\x001aqf¤9þ\x001fþÈ¿\x001dTïyPsÛI§¢q\x001a+dÜfññ\x0005(vFÚ|ô"%ShQ3=ºç	¹
2Â\x000f¨&LòÉÍËQ·\x0012¯Ç´.\x0012F2*X©_L\x0003þå@!\x0002Co\x001cööµ}.\x001fÕû}B\x0002aøû¤O¥òi\x0016Øú\x0016M\x0007à\x0017¾û{(ÁîÛÈDøþþD\x001aZÛètÿ\x0000ù×4\x0008£Øô·C7#ã\x0008mÿäÌß\x001f>Õ_±>ÔìaÂO¤9jàë\x0008\x0008|"\x0014íY\x0016DßÍúü*ûü[k\ÎÏ´ù´Ub8Ö\x0002ô"¸ð\x0010¯].\x0014Gå\x0018À}È¼®«©Æûdt0®£ð\ú


\x0005ÛÌ®fX[ã«\x0008LN¬ZÅwYyl³UÚCªÖ·\x0010µfsz\x0015È ­»ãL »¨Â!¾=9þãfKèýå>Ñkç\x001a¶ºåõXoúôÁn:\x0016½ÐàÖ5{Í¢Y#dFZ\x0011c@\x001cÌ¼V\x0011Ö\x0003\»\x0012¿
ñ\x001a\x001144àÇ4\x0010cgGÖÌ\x001eF\x0017	EF¨Ôo«RµXE²\x000cZÈÍ'0ë´;´{!æg\x0002QdV ±YÒ\x001b"¼ÿöý'ìTÁ¢þ]uåtM©~Ú7Â\x0001H\x000bó¾^¶Î%fÎ%*áE·Öå$\x0013SX\x0019iª\x000cDô"\x0011¯µÞGõì¢Ë{Ê¼ÖÇ\x0012I$Í´.\x0016d,\x0011cg\x0013¯©Ô_\x000eüáÍSô£¾Bq^´ßúÊ¨¹)D+	pN	[<1ÝBJÁÕãñ(|Eâ¢Åñ»j+¤eÈÿëî£\x000c\x0002Ô
gJ	Àk¶²K×è2fa;E
÷KÚ\x0004"K©Ô
B¡.jÿåbg¤a>Z13ÒT\x001d\x0000/¡©um®W6¦ à\x0001ë\x0008ïÛß«\x000flôâõbÀh\x0019Yz1
ø
I¶6¢±$
\x000eMÐ\x001e}þÃÞHÃ#ô½\x001fvÐwïû\x0004­4\x001c)Rpò\(ù\x000e÷òÙ<Ìäru©	þÎ­z\x0013µì,¹IÈ×Ú\x0015(eÊ"î\T\x0017ÎÊ\x0008±trH]\x0003K\x0019¢Ó¥
È,©\x0008¡%G`\x0016ÝòSy`ÆËÅæ-%V¬xm¬Ô\x0007\x0019UÕÖÐï^ÕZÔ*Cz=ZZ¾èáa!"ÝÞA&.\x001a9Ë\x0008VÑ\úÚÌ.\x0015@Dßüë'©¯wTF\x0006}óË·Ñ?<ø\x0002}ë¿~\x001eøÁoé\x001fv¿@­ëªé½ïÚH+\x0005X"\x0019½ë<òªó) ì 7\x000b¹XÌ"Vç#Ä¿Ï\x0007ÊJF\x0012 \x000f&½Ýv!I\x0014BÊ6;=Bi` 9I£ÈjB¼"0@Mñ\x0000U
IY@bÓÉÊh-\x0007ÍgFZ±=¯¡\x0017ñ$ÿ#ÝÝ2s\x000fã¹sjVsá"\x0011
²xµzÑb@Ñ6³\x0011Q1mf
§PÐKßü/·11e¨¢¼îûúG©¶*@_ûâû¨pþ-¤\x001b¶7sxÕE+\x0001ãyÙYl¬ët\x0015ÈfûIz\x001b½JüB\x0014ßý
?58\x001dB
	+,"ÛÚh¯7¿4
Ùf5*À@X)ôñ&-K|:éí=hñ	l>3Ò\x001d;FÅ\x0000z\x0012¯'Sq>¾\x0006©±±Q<®S]TÍä\x0003Ë\x0008% \x0000H*µzÑ" ç¦Á2vîÜI+½\x0007{dhb\x0019\x0013BC­\x0016ízÿ­eûë\x0017\x000fó\x0019ÍA+\x0005XF)Ã\x0008£\x001d~/uêMÔfÃáh>u Ó\x000biÜ>S\x0015ÇÁB®Ñrµ\x0017"0ã-*ÀH',@K£ÐI,«I¦\x0008LE+-­\x0010\x0015, å\x0002\x0002Ãó\öâÄëýû÷S1PnZ,Á!ý\¾\x0011t¤·ÞxÜ\x001e7565Ê\x0004]\x0000=ø¼`Ñ"@Qx®ÎÅô0Z*\x001c>ÒCï{×{è\x0007NÓÁÃç0¦zëÆ:òq8\x001c½>øÞ­Ë>¹ÖÜºÌj\x000bîör?=Ê\x0011²9ù\x001f7*uíáÿë\x000bµåTÏ\x00118ü:)~Qÿ*O|Ì'0kþ\x001d3|3ù\x0004ft#ÓÙ	,Å,\x0000á?Låô/U0\x000bWY\x0011×Û\x000eK>P!ÀESâu"\x0014b²X(\x000fÀ5{çíwÄ]³ñaÍhäÑÝd´\x0008&`Ïf\x0019í(¢ÑR\x0000@ßà$UWú¨·F'£Ô}vÆÇ£T_\x001d¤±(ýâ7ïÐü³#K\x0005LñHëã®ew\x0011yCû&.®w5^ëNvG?\¦%mÂ*òð\x0002¼\x001c®Ìj\x0016 XH9Ê\x0005{ùâÄk¸f
\x0013ãT±¦FGÇt
I?½H\x0016°Û\x001c,#2hPÖÖÖF+QÖSJKr³x½ë¦
´±¥\x0017}VÜ¡{þçãtøøyú³{\x001d®^¤PÊgTt ¶\x001b9C÷4TÒçö*\x000b\x0001èã\x0001úóº¼\x001e~¬ÌU»\x000cè" \x0007\x0015i¶l|\x0010GçáÂ@\x0000LUâõ$ÐØ	\x0016©Ù\x0002ÂÀÆÖõë¥È\x0018ï7Ví>s¶L,
r\x0016ôlmCVJ¸\x0006\x000e\x001eë¥Í\x001bê(LÓûºèí\x0003g(HÓ;ÎET\x001e,¡ÍëjhEì.p2I¤Ux/×zèËõ¡\x0005YFÈ´¾5¢¯3¡A\x0010Çy\x0018]\x000eüvëª
±F(\x0012 `)Z=Å¼ó\x0006·\x000c$\x0003w
ã"z5\x0002êÑ¶ïØN·ìº¶\µ%×\x001f°Øl/E\x0001ÈHØ&3K¡æJ\x0011ÈçêõrÀàÍôÑ?¹zîmúËï>-dô¹;o¢µáJºç;ÓûËÇh%\x0001ð±u4¡v0#ý§ê2úrCHw3
\x0003$ÖÀbõ·×TÓ×È|:¹á5ý2°òT|¯ñ¸lû&.Ð\x0019ÏõÑd4N«\x0005 ùÀ2ÂsÈÐ¤²2$å\x001fÈö®©«¡òP\x0019¼ãòX\x0007¥M7m\x00007mN½h%qüd/Ýù±\x001dtàèYzèg¯Ñ×¾ô~ÚÊ\x0012\x0012Ï¾q÷\x00079¼ï§h;è\x001a §}å\x0017*ªðQ«\x0006[\x0001±=Ø1_`BÚÌ.äýg\x0006é\x0008GÐRÙé©\x00008\x0005àW;íôoXøþw¡\x0000GÏ\x001c¹\x0012\x0008ý \«Äå9=(j\x0017æädõ»0É¡ÃaãÈUâñ¤ì/a\x0017»,PB+ùÌHx
ï@Ö!\x0012É´69\x0016[ô¼N§S´ëG~õÄ³&\x0019-\x0012@F¸2[$MMÐ\n Z2\x001eIÈìõ\x001b¯]K;®nbóØ&
ßÃáT¤å?ÿÊQªbû/îj§\x0006è¢\x0017d//V0¼\x0016¶Ð._	]»ÞC{'côòx²å~G¨5\x000b3	m-qÓµ¥^ªuhÖê×4É×|\x001cEs¯\x0002"\x0002Rim"\x0006\çx"I§{imSH{ü\x0016°\x0012\x0014ùýnv4zntÅÉèÕW_-êqZäLûa\x0019Y\x000c)\x0003uõõBPÚôØ\x000clDæuÀ_b\x0012Ñ""Wè£\x000e\x0008i¹+ö'#q\x001a\x001e¤^?Iþ\x0012\x0017e]T_[F¿cò©­\x000eÐ\x000f~ü\x0012õ\x000fÓ­7®ç\x0003ÃCn×Êå\x0019\x0019\x0001á9Ä\x00072\x001añ\x0007H³@.>>ÓÞâ÷Ò»øÒÅI£\x0013FXJò\x0012}/)¾Óo³¯
H\x0001DcwXåDàõ8)ÜT!ÖCïvß\x0000ù@åe%4<\x0012\x0011ki%\x0013,,£b\x0000ñ\x001a@ \x0007IÊMfjb\x0011¥sc¬ai\x0005y%3óz\x0011¡È\x0008I\x0018³C{÷î]v2Btì£·m£ß¼xÃ¬Q`àKo§î!êí\x001b£\x000füéfêì\x001e¤¿ð\x0005úÔÇ¯£Õ\x0004Ù(õ\x0018`\x000b	Áb\x001cæÆD>h
SP¢w\¿ ÕH9¿u\x0015\x0011\x0011\x0010a®Ô;Õ¨Þf±ÒsÃÒ\x001a¤ÑÒ.½\x0017º×³²\x0011N\x0014}\x0017;#­DOp\x0004ñDbQ²øµ$[ìÎh\x001b¢·EOì¥L,\x001a"£\x0017^xn¿ývZNÀdþÌ'®\x0017w
.@#4NviÖ¯­¦OÞ±SJ?\x0010âßÑÖD-,b¯6pjØÅÂ\x0014a\x000cµä}X 'E1°övºÄ9­Zá«ÍbYUQ3\x0000d\x0019a·¹¼¬4·\x000fä4:\x0016e\x0002rÐHoD¬%¸oWml`ë"!É©+	$:\x0016S\x0006J}c$]+\x000c.ÚÚµb\x0011á\x0002w´§çì÷û|¶'L7m\x0011¡Tº9¿Ô={öÐJ\x0001Ö\x000f\x000e{ÀìÇWÕ !×èêÍ
+VV\x00080làU³ÕhX?¯\x001aB\x000b*ï±ÏëÐ\x001a\x0004õÙjÌ$p\x001beaÚÃ¿\x0003Ú·Äâ)\x001ae±º]²2/ÊK©yMÜNÍ1¾äq¯lï%ô/J\x0015å®ú\x0017\x0001 £ézQ\x001d\x0010Y°g·;Öô" 2T>²g÷N2±hPQ×\\x000ffÔÑÑ!c\x0012*ñr\x0003\x0008ÕmAMv+}èRúOSzCX¬ÇNôJ.Q4\x0016QO°\x0018ðO±ägý\x000e\x0005ÍÐVZ3zé¥zßïÏ\x0015ÇJÙC;G×74°Fæ d<.÷÷ööJÞR¨Âl¦¶\x0014(Ê2\x0002î»ï>ZJ ©\x0011âôùV§¯\x0006ÄÙ\x0012r¹íâ2C\x001bÚ´¾|>\x000fokÉ_ê¦Öµäõ:©´\x0004´ø\x0007\x0014\x0010ý:~üxQõz½B²xN4\x0011GU¬ì¯kÐÒHD&`\x0001ûÌ\x0019ÍE\x000bj½ÔÍdÇE"£~\x0018,#\
oî;Må\x001c\x0006þþ_¤ïþýs|`¤éå7NÊ¶ëÌ h\x0013\x0003C\x0013â\x001eà,>Gùxü?ÒÀà\x0004X| º B]µ1vÏÎ\x001b¡¸$@Fe\x001f\x00163~\x0012&¤IÖVÚu»õV\x0011â5k»\x000c9Èj(\x000cÉáæµOÉhdÔ¯Æ\x0012ù}h\gZF\x000c£ÝAúì´Ù\x0000ëh©\µ}\x0014n(¨\x000còU\x000e\x001d;GÏ=||¦}s_'Fé\ï\x0008]su\x0013í;ÔÃ\x0007[þÏ¿þñ_\x0014qñ»^~ó$}ø\x0003WÅ\x0005Jm",HW|äaºCúI\x0014:*JxÜ.'í\x001dÎ	\x000evq -U|´»u¼\x0008ñZ¹h ¤n4Rsj\x0016÷S"\x0010B\x0018\x001fÏõ0ÂsÈnf^/6ÉÀ\x0005ÍNXF\x000f<ð\x0000-&Îsþ¡Ç_\x0013ÁóôÙa&¤\x0010Ç$O%ÜTÉÖÑ	Ú´®­£!úæÝ\x001fd½â<GÙ®è\x001ag½\x001e\x00079;DCÃrör9ìdbq\x0001Ë \x001aK»dK5àóRuÈOõåÒ|Ãº*ÚÔZÃ®ZÖtK·keßÿþ÷E=N4-llb<y
á\x001aÇS:¥YF§Ný\x0016ôù:Mñzña<bîçËÝ4G\x001føÊW¾BÛ¶m[4\x000b	d\x0002áú/>ß.\x0016Î¼Bï»e\x0013ÕTùé§Þÿã\x001fºFÂÆ\x0001¿ú#BX\x001eÖ/\x001e}ò
ªà³ói¶\x0010J®«^¹:ºË\x001b\x0016¶\SßH#Öò\x0015½ÀîO\x0004 ÚíÝ+\x001aÅÌH¦&ÇÊhsÇT\x0014mýõÒÑ1#\x0004¤.½\x0012!TQf&;.\x0011òÝ|ùl¡'¡xöùç_Ö")ÖlúÙ	\x00058¨¡C\x000cF$|Ý·p}\x0005\x001d8r&8sàÐ9)\x0013iÛÒH\x0011vïÚol%\x0013\Ï ,éÕsÀÒ\x0012Y'Dü>78<´RösË-·\x0014$$Ì\x0002Ä±R\x0010¤\x0001Ä¤ ÐJ¥>\x001fÝù©O '¨çL\x000f½øæ8\³m+­i¨ÿêyü~2±¨È·¥ïµÙmM§Òs>	þ8¦Üÿýt÷ÝwÓ¢~ C\x0007\x000ej\x0005\x0010\x0011°¹µV¶;¯	Ëx÷u­\x0012:Ï\x0014êoâ¢ z\x0006a;=d¿úÜâS§N\x0015m\x0019\x0001èÚ\x0018MòÏ¥\x0011hmm-¥¤\x0015véê<{Nmu\x0015rPL½h	ß¿´³´,ØAE\x0002.Û]wÝµbÅ´ÊEÀâ°³`·¯îv¬«\x0015 òd\x0013Ð¥bô¢²²2É¼paJ¸\x0006Ú¶_#-C \x0017QwW·ì¯©®ÄX¢=\x000fïé \x0013\x000bVoe}å}èí[,vïÞMí»vÑç\x000e³È\x0017å\x0003;>ÅÙ©é\x0010&V/?tìd\x001f\x001d<rz\x0007Æ¦ÝFigÏ\x0017î\x001d
¬ts;#¾óï\x0014|\x000cÜ3­õ\x0003 =DNí¯a«Èåq³Øï\x001cÈ=§\x0006VQ&kæ\x0017-\x0011.`ã{\x000fwê«;\x0006zzÛQ\x0000)ãi
\x001ci\x0010÷\x001edRÂeÓUWSÓºu´uûµ\x0014(\x000býï`ªjjùlTN@Ãõ^òºÝRú FØ \x001e\x000b\x000eÙTuyÎ\x0007ÖøÊ9L\x001f\x0013B\x0018Kh\x001eÍÄ\x0016\x0014c=Nr»F\x001b/0\x000fV¸±BnCÜ>ÇQÒúÀ²\x000bÙö\x0016²ÔÑ»H\x0015ÆBr°8§AsËZJ1\x0011¥8¤?>`
  
  
  
  
Instances: 1
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p><?=%\x001eúÀ{ÄÂ\x0002ô\x0004ØØmT\x000e\x000e\x001cPÖ@Ló\x001c<C\x000biùo½ý¶2~@LïÒ¥\x0017¨ºº>óÏÒA\x000eé®[·\x001f£9sæ.!!\x000e\x001f>ÈaÛ.±\x0004w¼ù&[Bo0A¦ËhíÎ®NJIIUHLLD\x000ceFÚñãÇu·CH\x001fÌk\x0016¯µü¢p*LAæu£ÌHC,Äkd^''O\x000eñ\x001a,TêCó¥\x0017é¶µùn3ë \x0006×õVþ¡ã\x0012b©¾º£\x001b§Äus?Ù;:»i×ÃÔÐÊ+\x000fU\x0003\x0002\x00142êëkc\x0012?hßxÅ];wÒêU«8ìoå2^}åeZ°p!»1LHÕrpýè? \x000b\x0017.È\x0013\x000e±\x0005táü9¶Þ¦ÔÔ4Ú¹k·\x0010×ÅK(È\x001aD?ÿùÏd|ñçe&Æ\x0016v^xÃ\x0018)úVýß\x0007ù@Ff¤ie xÝß6Ä"âumC¼fc2-g²d^k,Gr.þA~/ËHFï6³\x000eGkÿ
\x000b&|°uÔÓÇ¦ïÀ\x0004GàÔñ3BÇ¦µ\x0017*5@Ø\x0007ëGÁÛÎÂ*zì±Ç$»öêÕ+²=,¯ULN],6ÂÒINJ\x0016\x0017ìC\x001fþ\x0008UTTRNN.½úÚkbgRB½\x001dVºnº\x001d;"£gY<&\x0013cæævjmï\x0018r°Àè4£Éîâõ\x0005ýâµ%$HÉ¼îí!§\x001dúÊâ</p><p>ò,â50YÈÈU©ï-Ç(''GæÊûÝnÌdaÑ¯¶®Ââ"éZY%õv÷¨\x0016®\+£ÚÚ&&HjæÕ'3W¸(¹$Î9d	\x001a´¿ýûöÓ}÷ßG\x001fÿøÇiÖÌYTßÐHqññBª]l\x0011õðþá~Ý~Ûí¬\x001bâ\x0003ì\x000co7C²a´qÃFÊÌÌ¢\x0002^\x0005Ñ¤=-Ã.vÛ6nÚDóç/ µk×¹ÈÐÄØ!"<Ú9ø`óQ\x000fé\x000fFúf\x0019m\x001b°¾yÝÕ£\x0007\x0010¯[Z[¤çµ_´Z¹
ñ\x0017´	ÝÃÈ\x001dE3J}\x0008ºÞ*õ$;ÂB±úâ^\x000bHD9ÐB­,\x000cÇP]u=ÍKOoòr²¨É§Wå+\x0017ÒÞÝ\x0007éÖ;6¹ZBôô¶²Xx3yÓ</p><p>XV²\x0015bÛÏ|ö³2.æG>$åü·¹¥¾ü¯RKsl?»p\x000e\x0015Î#½ß|óu!\x001d4ÒÂ~öîÙK\x000b\x0016,¤g}\x0012\x0013\x0013i\x0005\x000bÛ&Æ\x001e8öúx1\x0005Íà$k£ÉØn(\x001dAn"^«rL\,Õt·¹z^ËtY\x0011¯ÃE¼ÎÌÌ4¸6Ë\x0001Ñ×çõA=½È!ú¾\x000f K\x0006ÿ%®UlóúôÔ¶WhóºU@­\x001d\x001d\x0014@I\x000e4K?L7Þ´\x0012c¢EK²Û{Ø*ZÈ.$Z\x000c&Ê\x0014^¹\x0000ph~¾Òj$;;[þ\x0016\x0014Ìp=\x0010àz}\x001cPsçÎa1{«e	\x0008\x000cì¤ÍüÇ2£hã\x0004ä	UT5Q\x0002ôÁÁÆ¿ó¡ÌH32°qÀ4\x0016¯KK´Jý\x0000É¼®­¯hqO·"^ç³«?Äk`2\x001cÑñ\x000fÈHF²xed±D¾'Ç\x0006.gëæ4¿ò''ÆÓý÷ßFï²PÝÓÖÍ.\x0013GÖ\x0002B÷¼ç&\x000c\x0017Ú\x0001Iôõ³ùü\x0001\x001aNLËÓÈó6¢º¿1W?QD4~@À"6:ã!=\x000f$¦EZý\x00019eåååºÛ¹×h\x001b¢e^;ÕÌëzÖ{ÖÔ L®`Ë(!>þ<M"L£ZböÈ1\x0002ã{ÝÀ@²£¿Ä³  |Ðð_§ë¤ÏHI¤\x0007ï»Ú8j\x0006\x0002\x0008\x0008Ü"­\x0015¿\x0014*²È\x001d\x0019öi¶V¢ÈÄÔDTd\x0018
\x0007F3¯Òf\x0016Ð2¯_ÿ·\x0007øLOI¥ÆæFú56*´\x0008&¯µ«ÖLøJ}wL\x0006\x0001{V\x001cè-¬o´Í¬¿ä3ÅÊ>öC¢ý¸\x0003\x0004Z´¸¸h\x000e\x0006¹l\x001f#mÝ\x0001\x0014\x0011úi</p><p>\x000cÊ&\x0013&<13ÒÈÈÈþ¶!jæ5$V\x0016Ö\x0013ââÄEs².ZSSÃ\x0004\x001a%=¯CCC'MX\x001f\x000cdë/ÙÑHæµ6³!¡KY;ºÃù\x001dÊ´X/p8í|0tS-¢Ã?OÁf»Y\x0013!âµ\x0019i\x001cýBÊ\x001e \x0017iî:ÄkjqE³\x0005­(1.^iÌûÓz^ggfv1YMª6\x0012\x0013ÝMsUêûj\x001b¢W©ïp\x0018k3\x000b³'<ò=l}e2!½ÊÏ©l{tyt2	Ù\x001ddq&s´m#\x0005/áûCÈ	oPf¤é¯óh3k¤çµæ¢imC´Ìkâ×X±h	WUòkÚ%M\x0004ûLáHkzzz\x0015[f540ÑÉHÄ \x0008¶ø!¼A¯³#f¤éµuGHÈ\x0012\x0016\x001eç²kWIö¾*iÊo	\x000c§ÐTþí92f	"\x0013&ü\x0001\x0016JpP°îv¯\ü1=h3Ò4ñúì\x0019%Ù\x0011y\x0006sÐ6DíaLn\x0000âujrò¤rÑNFµ6³¾Âúºâ5ÚÌZæÂê±Zóøâ=\oÂ?À£2"^\x001f:h¬^ënª×\x000béõªx\x001ddUÄk©I#ª­Q\x000c¡ð\x0008Ú°~ý.dè´õU©o¤Í¬ÝG¥¾1DdbhJ}26#ÍH²£ÖP_\x0013¯ë\x001bêäþì\x001cE¼Õô"»´Eæ5ÄëØèØIQ©ïNFQ\x001c;Üz4ÀiòqÑ\x0019i\x0007
XF¨GÓ¢rJÛ\x0010%w	×µ
õ	"\x0002!ÕÖÖ(×Ym\x001c}»@\x000c\x0013\ú¾ÈhÃ
~wà¯Í¬	\x0013c\x0001eF1ñúôiý`&^#3@¼æ×X¹p	UTWJG¶Ö6êëíc½(Åë´ºÉ&^\x0003\x0013rñ\x000fÜ4_mCô¦Ç*\x001dFFNG'9»KÈÙy\x001c¼¸ØjÉ[Í	\x0013Þ0Ú3Ò´2\x0016Ivt¤IÛú\x0006)u×ìÒe¤¤êwöÈ\x0002¶«Rßx\x0008¡Ìë@c|ëè­ {ë^</p><p>ì½J\x0016{\x001bñáßqX\x001fO·&#æ&</p><p>\x000cC&LøÑ\x0019iF&\x0000HkâW¶¤rfÌ g_zAîïf7/=9\x001a\x001a%á±¥I©NÌëuk'M¥¾;&2\x0019-BH\x001f¾µÍKg#z\x0011~$=Ùéè&góëD'(·µ\x0004rHÖ\x001a3@»v:Z¨·þq²Dm&gì-dÂ7\x000ceFZQ¾¾\x000cñ\x001an\x001aþ¢lgR)âu{+%ÆÅQ}c½ä\x0018ÕÔTST\x0004Äë¬I)^\x0003\x0013ÙMÛ\x000c½ÈWH_/¿ÈwÙ~8\x001dÔWÿ\x0007</p><p>ì:JÁ\x0018c­Mõ\x0010½qHP\x000c9ZvP_×¤´M\x0003pØæ4­8V²¯\x0003,ÔÙ¥$þj×ñLFÒÿG$-,|ò×ÀD%#×X"_×#i3\x000b8¼ßò­\x0014fo¢@«2\x0013£ò\x0019¾¼Bn¬Ä\x000f\x0006&\x0010Õ<Ã\x0007@\x00170á	Å\x0012×¯ÔËe¤\x000c\x0004ÍÔ\x0000\x001cîâ5ÊAV°x]ÍÑ³ªò</p><p>j¬W\x0012'Ãø|¬â50QÝ´ÍøÇ_¥¾6³>ûÉ /£î\x0019</p><p>	ld«G)ë@1méåR:}ø4uS\x0017Y\x001c\x0016 å«VPRr"`¡`k õµ\x001e kì\x00162aÂ\x001dFÅkDÑ|EÝâX,¨8\x0007mXKGOªÞ\x0017z\x0018\x0015Ì¤W_zöíÙKÑ¬ÆDÇ%5YÅk`¢ZF´J}o?Úüùóu+õmv?Å\x001d\x0007ÉÚsW\x0018u"HW\x000f½þâëtéòEZ±i\x0019Ýzÿító=·RJB*½ü÷¨¦ª¡	\x000câèF\x0017&9ðM\x000c\x0019iF+õ!SÀES\x001aªå»öwÛmH§Ob-BÂB$ \x0013ÍÔd\x0015¯j\x0019¹Æ\x0012yk3[PP »\x0003zÞ\x0008C\¬æ\x001d\x0014¤6RC.Òk/¾Fs\x0016\x0016ÒìÂYä.4-]»¢Sbè­×wÐÃ~P±øaKOÔ¬Å$$\x0013</p><p>2#ÍH\x0003~Ö #XF\x0010¯»z\x0014i\x0000âuwo\x000fEGFQ¯­R¥§º½·\x000fmf'­x
LÄ³ÉU©?\x0016mfíûyõRòðC\x001fÞsò²óhöBòT¼qà\x0014p8ÕÁVVsê.è@.\x0000
\x0015fúåÔÑ\x0019iX`ÌHËåZä:\Óc)6**8z6\x0017eÌÐ[³vL ÎÎÌ´â50\x0011ÉÈU©ïK¼\x001eIÙ¾ö\x001cñ\x0008ëímí2\x001ahÑê\x0005Ò</p><p>âu?®ss³¨±¶Åõ\x0008ãÁé\x0006 \x001bv\x0012[[[+\x0016\x0015®_¹zN\x0019¨G21ù`tFZkk+\x0015k~ %;*×ù.ñ:+'V.ZB/¿õ&m¹éFZ½n
½³ómÊHK£eK\x0016?3YÅk`"n¥¾nÛ\x0010\x001fmf¶F</p><p>¶)¤\x0002B9u¤,]"îÖ¾·öRé%¥\x00171ùÊ¶ÉÆf0ØÈ\x001a\x0014ÂÏíw\x0017¥G\x0012\x000e~aÞçþð\x0007\x0019¬\x0008\x001dÝ\x0002þ÷W¿ýutvÐ»ï¾C¹yy®×\x0018kà5Ð_Ùn·VÙ\x0018\x0003ë\x0011ñÚ¨^¤EÒ$ózÑ|*¹V,·!Vc\x0012ÈU«éÝûiÏþ}\x001cÁ³R~n\x000e=óâÓ®m;&"\x0019-òW©6³zðÙf¶û2\x0013»\x0001â(..¥Ì¼\x000c\x0002ãäÎÌ§ä,u\x0007ÿ=#\x000f® Ågoi£þþ4Î Hþæ\x0006÷5ÂªWÃáÖ>~ßùË_è±Çþ,</p><p>i	óÓbcâø èÈ·vÈ4YàìÙstâDk\x0006\x001aÞy{{\x001b?^)â%n#ñ³©Qé[Û(\x0014+?'Ve*ÅhCâ\x001dÿíå×>vì¨çÞ}û\x0006ìß$§Ñ:H£\x0003\x001bá¦áwÄï*â5ææ%'%\x0011Ðp¾>oölôÈ¡cEÇéÂ¥\x000b¸{ÒêEÀD\x0014°7û+½á\x001bôï³RßÑ]IVWb#ûø]!2\x000c¾yFn+­\x00082òr¨§»ÂÂC¨¾¦R\x0012]Ïs\x0004¦R )÷\x0017/§¹sæÐSÃ²QTÇ.ZfV\x0016½ôÒKÔÕÕÍ_\x0012\x0016\x0010Õâ%ùþ\x0017)/7\x000e\x001f>ÂÑÁ\x0018éiqÖmì>~ý\x001b_¡Àç¿ðEú¯ÿü\x000fÄÊü´õë7ÐO~üC\x00163s)÷¢è\x0004?7\x001eýèGéÅ\x0017^ k×®±Å·V¯^-û«ªªb\x000bíWâúÂÅÝ³gD_/_F¼}	ÍU@	dbè\x0018Ê4#×ð</p><p> `kâ5©\x0016\x0017\x000f@Âb¿XdÐf\x0016¦§xz\x0017MbL4Ë(t*õõ,#ßmfùNG\x0007ÿÀý\x001f¹ÇÖÝ/\x0012:\x0015«¢­¥^ýû«ôæó¯S]y\x001dÕVUS\x000c\x0013EP\x0006à°wSPä|ò,ÅK\x001eç\x0003
=¹\x000f\x001d<D÷Þ{/ÅÆÅÒR&íÛ·ËAÕ××K×¯QYy)¹DJ«5P\x0006=¦¤¤Ê¾JJ´Ðç>ÿ9)DÜ-7Òü\x0005\x000b¨Éãô©BLïÿûäó¾ç=wÑÅ\x0017Ùª¥W_}Uº\x0019DFF°Åu.ñý]]LZK¿øÅÏyµí ×_{Iªþßÿû\x000fÖÍJi\x001f»\x000fiÞáÀ©àCÅhÏHÓ2¯AHJæu¿x­
j+£àIDî¢IFF"^û«Ô×MvôÙfD\x001bðg²PscReg{'½õüÛ4oé<ºï÷QÆtÚµã\x001dZµqUCtLa\x0018<\x0004\x0000:\x0017DFhB]\x001cù@í\x000bÏ¿@sçÎW·Ýz+Í;ÉÌN7Þx£XF\x0018O\x001d\x001e\x0011A·òcek	'\x0002ø\x0000\x00042{ö,2\x001b\x0016\x001eÆÖÎóTQYN\x0007\x000f\x001e \x0019\x001cÝ»À\x0016Ö{Þó\x001ev\x000bÛø\x000eÐ¾ýûeµ\x0008\x0013kèõ7Þ ø¸\x0004ºpþ\x0002Í.-\x0016Úê5kp\x001fÕ\x0014sÙ{ù;5\x0004é-[¼¦QL'´óïßÔÜFCô¼6 \x0017¡Å¬\x0019i^\x0004w\x001eú\x0018y\x000e@¼v'¢F\x0001bÐ°ßâÔz\x00110ÑÈÈo¥>"\x000c*õ}D5,H\x0016\x001aÕ(\x0018ÿ¨óç/¤#ï\x001cvYRMõ­´pÃ"ÖrÙì\x000e¤]¯¿M3ógQ|r¼<\x000e«È\x0019±÷3x \x001fVÇ{ï»OÄÄ}ìãôÎîÝtßý÷STt\x000cÝzÛíôÄ\x0013O°eGK-çÚ)1×#Øz9Ì\x001aÂ\x000b/¾Hk×­W£1\x0016±°vïÚM?úñèÁ\x0007ßGuuuB°õuõ?#ªkj(+;u¦\x0013ÊQ\x0014|_3Ù}Û·w\x0015H¦²ª£wW%5áÊ+Ä'Z\x0013-\´6lÜ(A\x0016Ö¸\x001eþà\x0007ÙªºD§NOªA\x0012c`\x000e4tò±g\x001bÒóf^ïçEÃ\x00084ËH"i3òx1Qº;Fó±Å\x000cõhÈkRÛ$%¢ÛcÀ¤Ö¦\x0019¸Rßî§mH`X&9º\x000eS`p¬¬0s\x0016Ï¦sÇÎÒá]\x0007iÁE,õEetôÝ£L×.rY\x000c8FÒ Y
îom/_.b2¬Õ«×¸î¿í¶Ûè[nqeó[ß\x0012r\x0019þéÏ|V\Re\x001c
¿F_\x001cpúô§):*]½8zähjà\x0003\x000fùUIÉô<*	qË-ï	º\x0010z;54ÔsÄî]Z¾bvgG'??rT]ê½ï½BCèñÇ \x000f>ü\x0010ÐéS§%Úf$00ÕÐÂës\x000fÿ\x001eAAÆO
£3Ò\x000e\x001f>LF \x0011"i9\x0005ùôì/(â5/( (	XHql?\x0019ñ¡dÑ(c±¿J}Cmfý=\x0018</p><p>7éIÒJ\x0019\x0003øîøÀ­lÅ¼KÛÿö\x001cE\x0004KkÏÀPZ°r\x0001\x001f\x00089®§Ú{Éô>>êB}¿¶Óý¯û¨jeR­öxµ?\x0012Ï\x0006¸^3gÍ¢\x001c\x0016§\x0015sÜ)Ö\x000f.\x001a233åorr</p><p>Ý}÷=®×HLL`÷®Ðuû\x0006v\x0007ñwóæ-´iÓf!ÃÏ|î³\x0010</p><p></p><p>ÖÕ
\x001b¥\x0006</p><p>'ßtöÒðÑkëZ(4,"ÂO\x001dÊ´'ô=)\x0010\x0011\x0016d\\x0010µ¨·"^»ô,§ª\x0017)\x0012C,/dÛ¶n3Éh\x0014!mf\x0011I@8Ó\x001bFÜf6}ñp&$[%»a \x001dÁ?ämwÝÎ.K\x001bõuØ(8"­HÉ\x0015ÒøÄÖ×IöÐ5d
\x0003\x0019í\x0019\x001bËQ®\x001ezØ\x0015×»Îã\x00045hd\x00087RÛ\x0016Vã7Íå"¶8zÅ½O\x001cotF\x001aéc\x00062¯qüãw\x0013-(>]ôz¹?Åkttt8Ôh\x001a\x001f\x001fÐ\x00021°1ÈjÝES\x0000\x0013I3\x00121\x0008e Ã\x001eÛ§ÛfÖAø{xÿ=\x0003²­\x0011a\x0003	$¥'HT"nÒ&Æ!\x0016Q_è"</p><p>LºÆ\x0000XkÚh\x001a\x0013ã°Ð`&¢¨!G\x0014E/</p><p>Ðo\x001bLüúúzÝí4ñ\x001a\x0011Ô\Ö\x00075ñ:\x001bâµÃ!5 «Æ\x0006ÅE\x001aâ50Èh¿JýììlÊeíÃ\x001fD/Ò\x000b±Z\x0013ÉòAêéná\x001f×w}\x0019\x001eCó¾øÛ)(\x0011®Y\x0014;Õ1Ì\x0006	ëx-=ÜÅkÖ\x000fA|° )"\x0001\x0016kÎkæ.\x0002P¿J}=«\x0008øl\x0004èe\x001döi²Q4ÙzÈÞ×ÆÏíâK§\ïc·¬;h&Ö§È\x001a¢\L\x000cÆPf¤
`iâµy$9F\x0008\x0002¬­©ícc¢(À\x001aPLS\x0000\x0013E3Ò­Ô×Óê@YBrR?ÏfX1\x0013R\x0005ÿÀdq\x0006³\x0014Ïe³\x001f\x001e?Ì=N0Ò|\x001f\x001a\x0019i "èx¸x×®dGä¹9dGÅëæ© ^\x0003\x0013\úhà
z´
\x0018¢má\x001f;d\x0006\x0005\x0014`\x000e\x000801\x0014(3Òµ5y
Ï\x0000V\x0011Ò5\x0014ñZqÑRÄ*\x0012\x0017/\x0008í7s$
Q4\x0016¯§\x0004\x0011\x0001\x0013ÅÿX¬W©¯ìh7ï\x001d&\x0011\x0018:f^£TÇÈ4M¼Fä-·\x0000âõY¹Åz)^K\x001d1	D-°\x000e\x000f\x000f2â50QÈh¿Jý\x0005\x000b\x0016¬Í¬	\x0013c\x0000§Á\x0019i\x0007\x000e\x001c #Ðj\x0015µ\x001eFx\x0008¯Cc\x0015ÍHË/Jâ50a,#Å±È4ÖÒfÖñÈjdù;qÂñ\x0002ËHkÀ?@¼Nê/Å¥¶Zé6Äk`"hF¹¸À2\x001av¥¾6³Þ #Ø</p><p>\x000bà\x0015ÈÙÑ©äÀäE;i^¹nÂ\x0018ÎHì`dF\x001a5\x0002* j\x0016WJr¿xíT5£\x000e´\x0015¡©%^\x0003\x0013D\x000ceªfoØ²eß\x001døk3ëÞ\x001e</p><p>(¹FÄ~w@g+@2CÉ^0\x0019ä4Ûð\x0003DµôÅk´9«j?þ\x0010\x0011¡\x0014_Ò³³dH# ×NpÝÓÓ-ÓT\x0013¯@F\x0011ÊôU©\x000f\x0018ªÔ×Y¥¤\x0003bE\x0005YOdF²"å,Ñ1\x0003(ÇÂ¥è\x00189*ÊÉ¾b\x00059
dÖP*õõ\x000f\x0010Ñ\x0019i\x0000Ò\x0000StîLÛ\x0010%ïT\x001dÕÌk×|ðî¦) \x0019-iê«RÓ¦Mº;6³~Ü+<\x0012pæ$YO$KD$_"Èâh\x0010ZMH¤\x0000^y\x0002NN©EÇÄ\x0018ÀÈ4#ùE{¥>z^»2¯cbD¸UdÇÆF%¿\x0008â5\x0013Ô:H'\x0002\x0019¸Rßá§ÊS!¢\x0013\x0014XQM\x0016þaI#!¸eL~v¼®:\x000fÍõ\x001c6\x0003ÊÊÉÒÔH&Lxb(3ÒÐ»Ê\x0008´ÌktLJsëy¤jFJ²c[æµÝj7Ý´Q«Rß×X¢uëÖùÝ\x0001Ìå\x0000?Ã\x0014\x0003JKÈZVÁñÑþÔ\x0006ÖÎ\x001d;J
ì¶Á`ZÈ¯ïÚ\x0006Ä\x0015xæ4Ù7n\x0012\x0013Ù	
Cvä¨¾x­å\x0017!£d^kâu²+¿Ô¸íªxPÌâu1M!L\x00042J}rÞ 7=\x0016mf}¹h\x0001Ýl\x0015fºSîÀx¢½{éâÉ\x0013T¸t)\x0015.[.w×\x0014Ó§¢MwßCyóæ*ý°Øe«¯:®dj0¡ÂÎ¤\x0010\x0012¬L@>m ¦æ¢!S[Äkµm\x0008ô"\x001cv¶Ôë.^ó!:e\x001d5\o2Ú¤µËð&ò¨Í,\x0013O@Ñ	²÷·-zg7UÓ]~B\x0010JUÝ»Ä´4JÊÊ¢WþügJËË¥Ð0åà@ëY\x000b\x001fPÎhÿ	&¦\x0017\x0006ÛÌîÛ·@##h¦îâµô0²;aþ5æ>	ßÅ\x00135¯·fäJv\x001cI¥¾7»ÈÒÙ.B´%X\x0019MTS^F%\x0017/Ò\x001bi×öç¨¦¬TîïâÕèð7%7káBºâ¶9Ñ´¥Lpä\x0018\x0019ÈG3y­å\x0018)âõ\x0002x¬Tê;ÔÐ¾ÖÃ()!~Je^k¸d$ú°;9\x0016ðÕ4$ðò%,9®Ûû_{6Þs¯øä©l\x0005u¶*$\x0003\x0017­I«îÊ\x0015Ê;*¯^í\x0017³ >Úh­#,f	Ê´Ñ6³ØÎô\x0000d`cZK¼ÆÔ\x000fZ\x0006+¾F\x0015¯a\x0019Ù¬6Ó2\x001aEÿ¥õ0ò\x0006Cmf½\x001d\x0018HÓ¯­gÝGq\x0001\x001bjkdXc\x001c¯4a,\x0016¶3ùäÍ_ Å¥¦Rlb"ÍY³B¼0
4A\x001c£¼4fÇ+^¼t~øÃ\x001fÒoýkÃ-b\x0002\x00104ª¶qP·¶ÖÙDÌ¹3à¢! cd`£\x0016EÓ2¯ÝÅk»:È©6UkR£»q1ÑÅÛ·no¦)ëJFZ¥¾¯fCmf½>Koÿ>¯=K3\x0016.\x0010ß\x001b+NÎ¹êÐ§m\x0014ìW~/Ý¼2GF¹´$­Q÷ÏÛþÏO"³Ë0BºÉ­µµE\x001ahaè¢Ö\x001c«¼¼T\x0006&¶·µòÖª¥Vû\x0017l\x0002d4µÝeÁÊ\x000bßqþüyªàhßqú\x0019mÌebìa\x001fÂ´²²2Ýí4½\x0008Q2×ZÏëLuF6	¤iL{ILHâ5p=\x0005l¿âõ¼yót+õa\x0019y;0\x0002Ú;È¢iPL\x001c
L@säft|<µÔ7°Ûö*E0ñ\x0014._Fñ2ÉÕIå¬)eÎå"#èQ\x000e5ì:\x0010N1­\x001f;F<ò\x0008EÐ÷¾÷];w\x000e½üòô­o}þé\x001f¿AóæÏ£K\x0017/Ñ,ÞçIàýòW¿¡g}Z""8P\x0017.XHØ|ð\x0007)'7¶mÛ&¹$\x001fxè!Ñ$f\x0016\x0016Ò_þò8­_·LL\x000c\x0018f4Ù\x0011×Nud5\x0004ë³ªxé±bq^d§ÆzµZ,»h</p><p>âºZFþò0P\x000f¾ÚÌ:»»D|v\x0007È©_\x000b!ü\x000bÇQ\x0004LUñ5ziëV¶úä`(e×+[K%@¢\x0019~øÀÁ|Uìÿú-äÙè\x0007ßÿ>\x001d:|-[ÂÄô!yìêË4kölúÊWþÚÚÛè³ý¬®¶Ùzi÷î]t×]wQFF\x0006­2ïþ\x000c[n¿ûÝïÄ4GÓöRÖ±yö\x0019±°*Ê+)3+LL\x000c\x0018vÀ \x0019!­\x0005\x001e&^\x0014Èýx­,¸(\x0003©­Qz\x0018%±eÄká,\x000f¸^d¿I #i3«|(õáÕ%u¡ªâb:ÈQ³,&[\x001f~\x0016®]G·>ô°ÌÉ*cñúôþ\x0003Ã\x0016L°:ÃÌÉ.\x0013$à%áñÅ\x0017_¤\x0017/ÐºµëÙ|îaÁ±ÒÒÓé\x0002ßfÇ\x0011Ö \x0016Ì1k\x001c\x0011|^¬\x0018,\x0003\x0010³Ì@Æ1Lz'O\x0014Q\x001dò \x001f°ét(.]\x0017WÑÄÈ0DÖÑ¦×Ø¯×©)¢\x0013âxAZ2=Ö!n³ÚÃ\x00085iSQ¼\x0006®\x0017\x0019¹ÄëáêE¨Ô÷\x0015Érðiéë'¹ü\x0005\x000bèä=\x001cº_DsW®T\x000cË\x000eøkn»ZÙO¿rú\x0014-A\x001dæÞ±¦cÏÊñºÿuì6½ðüvz]¨/|á\x000b´jÕ*zægé¯ý\x000b=úèÇD9s\x0016»b%RÎÒÝÝÃ\x0007W,UWUQAÁL9¸Ð\x0006"\x000f¬Ë.SVf¾^²x1¥1qv°6ÆdÖÀæz\x0012ÙA`T\x0005¤¾qèúïPf¤2ì\x0008+\x000br×V%2Y\x0013¯I!6¶Ñ©Åkl\x0017\x001b\x0013]4\x0015Åkàz\x001då?åUáËpU*YÏñV ëÔ*ØÝÓ§tÚó&`³x\x001dôúkdILrÝ·cÛßåu6°è\x000c­\x0008èêê¤GÑe&¢[X§RKF\x001d\x001dd1\x001cùù^M0Xé0q i¯\x000f\x0002A\x000foX?\x0010\x001aA4°z`\x0001\x0005ñý\x0010¶ÃY(ïîê¢øx*fs<++KêYìîÙ»._¾LwÞq\x00075³É\x001e\x001açwI9:]\x0018=ôõ±ÛÃ\x0016Hb|\x001c[!!Cz^hH.!!4¯7V\x000b@£}\x001c\x0003X[9Ð±â
ôÌ¶§iÝõ´\x00178Ö8`a¿øÜó"^oZ·êù§ÿ¼í^¸^\x0002¶Têõ½\x0011OÄk«÷|'»9¤eX«þý¦ûî£ÝÛ·Óößü¢XÄ¶\x0006\x0005S\x0017ë9élÜñ¡\x000fS\x0018Z8@'â\x0003Ãö|¿/_P!Á\x0000×u@DÃÔñÈîc«\x0013\x0012\x0013å¯b\x0013åä(V×Ü¹Jd\x000f=¶l¹\x0001{`/Ci\x0000gÄ	ÐÈj
¦\x000e¶`BFFg¤íÝ»@k\x001bó )5J®\x0015Ëí,ªi-fáN65j\x0003\x001b§®x
\/2\x001aqY±VòQ\x001fÄ?¢õ\x001f+G&,j]\x001aæÛßôÞ\x00078*QOm|	_Î\x0004\x0011É¾¹õ¸°kæd1Û±fÍ¸7W\x001b<L\x0011ZÛ:Ò\x000bu0\x0002Y×ÈØ´}C\x0006Âx½lãZz5M I\x0015¯áÎ#õ£Ym\x001b2Åkàzn¥¾xíPû\x000fûÅg+GÇ`éXÔIµ8âäâK#ê%\x0007¿\x001fûº5¢9\x0003C¦&@BpÏÓR\x0013
w\x0007Uà4Ô¿\x0008QÙs\x0006:;B¼\x000eVK\x0014ñ:YÄë\x0018</p><p>	\x000e\x0011\x0017Mt#GÿÀÆ©,^\x0003×CÀ\x0016ñ\x001ab/2Ò\x0013¯¡£øk\x001b\x0002Xøñ¾U«8ÌÏ:O \x001eÉ\x000eÞÞÆ$è1h</p><p>#0ÐJÉIC%"Å</p><p>´\x001af4ó\x001ape^kâuJ²Té;\x001cÚôXe`ãT\x0017¯ëa\x0019I²#\x000e\x0006on\x001az»èUêÛíNÝ6³jÛúdå°9Áïf\x000b	ÙÓHDÈß[\x001c3òÈ#Õ$¢)\x000eÅ \x001eº\x000bî¶!ú\x0004våÊ\x0015	VèAëa¤e^\x0017\x0017+ÛI\x001eëÐô";µµ¶I¶>Äk~ïSºýèuqÓ´z´áVêÃ\x0014\x000e</p><p>2öÖ\x0011Ô·f-\x0005ph4 ªZ¬ W&Gb<_1ÊÖ$!\x0013~á\x001e´ð\x0007£mC\x0010ÈÔà\x0012¯¯Éý\x0010¯Z4å¢Õ£%ñ±Ê÷OÉ2\x0010
×\x0010þ\x0006¡xÃHÛÌz\x0005»`øDr$$
¼_ÛID&üÀ5#ÍAeÄE\x0003`\x0019y\x0015¯U\x0017Í!.kF\x0004Z¦¶e4ÞÑfüãO¼^¿Þ\x001d^Y¿Ð¢fÚÅ	\x0003\x0018Ê´£Gênã_,ây\x001d-âu°¢\x0015!û\x001a
ÕÔ\x000e¨h\x001bòô\x0013Oï¢)ñ&#W¥þpÃú}6»¡Ú \x0013&F\x000b\x0008±[
¸h\x0010¯ÌH\x001bÔ6ÄM¼v8\x001cýÓ@0¨Q\x0011¯#ÂÃ¦ü¸ñ&#W¥¾·2ììlÝÌUmfM\x0018#H\x0003~«±\x0019i¾ÊÜ¡Õ£A¼NËbñºD-ÕÈHm\x001b\x0002"µ\x0015#=¯\x001d»ic¼5#¿úFÛÌ\x001aé'3ðI½\x0014ÐÛêHr\x0004qDÍ\x001anN5a\x0018 \x0006#9F\x000f\x001f&#@\x0011,\x0000Ý49­¿ç5º3 \x000eMk¦ÖÖ¦L\x0002\x0011ñÚ\x00190å-£ñ$#\x0014~ù­Ô×Ó\x0000£J\x0005Ñ¶r¢ódé¨&­,Xu¬ì3\x0019ÙÓ\x0017ñ;B\x0012ÓÊ2á\x001bFg¤\x0001'N\x0018\x000bvimfÑÁsù¦uôÌóÛå6¢\x001djn\x0011Âû®¶!LF,1d4Ø`\x0019Á·ö\x0006ÝdG_mf=`én¥²w*È\x0019\x001cÉ|\x0013,õj\x001aYì½d½²QçÈ1ãvr\x0006\x001a¯O21½`tF\x001aÜ³#Gôg¤4ñ\x001a\x001eBDtØ\x0010¯ÙjG«\x0019§:+Mk\x001bHÚ¶­ÛLÍh\x0014±\x0018?\x0002*Û\x001bÖÇì(]2ê(%ë¹mdéi!gX<Û×Áý=­5à¾ðD²t6RÀµ×Ä2aÂ\x001bì\x0006Û@>uJzlZE\x0019Õø #\x0000zì¨èFvÉ¼\x000egò</p><p>²ZwÑ4ÀxÑ&­Rß6þ|ý6³6Uª£\x0002/½ÉVPB8D\x0003òC\x0006EáB¢) ¹,
gÈ	o\x0019i\x0006,##@\x0000-ó\x001aÖPÎ|*..Ûì(!}EÀnlRÄëX\x000eé;-S;ÙQÃxºi~+õ/_®»\x0003T0[}ð§¥§\x0002®¼Eà(%ÔÛÛC¥\x0017NÓÕ«g¨¯Ó&ús,£ìÜY.\x0001Û\x0019@\x0001åûÈ8×\x0014µM\x000cä\x0018\x0019\x0006¶
Ñô¢®®.!#­¨\x0016ú\x000e5Ñ\x0011dÔÎ\x00160%g¤yÃxYF®J}_¡O½\x001eF8(,>È\x0002ý­\x0003¯¾N\x0016Õ%\x0005ÔP[E/=õ{*¹vf\x0016.§¥ë·PZF\x0016í~õ\x0019:~hG¿íí6²´U	\x0013î\x0018JÙÃ\x0006ô"@+e;#Õ\x001eFèîèP[Ì:D¼V3¯c¢(À\x001aPLÓ\x0000ãe\x0019¹*õµRO\x0018©Ô÷\x0015Õ\x0008hºÄKM\x0003/;	r»±®Þ}õyZ½åvÊÈ)PkàO3æ-¤§¶þ2sæQbJºlïdkÊÒ|mèt2aBÑ\x0019i°ö\x001f×Ý\x000eV\x0011~±_\x0011¯£\x0014ñ\x001aVQP\x0010/ÔlÉK,oÛÔ/^7O\x0007ñ\x001a\x00187ËÈ_¥> 7=ÖfsøðÝÙ¹ª8L\x0014\x001a§ng£×{ÖÝr\x0017EÐéc{e\x001bd³^=[D!¡´þÖ÷Ðwß6#\x0002k(Q_»Ùmb\x0000ÎHC}Y¸è\x000fÄë\x0018E?B©Øþ¢9ÌëºÚZ¢±x=-\x0008\x0018/2Zä¯R_¯\x001aôx¯&sw=\x0013IË=;uh/\x0015ÌYBåèWSÛZ-IG\x000eì¢gÿü\x000bÊÍ*¤ºj\x001c<ýïÅáìä÷æÃ
$³%þtÑ\x0019i{öì!#ÐÚÌjz&^c`£Ã®ÌGÃù¡µ A3µé"^\x0003ãå¦möW©o¤Í¬¯Ñ2\x0001uçx©ÑFù8éÜ¹\x0003ôþG¿FõuåTX¸\x0002¥üW\x001c&«û\x001fù\x001c]»t¬Áò#\x000f¨µX$SÒ+í¬'ADêþ7Ý$]øF\x0003Ð\x0005Hßði\x000eÏ4³\x0012Æ\x000eFg¤\x001d:t@«ISô¢~ñ:Ãú*jw\x001bc=Äk`<,£ÍøÇ_\x0019ÈÚµkýîÀ¡5 \x001e\x0004¶Ú*9¯\x0010D{K3Â\x0011\x0014ÄqáÔ1zîÉ_Q]U\x001c\x0000G÷¼E¯<ûGÑ­``\x0005Xû5(6-ÖèAV\x001b\x001e}úgdÇ¥K\x0017i/¯¸\x000f
Òaåá:VO\x000c\x0007p%Tj#ªµÛþ¾Ép!/]º$×÷îÝCUUÃ\x0017ÍñV_}íU9°M>"^\x001bm\x001b¢MU,£~ñ:)1Y-U,£Új¥Íìt\x0012¯ñ°\úHâò\x0006½é±¾ÛÌ2ts\x00084LÑë()-SÇVn¼æ4¯dq0C~à¹R|U"eæÏâ÷QCQQñ®½XzZÉæE@g\x0016)eSzöìÙtã7	)îxk\x0007à\x000fäóõ¯~úÓ\x001fK>\x0008¢!\x001fÿø'èùíÏÑµâktóM·R>\x001fpo¾ù¦\x0010Óm·ßA;w¾Mï¾»¾ñoHApZz<·ºªRÓÒ)²	\x000b\x00078\x0006\x0008\x0008©Y9øôîT¹k×NéÕöÂ\x000bTPPàÊì51r\x0018\x0006b9sF?OM\x000bécatÏ¼NNI¡à\x0010EÂH\x000clTGYO#ñ\x001a\x0018\x000fËÈo¥þÚÌ:9ÂæèsÝ´9»]"w([HÉ©®\x0013:2.</p><p>æ.\x000cðóÇ\x000fQ!\x0013HKÛ3:cÐîA>øä§¨´´¾÷½ï²Å\x0015LOþí¯´å\x001b©¼¬T&À^¹|>÷¹ÏÒQ\x000eívvvÐöç·Ó\x001dL<0µ/^¸(dsöÜ9Þî\x0012\x001d?^D3\x000bfï{æé§©\x000fÊï|çßè©§¢¿ÿýI\x0019Ô÷ÿï?è?ü>ß÷¤èoû[úüN:)ï	ß\x0002zßÀª£j&ÄÈû@)\x0001êj8,ë\x0015åòú\x0016R2q]swµI\x0017¸¯´´Ln\x0007\x0004XLmLèE\x0001úä\x000e!º¢¢Bw;÷×î×29V-Õ²¯\x0011qnâ50\x001ed;ÒJ}HÞ}÷nULD</p><p>ÕÉYí/¦³Ç\x000es\x0014í«ZG[#G>.ÓÌYêë¢(1$áö÷G\x001c¦/~éKB\x0014å¼ïôô\x000c!ÕÛn¿N8I÷Þ{·Dí=\x000eËfÕªÕô·'ÿF\x0016-\x0014«ÜÕ«W(>!A¾÷>ð /îíí£^|n¹å\x0016úèÇ>F×®^¥\x0013'(÷óá\x000f.3y]ºt®^¹"£²Ã#Tñ³»~ö??¥ÌÌ\x000cy¾¢\x0008­êïô_ÿý_2\x000c\x0012äùÜsÏÑsÏ>K­mmBr?øþÓcÞ*½ÿ~úÍo~Mÿñïß£î®\x000e:sö4=õäTÁ$\x0007>xà\x0000íçK_¦#ÎHÛop,f\x0019á\x0018x­õ=ÊÌk\x001cãÒÙQÍ/\x0008vÓ4ÂX\x0011ê;\x0016û«ÔÇðB=ølÊh±# ¨ÿÅ\x0012\x0012©¾©\x001b\x0015»««­2*+»½P/È\x001b/<Ik6ß©4æÇ.ºÉ±¼IÁñqñrB÷;ß¡\x0015ËWPFzºåEEÇä`9Ã\x0007Ôü\x0005¤ñ\x0019\x0005¢/­^½ÉªKJéÙg¡Xôîêì¢T6Ç[(WÈK\x0017/Pn^\x001e»s%2M\x0016VNjj\x001aßîºóNy~Bb\x0012ÅÅÆÑ¹séµ×_sÊ\x001c;zCÉÍtu¬ðð\x0008êä÷së­·QÁÌ\x0002¶ÀÎÒÿý¿ßÒ\x001b¶ÜÄîïljhl ó|?Èù£\x001fý(ÛeÖ¼òÊËìJÞ¤¸L¢Ï=·]^sÇ\x001boÐ³Ï=C\x0007\x000e\x001e S'OPmm
Mf\x000c§¡çPf¤
U¼F\x001aÀÜ\x000bø)ûµdG¥\x0001¿Ã\x0015IÃñÅVì´²ÆZ3\x0012ÿË_¥¾6³¾#\x001a|hdÿ-6«Wo¼Þ|îotÛ\x0003\x001f¢9WÒ\x001cZ½PCu\x0005íÙù\x0012Í3rò\x000b\x0015±\x001aVQh\x000c9cs¼î=\x000fïÿûJbZRäI}á_ÕmÖ¬Ùb%¥¦¦ò\x0001Ô@·ßy\x0007]/½úê+´zÕ*\x0014»hÑ"Ú½{7ÝÀ
l¬~õµ×\x0008Ä·xñ"6Ã\x0003éú#Gê:èË_þ</p><p>mÝú'ÊÈÌ¤Ý»vñþgÒëL\x000cØ\x000f\x0012êºØ\x0005´$Ä³eÔM\x001b7ndòÅï'P¬)¸¹\x0018©\x001d\x001cd÷ù_üBÞ\x0017,¤Åü\x001eà&Þyç]â¢F±ù_U]-'À\x0003\x0007i\x0011?÷Å^\x0012«\x000e® ´'Lê\x000b¹nÝ:þ7\x0011\x0014Z#\x0007\x0013\x0012è~\x001avòäI2\x0002­&
YnA>½sPiÜ¯µ
Áñhw:¥¡\x001a\x0000ñÚnµd4Ø¬W©?²6³\x0016%kº]³ PYÒæ-^Címôô~Aé3r(24êKÉÁ\¸tÝ\x0016Ê)P\x0008Ïe«È6ç\x001eòEÍ"#£ä¢ÝÎÎî'.t¦\x0004\x0012\x0012É¤xùÌgÕmôù/|´-No}ûÛò\x0018ÄxkpìkÞü\x0005*VÎ£>ÊÑÀP±\x0012yL\x001d;J\x000f=üA&©,y}¸SU"Ã½H\x001e\x0012\x0012ÆBû\x001cùqÀc\x0005®baü}\x000f>ÈZÕqº÷{é<\x000bÝ99y,¤ï¤Â9s)>>6lÜÀ$ø\x0018mºe£Ì;w¸w²ö?ünü~\x0011¢ahcg\x000f¿C\x0018cmpF\x001a\x0016)#4-¿\x0008ÇD?Ùý\x0005.\x0005×!y-\x0011Yþí4ñ:)!¡ùé­Ûi\x001aa¬2¿ú8õ*õý·åèCÊb²V"gPªÜ\x0003âZµÝÂETS^Æ$ÐÇ+Q\x0001¥däKÎ\x0016¾·t7=s-;óxÞèdëx¨VÐOtZ\x0006®\x0006\x0014\x000eÏ5Ëu;%Eù\x000cYY</p><p>ÉAw\x0005¥Ì\x000fPöÆQ·/~éË\x00129ÃÉv\x0007\x0006ÜÏ`ÞW~~dø#\x001fÈw±5\x0014\x0017\x001fG\x001füà(6.V¬ììLúÉ"V\x001b²k¶U³uº^}åUÊÌÊ¢e¬á\x001d;v]Ê\x0016Z½f¬³\x000bð\x001d±×ÒÚ1D226#
\x0006Ýí4ñ\x001a¿7\x0016(\x0010
UÜ38¨GM¼æ\x0007¦U\x0004¹æ¯R4ÚÌ:ù\x0007M,$B¾Qò£ã\x0007OJ¥ä4×mõü±t7=a\x001e9Q;qÏ4w\x0012r\x0016ÂÇCÐ{´h¥$Ö~pÑ©ZuÙÒê"5-µ­Uôæ·\x0016-ZÂ:ÓB×\°Ï~ösò!Ò3Y\x0008èî±QK[7¥'Ç\x000eéy2#Íx
Ô\x000842\x0012½hÑ\x0002x¥×ÒÇ#ÆM
ýzÑt\x0013¯±\x0014°u+õG«Í¬={#\x001dQ/4à¹ª/Þ¿!¿¾6r¤/'GÖZÈD4\x0016ÀwÇÂ9\1dÃEÞ²yà×(`\x0001Ñú4OVÀ\x001aohh¡\x0014r\x0018_s]3Ò\x000clkT/Ò\x001aðke xÜßß®6SûY\x001bN×\x001aÆÒ2ÊÅ?#ªÔ7ØfÖ\x0019\x0018Lö;ÈRò\x0016\x00056ór\x0018Õ\x0012H\x000evY\x0002xåA\x001e\x0011õu\x0011E$-óFrF¤Òt\x0005Vé;î¸]®û²¼¦\x0002@(i©ñ\x001fw\x0018lz#4X±øÎÝÉè\x0003xN©uÈQ[£Da\x0019Ù¬6ÓM\x001bElÖ«Ô\x001f6³*ÐÇÚw\x0007Q\x0007»k-WÈÒZC\x0016\x001c(\x0015I!gt>9"ÒÍWR4©\x000e£\x0013`=\x0001Y ÈxZE£×\x001aáC´¶X\x0003\mCC¨·»\x0017A]\x0011°;Úi q1ÑÅÛ¶nk¦i±$#¿úFÛÌZ2#
¥\x0013L8\x0019D\x0019xMdX«UûfI©	\x00030:#
õFf¤iùE\x0008^x\x001d©×ÑBBZ¿kdÌÃHLHÀ:m*õÝ1Ñf¯¾6³\x000e­\cÈÐ'Àã¶	\x0013þ!âµ\x0001küàÁd\x0004È/Âqì\x0012¯Ïxd^;\x001cj¥¾ÚL
=Î]4
1Vd´\x0019ÿ`5ðU\x0006¢×ÃHK\x00052ab¼ ÍH3$^\x001b\x0005\x0019K¼.)ûQ +­Si¨Ö¨¦\x0008$±eÄkç´Ó±"#WæõpÃú6»Ýì¼hb\atF\x001aé#Gên§ä9
lÀ¯µ
ILLR\4ñÕTW['÷£¡Út\x0014¯±"£MZ7¿\x001a\x0019©zú¾ÛÌ0160:#
âõ¹sçt·Ó\x0008\x0010ñÚ-ó:$$ØU­ow*â5\x0002>±1ÑEÛ·nvâ50Vg{îH¬"ÀgY\x0013&Æ\x0008È\x000e02#íÔii½¢\x0007_×(uªî\x0019\x0012\x001e{ÔÌë\x0018%·«¦)Æ\ú#i\x001bâ\x0006ág\x0013\x0013\x000b8â\x0014ÈîÝglFV\x0006"ãy­Tê+-ñWË¼Îâ50\x0016däÒ|­\x001eÃo3kÂÄØÀhYl§\x001e° c{X>¹\x001e×Ud°~ÚÃh:×ÀXÑfº¨ôöEF+V¬ð»\x0003ßmfM\x0018\x001b\x0018\x0006b9:\x0004ñ\x001aA\x0018yÌcËH\x0013¯Q+(zS±Õ°þt\x0016¯±8ãE¼öU©)ýýÁgY\x0013&Æ\x0008Fg¤µ¶¶\x001a\x0016¯µ:7´s4M\x0013¯\x001dNm>VÖ8íÅk`LÜ4âµ±Dv3¬obatF\x001a</p><p>@k¦&dd·Qd´x*}u`#Ú¿ 1\x001eÄkÞtÚZEÀhTê#zà+U^¯\x001e
¢µ&&0ÎH3yí_¤e^C/\x0002_\x0004\x000b©¦ZÕ\x0012ãAPÓ²\x000cDÃhQ.þÉéË2ÒË¼¶ûm3«\x0000\e\x0017\x0013×©D%ÔÈÌÂ\x000f\x0013CÇPf¤\x0019\x0015¯Ý\x001bðçÎÁâµ\x0012±G[`i¾¯æ\x00185õ%Öâ50Ú²®JýáõE¼Ö90¢GÙd9s:û§Àjå°ÊàD<h;-ê¸+@»bq[
Õþ5®Wu{ÜÄÔ¸h\x0006\x001dqL£¯\x001e Sh4ä\x000f¡&m÷o\x0014÷\x000e
Õâq¥{Û§xz\x0017Mc6\x0019-B\x0014
·J}ôo6ÔfVÇw\x0007Ù\x0005\x000fº_éúê$­û«Úý*\x001e¢ _yÜâz¯N\x001a<ÞÚ\x0012À3ÐÔø6YÜZT(\x000fÈ;ö$6·\x0011\x0013&±M\ÀÂ\x000e\x000e26#­¼¼\w;­\x0011"j8\x0017:ºÝÄkjÑÛGô¼Æ\x0002\x001e\x0011\x001e6­­"`Ô-#èE¾Búîý}A¯Í¬?(\x0004`é'\x0011P ÜÈL½æºO</p><p> _0ÙA%5\x000fkÍõÞ¼Xk\x0016µ\x0002\n©¥;rûëÚIjc\x0001ÂXÌH\x0003 ^»2¯ÕfjZ~Qkk+é©)Ó^¼\x0006F6ã\x001f¨¾æ¿ëVêÓÄA?!È¿4\ø³Ö\x001c®ÖÜj{\ÙN±Ö nZÜ¶ÑÞââ±~«KµÖúÍ´ÖBÖ\x000fuè§\x001eÎHÓ2¯ûÅk¥	\x001bÚÈ4F®I pÑx
ÞMÓ\x001c£IFy
_ÙWY½H\x001aDiË\x0014«Góg­é;\x0006\x0003áôâzª×\-d¼J\x001f(;©e5>¬5õ­)ÄFÎ~×SîëwCÝ­µÄ6\x0015¬5â5\x001fCéy
È|½EóûÅk¨Q4\x0010Rm­¢\x0017!Æ\x001ei\x0019ÑèÁU©?Üé±FÄëé\x000cJ\x0012#vAå\x001fwrrºÎéf­9a­)×-r[#2µF¸N\x0013ÊZ¥b5ÐÙ±£³ÃPYx\x0006Úô\x0016M¼~ç7jÏëä$êíîéoÀßØ\x001fIÛ¶uIF4zÈõ×fÖÈ$\x0010d^\x000f©Í¬aÁe­Y\x0006Ü3,\x000cÅZ\x000cê/ö\x00160PßµFj$Ô2ÀZóí\x000e­÷µÑ\x0019i°b0\\x000fU \x000bÄëNU¼±D\x000eE_Tú\x00189ÅM\x000bçí¬Ö]dbÔÈÈU©ïK¼6ÞfÖ$£É±¶Ö<µ5wkÍæJ,ëß\x0006VNHðPF\x0013\x0019¶oß>2\x0002M/\x0002yö±xmQ[(.SÕJ}+\x0018Kä´LïdG
£EF¢\x0017!¬ßÖÖæuÕ«WûÝÙfvzÃµ6TmÍ(2#íÀ\x0003d\x0004Z\x000f#×¨Ô/V+õS]¹ExÝvu\x0012HbbÂ´æ
£eH¥¾¿¶!³gÏö»\x0003èEf=ñÌH3 QÂÝ2yÔ\x0016 ?óºXn#óÚ©V\x000b@/ÒÊ@ÐÃ(À\x001aPL&F\x0016!qËW¥¾¡6³È/2ÛÌ\x0018G@Ã1ÓÖÑÑa(Ç\x0008z\x0011¼\x0003@\x0011¯ç»jÒ\x0012%"§MÕ"Î,^7âµQ³°"´ÍìT\x000bëØPÊ@ôÀK.\x0019\x0006Ï\x0000ÐÄë\x000evÕ¬ìlÑ!°¾JF,^#ÆâµID*FrI­Ô÷EF7ÜpÞ>Ì6³&Æ\x001dFÝ´¡×\x000e%âµju%%%JÓ}%ûCú3ÐLÍ\x0014¯û1\x001ad$þ\x0017Ü4_«Ç¼yóüîÀl3kb¼!¤AÆ\x000e»\x0013\x0006g¤i\x001d\x0011Ê\x001f ^§¦(.\x001a6Úí® )^\x000fÄh«Rßx}ÓM7ùÝ­oüÛÌZ<þ^¶!\x0006ô"vä\x0008\x0019\x0016IÃ¢,\x0003\x001bÝÚh@¼R§f^âõ@\x0006\x0003¸*õqñ\x0004ÚÌêVêK¡âøÑÂÅ\x0017¨èDè\x0007\x000f\x001dòÙîd¤0ºò\x0018 r>È^ÔÎâõùóçu·Uäy4äÞ%&%¹k§û(kS¼\x001eQ±üUê\x001bi3\x000b\x0013v¸a}<«W9¼º¦;é@\\<=þçÇéô©Sôî;»e \x001eÚC*þ>\x0016\`RKÆ¬jÒ\x0003 0£oµ´´.²øibâÁè´3§OûÔBÝáyÝ¥.pJ~Z\x001b¨6Ted×1Ò¤G×X¢áVê\x0003Ãm3\x000bN8ÚÑMÏ7µÉu+RûÙô\x000eeÂøpJ\x001cÅø8ØRSRø\x0000ë¡¿oÛFÿôOÿ,S\x001b~úijll ¯~õ«ôìsÏÉìóÛn¿Þ}÷\x001djjl¤Ïþ\x000b\x0014ÄsûsÏRZz:-Z´X\x000e°¨è(Iéohh¤ää$\x0019;\x0013\x0010\x0010(¢å®Ý»õ#&Æ\x001fFg¤
¥Í¬»xíT÷­ä\x0017¹ôÝ*õMñz FJFñÏ+õGìøvK\x0007}\x0007Åvµ\x0015Ç«MíÔÐk£Ð`¯ÏikoÁzKÙj ­m¥\x000b\x0016\x0015TWWGÇ\x001d£ÿü¯ÿ¢Ç\x001fÖ­]Çc\x000b½½ómºxá\x0002ë_7ÒSOm£´´4Ú¹s'}à\x0003\x000fQ-\x0013\x0010".\x0010êw¼ù&[Y
ô½ï}OBÂ\x000f¾ïýdbba(3ÒN±õl\x0004e¤×Z²c&õ%æPBûêÀF)^\x000fÄHÝ´Ezúºmfí#\x001bcÝÁ®Ôïªhkm\x0013=VÛL[kéBW/¥\x0006yÝÞÎ«Ö/ñ\x000búÊW¾Jûöî×na"Åû;w\x001eeçäPjj*_RèêÕ«´jÕ*É\x000e\x0017WÍï
\x001b7±éB3gÎ¤êª*JáëEÇÓÂBúÝï~K|¨¥µUå"ÂÃÈÄÄta4à¢A6*^#¬Eµ_¼.û£Ù\x001dSz´c|¬³¿ç5×v«ÝtÓÜ0R2Zì¯R\x001f6³\x0001Ã\x001bi¬÷|6=¾\x001aOM£9á!twB\x0014úPÊÊÊiÉÒ%´|Årvµ\x0016{5»p6½øÒKTYY!þüìÙb±áEô6[@«W¯Êm×®^\x0011ªC´=Ýôò+¯Pá¹R0Í+áÊ«¥`3!>aØ.¨±"^\x001bf¤\x000cD³p\x000eà9ó\x0016/ÌëÐ\x0010JJI®\x0012ÖwÚ]\x0003\x001b\x0012\x0012·oÝ^L&\\x0018¦[©¯79\x0016\x0018QYæÆ>\x001bEò\x000bÝ½\x0014ÎK{úèÆ¸HÏÁ\x0000É¼¼\!Ï|ös"8~â\x0013\x0012+\x0007Z\x0010>ËÝ÷Ü#þý¿ü\x0015^\x0019\x000fÓç>÷9Jckió¦Môæ\x001bo°6æØF¿úÕÿu\x0004³\x001bw¾ý6EFEÑËiÞüyj'\x0002\x0013\x0013	Fg¤\x0019uÑ´J}\x001cK°;ÕÌkÌHÓ~:ÉF\x0013¯¹L«È\x0003#!#ÝJ}½\x001eFb4 ö}Åë¹a!´§µNòõ(^íNðß¸\x0000¿-l5kE\x000bÅ"OJRö\µEØ&+7/ÏÕºâ¡?È®Û\x0015zõÕWeµûù?Bjx\x001c¿öµ¯S%Z>?\x0007!á9sç\x0007¥þgt`£{$
ÝãÐ\x001fHTc%*ËkÕâØÄÄx¼Ýdb\x0000FDFzúzzÑpÅk¬5/6¶R\x001d?¿-¢DÖh¾@L m\x000e§«ûàhÀÝýÄuX?ÚxnDÍpÑ\x001eà\x0015\x0012Z\x0012\x0010\x0013\x0013C&&\x001edGcâµQ½H¤imC4½(Këy-}ì\x001c­uf×0\x0012Íh¿Jý\x0008ÖTô"iÃi3NÏ0\x0011½ÔØFË£Â)\x0008³N&¦\x000b=½Ã·ÇÒ1</p><p>\x000f ;ï¼ËÔ&)\x001cNc.\x001aÅÈ4@+\x00030wÑB*¾vMîQHªõ\x0003Âú6«ÍtÓ<0\x00122Zì¯8ÖÈ\x0018kM$6</p><p>ÐÖ®Ö\x000eÖ\x0002¨ê7\x001eN&+?ð+¨ý¤¼æø}~Kk\x001756u\x0018ò\x000e}\x0015ï:M&\x001a\x0012Ð¿çðáC´wÏ\x001eêîRòÑ`)TWWJö»¤êT;!eÖº\x0003­
\x001csHU12#MÓ\x0000±</p><p>2\x0010h©È5Ó\x001að£í®FFq1ÑÅ,^7\x0001\x0018®\x000bÈÈWq¬6³h\x001bb\x001db\x001f¿ìÅ±Ö\x0013Á\x0014ÄVU=[W$ÇÉõÇj(ÏGn\x0011\x000eð+¥õtðè5*¯l¢Ïl3\x001f0A®Ä7÷\x000eÅe
H{\x000e_¦ÕËó|º¥å\x0019?¡F,MDüäÇ?¦¢ãÇD;qr%}âãààÀ9òÔB©©éôßßÿo*))¥üäÇ\x0014Ê\x0011¨/|áì</p><p>çÑXÀapFÚ\x001e&N#p×D¼Võ"WæµC\x0019\x001aÚÝÛ#\x0004ãÅLvôáZFºúkÖ¬ñ»\x0003m^ÕPþþhJ\x0008</p><p>¤Or\x0018\x001fÄó"»kOÖ5Óª\x001båv¯}òýïì»H\x000fÞ½</p><p>g§Q	\x0013Î¹Utéj-5°¥ôîþËôÒ§¨®¾þ¼m?5³(\x001eCÝ=6:¹Zþb¤vSK'»\x000eÐÑÙ£\x0001ê/A1»U\x000e\x0004òºî¼óNúÅ/~)YëpÍÿðÇ?P~~>}ÿû? ò2ºvõ\x001aýÃW¿Bw±ûtíÛ·»J5´ïÔ[ÏP¿é¡ÌH;|ø0\x0019{ÏkôãÒz\x0018A¼¶»e^#£\x001f@~\x0011¿]db\x0010k\x0019éVê¯\¹Òï\x000eÛf6­¢[¢#n [cëZ+_VJ3H\l\x0004\x0005\x0007Yyê 2k -I»÷_¤¼dª©k¡FÞ¦²¦V-É£\x0012¶zzzúèZi#\x0013Q\x001fÕ7vPEU\x0000áì</p><p>Â"JK¡ç_;Án_'Ý°~¶\x001dÇNÒÍçRDx0à\x0003,ÐJÙÙ9ôï|² üÇ?n¥¯ýkô³ý\x0012`%°å\x0016\x001d3</p><p></p><p>´î ½N\x0014)óÉ ³\x001c.*¦¶.*JUü\x001b­XK=¼(TóïßlÉÂ!4à78#ÉÃhÛ\x0010­¡+ÙñZ±ÜÎÌÊR*õU×S\x001bKÄß©\x0017yÁp-#¿úX-´/¤Í¬F8\x000e·ëz{êìêe\x0013\x000fô3å\x0018\x001fEåL,á¡AÔÚÖM\x0017®ÖPvf\x0002\x0015\x0016¤RIE\x0003­_U@¯ÕQnv\x000254¶Óâ:J`M î»c1µ³Etê|%»yVª®m¥%ó3´êé·NËê\x0008«ËÃL@(¯ùþ\x0017ÊËË£K.2ôP\x001c(½åT^Q.m!Ñ¡Ò½pÎ\x001c9Ï_®¢³l½ÂZÝsè2<WIõ
í´í#BR\x0006\x000fa\x0012Ñ\x0019i(é8}ú´îvH
ÑÄk\x0017x]¬×¦J	])\x0005ÑÚ ¡)^{Ç°Ý4ú7Þx£Þó%÷b<ÛÌ¦$E³XÚK»ö_ 6\x0016²¹\x001cN¯ï>Kó\x000bÓYP\x000c§«L&YéñTS2\x001e> {h\x0000¸cÐl|PíÚ{\x0016ÎÉâÇËÅµ´aÕLªäíÐ":"Tjär²\x0012Èkô³ÿ\x000fýô§?aÁºfÍEQQôòK/Ñw¾û\x001dúÀC\x000fQ\x0018ëDÕÕÕRû÷Î;ïÒæÍ\x0008ËÌùË5tïmY\x000e°ÒÝ·.¤° jïêa])XtùÉCrÕì\x0006\x001d:#
Ä©4àWÅëP´
ITÜ4µÕlG{È\x001a±1ÑE¦xí\x001dÃqÓ \x0017Åú«Ô7\x0012I\x001bï\x0014Ìóî]AxjDTî»}\x0014Æâ`;ÐÞÑË\x0007J\x0018Ý\x0013±BCé¶\x001bçñI\x0012ÌáÚnWFçX7b×+22²3âåý7µtÐBXEu\x001c-\x0016V</p><p>¶\x00086Cÿ*n¿ýN¡V¶\x001c>÷ù/JVòG\x001e}^}å\x0015iG|ÿý\x000fÐùóçèûÿýß\x0012qûÚ×¿AIÔÛg\x0013"""D~#äs\x00053á\x001f?U&\x0019ûsf¦²µ\x001a9´à\x000cEo4ß\x0007\x0006×=^¬D\	âÂiâ5£LxÅpÉÈo¥þºuëüîàzµ
e·ì³\x001fÚèÒ
´Yhì\x0016\x0013\x001d*\x0007PRBºµ"°fE>á\x0001Ttª\x001eº:³ÞIóX\x0004×ª¿oÙ2O@Ñ\x0012â"M"r\x0003º\x001fÞzë-o[K¸õÖ[éæoï\x000e÷Í?_Êj\x0002ÙõÅ­µâ¸íùr2ßÂ\x001a\x001c\¬%ó³içóÅÁAvÓ</p><p>g¥\x0019>\3Ò\x000c<a(âµ¶_r\x0013¯ÑJF\x0013®ÖÐÜ¨Têâµ\x000c6éUêëõ¯GY
CM²T\x00168\x0007\x0018óTA²ÿ1\x001c¸mUËJ`\x001d\x0018\x000cm2¬ûm¥?_\x000b""\x0007Ö\x0013Âú±ªAàà0Ù¾¸¬µ¦\x0008qï3R¶1Fs¾2#m(â5\x0001¦&;¢m\x0008©\x001d\x001bLñÚ\x0008e\x0019ù«Ô/,,pmfG\x00031Ña¦Ås\x001dï\x001eQO¸Yaláfg%\x000e)ùTfL¼>yò¤îvx-)\x001eì¢-ß¸T2¶£££ÔQÝuTWc×F0TóD·R_or,0Òj&¦'B90]³ÜìD\x001ajìÃè4\x0008×ª[å\x000f^ã\x0018mCr\x000bf¸×IòzZµ)^\x001bÃPÉÈU©ï«ýX¶5ab¸0ê¦½ùæd\x0004Z²#,$\x0011©ýUñZz\x0018±UÔÃç	´ÕhqáMñÚ\x000fLF£Q©\x001f`ZE&Æ\x0011Fg¤
%ÙQsÑ¢¢åL\x0001I)J\x000f#\x001aIs%;¢m)^ûÅPÉÈo¥>°eË\x0016¿;\x0018iY\x0013&</p><p>¥R_ßEC¡«ÑH\x001a¢~Úsr\x000bòèìé3r;#3S\x0002¢XGµÚ4i¨f×þ0dËÈ_¥¾\x0011\x0017m¤mfM\x0018*@\x000eV\x0003mfÛÛÛéÜ¹sºÛØ´HR\x00062-#t\x0012ÕJ}§´uÊ(k\x0000mC~âé]dÂ'Â</p><p>¹¸À2òEFg¤	\x0013ã\x0007Á\x0019içÎ\x001bÒ4\x0000e ¹3g¸ÚH\x0003~U¸´æ&\x0019e\x0015\x0011\x001efZE:\x0018</p><p>\x0019xí¯m^²ãHÛÌ01Thá#3Òö\x001f0y­M\x0002$-UK\x001fÙåýÍÔ\x0014ñº³£\x0013Q4äId¤¡Ñf|ùþ*õ\x000b</p><p></p><p>üîÀn3Cú&Æ\x001fF4J\x0008ÑF&\x0000èbê.^×«âuFv¦\x001aÒWªõµ1ÖpÑv	¿\x0018</p><p>\x0019-\x000cÆ÷V©\x000fó\x0014×þ`³ÛMñÚÄ¸BÄë\x0000cÉCm3«uv<sF\x0011¯\x0011ÖýïP«õ1Ü\x0013@$×qÓ2ÒÁÜ4.±6³Î!µ5ab¤P\x001dõ\x0017@\x000cÝ¼páîvÐLá!ÀòÁ¹2\x0010­=H:HkÂ_[Ó\x001fIÛ¶uIF:0Ê\x000c®Jýáô\x0001\x0014
'¤çuËÐ\x0013^ä¤\x001cHè-ú(y³ø=Â_
HvÌ)èo\x001byyBD¤¸jèy
ñ:ÈjÝE&t1\x00142h¯Ìë\x0005\x000b\x0016øÝÃÙ_%?\x001cXhè$\x0014þô§®ç(­(ôßÅ¥Ëhßþ}^ß78iôF#\x0018=(\x0015õÆZ\x0001\x001bíy
½\x0008ûC\x0015\x0002ÈÈ¢ÀESBúN©kko\x0013m\x0015âµÓâ4{^\x001bÑBYIv\x0004|YFèMã\x000fv\x0019K4ÌÉ±¤L\x00059ßÙCQÁVâ{"h</p><p>Â);8È'\x0011ôöö±)Ý-¯\x0003åé§ÑÔ7ßr+-\¸H²m1\x0001bÅåÒ\x001c\x001ec232¥\x001d*zÒH¯#R\x0018ÛÂûxòof`\x000eÙl;ßzK¦ËbÄµ\x0003¥\x0004DÿEtñâE2\x0002-ó\x001aÏx]«×h3ë\x0010HÆ\x0006¥¾-1\x0011#Î\x0003L\x0017Í\x0000\x000c[Fþ*õ³øÐ­Ô±DÃ³øUi[\x0017­@¢\x0013\x0005ó~\x001aø`ø]ußçhòòòEÄD\x0013ý  \x0010zèáGè¹ç£*úÑ~@!\x0018\x0000ùÅ/Ð¾}ûè_þå_dÕ{â'ä {ñ¥\x0017é\x001b_û\x0007&±mRÉ½uëVÞn¿¤þÿíÉ'EðÄÁ¬ÝÔ421±à4_dÇ¢"c|¡å\x0018á\ÌkU¼NJNÂ+J
®Z³\x001aIC\x000f#S¼6\x0006#d¤[©o$Ùq$mf\x001bÈ.vuÓÖNºÆÖN\x0007óa\x001cGHbtª°ÓBv\x001fA §Odò,=þøÙúÉàÇNÐ>ô!Ú¸i3effÑ'>þqJOK­´´Zè\x0008Ìw¿û]v÷¬ÒýñÖÛØ¢Z0^í57w\x000eýéO\x0010·\x000fÙ·ññqdbbÁ!zþ1×jP¼\x0006\x0011ie%xÎ¼E\x000bY¼V,#i3k×¦Ø]4\x0016¯MñÚ\x0018èEþÄë±®ÔOæ\x0003 -¢
±474â\x0000¶7µÑ1>]4X8°f`½¼µcô\^»f­ôA</p><p>ÂéS§Ù=[EW®\¢¥KRM9::0E${V¯^ÍÂd(ÝÊnÝ³giõªÕ\x0014Ì¤ÜÙ¥ûÄ
ì¡P>H¯W³8\x0013¾á48=Ö¨^¤I\x0015Ú(ëÄÔT\x0019e:JjÏV³ÊôØf¢±xm\x0012A\x0018"#­R¸a}cdmf\x001byµ\x0011\x0016B!A´$"n TÖrC|K^8`>ùÉOÑj& ¬Z°®ñ³fõ\x001a;o\x001eåsH6..\x001aØ·_µj¥´y5»®°x=gî\JKË ]»vË\x0000ÂËLXX9KI\x0017Ø÷¢EX[J¤«W®ÈÔ\x000bhR&&\x000e"^\x001f<x@k\x001b\x0002òQÄkåôÁX"r8©©±Q¼\x00084S3Åkã0"`ë×zd\x0019iÃµ\x001cp(wõÒpú¯:ê°ñ\x000fnqRf~ÓûT^¹ÒÒ4-ÇI<ò!µ\x0007²î»ï~¹¾nízûøá\x000fD\x000ebR\x0008ï=÷Þ#$¼páB9¨÷\x001f8@wÞy\x0017kI/Ñ±cÇiË
[¨¢²R\x0004p³GÓÄ\x0002~\x000f#Ç\x001ci#.\x001a éE°®3s²Y¼Öò×N5Ç\x0008\x001a\x0014\x0000ñ# »È!\x0018!#\x0011¯ýô
µµ\x000e#¶ÕµÐþö.zOB4°öÅ¬8zµ£h6¿ÿ»ÖYë_íÞA@\x001bÈ§aíÚu®}æÏ_ è·¾õmU;pN`¤=ñ¸h\x0006+õ´\x000542\x0002á$¦&³x­dfg¹5Â:ÒÚÌB¼\x000e°\x0006\x0014	CÐûµrqY:J}û0*õ\x001eù?ÔÌ?îíñQtµ»Ò8ò~UæÐXC\x0004¢\×\x001að;%ÇD4\x0011àºnbbA\x00066\x001aÐ\x001aê\x001b\x000cÏH\x001b,^+¤¨\x0012ÃU©\x000fâõÐ ÷k¹Äk_zÑúõëI\x000fCuapj?V×L9¡At¨µÎvtS\x0001ëEûøúÏ«\x001aéD;Ì:ÖI\x000fã\x000fÑhhb@¬^\x0003aý½ûö\x0011hV³&^'¥¥Hæutt\x000c\x0006¸8LñzÐûµ¤R\x001f«?BóÞ g\x0019
§Íl/\x001fHÕ=}\x0014É¡û,>\x0008îd\x0017mMT8}#+¶pD-!Èê÷ ¥râlù-\x0016³,Ä8Ð×çÏ=FgÏg°ÅÿÏ\x0005}\x0005@`yY¸ûcýö×úÛ\x0019íì¨UêÃK@Û\x0010º\x0018^äì¯GkjPÄë\x00183ózÈÐÓ\úÞÜ´¨¨(\x0003úèì8´ÃÏÊZL\x001c\x0013Q-\x0013Ò£©qôÓza;Ý¢>þÁW±íôûv:s¡\x0016ÍË¢Ön:w¹\x0016Ïå\x0007«\x001d]6^µ0Û.C\x001dÝßYie\x0013Ås¤.B×U^ÝÌ«`¯ÈQuo:Ëû\x001dÊðÀébúùÏN?ûù,Úú§?Ñ#å9}ê$}å«_¥o~óTVZ*îÎïÿð\x0007þ\x001bNc\x0005§ÁÉ±°öÏ?OF Uêkâµ«çµ6°QÕ4ñ\x001add×C\x001e\x0019ùm3«GDd^\x000f±Í,~ôÏ¤ÄÉÒÕí»ÙÉÔË!S\x0010\x0011ÞIN²ãµ\x0006&$¹^t¦ì\x001c;{±\x000e\x0017RB|\x0004\x00156\x0008A¾÷Î¥|½Î\¬¢÷Ý½þ¼í\x0000Ýuã|\x0019ÓÉD\x0014-cqjëÛ¨£³:ÂÃ\x0014¢ÒÈÈIê</p><p>ìÞõi3òóiÎÜ9þ°cÇ\x000eúå/Eõ

ôûäx!²ôïÿþ=úô§?C.^¤cGûîÈã;ÄM\x001c;V</p><p>wÀU22#
Äqúôi2\x0002Í2ÒÄk­mô¼%æTºj:\x0012Äk»ÕnºiC?2rUêû¤\x0019m3k\x001dFÏki£¼ÊE\x0018Ü\x0005uúB\x0005Ý¶y\x001e\x000bTVÑD\x00155-ôð½Ë)226¬* à @J *¶|Úd-Èæ\x0010}\x0013¥§ÄÊ\®ÿ~'=xÏ2zûÝó´eýl:v²Î_©¦\x000f?°.]­¡+ÅuTS×JQ¡´yílzs÷Y?'fÏH¡é&:çßª½­]jûÐõ\x0010õ^11±RjóO|ÂBÃ)OjEô':pì\x001a]¼\+lR|$%&DÑòÅ¹tüT	µ²N\x0018\x0015\x001eJ«æ
Yt¶!Áú\x0007Luuµ«a¾?hÍ÷\x0001×«nÜH»U­I³ÐBi¨æ\x001eÛüôÖmÅdÂ0üýb²t!ÇÈ\x0017\x0019é××£Í,</p><p>Z/^­¥çß<IGN°cU«µ­æÏN§Sç*iÍò|*còiië\x0016W®¬ª\x0005J+ÍÌK¤ªÚ6Z¹$W¶0¾Ó!ÞGJR\x0014åf&ð~k(';®\«£ûîX"ÏßöâQL'ÏUÐt..¦ôt)8`­ÐF;w¾M+W­\x0014\x0006\x0018.Y9¹ì&;èâ\x001aÚ¸f&?§K\x0016óªèä2êëµów\Ï¿Mæ¦Æjpx¤løÂÞ½ÆÄk÷×\x0010¯y}­¢cbøü\x0008&ÉwUÛÍB¼N1ÖNÓ*\x001a"üZF "D$\x001bÖ¿\x001emfxöÙ\x000fo¢n\x0008à\x0011!b\x0019­gk\x0008aø8&à:^µ¢hFN\x0012Å±uôü«'háü\x000cêe
©¾¡:»m´jI\x001e:[Asg¥Ò\x001b»ÏQ\x0018\x000bæwÞ4þþâ1_A)É1T]Ó*\x0004uò\956wÊs¦+À\x0017µµ5´bÅJ]XHÿú¯ß¤O}êb\x0001}æ³¥·ßÞI?þ8Us\x0008}ã¦M\x0014ÍZcSK'Eðõ0,:]*¯g"ÃC('=£TÖa¸hNCmb°Ý¡CÈ\x0008´Ìkx	\x0010¯*Ñ%%)Å±LC"bÃ*RÚDa\x0011ÞM&\x0004d´É_¥>´ÜÜ\ò\x0007ßãÝÙ\x0011ï4*2D.Àìä\x0001ZÄÿoïKãºË<¿¾\x000f©\x000fI­[²Zå;±âØ9!9\x0000\x000b$,;\x001b\x0006X\x0008»[\x0005Ì,¥6\x0014,Å&³ÃÎníRìPsÀ\x0014å0\x000cIHH@#</p><p>!	9qìø¾$Ù²­ûîûï÷½÷o=µ%uKÖeûýªZ¯ûõ©î÷ÿ½ïû}×ÆÖ\x001a9ïhk\x0012¢lüôÍb\x0015á¬ÖÌú]8Ìrß²©\x001cë¥Ú »\x000cqÎµñ\x001aÚÑN~nOï\x0008»fuô6ÉÏ³\x001bxóu-t%ã#\x001fù¸+pi\x001ezø§t¶§¶lÙBÁ²2º÷Þ{¥\x0013\x0002\x0012Gù.]\x0012cIjáÀÀàð\x00045+¨ûÌX£'O\x000fPme®Û\x001e^\x0006§µ-|ÌÁÂ)¶Í¬rÓf\x0012¯µ\x0019i\x0019­\x000cdXk\x001b°>ï7-£ybNË\x0008aÌÙBúÅ´M¥³ä°//\x0019åc&+_%0\x0002.§ö\x0015@d÷û¦´2¿Î÷J©\x0008¬¬ÖµÕ¢3iac\x000bÕT\x0007¤%Êç>y³hb ±+¹$ÄXDÚÜ\x001cz=4A
ßþö½ÓBíUU~ª</p><p>ùH«èãÀ\x0004»f\x001d/\x001f¥\x001dÛÂ488No¾ÝM»n^Oó\x0005ÈÁá,,^ÃÂQ"t! »£ú_*kªsmC\x001a\x001a\x001bô°¾>hH##iÀoOwya62jÇ\x001fXF*O$\x001fÅ´ÍHÙK³\x001dÄ\x0002×¬o`\x0002~·¸|F\x0012S½J½ÎÜãMhP%7ÆÛùÞºÜäïÐ¦ßò¸­¬M&é8ërÐù d/\x0004ÅÎHC=Z13Ò\x0010ESx}\x0003×Ïþê9¹\x001d</p><p>Uæ\x0012\x001dE/\x001a\x0019\x0015R.\x000bø;\x001fÝýèüû\x001d_árú*:BmC.¶ÍìjÝn£º\7Éféñ±\x000f¶
7Ùí¶Ïû;W/jFÚ+ÅÍHS\x001d\x0001É¼fñ\x001a=Ð|\x001fídÐI4«'<"¬\x000fñ\x001fm&;.\x0000³Q®R¶2íÛ·Ó\¸6³W</p><p>TM\x0014ùS(&fóÁËßr2®4þ\x0003@7\x0002\x0016FþÙâg¤\x001d(nF¤å×ÐLV\x0004"êUÍÔ ^©\x0017-\x0004³ZFså\x00170¹mf/wà[éL$é¹ÑIé^y5©1&o¸2\x001c¹k+õÐÒµ^79PK&Á|f¤½õÇ·¨\x0018ä×h¦\x0006@/Ò5f¦éE\x0015fÛb&2\x0002ËÌY©ßÚÚJ³ÃQl¿ÿ+\x0003 ¡þdþ©\x0019\x0018£\x0001& n\x0002(Ú>HÑþÉ\x0018=Âi\x000fÐ×êB´Öí4	©\x0008dD¼^¼6³¨Ë4¶
xÝ©Q~$mD3ÐP-eOÑ\x00020\x001fÕ?sUê/uÙË\x0011°z~76I>z~xnú$2GÓóBÕí$\x001fàÏqØûóÇ{èÍÉØ%®¾-\x000fvðà¬ýÜ0f^ÃEÛÒvUÎ2</p><p>Uj\x0005²*ÊdGH\x001bÁïÝ{Lñz\x0001ék+T©_LY³ÇÏ\x0014ðMü¸oþüÄYéËTl7\x0000<¦]¸¯:GÇã)æÀ|ÚÌ¢cg1ÈÏ¼Î×U¤</p><p>Èu¶Å\x0001ôÁ&ê"\x0013\x000bÂLdtë\ú@¡°~Jô\x000fsé\x0000ø\x001a~ÄDôW§û(¦Ï[×óù\x0002Mé;§{)n³¢Ø\x0019i°\x000e\x001f:DÅ ?óô9À\x0013®¡\x0019õ7×Ùl\x0007X\x0010f´æªÔ¿ùæ©\x0010D¼¶4\x0010ÉoØÕúßgúébf\x0012à|î\x0017Xð6)~f\x0014;#
âu±×*¢¬ÄëÎNÍèÑÄëlÎ*R×"^gÍ\x0019i\x000bEþ¯«ÔM/Ú¹c\x0007\x0015ÂBÚÌ^èe\x000bñ[]½Òúäbæ×xx`Òdb& \x0010PÌ44+¦Ñâu\x0015u:%·z\x0011¤\x000cÕ6Ä\x0014¯/\x000eùd\x0014Æ¹*õo¼é&*\x0004ÓÐ¬ ÿÛ3@ýpYéâ×ØÇB6\6\x0013\x0017¢Ø\x0019iÅ6ß¿@¼ÞvuN¼é±°tB4ÅëE@þ¯×^¨R¿¶e\x001d±å3Ág(ÿ Ð1Y"55l!mf/\x0016³	ÂÊ|^nà³¼6\x0019¥g\x0006Ç</p><p>\x0016Ãà«ªrÚ©f\x0013üÝ\x001eÄM«3\x000f¹¨d\x0011Ç\x001dz+\x0015\x0003#\x0019ÁK¨¬\x0012¯Ñ6\x0004Dc=\x001eOÐ¨)^/</p><p>ò\x0013¶ÍU©6³;¯i\x0013W\x0001w'ñVúGg0º\x0007WìÚA¿È{´ë/¥H\x0003\x000bÔ¦o,Í\x0006\x001c?ÿù3,"'_ Hë[[¥:üñÇ&M¾ÚÛÛgL3À{&XÌt2ù.%÷OçÅµëÃû^ïóÒ_¯­£{8ÒöÆxæ\x0002\\x0013±ÂõTW\x001aæ3#í­·KvÄ±\x000eàä<88HÞ×ªã£4SSÉ¡rS¼¾H\`\x0019ÍU©\x0012\x0010·t]´ÊÈ ¿Ý&½ª+\x001c6</p><p>ñ\x0005ÙÃÕ¸8\x001dT¥ïÃý%|ñ° íàç </p><p>>Jx^¥è\x0016<Æ\x0017üÃú\x00166î(îã\x001f\x001a%ºXQ¾@ÁJfåMBãÏu­t\x0015ôðgG¢%Îd¨\x001aßµ«]\x0012aÉ:y¢½É÷¾÷·L¥è\x0007?ø¾4e¸	<y2×&b!8Là\dñå_ï/ï))¬\x0006áÿ\x001eH§É\x000cTNG±3Ò D\x0017Ûf\x0016\x0011^\x0017rE¸eí´J}É¼F4	ih87È\x0014¯/\x0012FË¨\x001d.¦Rj±ÏT¢=ó</p><p>Â\x0002SUÞYu4kKYZ°0°T2BX»?­¿"ë­­¥\x001bÞû>z÷®÷H¿ïÿð©ÿ\75×ÑáwöÑ\x001fßzne\x000b	Â%ú\x001eßùïïþÌ ^t\x0016øèGoþ;O>¹¾øÅ/ÉTOúSBb2¦êÈ</p><p>\x0001û\x001dG½¢| \x0016Z\x001epÍ6¸iÍýÓ±\x0014\x0015dÆ\x001c£\x000fX)ª\x0015Ì\ÓÓS¸#'Äk¬\x00035(ÜÚ2]¼N§5½ßw O;i¡mÈc?~¬L,\x0018Æ_°`¥þÖ­[i±±X\x0004vÇnË\x0011Ø¾ë3Îðâ¶9hÓÎk©~Ó\x0006rPÜ\x001b¤L2B\x0003±4Eù½é¶Ûh_÷iTûÚ«¯ÓÓçéà£48:B\x000f=ô\x0013éÙü/~\x000fà³ôüoC·Þº\x001aqf¤9þ\x001fþÈ¿\x001dTïyPsÛI§¢q\x001a+dÜfññ\x0005(vFÚ|ô"%ShQ3=ºç	¹
2Â\x000f¨&LòÉÍËQ·\x0012¯Ç´.\x0012F2*X©_L\x0003þå@!\x0002Co\x001cööµ}.\x001fÕû}B\x0002aøû¤O¥òi\x0016Øú\x0016M\x0007à\x0017¾û{(ÁîÛÈDøþþD\x001aZÛètÿ\x0000ù×4\x0008£Øô·C7#ã\x0008mÿäÌß\x001f>Õ_±>ÔìaÂO¤9jàë\x0008\x0008|"\x0014íY\x0016DßÍúü*ûü[k\ÎÏ´ù´Ub8Ö\x0002ô"¸ð\x0010¯].\x0014Gå\x0018À}È¼®«©Æûdt0®£ð\ú


\x0005ÛÌ®fX[ã«\x0008LN¬ZÅwYyl³UÚCªÖ·\x0010µfsz\x0015È ­»ãL »¨Â!¾=9þãfKèýå>Ñkç\x001a¶ºåõXoúôÁn:\x0016½ÐàÖ5{Í¢Y#dFZ\x0011c@\x001cÌ¼V\x0011Ö\x0003\»\x0012¿
ñ\x001a\x001144àÇ4\x0010cgGÖÌ\x001eF\x0017	EF¨Ôo«RµXE²\x000cZÈÍ'0ë´;´{!æg\x0002QdV ±YÒ\x001b"¼ÿöý'ìTÁ¢þ]uåtM©~Ú7Â\x0001H\x000bó¾^¶Î%fÎ%*áE·Öå$\x0013SX\x0019iª\x000cDô"\x0011¯µÞGõì¢Ë{Ê¼ÖÇ\x0012I$Í´.\x0016d,\x0011cg\x0013¯©Ô_\x000eüáÍSô£¾Bq^´ßúÊ¨¹)D+	pN	[<1ÝBJÁÕãñ(|Eâ¢Åñ»j+¤eÈÿëî£\x000c\x0002Ô</p><p>gJ	Àk¶²K×è2fa;E
÷KÚ\x0004"K©Ô</p><p>B¡.jÿåbg¤a>Z13ÒT\x001d\x0000/¡©um®W6¦ à\x0001ë\x0008ïÛß«\x000flôâõbÀh\x0019Yz1
ø</p><p>I¶6¢±$
\x000eMÐ\x001e}þÃÞHÃ#ô½\x001fvÐwïû\x0004­4\x001c)Rpò\(ù\x000e÷òÙ<Ìäru©	þÎ­z\x0013µì,¹IÈ×Ú\x0015(eÊ"î\T\x0017ÎÊ\x0008±trH]\x0003K\x0019¢Ó¥
È,©\x0008¡%G`\x0016ÝòSy`ÆËÅæ-%V¬xm¬Ô\x0007\x0019UÕÖÐï^ÕZÔ*Cz=ZZ¾èáa!"ÝÞA&.\x001a9Ë\x0008VÑ\úÚÌ.\x0015@Dßüë'©¯wTF\x0006}óË·Ñ?<ø\x0002}ë¿~\x001eøÁoé\x001fv¿@­ëªé½ïÚH+\x0005X"\x0019½ë<òªó) ì 7\x000b¹XÌ"Vç#Ä¿Ï\x0007ÊJF\x0012 \x000f&½Ýv!I\x0014BÊ6;=Bi` 9I£ÈjB¼"0@Mñ\x0000U</p><p>IY@bÓÉÊh-\x0007ÍgFZ±=¯¡\x0017ñ$ÿ#ÝÝ2s\x000fã¹sjVsá"\x0011</p><p>²xµzÑb@Ñ6³\x0011Q1mf</p><p>§PÐKßü/·11e¨¢¼îûúG©¶*@_ûâû¨pþ-¤\x001b¶7sxÕE+\x0001ãyÙYl¬ët\x0015ÈfûIz\x001b½JüB\x0014ßý</p><p>?58\x001dB</p><p>	+,"ÛÚh¯7¿4</p><p>Ùf5*À@X)ôñ&-K|:éí=hñ	l>3Ò\x001d;FÅ\x0000z\x0012¯'Sq>¾\x0006©±±Q<®S]TÍä\x0003Ë\x0008% \x0000H*µzÑ" ç¦Á2vîÜI+½\x0007{dhb\x0019\x0013BC­\x0016ízÿ­eûë\x0017\x000fó\x0019ÍA+\x0005XF)Ã\x0008£\x001d~/uêMÔfÃáh>u Ó\x000biÜ>S\x0015ÇÁB®Ñrµ\x0017"0ã-*ÀH',@K£ÐI,«I¦\x0008LE+-­\x0010\x0015, å\x0002\x0002Ãó\öâÄëýû÷S1PnZ,Á!ý\¾\x0011t¤·ÞxÜ\x001e7565Ê\x0004]\x0000=ø¼`Ñ"@Qx®ÎÅô0Z*\x001c>ÒCï{×{è\x0007NÓÁÃç0¦zëÆ:òq8\x001c½>øÞ­Ë>¹ÖÜºÌj\x000bîör?=Ê\x0011²9ù\x001f7*uíáÿë\x000bµåTÏ\x00118ü:)~Qÿ*O|Ì'0kþ\x001d3|3ù\x0004ft#ÓÙ	,Å,\x0000á?Låô/U0\x000bWY\x0011×Û\x000eK>P!ÀESâu"\x0014b²X(\x000fÀ5{çíwÄ]³ñaÍhäÑÝd´\x0008&`Ïf\x0019í(¢ÑR\x0000@ßà$UWú¨·F'£Ô}vÆÇ£T_\x001d¤±(ýâ7ïÐü³#K\x0005LñHëã®ew\x0011yCû&.®w5^ëNvG?\¦%mÂ*òð\x0002¼\x001c®Ìj\x0016 XH9Ê\x0005{ùâÄk¸f</p><p>\x0013ãT±¦FGÇt
I?½H\x0016°Û\x001c,#2hPÖÖÖF+QÖSJKr³x½ë¦
´±¥\x0017}VÜ¡{þçãtøøyú³{\x001d®^¤PÊgTt ¶\x001b9C÷4TÒçö*\x000b\x0001èã\x0001úóº¼\x001e~¬ÌU»\x000cè" \x0007\x0015i¶l|\x0010GçáÂ@\x0000LUâõ$ÐØ	\x0016©Ù\x0002ÂÀÆÖõë¥È\x0018ï7Ví>s¶L,</p><p>r\x0016ôlmCVJ¸\x0006\x000e\x001eë¥Í\x001bê(LÓûºèí\x0003g(HÓ;ÎET\x001e,¡ÍëjhEì.p2I¤Ux/×zèËõ¡\x0005YFÈ´¾5¢¯3¡A\x0010Çy\x0018]\x000eüvëª</p><p>±F(\x0012 `)Z=Å¼ó\x0006·\x000c$\x0003w
ã"z5\x0002êÑ¶ïØN·ìº¶\µ%×\x001f°Øl/E\x0001ÈHØ&3K¡æJ\x0011ÈçêõrÀàÍôÑ?¹zîmúËï>-dô¹;o¢µáJºç;ÓûËÇh%\x0001ð±u4¡v0#ý§ê2úrCHw3</p><p>\x0003$ÖÀbõ·×TÓ×È|:¹á5ý2°òT|¯ñ¸lû&.Ð\x0019ÏõÑd4N«\x0005 ùÀ2ÂsÈÐ¤²2$å\x001fÈö®©«¡òP\x0019¼ãòX\x0007¥M7m\x00007mN½h%qüd/Ýù±\x001dtàèYzèg¯Ñ×¾ô~ÚÊ\x0012\x0012Ï¾q÷\x00079¼ï§h;è\x001a §}å\x0017*ªðQ«\x0006[\x0001±=Ø1_`BÚÌ.äýg\x0006é\x0008GÐRÙé©\x00008\x0005àW;íôoXøþw¡\x0000GÏ\x001c¹\x0012\x0008ý \«Äå9=(j\x0017æädõ»0É¡ÃaãÈUâñ¤ì/a\x0017»,PB+ùÌHx
ï@Ö!\x0012É´69\x0016[ô¼N§S´ëG~õÄ³&\x0019-\x0012@F¸2[$MMÐ\n Z2\x001eIÈìõ\x001b¯]K;®nbóØ&
ßÃáT¤å?ÿÊQªbû/îj§\x0006è¢\x0017d//V0¼\x0016¶Ð._	]»ÞC{'côòx²å~G¨5\x000b3	m-qÓµ¥^ªuhÖê×4É×|\x001cEs¯\x0002"\x0002Rim"\x0006\çx"I§{imSH{ü\x0016°\x0012\x0014ùýnv4zntÅÉèÕW_-êqZäLûa\x0019Y\x000c)\x0003uõõBPÚôØ\x000clDæuÀ_b\x0012Ñ""Wè£\x000e\x0008i¹+ö'#q\x001a\x001e¤^?Iþ\x0012\x0017e]T_[F¿cò©­\x000eÐ\x000f~ü\x0012õ\x000fÓ­7®ç\x0003ÃCn×Êå\x0019\x0019\x0001á9Ä\x00072\x001añ\x0007H³@.>>ÓÞâ÷Ò»øÒÅI£\x0013FXJò\x0012}/)¾Óo³¯</p><p>H\x0001DcwXåDàõ8)ÜT!ÖCïvß\x0000ù@åe%4<\x0012\x0011ki%\x0013,,£b\x0000ñ\x001a@ \x0007IÊMfjb\x0011¥sc¬ai\x0005y%3óz\x0011¡È\x0008I\x0018³C{÷î]v2Btì£·m£ß¼xÃ¬Q`àKo§î!êí\x001b£\x000füéfêì\x001e¤¿ð\x0005úÔÇ¯£Õ\x0004Ù(õ\x0018`\x000b	Áb\x001cæÆD>h
SP¢w\¿ ÕH9¿u\x0015\x0011\x0011\x0010a®Ô;Õ¨Þf±ÒsÃÒ\x001a¤ÑÒ.½\x0017º×³²\x0011N\x0014}\x0017;#­DOp\x0004ñDbQ²øµ$[ìÎh\x001b¢·EOì¥L,\x001a"£\x0017^xn¿ývZNÀdþÌ'®\x0017w
.@#4NviÖ¯­¦OÞ±SJ?\x0010âßÑÖD-,b¯6pjØÅÂ\x0014a\x000cµä}X 'E1°övºÄ9­Zá«ÍbYUQ3\x0000d\x0019a·¹¼¬4·\x000fä4:\x0016e\x0002rÐHoD¬%¸oWml`ë"!É©+	$:\x0016S\x0006J}c$]+\x000c.ÚÚµb\x0011á\x0002w´§çì÷û|¶'L7m\x0011¡Tº9¿Ô={öÐJ\x0001Ö\x000f\x000e{ÀìÇWÕ !×èêÍ
+VV\x00080làU³ÕhX?¯\x001aB\x000b*ï±ÏëÐ\x001a\x0004õÙjÌ$p\x001beaÚÃ¿\x0003Ú·Äâ)\x001ae±º]²2/ÊK©yMÜNÍ1¾äq¯lï%ô/J\x0015å®ú\x0017\x0001 £ézQ\x001d\x0010Y°g·;Öô" 2T>²g÷N2±hPQ×\\x000ffÔÑÑ!c\x0012*ñr\x0003\x0008ÕmAMv+}èRúOSzCX¬ÇNôJ.Q4\x0016QO°\x0018ðO±ägý\x000e\x0005ÍÐVZ3zé¥zßïÏ\x0015ÇJÙC;G×74°Fæ d<.÷÷ööJÞR¨Âl¦¶\x0014(Ê2\x0002î»ï>ZJ ©\x0011âôùV§¯\x0006ÄÙ\x0012r¹íâ2C\x001bÚ´¾|>\x000fokÉ_ê¦Öµäõ:©´\x0004´ø\x0007\x0014\x0010ý:~üxQõz½B²xN4\x0011GU¬ì¯kÐÒHD&`\x0001ûÌ\x0019ÍE\x000bj½ÔÍdÇE"£~\x0018,#\</p><p>oî;Må\x001c\x0006þþ_¤ïþýs|`¤éå7NÊ¶ëÌ h\x0013\x0003C\x0013â\x001eà,>Gùxü?ÒÀà\x0004X| º B]µ1vÏÎ\x001b¡¸$@Fe\x001f\x00163~\x0012&¤IÖVÚu»õV\x0011â5k»\x000c9Èj(\x000cÉáæµOÉhdÔ¯Æ\x0012ù}h\gZF\x000c£ÝAúì´Ù\x0000ëh©\µ}\x0014n(¨\x000còU\x000e\x001d;GÏ=||¦}s_'Fé\ï\x0008]su\x0013í;ÔÃ\x0007[þÏ¿þñ_\x0014qñ»^~ó$}ø\x0003WÅ\x0005Jm",HW|äaºCúI\x0014:*JxÜ.'í\x001dÎ	\x000evq -U|´»u¼\x0008ñZ¹h ¤n4Rsj\x0016÷S"\x0010B\x0018\x001fÏõ0ÂsÈnf^/6ÉÀ\x0005ÍNXF\x000f<ð\x0000-&Îsþ¡Ç_\x0013ÁóôÙa&¤\x0010Ç$O%ÜTÉÖÑ	Ú´®­£!úæÝ\x001fd½â<GÙ®è\x001ag½\x001e\x00079;DCÃrör9ìdbq\x0001Ë \x001aK»dK5àóRuÈOõåÒ|Ãº*ÚÔZÃ®ZÖtK·keßÿþ÷E=N4-llb<y
á\x001aÇS:¥YF§Ný\x0016ôù:Mñzña<bîçËÝ4G\x001føÊW¾BÛ¶m[4\x000b	d\x0002áú/>ß.\x0016Î¼Bï»e\x0013ÕTùé§Þÿã\x001fºFÂÆ\x0001¿ú#BX\x001eÖ/\x001e}ò
ªà³ói¶\x0010J®«^¹:ºË\x001b\x0016¶\SßH#Öò\x0015½ÀîO\x0004 ÚíÝ+\x001aÅÌH¦&ÇÊhsÇT\x0014mýõÒÑ1#\x0004¤.½\x0012!TQf&;.\x0011òÝ|ùl¡'¡xöùç_Ö")ÖlúÙ	\x00058¨¡C\x000cF$|Ý·p}\x0005\x001d8r&8sàÐ9)\x0013iÛÒH\x0011vïÚol%\x0013\Ï ,éÕsÀÒ\x0012Y'Dü>78<´RösË-·\x0014$$Ì\x0002Ä±R\x0010¤\x0001Ä¤ ÐJ¥>\x001fÝù©O '¨çL\x000f½øæ8\³m+­i¨ÿêyü~2±¨È·¥ïµÙmM§Òs>	þ8¦Üÿýt÷ÝwÓ¢~ C\x0007\x000ej\x0005\x0010\x0011°¹µV¶;¯	Ëx÷u­\x0012:Ï\x0014êoâ¢ z\x0006a;=d¿úÜâS§N\x0015m\x0019\x0001èÚ\x0018MòÏ¥\x0011hmm-¥¤\x0015véê<{Nmu\x0015rPL½h	ß¿´³´,ØAE\x0002.Û]wÝµbÅ´ÊEÀâ°³`·¯îv¬«\x0015 òd\x0013Ð¥bô¢²²2É¼paJ¸\x0006Ú¶_#-C \x0017QwW·ì¯©®ÄX¢=\x000fïé \x0013\x000bVoe}å}èí[,vïÞMí»vÑç\x000e³È\x0017å\x0003;>ÅÙ©é\x0010&V/?tìd\x001f\x001d<rz\x0007Æ¦ÝFigÏ\x0017î\x001d
¬ts;#¾óï\x0014|\x000cÜ3­õ\x0003 =DNí¯a«Èåq³Øï\x001cÈ=§\x0006VQ&kæ\x0017-\x0011.`ã{\x000fwê«;\x0006zzÛQ\x0000)ãi</p><p>\x001ci\x0010÷\x001edRÂeÓUWSÓºu´uûµ\x0014(\x000býï`ªjjùlTN@Ãõ^òºÝRú FØ \x001e\x000b\x000eÙTuyÎ\x0007ÖøÊ9L\x001f\x0013B\x0018Kh\x001eÍÄ\x0016\x0014c=Nr»F\x001b/0\x000fV¸±BnCÜ>ÇQÒúÀ²\x000bÙö\x0016²ÔÑ»H\x0015ÆBr°8§AsËZJ1\x0011¥8¤?></p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Absence of Anti-CSRF Tokens
##### Low (Medium)
  
  
  
  
#### Description
<p>No Anti-CSRF tokens were found in a HTML submission form.</p><p>A cross-site request forgery is an attack that involves forcing a victim to send an HTTP request to a target destination without their knowledge or intent in order to perform an action as the victim. The underlying cause is application functionality using predictable URL/form actions in a repeatable way. The nature of the attack is that CSRF exploits the trust that a web site has for a user. By contrast, cross-site scripting (XSS) exploits the trust that a user has for a web site. Like XSS, CSRF attacks are not necessarily cross-site, but they can be. Cross-site request forgery is also known as CSRF, XSRF, one-click attack, session riding, confused deputy, and sea surf.</p><p></p><p>CSRF attacks are effective in a number of situations, including:</p><p>    * The victim has an active session on the target site.</p><p>    * The victim is authenticated via HTTP auth on the target site.</p><p>    * The victim is on the same local network as the target site.</p><p></p><p>CSRF has primarily been used to perform an action against a target site using the victim's privileges, but recent techniques have been discovered to disclose information by gaining access to the response. The risk of information disclosure is dramatically increased when the target site is vulnerable to XSS, because XSS can be used as a platform for CSRF, allowing the attack to operate within the bounds of the same-origin policy.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form class="flex items-center w-full max-w-md p-1 bg-white rounded-full">`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com](https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form class="flex items-center w-full max-w-md p-1 bg-white rounded-full">`
  
  
  
  
Instances: 2
  
### Solution
<p>Phase: Architecture and Design</p><p>Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid.</p><p>For example, use anti-CSRF packages such as the OWASP CSRFGuard.</p><p></p><p>Phase: Implementation</p><p>Ensure that your application is free of cross-site scripting issues, because most CSRF defenses can be bypassed using attacker-controlled script.</p><p></p><p>Phase: Architecture and Design</p><p>Generate a unique nonce for each form, place the nonce into the form, and verify the nonce upon receipt of the form. Be sure that the nonce is not predictable (CWE-330).</p><p>Note that this can be bypassed using XSS.</p><p></p><p>Identify especially dangerous operations. When the user performs a dangerous operation, send a separate confirmation request to ensure that the user intended to perform that operation.</p><p>Note that this can be bypassed using XSS.</p><p></p><p>Use the ESAPI Session Management control.</p><p>This control includes a component for CSRF.</p><p></p><p>Do not use the GET method for any request that triggers a state change.</p><p></p><p>Phase: Implementation</p><p>Check the HTTP Referer header to see if the request originated from an expected page. This could break legitimate functionality, because users or proxies may have disabled sending the Referer for privacy reasons.</p>
  
### Other information
<p>No known Anti-CSRF token [anticsrf, CSRFToken, __RequestVerificationToken, csrfmiddlewaretoken, authenticity_token, OWASP_CSRFTOKEN, anoncsrf, csrf_token, _csrf, _csrfSecret, __csrf_magic, CSRF] was found in the following HTML form: [Form 1: "email" ].</p>
  
### Reference
* http://projects.webappsec.org/Cross-Site-Request-Forgery
* http://cwe.mitre.org/data/definitions/352.html

  
#### CWE Id : 352
  
#### WASC Id : 9
  
#### Source ID : 3

  
  
  
  
### Incomplete or No Cache-control Header Set
##### Low (Medium)
  
  
  
  
#### Description
<p>The cache-control header has not been set properly or is missing, allowing the browser and proxies to cache content.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com](https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 7
  
### Solution
<p>Whenever possible ensure the cache-control HTTP header is set with no-cache, no-store, must-revalidate.</p>
  
### Reference
* https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#web-content-caching
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control

  
#### CWE Id : 525
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Permissions Policy Header Not Set
##### Low (Medium)
  
  
  
  
#### Description
<p>Permissions Policy Header is an added layer of security that helps to restrict from unauthorized access or usage of browser/client features by web resources. This policy ensures the user privacy by limiting or specifying the features of the browsers can be used by the web resources. Permissions Policy provides a set of standard HTTP headers that allow website owners to limit which features of browsers can be used by the page such as camera, microphone, location, full screen etc.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/f46ac7fea9437bdd2d49e7477c0eea385a86354f.ebefd935aa9eadf7826f.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/f46ac7fea9437bdd2d49e7477c0eea385a86354f.ebefd935aa9eadf7826f.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
Instances: 11
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is configured to set the Permissions-Policy header.</p>
  
### Reference
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Feature-Policy
* https://developers.google.com/web/updates/2018/06/feature-policy
* https://scotthelme.co.uk/a-new-security-header-feature-policy/
* https://w3c.github.io/webappsec-feature-policy/
* https://www.smashingmagazine.com/2018/12/feature-policy/

  
#### CWE Id : 693
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Server Leaks Information via "X-Powered-By" HTTP Response Header Field(s)
##### Low (Medium)
  
  
  
  
#### Description
<p>The web/application server is leaking information via one or more "X-Powered-By" HTTP response headers. Access to such information may facilitate attackers identifying other frameworks/components your web application is reliant upon and the vulnerabilities such components may be subject to.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com](https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/MonSuiviPsykitComplet.pdf](https://monsuivipsy.fabrique.social.gouv.fr/MonSuiviPsykitComplet.pdf)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
Instances: 10
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is configured to suppress "X-Powered-By" headers.</p>
  
### Reference
* http://blogs.msdn.com/b/varunm/archive/2013/04/23/remove-unwanted-http-response-headers.aspx
* http://www.troyhunt.com/2012/02/shhh-dont-let-your-response-headers.html

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Server Leaks Version Information via "Server" HTTP Response Header Field
##### Low (High)
  
  
  
  
#### Description
<p>The web/application server is leaking version information via the "Server" HTTP response header. Access to such information may facilitate attackers identifying other vulnerabilities your web/application server is subject to.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/css/6fdfa1cb16bbde2a986c.css](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/css/6fdfa1cb16bbde2a986c.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
Instances: 11
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is configured to suppress the "Server" header or provide generic details.</p>
  
### Reference
* http://httpd.apache.org/docs/current/mod/core.html#servertokens
* http://msdn.microsoft.com/en-us/library/ff648552.aspx#ht_urlscan_007
* http://blogs.msdn.com/b/varunm/archive/2013/04/23/remove-unwanted-http-response-headers.aspx
* http://www.troyhunt.com/2012/02/shhh-dont-let-your-response-headers.html

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Base64 Disclosure
##### Informational (Medium)
  
  
  
  
#### Description
<p>Base64 encoded data was disclosed by the application/web server. Note: in the interests of performance not all base64 strings in the response were analyzed individually, the entire response should be looked at by the analyst/security team/developer(s).</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `c1a-skm+QAeJVyPgjOOF7Z1R6vu6gDk`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `c1a-skm+QAeJVyPgjOOF7Z1R6vu6gDk`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `3e83-xpT1d7bH9JXokkQeXjXeNFLPEDQ`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com](https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com)
  
  
  * Method: `GET`
  
  
  * Evidence: `42d6-i5RnLBj/pLF+igXnahEjXizT4tI`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `3e83-xpT1d7bH9JXokkQeXjXeNFLPEDQ`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `3ea5-C+Qk1KnuPDzLazz1i28NBc1FUz4`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `42d6-i5RnLBj/pLF+igXnahEjXizT4tI`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `2968-zPPDsBltqODuxar9T4Nowc66v68`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/MonSuiviPsykitComplet.pdf](https://monsuivipsy.fabrique.social.gouv.fr/MonSuiviPsykitComplet.pdf)
  
  
  * Method: `GET`
  
  
  * Evidence: `c1a-skm+QAeJVyPgjOOF7Z1R6vu6gDk`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `1de5-0N3/QTuI31nIIXX+WqlUGsNaNOw`
  
  
  
  
Instances: 10
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>sV��I�@\x0007�W#����Q����9</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Sensitive Information in URL
##### Informational (Medium)
  
  
  
  
#### Description
<p>The request appeared to contain sensitive information leaked in the URL. This can violate PCI and most organizational compliance policies. You can configure the list of strings for this check to add or remove values specific to your environment.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com](https://monsuivipsy.fabrique.social.gouv.fr/pro?email=foo-bar%40example.com)
  
  
  * Method: `GET`
  
  
  * Parameter: `email`
  
  
  * Evidence: `foo-bar@example.com`
  
  
  
  
Instances: 1
  
### Solution
<p>Do not pass sensitive information in URIs.</p>
  
### Other information
<p>The URL contains email address(es).</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/f6078781a05fe1bcb0902d23dbbb2662c8d200b3.29e182fd1480d96016fd.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/f6078781a05fe1bcb0902d23dbbb2662c8d200b3.29e182fd1480d96016fd.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/","query":{},"buildId":"V45YU3IVKGvxA08VT7", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"statusCode":404}},"page":"/_error","query":{},"buildId":"V45YU3IVKGvxA08VT7GFK","nextExport":true,"isFallback":false,"gip":true}</script>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="inline-block mb-4 mr-5 lg:mb-10" href=""><img class="w-10" src="images/logo.png" alt=""/></a>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"statusCode":404}},"page":"/_error","query":{},"buildId":"V45YU3IVKGvxA08VT7GFK","nextExport":true,"isFallback":false,"gip":true}</script>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="inline-block mb-4 mr-5 lg:mb-10" href=""><img class="w-10" src="images/logo.png" alt=""/></a>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/polyfills-ff94e68042added27a93.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/polyfills-ff94e68042added27a93.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/MonSuiviPsykitComplet.pdf](https://monsuivipsy.fabrique.social.gouv.fr/MonSuiviPsykitComplet.pdf)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"statusCode":404}},"page":"/_error","query":{},"buildId":"V45YU3IVKGvxA08VT7GFK","nextExport":true,"isFallback":false,"gip":true}</script>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="inline-block mb-4 mr-5 lg:mb-10" href=""><img class="w-10" src="images/logo.png" alt=""/></a>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="inline-block mb-4 mr-5 lg:mb-10" href=""><img class="w-10" src="images/logo.png" alt=""/></a>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="inline-block mb-4 mr-5 lg:mb-10" href=""><img class="w-10" src="images/logo.png" alt=""/></a>`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="inline-block mb-4 mr-5 lg:mb-10" href=""><img class="w-10" src="images/logo.png" alt=""/></a>`
  
  
  
  
Instances: 11
  
### Solution
<p>This is an informational alert and so no changes are required.</p>
  
### Other information
<p>No links have been found while there are scripts, which is an indication that this is a modern web application.</p>
  
### Reference
* 

  
#### Source ID : 3

  
  
  
  
### Storable and Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, and may be retrieved directly from the cache, rather than from the origin server by the caching servers, in response to similar requests from other users.  If the response data is sensitive, personal or user-specific, this may result in sensitive information being leaked. In some cases, this may even result in a user gaining complete control of the session of another user, depending on the configuration of the caching components in use in their environment. This is primarily an issue where "shared" caching servers such as "proxy" caches are configured on the local network. This configuration is typically found in corporate or educational environments, for instance.</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/robots.txt](https://monsuivipsy.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/](https://monsuivipsy.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/css/6fdfa1cb16bbde2a986c.css](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/css/6fdfa1cb16bbde2a986c.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales](https://monsuivipsy.fabrique.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/pro](https://monsuivipsy.fabrique.social.gouv.fr/pro)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite](https://monsuivipsy.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr](https://monsuivipsy.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/main-7e0b56ffb87bf34aa7e2.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml](https://monsuivipsy.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/cgu](https://monsuivipsy.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  
  
Instances: 11
  
### Solution
<p>Validate that the response does not contain sensitive, personal or user-specific information.  If it does, consider the use of the following HTTP response headers, to limit, or prevent the content being stored and retrieved from the cache by another user:</p><p>Cache-Control: no-cache, no-store, must-revalidate, private</p><p>Pragma: no-cache</p><p>Expires: 0</p><p>This configuration directs both HTTP 1.0 and HTTP 1.1 compliant caching servers to not store the response, and to not retrieve the response (without validation) from the cache, in response to a similar request. </p>
  
### Other information
<p>In the absence of an explicitly specified caching lifetime directive in the response, a liberal lifetime heuristic of 1 year was assumed. This is permitted by rfc7234.</p>
  
### Reference
* https://tools.ietf.org/html/rfc7234
* https://tools.ietf.org/html/rfc7231
* http://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html (obsoleted by rfc7234)

  
#### CWE Id : 524
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Timestamp Disclosure - Unix
##### Informational (Low)
  
  
  
  
#### Description
<p>A timestamp was disclosed by the application/web server - Unix</p>
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `805306368`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `268435456`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `134217727`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `67108864`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741825`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `134217728`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `62914560`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `33554432`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741824`
  
  
  
  
* URL: [https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js](https://monsuivipsy.fabrique.social.gouv.fr/_next/static/chunks/framework.e3de07479da4f2477dea.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741823`
  
  
  
  
Instances: 10
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>805306368, which evaluates to: 1995-07-09 16:12:48</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3