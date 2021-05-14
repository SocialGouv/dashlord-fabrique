
# ZAP Scanning Report

Generated on Tue, 11 May 2021 17:07:48


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 7 |
| Low | 7 |
| Informational | 7 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: script-src unsafe-inline | Medium | 2 | 
| CSP: style-src unsafe-inline | Medium | 2 | 
| CSP: Wildcard Directive | Medium | 2 | 
| Reverse Tabnabbing | Medium | 12 | 
| Source Code Disclosure - Java | Medium | 1 | 
| Sub Resource Integrity Attribute Missing | Medium | 12 | 
| X-Frame-Options Header Not Set | Medium | 11 | 
| Absence of Anti-CSRF Tokens | Low | 11 | 
| CSP: Notices | Low | 2 | 
| Dangerous JS Functions | Low | 12 | 
| Feature Policy Header Not Set | Low | 11 | 
| Incomplete or No Cache-control and Pragma HTTP Header Set | Low | 11 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| X-Content-Type-Options Header Missing | Low | 11 | 
| Base64 Disclosure | Informational | 11 | 
| Content-Type Header Missing | Informational | 1 | 
| Information Disclosure - Suspicious Comments | Informational | 11 | 
| Modern Web Application | Informational | 11 | 
| Non-Storable Content | Informational | 5 | 
| Storable and Cacheable Content | Informational | 6 | 
| Timestamp Disclosure - Unix | Informational | 430 | 

## Alert Detail


  
  
  
  
### CSP: script-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>script-src includes unsafe-inline.</p>
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
Instances: 2
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Other information
<p>The response contained multiple CSP headers, one or more of them contained a report-uri directive and therefore they could not be merged. The first identified header/policy was analyzed.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
Instances: 2
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Other information
<p>The response contained multiple CSP headers, one or more of them contained a report-uri directive and therefore they could not be merged. The first identified header/policy was analyzed.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### CSP: Wildcard Directive
##### Medium (Medium)
  
  
  
  
#### Description
<p>The following directives either allow wildcard sources (or ancestors), are not defined, or are overly broadly defined: </p><p>frame-ancestors, form-action</p><p></p><p>The directive(s): frame-ancestors, form-action are among the directives that do not fallback to default-src, missing/excluding them is the same as allowing anything.</p>
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
Instances: 2
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Other information
<p>The response contained multiple CSP headers, one or more of them contained a report-uri directive and therefore they could not be merged. The first identified header/policy was analyzed.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Reverse Tabnabbing
##### Medium (Medium)
  
  
  
  
#### Description
<p>At least one link on this page is vulnerable to Reverse tabnabbing as it uses a target attribute without using both of the "noopener" and "noreferrer" keywords in the "rel" attribute, which allows the target page to take control of this page.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/apprentissage-apprentis-et-organismes-de-formation-cfa](https://code.travail.gouv.fr/fiche-ministere-travail/apprentissage-apprentis-et-organismes-de-formation-cfa)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/IMG/pdf/qr_of_cfa_nouveau-confinement.pdf" type="application/pdf" class="doc-joint__link pdf" target="_blank" rel="nofollow, noopener"><span class="doc-joint__libelle-lien">Téléchargement</span><span class="doc-joint__taille">(180.5&nbsp;ko)</span></a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/responsabilite-de-lemployeur-droit-de-retrait](https://code.travail.gouv.fr/fiche-ministere-travail/responsabilite-de-lemployeur-droit-de-retrait)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/actualites/l-actualite-du-ministere/article/coronavirus-covid-19-securite-et-sante-des-travailleurs-les-obligations" class="spip_in" target="_blank" rel="nofollow, noopener">Lire l’article plus détaillé à propos de la responsabilité de l’employeur et ses obligations</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/formation-professionnelle-des-salaries-en-activite-partielle](https://code.travail.gouv.fr/fiche-ministere-travail/formation-professionnelle-des-salaries-en-activite-partielle)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/emploi/accompagnement-des-mutations-economiques/activite-partielle" class="spip_in" target="_blank" rel="nofollow, noopener">activité partielle</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/teletravail-en-periode-de-covid-19](https://code.travail.gouv.fr/fiche-ministere-travail/teletravail-en-periode-de-covid-19)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/actualites/l-actualite-du-ministere/covid19-numero-vert-teletravailleurs" class="spip_in" target="_blank" rel="nofollow, noopener"><strong> <webcomponent-tooltip content="Accord%20collectif%20conclu%20au%20niveau%20national%20qui%20s%E2%80%99applique%20aux%20secteurs%20de%20l%E2%80%99industrie%2C%20de%20la%20construction%2C%20du%20commerce%20et%20des%20services.%20">0</webcomponent-tooltip> 800 130 000 - numéro gratuit pour les télétravailleurs en difficulté</strong></a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/actualites/l-actualite-du-ministere/article/activite-partielle-tentatives-d-escroquerie-par-hameconnage-phishing" class="spip_in" target="_blank" rel="nofollow, noopener"><strong>En savoir +</strong></a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/adaptation-de-lactivite-conges-mise-a-disposition-de-main-doeuvre](https://code.travail.gouv.fr/fiche-ministere-travail/adaptation-de-lactivite-conges-mise-a-disposition-de-main-doeuvre)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/emploi/accompagnement-des-mutations-economiques/activite-partielle" class="spip_in" target="_blank" rel="nofollow, noopener">activité partielle</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/emploi/accompagnement-des-mutations-economiques/activite-partielle" class="spip_in" target="_blank" rel="nofollow, noopener">activité partielle</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/formation-professionnelle-stagiaires-et-organismes-de-formation](https://code.travail.gouv.fr/fiche-ministere-travail/formation-professionnelle-stagiaires-et-organismes-de-formation)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/IMG/pdf/qr_of_cfa_nouveau-confinement.pdf" class="spip_in" type="application/pdf" target="_blank" rel="nofollow, noopener">Télécharger le document</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/services-de-sante-au-travail](https://code.travail.gouv.fr/fiche-ministere-travail/services-de-sante-au-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/IMG/pdf/20200716_instruction_sst_signee_dgt_maa.pdf" class="spip_in" type="application/pdf" target="_blank" rel="nofollow, noopener">Consulter l’instruction SST - ministère du Travail - Ministère de l’agriculture du 16 juillet 2020</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/aide-exceptionnelle-aux-employeurs-qui-recrutent-en-apprentissage](https://code.travail.gouv.fr/fiche-ministere-travail/aide-exceptionnelle-aux-employeurs-qui-recrutent-en-apprentissage)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/le-ministere-en-action/relance-activite/plan-1jeune-1solution/" class="spip_in" target="_blank" rel="nofollow, noopener">«&nbsp;1 jeune, 1 solution&nbsp;»</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/mise-a-disposition-temporaire-de-salaries-volontaires-entre-deux-entreprises](https://code.travail.gouv.fr/fiche-ministere-travail/mise-a-disposition-temporaire-de-salaries-volontaires-entre-deux-entreprises)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/IMG/docx/modele-avenant-contrat-travail-pmo.docx" class="spip_in" type="application/vnd.openxmlformats-officedocument.wordprocessingml.document" target="_blank" rel="nofollow, noopener">Modèle avenant contrat de travail prêt de main d’œuvre</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/la-garantie-en-cas-de-sauvegarde-de-redressement-ou-de-liquidation-judiciaire](https://code.travail.gouv.fr/fiche-ministere-travail/la-garantie-en-cas-de-sauvegarde-de-redressement-ou-de-liquidation-judiciaire)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/" class="spip_in" target="_blank" rel="nofollow, noopener">Consulter la rubrique dédiée sur le site du ministère du Travail, de l’Emploi et de l’Insertion</a>`
  
  
  
  
Instances: 12
  
### Solution
<p>Do not use a target attribute, or if you have to then also add the attribute: rel="noopener noreferrer".</p>
  
### Reference
* https://owasp.org/www-community/attacks/Reverse_Tabnabbing
* https://dev.to/ben/the-targetblank-vulnerability-by-example
* https://mathiasbynens.github.io/rel-noopener/
* https://medium.com/@jitbit/target-blank-the-most-underestimated-vulnerability-ever-96e328301f4c

  
#### Source ID : 3

  
  
  
  
### Source Code Disclosure - Java
##### Medium (Medium)
  
  
  
  
#### Description
<p>Application Source Code was disclosed by the web server - Java</p>
  
  
  
* URL: [https://code.travail.gouv.fr/_next/static/chunks/pages/outils/%5Bslug%5D-543a755a0f2acb412fd4.js](https://code.travail.gouv.fr/_next/static/chunks/pages/outils/%5Bslug%5D-543a755a0f2acb412fd4.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `class pr{constructor(){var e,t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};fr(this,"parsedRules",void 0),fr(this,"parsedSituation",{}),fr(this,"replacements",{}),fr(this,"cache",dr()),fr(this,"options",void 0),this.options=ur(ur({},n),{},{logger:null!==(e=n.logger)&&void 0!==e?e:console}),"string"==typeof t&&(t=ar(t,this.options));var r=Object.values(t)[0];"object"==typeof r&&null!=r&&"nodeKind"in r||(t=ar(t,this.options)),this.parsedRules=t,this.replacements=_n(this.parsedRules)}setOptions(e){this.options=ur(ur({},this.options),e)}resetCache(){this.cache=dr()}setSituation(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};return this.resetCache(),this.parsedSituation=Object.fromEntries(Object.entries(e).map((e=>{var[t,n]=e;return n&&"object"==typeof n&&"nodeKind"in n?[t,n]:[t,n&&"object"==typeof n&&"nodeKind"in n?n:this.parse(n,ur({dottedName:"situation [".concat(t,"]"),parsedRules:{}},this.options))]}))),this}parse(){return In(this.replacements,this.options.logger)(sr(this.parsedRules)(Qn(...arguments)))}inversionFail(){return!!this.cache._meta.inversionFail}getRule(e){if(!(e in this.parsedRules))throw new Error("La r\xe8gle '".concat(e,"' n'existe pas"));return this.parsedRules[e]}getParsedRules(){return this.parsedRules}evaluate(e){var t,n=this.cache.nodes.get(e);if(void 0!==n)return n;if(t=e&&"object"==typeof e&&"nodeKind"in e?e:this.parse(e,ur({dottedName:"evaluation",parsedRules:{}},this.options)),!B[t.nodeKind])throw Error('Unknown "nodeKind": '.concat(t.nodeKind));var r=B[t.nodeKind].call(this,t);return this.cache.nodes.set(e,r),r}}function br(e,t){var n=e.getRule(t);return d((function(r,i,a){return r||("nodeValue"in i?"variations"===i.nodeKind?i.explanation.some((e=>{var{consequence:n}=e;return a(n)||!1===n.nodeValue&&n.dottedName!==t})):"reference"===i.nodeKind&&i.dottedName===t?a(e.evaluate(n)):"applicable si"===i.nodeKind?!1===i.explanation.condition.nodeValue||a(i.explanation.valeur):"non applicable si"===i.nodeKind?!1!==i.explanation.condition.nodeValue&&null!==i.explanation.condition.nodeValue:"rule"===i.nodeKind?!1===i.explanation.parent.nodeValue||a(i.explanation.valeur):void 0:r)}),!1,e.evaluate(t))}}]))},cxan:function(e,t,n){"use strict";function r(){return(r=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}n.d(t,"a",(function(){return r}))},dEMF:function(e,t,n){"use strict";t.byteLength=function(e){var t=l(e),n=t[0],r=t[1];return 3*(n+r)/4-r},t.toByteArray=function(e){var t,n,r=l(e),o=r[0],s=r[1],c=new a(function(e,t,n){return 3*(t+n)/4-n}(0,o,s)),u=0,f=s>0?o-4:o;for(n=0;n<f;n+=4)t=i[e.charCodeAt(n)]<<18|i[e.charCodeAt(n+1)]<<12|i[e.charCodeAt(n+2)]<<6|i[e.charCodeAt(n+3)],c[u++]=t>>16&255,c[u++]=t>>8&255,c[u++]=255&t;2===s&&(t=i[e.charCodeAt(n)]<<2|i[e.charCodeAt(n+1)]>>4,c[u++]=255&t);1===s&&(t=i[e.charCodeAt(n)]<<10|i[e.charCodeAt(n+1)]<<4|i[e.charCodeAt(n+2)]>>2,c[u++]=t>>8&255,c[u++]=255&t);return c},t.fromByteArray=function(e){for(var t,n=e.length,i=n%3,a=[],o=16383,s=0,c=n-i;s<c;s+=o)a.push(u(e,s,s+o>c?c:s+o));1===i?(t=e[n-1],a.push(r[t>>2]+r[t<<4&63]+"==")):2===i&&(t=(e[n-2]<<8)+e[n-1],a.push(r[t>>10]+r[t>>4&63]+r[t<<2&63]+"="));return a.join("")};for(var r=[],i=[],a="undefined"!==typeof Uint8Array?Uint8Array:Array,o="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",s=0,c=o.length;s<c;++s)r[s]=o[s],i[o.charCodeAt(s)]=s;function l(e){var t=e.length;if(t%4>0)throw new Error("Invalid string. Length must be a multiple of 4");var n=e.indexOf("=");return-1===n&&(n=t),[n,n===t?0:4-n%4]}function u(e,t,n){for(var i,a,o=[],s=t;s<n;s+=3)i=(e[s]<<16&16711680)+(e[s+1]<<8&65280)+(255&e[s+2]),o.push(r[(a=i)>>18&63]+r[a>>12&63]+r[a>>6&63]+r[63&a]);return o.join("")}i["-".charCodeAt(0)]=62,i["_".charCodeAt(0)]=63},e0PB:function(e,t,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/outils/[slug]",function(){return n("OkcC")}])},hzn3:function(e,t,n){"use strict";n.d(t,"a",(function(){return D})),n.d(t,"b",(function(){return y})),n.d(t,"c",(function(){return S})),n.d(t,"d",(function(){return O})),n.d(t,"e",(function(){return b}));var r=n("cxan"),i=n("+wNj"),a=n("ERkP"),o=n.n(a),s=n("bXdj");function c(e,t,n){var r=e.render,o=e.children,s=e.component,c=Object(i.a)(e,["render","children","component"]);if(s)return Object(a.createElement)(s,Object.assign(t,c,{children:o,render:r}));if(r)return r(void 0===o?Object.assign(t,c):Object.assign(t,c,{children:o}));if("function"!==typeof o)throw new Error("Must specify either a render prop, a render function as children, or a component prop to "+n);return o(Object.assign(t,c))}function l(e,t,n){void 0===n&&(n=function(e,t){return e===t});var r=o.a.useRef(e);o.a.useEffect((function(){n(e,r.current)||(t(),r.current=e)}))}var u=function(e,t){if(e===t)return!0;if("object"!==typeof e||!e||"object"!==typeof t||!t)return!1;var n=Object.keys(e),r=Object.keys(t);if(n.length!==r.length)return!1;for(var i=Object.prototype.hasOwnProperty.bind(t),a=0;a<n.length;a++){var o=n[a];if(!i(o)||e[o]!==t[o])return!1}return!0},f=function(e){return!(!e||"function"!==typeof e.stopPropagation)},d=Object(a.createContext)();function p(e){var t=o.a.useRef(e);return o.a.useEffect((function(){t.current=e})),t}var b="6.5.2",h=function(e,t,n){n.forEach((function(n){Object.defineProperty(e,n,{get:function(){return t[n]},enumerable:!0})}))},v=function(e,t){return h(e,t,["active","dirty","dirtyFields","dirtySinceLastSubmit","dirtyFieldsSinceLastSubmit","error","errors","hasSubmitErrors","hasValidationErrors","initialValues","invalid","modified","modifiedSinceLastSubmit","pristine","submitError","submitErrors","submitFailed","submitSucceeded","submitting","touched","valid","validating","values","visited"])},m={"final-form":s.f,"react-final-form":b},g=s.d.reduce((function(e,t){return e[t]=!0,e}),{});function y(e){var t=e.debug,n=e.decorators,b=e.destroyOnUnregister,h=e.form,y=e.initialValues,O=e.initialValuesEqual,j=e.keepDirtyOnReinitialize,w=e.mutators,x=e.onSubmit,P=e.subscription,C=void 0===P?g:P,S=e.validate,D=e.validateOnBlur,T=Object(i.a)(e,["debug","decorators","destroyOnUnregister","form","initialValues","initialValuesEqual","keepDirtyOnReinitialize","mutators","onSubmit","subscription","validate","validateOnBlur"]),E={debug:t,destroyOnUnregister:b,initialValues:y,keepDirtyOnReinitialize:j,mutators:w,onSubmit:x,validate:S,validateOnBlur:D},A=function(e){var t=o.a.useRef();return t.current||(t.current=e()),t.current}((function(){var e=h||Object(s.b)(E);return e.pauseValidation(),e})),L=Object(a.useState)((function(){var e={};return A.subscribe((function(t){e=t}),C)(),e})),k=L[0],_=L[1],I=p(k);Object(a.useEffect)((function(){A.isValidationPaused()&&A.resumeValidation();var e=[A.subscribe((function(e){u(e,I.current)||_(e)}),C)].concat(n?n.map((function(e){return e(A)})):[]);return function(){A.pauseValidation(),e.reverse().forEach((function(e){return e()}))}}),[n]),l(t,(function(){A.setConfig("debug",t)})),l(b,(function(){A.destroyOnUnregister=!!b})),l(j,(function(){A.setConfig("keepDirtyOnReinitialize",j)})),l(y,(function(){A.setConfig("initialValues",y)}),O||u),l(w,(function(){A.setConfig("mutators",w)})),l(x,(function(){A.setConfig("onSubmit",x)})),l(S,(function(){A.setConfig("validate",S)})),l(D,(function(){A.setConfig("validateOnBlur",D)}));var N={form:Object(r.a)({},A,{reset:function(e){f(e)?A.reset():A.reset(e)}}),handleSubmit:function(e){return e&&("function"===typeof e.preventDefault&&e.preventDefault(),"function"===typeof e.stopPropagation&&e.stopPropagation()),A.submit()}};return v(N,k),Object(a.createElement)(d.Provider,{value:A},c(Object(r.a)({},T,{__versions:m}),N,"ReactFinalForm"))}function O(e){var t=Object(a.useContext)(d);if(!t)throw new Error((e||"useForm")+" must be used inside of a <Form> component");return t}var j="undefined"!==typeof window&&window.navigator&&window.navigator.product&&"ReactNative"===window.navigator.product,w=s.c.reduce((function(e,t){return e[t]=!0,e}),{}),x=function(e,t){return void 0===e?"":e},P=function(e,t){return""===e?void 0:e},C=function(e,t){return e===t};function S(e,t){void 0===t&&(t={});var n=t,i=n.afterSubmit,o=n.allowNull,s=n.component,c=n.data,l=n.defaultValue,u=n.format,f=void 0===u?x:u,d=n.formatOnBlur,b=n.initialValue,v=n.multiple,m=n.parse,g=void 0===m?P:m,y=n.subscription,S=void 0===y?w:y,D=n.type,T=n.validateFields,E=n.value,A=O("useField"),L=p(t),k=function(t,n){return A.registerField(e,t,S,{afterSubmit:i,beforeSubmit:function(){var t=L.current,n=t.beforeSubmit,r=t.formatOnBlur,i=t.format,a=void 0===i?x:i;if(r){var o=A.getFieldState(e).value,s=a(o,e);s!==o&&A.change(e,s)}return n&&n()},data:c,defaultValue:l,getValidator:function(){return L.current.validate},initialValue:b,isEqual:function(e,t){return(L.current.isEqual||C)(e,t)},silent:n,validateFields:T})},_=Object(a.useRef)(!0),I=Object(a.useState)((function(){var e={},t=A.destroyOnUnregister;return A.destroyOnUnregister=!1,k((function(t){e=t}),!0)(),A.destroyOnUnregister=t,e})),N=I[0],R=I[1];Object(a.useEffect)((function(){return k((function(e){_.current?_.current=!1:R(e)}),!1)}),[e,c,l,b]);var M={onBlur:Object(a.useCallback)((function(e){if(N.blur(),d){var t=A.getFieldState(N.name);N.change(f(t.value,N.name))}}),[N.blur,N.name,f,d]),onChange:Object(a.useCallback)((function(t){var n=t&&t.target?function(e,t,n,r){if(!r&&e.nativeEvent&&void 0!==e.nativeEvent.text)return e.nativeEvent.text;if(r&&e.nativeEvent)return e.nativeEvent.text;var i=e.target,a=i.type,o=i.value,s=i.checked;switch(a){case"checkbox":if(void 0!==n){if(s)return Array.isArray(t)?t.concat(n):[n];if(!Array.isArray(t))return t;var c=t.indexOf(n);return c<0?t:t.slice(0,c).concat(t.slice(c+1))}return!!s;case"select-multiple":return function(e){var t=[];if(e)for(var n=0;n<e.length;n++){var r=e[n];r.selected&&t.push(r.value)}return t}(e.target.options);default:return o}}(t,N.value,E,j):t;N.change(g(n,e))}),[E,e,g,N.change,N.value,D]),onFocus:Object(a.useCallback)((function(e){N.focus()}),[N.focus])},B={};!function(e,t){h(e,t,["active","data","dirty","dirtySinceLastSubmit","error","initial","invalid","length","modified","modifiedSinceLastSubmit","pristine","submitError","submitFailed","submitSucceeded","submitting","touched","valid","validating","visited"])}(B,N);var V=Object(r.a)({name:e,get value(){var t=N.value;return d?"input"===s&&(t=x(t)):t=f(t,e),null!==t||o||(t=""),"checkbox"===D||"radio"===D?E:"select"===s&&v?t||[]:t},get checked(){var t=N.value;return"checkbox"===D?(t=f(t,e),void 0===E?!!t:!(!Array.isArray(t)||!~t.indexOf(E))):"radio"===D?f(t,e)===E:void 0}},M);return v&&(V.multiple=v),void 0!==D&&(V.type=D),{input:V,meta:B}}var D=Object(a.forwardRef)((function(e,t){var n=e.afterSubmit,o=e.allowNull,s=e.beforeSubmit,l=e.children,u=e.component,f=e.data,d=e.defaultValue,p=e.format,b=e.formatOnBlur,h=e.initialValue,v=e.isEqual,m=e.multiple,g=e.name,y=e.parse,O=e.subscription,j=e.type,w=e.validate,x=e.validateFields,P=e.value,C=Object(i.a)(e,["afterSubmit","allowNull","beforeSubmit","children","component","data","defaultValue","format","formatOnBlur","initialValue","isEqual","multiple","name","parse","subscription","type","validate","validateFields","value"]),D=S(g,{afterSubmit:n,allowNull:o,beforeSubmit:s,children:l,component:u,data:f,defaultValue:d,format:p,formatOnBlur:b,initialValue:h,isEqual:v,multiple:m,parse:y,subscription:O,type:j,validate:w,validateFields:x,value:P});if("function"===typeof l)return l(Object(r.a)({},D,C));if("string"===typeof u)return Object(a.createElement)(u,Object(r.a)({},D.input,{children:l,ref:t},C));if(!g)throw new Error("prop name cannot be undefined in <Field> component");return c(Object(r.a)({children:l,component:u,ref:t},C),D,"Field("+g+")")}))},jwsI:function(e,t,n){"use strict";n.d(t,"a",(function(){return u}));var r=n("zjfJ"),i=n("jg1C"),a=n("HbGN"),o=n("R+09"),s=(n("ERkP"),n("j/s1"));function c(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function l(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?c(Object(n),!0).forEach((function(t){Object(r.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):c(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function u(e){var t=e.required,n=e.children,r=Object(a.a)(e,["required","children"]);return Object(i.jsxs)(b,l(l({},r),{},{children:[n,t&&Object(i.jsx)(h,{"aria-label":"champs obligatoire",children:"*"})]}))}var f=o.T.breakpoints,d=o.T.fonts,p=o.T.spacings,b=s.d.label.withConfig({displayName:"Question__Label",componentId:"sc-1to43s2-0"})(["display:block;margin-top:",";margin-bottom:",";font-weight:600;font-size:",";cursor:",";@media (max-width:","){font-size:",";}"],p.medium,p.small,d.sizes.headings.small,(function(e){return e.as?"default":"pointer"}),f.mobile,d.sizes.default),h=s.d.span.withConfig({displayName:"Question__Mandatory",componentId:"sc-1to43s2-1"})(["display:inline-block;margin-left:",";color:",";"],p.small,(function(e){return e.theme.error}))},kRP3:function(e,t,n){"use strict";n.d(t,"a",(function(){return h}));var r=n("jg1C"),i=n("zjfJ"),a=n("HbGN"),o=n("R+09"),s=(n("ERkP"),n("hzn3")),c=n("J7iC"),l=n("j/s1"),u=n("WrCP"),f=n("jwsI"),d=n("796T");function p(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function b(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?p(Object(n),!0).forEach((function(t){Object(i.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):p(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function h(e){var t=e.name,n=e.label,i=e.inputType,l=void 0===i?"text":i,p=e.validate,h=e.validateOnChange,v=void 0!==h&&h,y=Object(a.a)(e,["name","label","inputType","validate","validateOnChange"]),O="date"===l?o.t:o.r;return Object(r.jsx)(c.a,{children:function(e){return Object(r.jsxs)(r.Fragment,{children:[Object(r.jsx)(f.a,{required:!0,htmlFor:e,children:n}),Object(r.jsx)(m,{children:Object(r.jsx)(s.a,{name:t,validate:function(e){return p?p(e):Object(d.d)(e)},subscription:{dirty:!0,error:!0,invalid:!0,submitFailed:!0,touched:!0,value:!0},render:function(t){var n=t.input,i=t.meta,a=i.error,o=i.invalid,s=i.dirty,c=i.touched,l=i.submitFailed;return Object(r.jsxs)(r.Fragment,{children:[Object(r.jsx)(O,b(b(b({},n),y),{},{id:e,invalid:c&&o})),o&&(!v&&l||v&&s)&&Object(r.jsx)(g,{children:Object(r.jsx)(u.d,{children:a})})]})}})})]})}})}var v=o.T.spacings,m=l.d.div.withConfig({displayName:"TextQuestion__QuestionWrapper",componentId:"sc-1ani00u-0"})(["display:flex;align-items:center;margin-bottom:",";"],v.medium),g=l.d.div.withConfig({displayName:"TextQuestion__ErrorWrapper",componentId:"sc-1ani00u-1"})(["display:inline-block;margin-left:",";"],v.medium)},lrUq:function(e,t,n){"use strict";n.d(t,"a",(function(){return h}));var r=n("jg1C"),i=n("zjfJ"),a=n("HbGN"),o=n("R+09"),s=(n("ERkP"),n("hzn3")),c=n("KZJo"),l=n("WrCP"),u=n("jwsI"),f=n("sQhx"),d=n("796T");function p(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function b(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?p(Object(n),!0).forEach((function(t){Object(i.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):p(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function h(e){var t=e.name,n=e.label,i=e.required,p=void 0===i||i,h=e.onChange,v=Object(a.a)(e,["name","label","required","onChange"]);return Object(r.jsxs)(r.Fragment,{children:[Object(r.jsx)(u.a,{as:"p",required:p,children:n}),Object(r.jsxs)(f.c,b(b({},v),{},{children:[Object(r.jsx)(s.a,{type:"radio",parse:function(e){return"true"===e},name:t,label:"Oui",value:!0,validate:d.e,children:function(e){return Object(r.jsx)(o.u,b({id:"".concat(t,"-yes"),label:"Oui"},e.input))}}),Object(r.jsx)(s.a,{type:"radio",parse:function(e){return"true"===e},name:t,value:!1,validate:d.e,children:function(e){return Object(r.jsx)(o.u,b({id:"".concat(t,"-no"),label:"Non"},e.input))}})]})),Object(r.jsx)(l.c,{name:t}),h&&Object(r.jsx)(c.a,{name:t,children:function(e){return h(e)}})]})}},mj5F:function(e,t,n){"use strict";(function(e,r){n.d(t,"a",(function(){return w})),n.d(t,"b",(function(){return o})),n.d(t,"c",(function(){return m})),n.d(t,"d",(function(){return v})),n.d(t,"e",(function(){return f})),n.d(t,"f",(function(){return l})),n.d(t,"g",(function(){return p})),n.d(t,"h",(function(){return g})),n.d(t,"i",(function(){return O}));var i=n("HUYn"),a=n("c6Sh"),o={identify:function(e){return e instanceof Uint8Array},default:!1,tag:"tag:yaml.org,2002:binary",resolve:function(t,n){var r=Object(a.q)(t,n);if("function"===typeof e)return e.from(r,"base64");if("function"===typeof atob){for(var o=atob(r.replace(/[\n\r]/g,"")),s=new Uint8Array(o.length),c=0;c<o.length;++c)s[c]=o.charCodeAt(c);return s}return t.errors.push(new i.v(n,"This environment does not support reading binary tags; either Buffer or atob is required")),null},options:a.i,stringify:function(t,n,r,o){var s,c=t.comment,l=t.type,u=t.value;if("function"===typeof e)s=u instanceof e?u.toString("base64"):e.from(u.buffer).toString("base64");else{if("function"!==typeof btoa)throw new Error("This environment does not support writing binary tags; either Buffer or btoa is required");for(var f="",d=0;d<u.length;++d)f+=String.fromCharCode(u[d]);s=btoa(f)}if(l||(l=a.i.defaultType),l===i.e.QUOTE_DOUBLE)u=s;else{for(var p=a.i.lineWidth,b=Math.ceil(s.length/p),h=new Array(b),v=0,m=0;v<b;++v,m+=p)h[v]=s.substr(m,p);u=h.join(l===i.e.BLOCK_LITERAL?"\n":" ")}return Object(a.j)({comment:c,type:l,value:u},n,r,o)}};function s(e,t){for(var n=Object(a.o)(e,t),r=0;r<n.items.length;++r){var o=n.items[r];if(!(o instanceof a.e)){if(o instanceof a.k){if(o.items.length>1){throw new i.n(t,"Each pair must have its own sequence indicator")}var s=o.items[0]||new a.e;o.commentBefore&&(s.commentBefore=s.commentBefore?"".concat(o.commentBefore,"\n").concat(s.commentBefore):o.commentBefore),o.comment&&(s.comment=s.comment?"".concat(o.comment,"\n").concat(s.comment):o.comment),o=s}n.items[r]=o instanceof a.e?o:new a.e(o)}}return n}function c(e,t,n){var r=new a.g(e);r.tag="tag:yaml.org,2002:pairs";var o,s=Object(i.g)(t);try{for(s.s();!(o=s.n()).done;){var c=o.value,l=void 0,u=void 0;if(Array.isArray(c)){if(2!==c.length)throw new TypeError("Expected [key, value] tuple: ".concat(c));l=c[0],u=c[1]}else if(c&&c instanceof Object){var f=Object.keys(c);if(1!==f.length)throw new TypeError("Expected { key: value } tuple: ".concat(c));u=c[l=f[0]]}else l=c;var d=e.createPair(l,u,n);r.items.push(d)}}catch(p){s.e(p)}finally{s.f()}return r}var l={default:!1,tag:"tag:yaml.org,2002:pairs",resolve:s,createNode:c},u=function(e){Object(i.q)(n,e);var t=Object(i.r)(n);function n(){var e;return Object(i.j)(this,n),e=t.call(this),Object(i.l)(Object(i.w)(e),"add",a.k.prototype.add.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"delete",a.k.prototype.delete.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"get",a.k.prototype.get.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"has",a.k.prototype.has.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"set",a.k.prototype.set.bind(Object(i.w)(e))),e.tag=n.tag,e}return Object(i.i)(n,[{key:"toJSON",value:function(e,t){var n=new Map;t&&t.onCreate&&t.onCreate(n);var r,o=Object(i.g)(this.items);try{for(o.s();!(r=o.n()).done;){var s=r.value,c=void 0,l=void 0;if(s instanceof a.e?(c=Object(a.w)(s.key,"",t),l=Object(a.w)(s.value,c,t)):c=Object(a.w)(s,"",t),n.has(c))throw new Error("Ordered maps must not include duplicate keys");n.set(c,l)}}catch(u){o.e(u)}finally{o.f()}return n}}]),n}(a.g);Object(i.l)(u,"tag","tag:yaml.org,2002:omap");var f={identify:function(e){return e instanceof Map},nodeClass:u,default:!1,tag:"tag:yaml.org,2002:omap",resolve:function(e,t){var n,r=s(e,t),o=[],c=Object(i.g)(r.items);try{for(c.s();!(n=c.n()).done;){var l=n.value.key;if(l instanceof a.f){if(o.includes(l.value)){throw new i.n(t,"Ordered maps must not include duplicate keys")}o.push(l.value)}}}catch(f){c.e(f)}finally{c.f()}return Object.assign(new u,r)},createNode:function(e,t,n){var r=c(e,t,n),i=new u;return i.items=r.items,i}},d=function(e){Object(i.q)(n,e);var t=Object(i.r)(n);function n(){var e;return Object(i.j)(this,n),(e=t.call(this)).tag=n.tag,e}return Object(i.i)(n,[{key:"add",value:function(e){var t=e instanceof a.e?e:new a.e(e);Object(a.s)(this.items,t.key)||this.items.push(t)}},{key:"get",value:function(e,t){var n=Object(a.s)(this.items,e);return!t&&n instanceof a.e?n.key instanceof a.f?n.key.value:n.key:n}},{key:"set",value:function(e,t){if("boolean"!==typeof t)throw new Error("Expected boolean value for set(key, value) in a YAML set, not ".concat(Object(i.h)(t)));var n=Object(a.s)(this.items,e);n&&!t?this.items.splice(this.items.indexOf(n),1):!n&&t&&this.items.push(new a.e(e))}},{key:"toJSON",value:function(e,t){return Object(i.s)(Object(i.t)(n.prototype),"toJSON",this).call(this,e,t,Set)}},{key:"toString",value:function(e,t,r){if(!e)return JSON.stringify(this);if(this.hasAllNullValues())return Object(i.s)(Object(i.t)(n.prototype),"toString",this).call(this,e,t,r);throw new Error("Set items must all have null values")}}]),n}(a.k);Object(i.l)(d,"tag","tag:yaml.org,2002:set");var p={identify:function(e){return e instanceof Set},nodeClass:d,default:!1,tag:"tag:yaml.org,2002:set",resolve:function(e,t){var n=Object(a.n)(e,t);if(!n.hasAllNullValues())throw new i.n(t,"Set items must all have null values");return Object.assign(new d,n)},createNode:function(e,t,n){var r,a=new d,o=Object(i.g)(t);try{for(o.s();!(r=o.n()).done;){var s=r.value;a.items.push(e.createPair(s,null,n))}}catch(c){o.e(c)}finally{o.f()}return a}},b=function(e,t){var n=t.split(":").reduce((function(e,t){return 60*e+Number(t)}),0);return"-"===e?-n:n},h=function(e){var t=e.value;if(isNaN(t)||!isFinite(t))return Object(a.r)(t);var n="";t<0&&(n="-",t=Math.abs(t));var r=[t%60];return t<60?r.unshift(0):(t=Math.round((t-r[0])/60),r.unshift(t%60),t>=60&&(t=Math.round((t-r[0])/60),r.unshift(t))),n+r.map((function(e){return e<10?"0"+String(e):String(e)})).join(":").replace(/000000\d*$/,"")},v={identify:function(e){return"number"===typeof e},default:!0,tag:"tag:yaml.org,2002:int",format:"TIME",test:/^([-+]?)([0-9][0-9_]*(?::[0-5]?[0-9])+)$/,resolve:function(e,t,n){return b(t,n.replace(/_/g,""))},stringify:h},m={identify:function(e){return"number"===typeof e},default:!0,tag:"tag:yaml.org,2002:float",format:"TIME",test:/^([-+]?)([0-9][0-9_]*(?::[0-5]?[0-9])+\.[0-9_]*)$/,resolve:function(e,t,n){return b(t,n.replace(/_/g,""))},stringify:h},g={identify:function(e){return e instanceof Date},default:!0,tag:"tag:yaml.org,2002:timestamp",test:RegExp("^(?:([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})(?:(?:t|T|[ \\t]+)([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2}(\\.[0-9]+)?)(?:[ \\t]*(Z|[-+][012]?[0-9](?::[0-9]{2})?))?)?)$"),resolve:function(e,t,n,r,i,a,o,s,c){s&&(s=(s+"00").substr(1,3));var l=Date.UTC(t,n-1,r,i||0,a||0,o||0,s||0);if(c&&"Z"!==c){var u=b(c[0],c.slice(1));Math.abs(u)<30&&(u*=60),l-=6e4*u}return new Date(l)},stringify:function(e){return e.value.toISOString().replace(/((T00:00)?:00)?\.000Z$/,"")}};function y(e){var t="undefined"!==typeof r&&r.env||{};return e?"undefined"!==typeof YAML_SILENCE_DEPRECATION_WARNINGS?!YAML_SILENCE_DEPRECATION_WARNINGS:!t.YAML_SILENCE_DEPRECATION_WARNINGS:"undefined"!==typeof YAML_SILENCE_WARNINGS?!YAML_SILENCE_WARNINGS:!t.YAML_SILENCE_WARNINGS}function O(e,t){if(y(!1)){var n="undefined"!==typeof r&&r.emitWarning;n?n(e,t):console.warn(t?"".concat(t,": ").concat(e):e)}}var j={};function w(e,t){if(!j[e]&&y(!0)){j[e]=!0;var n="The option '".concat(e,"' will be removed in a future release");O(n+=t?", use '".concat(t,"' instead."):".","DeprecationWarning")}}}).call(this,n("+ZX+").Buffer,n("F63i"))},nENm:function(e,t,n){var r,i;r=this,i=function(){function e(t,n,r){return this.id=++e.highestId,this.name=t,this.symbols=n,this.postprocess=r,this}function t(e,t,n,r){this.rule=e,this.dot=t,this.reference=n,this.data=[],this.wantedBy=r,this.isComplete=this.dot===e.symbols.length}function n(e,t){this.grammar=e,this.index=t,this.states=[],this.wants={},this.scannable=[],this.completed={}}function r(e,t){this.rules=e,this.start=t||this.rules[0].name;var n=this.byName={};this.rules.forEach((function(e){n.hasOwnProperty(e.name)||(n[e.name]=[]),n[e.name].push(e)}))}function i(){this.reset("")}function a(e,t,a){if(e instanceof r){var o=e;a=t}else o=r.fromCompiled(e,t);for(var s in this.grammar=o,this.options={keepHistory:!1,lexer:o.lexer||new i},a||{})this.options[s]=a[s];this.lexer=this.options.lexer,this.lexerState=void 0;var c=new n(o,0);this.table=[c],c.wants[o.start]=[],c.predict(o.start),c.process(),this.current=0}function o(e){var t=typeof e;if("string"===t)return e;if("object"===t){if(e.literal)return JSON.stringify(e.literal);if(e instanceof RegExp)return e.toString();if(e.type)return"%"+e.type;if(e.test)return"<"+String(e.test)+">";throw new Error("Unknown symbol type: "+e)}}return e.highestId=0,e.prototype.toString=function(e){var t="undefined"===typeof e?this.symbols.map(o).join(" "):this.symbols.slice(0,e).map(o).join(" ")+" \u25cf "+this.symbols.slice(e).map(o).join(" ");return this.name+" \u2192 "+t},t.prototype.toString=function(){return"{"+this.rule.toString(this.dot)+"}, from: "+(this.reference||0)},t.prototype.nextState=function(e){var n=new t(this.rule,this.dot+1,this.reference,this.wantedBy);return n.left=this,n.right=e,n.isComplete&&(n.data=n.build(),n.right=void 0),n},t.prototype.build=function(){var e=[],t=this;do{e.push(t.right.data),t=t.left}while(t.left);return e.reverse(),e},t.prototype.finish=function(){this.rule.postprocess&&(this.data=this.rule.postprocess(this.data,this.reference,a.fail))},n.prototype.process=function(e){for(var t=this.states,n=this.wants,r=this.completed,i=0;i<t.length;i++){var o=t[i];if(o.isComplete){if(o.finish(),o.data!==a.fail){for(var s=o.wantedBy,c=s.length;c--;){var l=s[c];this.complete(l,o)}if(o.reference===this.index){var u=o.rule.name;(this.completed[u]=this.completed[u]||[]).push(o)}}}else{if("string"!==typeof(u=o.rule.symbols[o.dot])){this.scannable.push(o);continue}if(n[u]){if(n[u].push(o),r.hasOwnProperty(u)){var f=r[u];for(c=0;c<f.length;c++){var d=f[c];this.complete(o,d)}}}else n[u]=[o],this.predict(u)}}},n.prototype.predict=function(e){for(var n=this.grammar.byName[e]||[],r=0;r<n.length;r++){var i=n[r],a=this.wants[e],o=new t(i,0,this.index,a);this.states.push(o)}},n.prototype.complete=function(e,t){var n=e.nextState(t);this.states.push(n)},r.fromCompiled=function(t,n){var i=t.Lexer;t.ParserStart&&(n=t.ParserStart,t=t.ParserRules);var a=new r(t=t.map((function(t){return new e(t.name,t.symbols,t.postprocess)})),n);return a.lexer=i,a},i.prototype.reset=function(e,t){this.buffer=e,this.index=0,this.line=t?t.line:1,this.lastLineBreak=t?-t.col:0},i.prototype.next=function(){if(this.index<this.buffer.length){var e=this.buffer[this.index++];return"\n"===e&&(this.line+=1,this.lastLineBreak=this.index),{value:e}}},i.prototype.save=function(){return{line:this.line,col:this.index-this.lastLineBreak}},i.prototype.formatError=function(e,t){var n=this.buffer;if("string"===typeof n){var r=n.split("\n").slice(Math.max(0,this.line-5),this.line),i=n.indexOf("\n",this.index);-1===i&&(i=n.length);var a=this.index-this.lastLineBreak,o=String(this.line).length;return t+=" at line "+this.line+" col "+a+":\n\n",t+=r.map((function(e,t){return s(this.line-r.length+t+1,o)+" "+e}),this).join("\n"),t+="\n"+s("",o+a)+"^\n"}return t+" at index "+(this.index-1);function s(e,t){var n=String(e);return Array(t-n.length+1).join(" ")+n}},a.fail={},a.prototype.feed=function(e){var t,r=this.lexer;for(r.reset(e,this.lexerState);;){try{if(!(t=r.next()))break}catch(v){var a=new n(this.grammar,this.current+1);throw this.table.push(a),(c=new Error(this.reportLexerError(v))).offset=this.current,c.token=v.token,c}var o=this.table[this.current];this.options.keepHistory||delete this.table[this.current-1];var s=this.current+1;a=new n(this.grammar,s),this.table.push(a);for(var c,l=void 0!==t.text?t.text:t.value,u=r.constructor===i?t.value:t,f=o.scannable,d=f.length;d--;){var p=f[d],b=p.rule.symbols[p.dot];if(b.test?b.test(u):b.type?b.type===t.type:b.literal===l){var h=p.nextState({data:u,token:t,isToken:!0,reference:s-1});a.states.push(h)}}if(a.process(),0===a.states.length)throw(c=new Error(this.reportError(t))).offset=this.current,c.token=t,c;this.options.keepHistory&&(o.lexerState=r.save()),this.current++}return o&&(this.lexerState=r.save()),this.results=this.finish(),this},a.prototype.reportLexerError=function(e){var t,n,r=e.token;return r?(t="input "+JSON.stringify(r.text[0])+" (lexer error)",n=this.lexer.formatError(r,"Syntax error")):(t="input (lexer error)",n=e.message),this.reportErrorCommon(n,t)},a.prototype.reportError=function(e){var t=(e.type?e.type+" token: ":"")+JSON.stringify(void 0!==e.value?e.value:e),n=this.lexer.formatError(e,"Syntax error");return this.reportErrorCommon(n,t)},a.prototype.reportErrorCommon=function(e,t){var n=[];n.push(e);var r=this.table.length-2,i=this.table[r],a=i.states.filter((function(e){var t=e.rule.symbols[e.dot];return t&&"string"!==typeof t}));return 0===a.length?(n.push("Unexpected "+t+". I did not expect any more input. Here is the state of my parse table:\n"),this.displayStateStack(i.states,n)):(n.push("Unexpected "+t+". Instead, I was expecting to see one of the following:\n"),a.map((function(e){return this.buildFirstStateStack(e,[])||[e]}),this).forEach((function(e){var t=e[0],r=t.rule.symbols[t.dot],i=this.getSymbolDisplay(r);n.push("A "+i+" based on:"),this.displayStateStack(e,n)}),this)),n.push(""),n.join("\n")},a.prototype.displayStateStack=function(e,t){for(var n,r=0,i=0;i<e.length;i++){var a=e[i],o=a.rule.toString(a.dot);o===n?r++:(r>0&&t.push("    ^ "+r+" more lines identical to this"),r=0,t.push("    "+o)),n=o}},a.prototype.getSymbolDisplay=function(e){return function(e){var t=typeof e;if("string"===t)return e;if("object"===t){if(e.literal)return JSON.stringify(e.literal);if(e instanceof RegExp)return"character matching "+e;if(e.type)return e.type+" token";if(e.test)return"token matching "+String(e.test);throw new Error("Unknown symbol type: "+e)}}(e)},a.prototype.buildFirstStateStack=function(e,t){if(-1!==t.indexOf(e))return null;if(0===e.wantedBy.length)return[e];var n=e.wantedBy[0],r=[e].concat(t),i=this.buildFirstStateStack(n,r);return null===i?null:[e].concat(i)},a.prototype.save=function(){var e=this.table[this.current];return e.lexerState=this.lexerState,e},a.prototype.restore=function(e){var t=e.index;this.current=t,this.table[t]=e,this.table.splice(t+1),this.lexerState=e.lexerState,this.results=this.finish()},a.prototype.rewind=function(e){if(!this.options.keepHistory)throw new Error("set option `keepHistory` to enable rewinding");this.restore(this.table[e])},a.prototype.finish=function(){var e=[],t=this.grammar.start;return this.table[this.table.length-1].states.forEach((function(n){n.rule.name===t&&n.dot===n.rule.symbols.length&&0===n.reference&&n.data!==a.fail&&e.push(n)})),e.map((function(e){return e.data}))},{Parser:a,Grammar:r,Rule:e}},e.exports?e.exports=i():r.nearley=i()},ns0p:function(e,t,n){"use strict";n.d(t,"a",(function(){return u}));var r=n("N1LS"),i=n("mrqE"),a=36e5,o={dateTimeDelimiter:/[T ]/,timeZoneDelimiter:/[Z ]/i,timezone:/([Z+-].*)$/},s=/^-?(?:(\d{3})|(\d{2})(?:-?(\d{2}))?|W(\d{2})(?:-?(\d{1}))?|)$/,c=/^(\d{2}(?:[.,]\d*)?)(?::?(\d{2}(?:[.,]\d*)?))?(?::?(\d{2}(?:[.,]\d*)?))?$/,l=/^([+-])(\d{2})(?::?(\d{2}))?$/;function u(e,t){Object(i.a)(1,arguments);var n=t||{},a=null==n.additionalDigits?2:Object(r.a)(n.additionalDigits);if(2!==a&&1!==a&&0!==a)throw new RangeError("additionalDigits must be 0, 1 or 2");if("string"!==typeof e&&"[object String]"!==Object.prototype.toString.call(e))return new Date(NaN);var o,s=f(e);if(s.date){var c=d(s.date,a);o=p(c.restDateString,c.year)}if(isNaN(o)||!o)return new Date(NaN);var l,u=o.getTime(),b=0;if(s.time&&(b=h(s.time),isNaN(b)||null===b))return new Date(NaN);if(!s.timezone){var v=new Date(u+b),g=new Date(0);return g.setFullYear(v.getUTCFullYear(),v.getUTCMonth(),v.getUTCDate()),g.setHours(v.getUTCHours(),v.getUTCMinutes(),v.getUTCSeconds(),v.getUTCMilliseconds()),g}return l=m(s.timezone),isNaN(l)?new Date(NaN):new Date(u+b+l)}function f(e){var t,n={},r=e.split(o.dateTimeDelimiter);if(r.length>2)return n;if(/:/.test(r[0])?(n.date=null,t=r[0]):(n.date=r[0],t=r[1],o.timeZoneDelimiter.test(n.date)&&(n.date=e.split(o.timeZoneDelimiter)[0],t=e.substr(n.date.length,e.length))),t){var i=o.timezone.exec(t);i?(n.time=t.replace(i[1],""),n.timezone=i[1]):n.time=t}return n}function d(e,t){var n=new RegExp("^(?:(\\d{4}|[+-]\\d{"+(4+t)+"})|(\\d{2}|[+-]\\d{"+(2+t)+"})$)"),r=e.match(n);if(!r)return{year:null};var i=r[1]&&parseInt(r[1]),a=r[2]&&parseInt(r[2]);return{year:null==a?i:100*a,restDateString:e.slice((r[1]||r[2]).length)}}function p(e,t){if(null===t)return null;var n=e.match(s);if(!n)return null;var r=!!n[4],i=b(n[1]),a=b(n[2])-1,o=b(n[3]),c=b(n[4]),l=b(n[5])-1;if(r)return function(e,t,n){return t>=1&&t<=53&&n>=0&&n<=6}(0,c,l)?function(e,t,n){var r=new Date(0);r.setUTCFullYear(e,0,4);var i=r.getUTCDay()||7,a=7*(t-1)+n+1-i;return r.setUTCDate(r.getUTCDate()+a),r}(t,c,l):new Date(NaN);var u=new Date(0);return function(e,t,n){return t>=0&&t<=11&&n>=1&&n<=(g[t]||(y(e)?29:28))}(t,a,o)&&function(e,t){return t>=1&&t<=(y(e)?366:365)}(t,i)?(u.setUTCFullYear(t,a,Math.max(i,o)),u):new Date(NaN)}function b(e){return e?parseInt(e):1}function h(e){var t=e.match(c);if(!t)return null;var n=v(t[1]),r=v(t[2]),i=v(t[3]);return function(e,t,n){if(24===e)return 0===t&&0===n;return n>=0&&n<60&&t>=0&&t<60&&e>=0&&e<25}(n,r,i)?n*a+6e4*r+1e3*i:NaN}function v(e){return e&&parseFloat(e.replace(",","."))||0}function m(e){if("Z"===e)return 0;var t=e.match(l);if(!t)return 0;var n="+"===t[1]?-1:1,r=parseInt(t[2]),i=t[3]&&parseInt(t[3])||0;return function(e,t){return t>=0&&t<=59}(0,i)?n*(r*a+6e4*i):NaN}var g=[31,null,31,30,31,30,31,31,30,31,30,31];function y(e){return e%400===0||e%4===0&&e%100}},o9IJ:function(e,t,n){"use strict";n.d(t,"a",(function(){return p}));var r=n("jg1C"),i=n("ERkP"),a=n.n(i),o=n("Xpb+"),s=n.n(o);function c(){return(c=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}var l=Object(i.memo)((function(e){var t=e.children,n=e.math,r=e.block,o=e.errorColor,l=e.renderError,u=e.settings,f=e.as,d=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)t.indexOf(n=a[r])>=0||(i[n]=e[n]);return i}(e,["children","math","block","errorColor","renderError","settings","as"]),p=f||(r?"div":"span"),b=null!=t?t:n,h=Object(i.useState)({innerHtml:""}),v=h[0],m=h[1];return Object(i.useEffect)((function(){try{var e=s.a.renderToString(b,c({displayMode:!!r,errorColor:o,throwOnError:!!l},u));m({innerHtml:e})}catch(e){if(!(e instanceof s.a.ParseError||e instanceof TypeError))throw e;m(l?{errorElement:l(e)}:{innerHtml:e.message})}}),[r,b,o,l,u]),"errorElement"in v?v.errorElement:a.a.createElement(p,Object.assign({},d,{dangerouslySetInnerHTML:{__html:v.innerHtml}}))})),u=n("R+09"),f=n("j/s1"),d=function(e){for(var t=e.replace(/\*/g,"\\times"),n="(?:".concat("(\\(.+\\))","|").concat("([^()\\s]+)",")");t.includes("/");)t=t.replace(new RegExp("".concat(n,"\\s?\\/\\s?").concat(n),"gm"),"\\frac{$1$2}{$3$4}");return t},p=function(e){var t=e.formula;return Object(r.jsx)(h,{children:Object(r.jsx)(v,{children:Object(r.jsx)(l,{block:!0,children:d(t)})})})},b=u.T.spacings,h=f.d.div.withConfig({displayName:"MathFormula__Wrapper",componentId:"a5y61z-0"})(["margin:"," 0;"],b.base),v=f.d.div.withConfig({displayName:"MathFormula__StyledFormula",componentId:"a5y61z-1"})(["display:flex;"])},"p0B+":function(e,t,n){"use strict";n.d(t,"b",(function(){return r})),n.d(t,"a",(function(){return i}));var r=function(e){return e.reduce((function(e,t){return e+parseFloat(t)}),0)},i=function(e){return parseInt(100*e,10)/100}},pTV2:function(e,t,n){var r={"./0016":["+6Xc",9,0,1,11],"./0016/":["+6Xc",9,0,1,11],"./0016/Categorie":["Kz3b",9,51],"./0016/Categorie.js":["Kz3b",9,51],"./0016/CategoriePeriod":["VDYZ",9,0],"./0016/CategoriePeriod.js":["VDYZ",9,0],"./0016/Result":["5Wu1",9,0,1],"./0016/Result.js":["5Wu1",9,0,1],"./0016/Step":["DTl4",9,0,1],"./0016/Step.js":["DTl4",9,0,1],"./0016/__tests__/Categorie.test":["Xa3K",7,30],"./0016/__tests__/Categorie.test.js":["Xa3K",7,30],"./0016/__tests__/CategoriePeriod.test":["BP6y",7,31],"./0016/__tests__/CategoriePeriod.test.js":["BP6y",7,31],"./0016/__tests__/Result.test":["aevT",7,32],"./0016/__tests__/Result.test.js":["aevT",7,32],"./0016/__tests__/Step.test":["+KUf",7,33],"./0016/__tests__/Step.test.js":["+KUf",7,33],"./0016/__tests__/__snapshots__/Categorie.test.js.snap":["qaCH",7,91],"./0016/__tests__/__snapshots__/CategoriePeriod.test.js.snap":["QExd",7,92],"./0016/__tests__/__snapshots__/Result.test.js.snap":["BydI",7,93],"./0016/__tests__/__snapshots__/Step.test.js.snap":["0xq3",7,94],"./0016/__tests__/__snapshots__/indemnite.test.js.snap":["161e",7,95],"./0016/__tests__/indemnite.test":["OpC2",7,34],"./0016/__tests__/indemnite.test.js":["OpC2",7,34],"./0016/indemnite":["Eq7m",9,0],"./0016/indemnite.js":["Eq7m",9,0],"./0016/index":["+6Xc",9,0,1,11],"./0016/index.js":["+6Xc",9,0,1,11],"./0029":["yP+t",9,20],"./0029.js":["yP+t",9,20],"./0044":["+I9v",9,0,1,12],"./0044/":["+I9v",9,0,1,12],"./0044/EchelonChimie":["iQ+F",9,0],"./0044/EchelonChimie.js":["iQ+F",9,0],"./0044/Result":["CqnR",9,0,1],"./0044/Result.js":["CqnR",9,0,1],"./0044/Step":["NKiU",9,0,1],"./0044/Step.js":["NKiU",9,0,1],"./0044/__tests__/EchelonChimie.test":["l2YB",7,35],"./0044/__tests__/EchelonChimie.test.js":["l2YB",7,35],"./0044/__tests__/Result.test":["c2EL",7,36],"./0044/__tests__/Result.test.js":["c2EL",7,36],"./0044/__tests__/Step.test":["673k",7,37],"./0044/__tests__/Step.test.js":["673k",7,37],"./0044/__tests__/__snapshots__/EchelonChimie.test.js.snap":["Cm/8",7,96],"./0044/__tests__/__snapshots__/Result.test.js.snap":["vJ89",7,97],"./0044/__tests__/__snapshots__/Step.test.js.snap":["gu8c",7,98],"./0044/__tests__/__snapshots__/indemnite.test.js.snap":["EXkk",7,99],"./0044/__tests__/indemnite.test":["iG4M",7,38],"./0044/__tests__/indemnite.test.js":["iG4M",7,38],"./0044/coefficients":["jelt",9,52],"./0044/coefficients.js":["jelt",9,52],"./0044/indemnite":["f/SN",9,0],"./0044/indemnite.js":["f/SN",9,0],"./0044/index":["+I9v",9,0,1,12],"./0044/index.js":["+I9v",9,0,1,12],"./0843":["SVjw",9,21],"./0843.js":["SVjw",9,21],"./0992":["YpzO",9,22],"./0992.js":["YpzO",9,22],"./1090":["KA5q",9,23],"./1090.js":["KA5q",9,23],"./1351":["k1nJ",9,24],"./1351.js":["k1nJ",9,24],"./1486":["Qo9l",9,0,1,8],"./1486/":["Qo9l",9,0,1,8],"./1486/__tests__/__snapshots__/indemnite.test.js.snap":["Sqaw",7,100],"./1486/__tests__/indemnite.test":["5+0e",7,39],"./1486/__tests__/indemnite.test.js":["5+0e",7,39],"./1486/indemnite":["7zvQ",9,0],"./1486/indemnite.js":["7zvQ",9,0],"./1486/index":["Qo9l",9,0,1,8],"./1486/index.js":["Qo9l",9,0,1,8],"./1486/steps/Anciennete":["GWAK",9,0,1,8],"./1486/steps/Anciennete.js":["GWAK",9,0,1,8],"./1486/steps/AncienneteCE":["aaPR",9,1],"./1486/steps/AncienneteCE.js":["aaPR",9,1],"./1486/steps/AncienneteETAMIC":["YwAb",9,1],"./1486/steps/AncienneteETAMIC.js":["YwAb",9,1],"./1486/steps/Categorie":["lQ4X",9,0,1,8],"./1486/steps/Categorie.js":["lQ4X",9,0,1,8],"./1486/steps/Result":["7Fuk",9,0,1],"./1486/steps/Result.js":["7Fuk",9,0,1],"./1486/steps/Salaire":["uhW6",9,1],"./1486/steps/Salaire.js":["uhW6",9,1],"./1486/steps/__tests__/Anciennete.test":["QaTA",7,40],"./1486/steps/__tests__/Anciennete.test.js":["QaTA",7,40],"./1486/steps/__tests__/AncienneteCE.test":["i/FB",7,41],"./1486/steps/__tests__/AncienneteCE.test.js":["i/FB",7,41],"./1486/steps/__tests__/AncienneteETAMIC.test":["2JoL",7,42],"./1486/steps/__tests__/AncienneteETAMIC.test.js":["2JoL",7,42],"./1486/steps/__tests__/Categorie.test":["Jmbi",7,43],"./1486/steps/__tests__/Categorie.test.js":["Jmbi",7,43],"./1486/steps/__tests__/Result.test":["oBjX",7,44],"./1486/steps/__tests__/Result.test.js":["oBjX",7,44],"./1486/steps/__tests__/Salaire.test":["3o1D",7,45],"./1486/steps/__tests__/Salaire.test.js":["3o1D",7,45],"./1486/steps/__tests__/__snapshots__/Anciennete.test.js.snap":["iLc9",7,101],"./1486/steps/__tests__/__snapshots__/AncienneteCE.test.js.snap":["quLL",7,102],"./1486/steps/__tests__/__snapshots__/AncienneteETAMIC.test.js.snap":["QjHR",7,103],"./1486/steps/__tests__/__snapshots__/Categorie.test.js.snap":["BCVD",7,104],"./1486/steps/__tests__/__snapshots__/Result.test.js.snap":["lxxi",7,105],"./1486/steps/__tests__/__snapshots__/Salaire.test.js.snap":["zS7t",7,106],"./1518":["fDG8",9,25],"./1518.js":["fDG8",9,25],"./1534":["+Mfw",9,26],"./1534.js":["+Mfw",9,26],"./1596":["FK2k",9,27],"./1596.js":["FK2k",9,27],"./1597":["hv1W",9,28],"./1597.js":["hv1W",9,28],"./2120":["gboR",9,0,1,13],"./2120/":["gboR",9,0,1,13],"./2120/Result":["l9PD",9,0,1],"./2120/Result.js":["l9PD",9,0,1],"./2120/Step":["2yox",9,53],"./2120/Step.js":["2yox",9,53],"./2120/__tests__/Result.test":["TAZf",7,46],"./2120/__tests__/Result.test.js":["TAZf",7,46],"./2120/__tests__/Step.test":["3vee",7,47],"./2120/__tests__/Step.test.js":["3vee",7,47],"./2120/__tests__/__snapshots__/Result.test.js.snap":["1Y+t",7,107],"./2120/__tests__/__snapshots__/Step.test.js.snap":["L3sV",7,108],"./2120/__tests__/__snapshots__/indemnite.test.js.snap":["Qjv1",7,109],"./2120/__tests__/indemnite.test":["g+87",7,48],"./2120/__tests__/indemnite.test.js":["g+87",7,48],"./2120/indemnite":["rn8k",9,0],"./2120/indemnite.js":["rn8k",9,0],"./2120/index":["gboR",9,0,1,13],"./2120/index.js":["gboR",9,0,1,13],"./2344":["jAFk",9,29],"./2344.js":["jAFk",9,29],"./3043":["Kvcs",9,0,1,14],"./3043/":["Kvcs",9,0,1,14],"./3043/Result":["PmkD",9,0,1],"./3043/Result.js":["PmkD",9,0,1],"./3043/__tests__/Result.test":["iDkD",7,49],"./3043/__tests__/Result.test.js":["iDkD",7,49],"./3043/__tests__/__snapshots__/Result.test.js.snap":["yS9T",7,110],"./3043/__tests__/__snapshots__/indemnite.test.js.snap":["8FUA",7,111],"./3043/__tests__/indemnite.test":["bTmF",7,50],"./3043/__tests__/indemnite.test.js":["bTmF",7,50],"./3043/indemnite":["rHvt",9,0],"./3043/indemnite.js":["rHvt",9,0],"./3043/index":["Kvcs",9,0,1,14],"./3043/index.js":["Kvcs",9,0,1,14],"./SansIndemniteLicenciement":["wiln",9,54],"./SansIndemniteLicenciement.js":["wiln",9,54]};function i(e){if(!n.o(r,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=r[e],i=t[0];return Promise.all(t.slice(2).map(n.e)).then((function(){return n.t(i,t[1])}))}i.keys=function(){return Object.keys(r)},i.id="pTV2",e.exports=i},sQhx:function(e,t,n){"use strict";n.d(t,"b",(function(){return l})),n.d(t,"c",(function(){return u})),n.d(t,"d",(function(){return f})),n.d(t,"a",(function(){return d})),n.d(t,"e",(function(){return p}));var r=n("R+09"),i=n("j/s1"),a=r.T.breakpoints,o=r.T.fonts,s=r.T.colors,c=r.T.spacings,l=i.d.label.withConfig({displayName:"stepStyles__Label",componentId:"sc-1cym743-0"})(["display:flex;align-items:center;margin-right:2em;padding:0;"]),u=i.d.div.withConfig({displayName:"stepStyles__RadioContainer",componentId:"sc-1cym743-1"})(["display:flex;flex-direction:",";align-items:flex-start;justify-content:flex-start;margin-bottom:",";"],(function(e){return"row"===e.direction?"row":"column"}),c.medium),f=i.d.h2.withConfig({displayName:"stepStyles__SectionTitle",componentId:"sc-1cym743-2"})(["margin-top:",";margin-bottom:",";color:",";font-weight:600;font-size:",';font-family:"Open Sans",sans-serif;'],c.large,c.medium,(function(e){return e.theme.altText}),o.sizes.headings.small),d=i.d.strong.withConfig({displayName:"stepStyles__Highlight",componentId:"sc-1cym743-3"})(["color:",";font-weight:700;font-size:",";white-space:pre-line;@media (max-width:","){font-size:",";}"],s.primary,o.sizes.headings.small,a.mobile,o.sizes.default),p=i.d.p.withConfig({displayName:"stepStyles__SmallText",componentId:"sc-1cym743-4"})(["color:",";font-size:",";font-style:italic;"],s.paragraph,o.sizes.small)}}`
  
  
  
  
Instances: 1
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p>class pr{constructor(){var e,t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};fr(this,"parsedRules",void 0),fr(this,"parsedSituation",{}),fr(this,"replacements",{}),fr(this,"cache",dr()),fr(this,"options",void 0),this.options=ur(ur({},n),{},{logger:null!==(e=n.logger)&&void 0!==e?e:console}),"string"==typeof t&&(t=ar(t,this.options));var r=Object.values(t)[0];"object"==typeof r&&null!=r&&"nodeKind"in r||(t=ar(t,this.options)),this.parsedRules=t,this.replacements=_n(this.parsedRules)}setOptions(e){this.options=ur(ur({},this.options),e)}resetCache(){this.cache=dr()}setSituation(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};return this.resetCache(),this.parsedSituation=Object.fromEntries(Object.entries(e).map((e=>{var[t,n]=e;return n&&"object"==typeof n&&"nodeKind"in n?[t,n]:[t,n&&"object"==typeof n&&"nodeKind"in n?n:this.parse(n,ur({dottedName:"situation [".concat(t,"]"),parsedRules:{}},this.options))]}))),this}parse(){return In(this.replacements,this.options.logger)(sr(this.parsedRules)(Qn(...arguments)))}inversionFail(){return!!this.cache._meta.inversionFail}getRule(e){if(!(e in this.parsedRules))throw new Error("La r\xe8gle '".concat(e,"' n'existe pas"));return this.parsedRules[e]}getParsedRules(){return this.parsedRules}evaluate(e){var t,n=this.cache.nodes.get(e);if(void 0!==n)return n;if(t=e&&"object"==typeof e&&"nodeKind"in e?e:this.parse(e,ur({dottedName:"evaluation",parsedRules:{}},this.options)),!B[t.nodeKind])throw Error('Unknown "nodeKind": '.concat(t.nodeKind));var r=B[t.nodeKind].call(this,t);return this.cache.nodes.set(e,r),r}}function br(e,t){var n=e.getRule(t);return d((function(r,i,a){return r||("nodeValue"in i?"variations"===i.nodeKind?i.explanation.some((e=>{var{consequence:n}=e;return a(n)||!1===n.nodeValue&&n.dottedName!==t})):"reference"===i.nodeKind&&i.dottedName===t?a(e.evaluate(n)):"applicable si"===i.nodeKind?!1===i.explanation.condition.nodeValue||a(i.explanation.valeur):"non applicable si"===i.nodeKind?!1!==i.explanation.condition.nodeValue&&null!==i.explanation.condition.nodeValue:"rule"===i.nodeKind?!1===i.explanation.parent.nodeValue||a(i.explanation.valeur):void 0:r)}),!1,e.evaluate(t))}}]))},cxan:function(e,t,n){"use strict";function r(){return(r=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}n.d(t,"a",(function(){return r}))},dEMF:function(e,t,n){"use strict";t.byteLength=function(e){var t=l(e),n=t[0],r=t[1];return 3*(n+r)/4-r},t.toByteArray=function(e){var t,n,r=l(e),o=r[0],s=r[1],c=new a(function(e,t,n){return 3*(t+n)/4-n}(0,o,s)),u=0,f=s>0?o-4:o;for(n=0;n<f;n+=4)t=i[e.charCodeAt(n)]<<18|i[e.charCodeAt(n+1)]<<12|i[e.charCodeAt(n+2)]<<6|i[e.charCodeAt(n+3)],c[u++]=t>>16&255,c[u++]=t>>8&255,c[u++]=255&t;2===s&&(t=i[e.charCodeAt(n)]<<2|i[e.charCodeAt(n+1)]>>4,c[u++]=255&t);1===s&&(t=i[e.charCodeAt(n)]<<10|i[e.charCodeAt(n+1)]<<4|i[e.charCodeAt(n+2)]>>2,c[u++]=t>>8&255,c[u++]=255&t);return c},t.fromByteArray=function(e){for(var t,n=e.length,i=n%3,a=[],o=16383,s=0,c=n-i;s<c;s+=o)a.push(u(e,s,s+o>c?c:s+o));1===i?(t=e[n-1],a.push(r[t>>2]+r[t<<4&63]+"==")):2===i&&(t=(e[n-2]<<8)+e[n-1],a.push(r[t>>10]+r[t>>4&63]+r[t<<2&63]+"="));return a.join("")};for(var r=[],i=[],a="undefined"!==typeof Uint8Array?Uint8Array:Array,o="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",s=0,c=o.length;s<c;++s)r[s]=o[s],i[o.charCodeAt(s)]=s;function l(e){var t=e.length;if(t%4>0)throw new Error("Invalid string. Length must be a multiple of 4");var n=e.indexOf("=");return-1===n&&(n=t),[n,n===t?0:4-n%4]}function u(e,t,n){for(var i,a,o=[],s=t;s<n;s+=3)i=(e[s]<<16&16711680)+(e[s+1]<<8&65280)+(255&e[s+2]),o.push(r[(a=i)>>18&63]+r[a>>12&63]+r[a>>6&63]+r[63&a]);return o.join("")}i["-".charCodeAt(0)]=62,i["_".charCodeAt(0)]=63},e0PB:function(e,t,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/outils/[slug]",function(){return n("OkcC")}])},hzn3:function(e,t,n){"use strict";n.d(t,"a",(function(){return D})),n.d(t,"b",(function(){return y})),n.d(t,"c",(function(){return S})),n.d(t,"d",(function(){return O})),n.d(t,"e",(function(){return b}));var r=n("cxan"),i=n("+wNj"),a=n("ERkP"),o=n.n(a),s=n("bXdj");function c(e,t,n){var r=e.render,o=e.children,s=e.component,c=Object(i.a)(e,["render","children","component"]);if(s)return Object(a.createElement)(s,Object.assign(t,c,{children:o,render:r}));if(r)return r(void 0===o?Object.assign(t,c):Object.assign(t,c,{children:o}));if("function"!==typeof o)throw new Error("Must specify either a render prop, a render function as children, or a component prop to "+n);return o(Object.assign(t,c))}function l(e,t,n){void 0===n&&(n=function(e,t){return e===t});var r=o.a.useRef(e);o.a.useEffect((function(){n(e,r.current)||(t(),r.current=e)}))}var u=function(e,t){if(e===t)return!0;if("object"!==typeof e||!e||"object"!==typeof t||!t)return!1;var n=Object.keys(e),r=Object.keys(t);if(n.length!==r.length)return!1;for(var i=Object.prototype.hasOwnProperty.bind(t),a=0;a<n.length;a++){var o=n[a];if(!i(o)||e[o]!==t[o])return!1}return!0},f=function(e){return!(!e||"function"!==typeof e.stopPropagation)},d=Object(a.createContext)();function p(e){var t=o.a.useRef(e);return o.a.useEffect((function(){t.current=e})),t}var b="6.5.2",h=function(e,t,n){n.forEach((function(n){Object.defineProperty(e,n,{get:function(){return t[n]},enumerable:!0})}))},v=function(e,t){return h(e,t,["active","dirty","dirtyFields","dirtySinceLastSubmit","dirtyFieldsSinceLastSubmit","error","errors","hasSubmitErrors","hasValidationErrors","initialValues","invalid","modified","modifiedSinceLastSubmit","pristine","submitError","submitErrors","submitFailed","submitSucceeded","submitting","touched","valid","validating","values","visited"])},m={"final-form":s.f,"react-final-form":b},g=s.d.reduce((function(e,t){return e[t]=!0,e}),{});function y(e){var t=e.debug,n=e.decorators,b=e.destroyOnUnregister,h=e.form,y=e.initialValues,O=e.initialValuesEqual,j=e.keepDirtyOnReinitialize,w=e.mutators,x=e.onSubmit,P=e.subscription,C=void 0===P?g:P,S=e.validate,D=e.validateOnBlur,T=Object(i.a)(e,["debug","decorators","destroyOnUnregister","form","initialValues","initialValuesEqual","keepDirtyOnReinitialize","mutators","onSubmit","subscription","validate","validateOnBlur"]),E={debug:t,destroyOnUnregister:b,initialValues:y,keepDirtyOnReinitialize:j,mutators:w,onSubmit:x,validate:S,validateOnBlur:D},A=function(e){var t=o.a.useRef();return t.current||(t.current=e()),t.current}((function(){var e=h||Object(s.b)(E);return e.pauseValidation(),e})),L=Object(a.useState)((function(){var e={};return A.subscribe((function(t){e=t}),C)(),e})),k=L[0],_=L[1],I=p(k);Object(a.useEffect)((function(){A.isValidationPaused()&&A.resumeValidation();var e=[A.subscribe((function(e){u(e,I.current)||_(e)}),C)].concat(n?n.map((function(e){return e(A)})):[]);return function(){A.pauseValidation(),e.reverse().forEach((function(e){return e()}))}}),[n]),l(t,(function(){A.setConfig("debug",t)})),l(b,(function(){A.destroyOnUnregister=!!b})),l(j,(function(){A.setConfig("keepDirtyOnReinitialize",j)})),l(y,(function(){A.setConfig("initialValues",y)}),O||u),l(w,(function(){A.setConfig("mutators",w)})),l(x,(function(){A.setConfig("onSubmit",x)})),l(S,(function(){A.setConfig("validate",S)})),l(D,(function(){A.setConfig("validateOnBlur",D)}));var N={form:Object(r.a)({},A,{reset:function(e){f(e)?A.reset():A.reset(e)}}),handleSubmit:function(e){return e&&("function"===typeof e.preventDefault&&e.preventDefault(),"function"===typeof e.stopPropagation&&e.stopPropagation()),A.submit()}};return v(N,k),Object(a.createElement)(d.Provider,{value:A},c(Object(r.a)({},T,{__versions:m}),N,"ReactFinalForm"))}function O(e){var t=Object(a.useContext)(d);if(!t)throw new Error((e||"useForm")+" must be used inside of a <Form> component");return t}var j="undefined"!==typeof window&&window.navigator&&window.navigator.product&&"ReactNative"===window.navigator.product,w=s.c.reduce((function(e,t){return e[t]=!0,e}),{}),x=function(e,t){return void 0===e?"":e},P=function(e,t){return""===e?void 0:e},C=function(e,t){return e===t};function S(e,t){void 0===t&&(t={});var n=t,i=n.afterSubmit,o=n.allowNull,s=n.component,c=n.data,l=n.defaultValue,u=n.format,f=void 0===u?x:u,d=n.formatOnBlur,b=n.initialValue,v=n.multiple,m=n.parse,g=void 0===m?P:m,y=n.subscription,S=void 0===y?w:y,D=n.type,T=n.validateFields,E=n.value,A=O("useField"),L=p(t),k=function(t,n){return A.registerField(e,t,S,{afterSubmit:i,beforeSubmit:function(){var t=L.current,n=t.beforeSubmit,r=t.formatOnBlur,i=t.format,a=void 0===i?x:i;if(r){var o=A.getFieldState(e).value,s=a(o,e);s!==o&&A.change(e,s)}return n&&n()},data:c,defaultValue:l,getValidator:function(){return L.current.validate},initialValue:b,isEqual:function(e,t){return(L.current.isEqual||C)(e,t)},silent:n,validateFields:T})},_=Object(a.useRef)(!0),I=Object(a.useState)((function(){var e={},t=A.destroyOnUnregister;return A.destroyOnUnregister=!1,k((function(t){e=t}),!0)(),A.destroyOnUnregister=t,e})),N=I[0],R=I[1];Object(a.useEffect)((function(){return k((function(e){_.current?_.current=!1:R(e)}),!1)}),[e,c,l,b]);var M={onBlur:Object(a.useCallback)((function(e){if(N.blur(),d){var t=A.getFieldState(N.name);N.change(f(t.value,N.name))}}),[N.blur,N.name,f,d]),onChange:Object(a.useCallback)((function(t){var n=t&&t.target?function(e,t,n,r){if(!r&&e.nativeEvent&&void 0!==e.nativeEvent.text)return e.nativeEvent.text;if(r&&e.nativeEvent)return e.nativeEvent.text;var i=e.target,a=i.type,o=i.value,s=i.checked;switch(a){case"checkbox":if(void 0!==n){if(s)return Array.isArray(t)?t.concat(n):[n];if(!Array.isArray(t))return t;var c=t.indexOf(n);return c<0?t:t.slice(0,c).concat(t.slice(c+1))}return!!s;case"select-multiple":return function(e){var t=[];if(e)for(var n=0;n<e.length;n++){var r=e[n];r.selected&&t.push(r.value)}return t}(e.target.options);default:return o}}(t,N.value,E,j):t;N.change(g(n,e))}),[E,e,g,N.change,N.value,D]),onFocus:Object(a.useCallback)((function(e){N.focus()}),[N.focus])},B={};!function(e,t){h(e,t,["active","data","dirty","dirtySinceLastSubmit","error","initial","invalid","length","modified","modifiedSinceLastSubmit","pristine","submitError","submitFailed","submitSucceeded","submitting","touched","valid","validating","visited"])}(B,N);var V=Object(r.a)({name:e,get value(){var t=N.value;return d?"input"===s&&(t=x(t)):t=f(t,e),null!==t||o||(t=""),"checkbox"===D||"radio"===D?E:"select"===s&&v?t||[]:t},get checked(){var t=N.value;return"checkbox"===D?(t=f(t,e),void 0===E?!!t:!(!Array.isArray(t)||!~t.indexOf(E))):"radio"===D?f(t,e)===E:void 0}},M);return v&&(V.multiple=v),void 0!==D&&(V.type=D),{input:V,meta:B}}var D=Object(a.forwardRef)((function(e,t){var n=e.afterSubmit,o=e.allowNull,s=e.beforeSubmit,l=e.children,u=e.component,f=e.data,d=e.defaultValue,p=e.format,b=e.formatOnBlur,h=e.initialValue,v=e.isEqual,m=e.multiple,g=e.name,y=e.parse,O=e.subscription,j=e.type,w=e.validate,x=e.validateFields,P=e.value,C=Object(i.a)(e,["afterSubmit","allowNull","beforeSubmit","children","component","data","defaultValue","format","formatOnBlur","initialValue","isEqual","multiple","name","parse","subscription","type","validate","validateFields","value"]),D=S(g,{afterSubmit:n,allowNull:o,beforeSubmit:s,children:l,component:u,data:f,defaultValue:d,format:p,formatOnBlur:b,initialValue:h,isEqual:v,multiple:m,parse:y,subscription:O,type:j,validate:w,validateFields:x,value:P});if("function"===typeof l)return l(Object(r.a)({},D,C));if("string"===typeof u)return Object(a.createElement)(u,Object(r.a)({},D.input,{children:l,ref:t},C));if(!g)throw new Error("prop name cannot be undefined in <Field> component");return c(Object(r.a)({children:l,component:u,ref:t},C),D,"Field("+g+")")}))},jwsI:function(e,t,n){"use strict";n.d(t,"a",(function(){return u}));var r=n("zjfJ"),i=n("jg1C"),a=n("HbGN"),o=n("R+09"),s=(n("ERkP"),n("j/s1"));function c(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function l(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?c(Object(n),!0).forEach((function(t){Object(r.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):c(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function u(e){var t=e.required,n=e.children,r=Object(a.a)(e,["required","children"]);return Object(i.jsxs)(b,l(l({},r),{},{children:[n,t&&Object(i.jsx)(h,{"aria-label":"champs obligatoire",children:"*"})]}))}var f=o.T.breakpoints,d=o.T.fonts,p=o.T.spacings,b=s.d.label.withConfig({displayName:"Question__Label",componentId:"sc-1to43s2-0"})(["display:block;margin-top:",";margin-bottom:",";font-weight:600;font-size:",";cursor:",";@media (max-width:","){font-size:",";}"],p.medium,p.small,d.sizes.headings.small,(function(e){return e.as?"default":"pointer"}),f.mobile,d.sizes.default),h=s.d.span.withConfig({displayName:"Question__Mandatory",componentId:"sc-1to43s2-1"})(["display:inline-block;margin-left:",";color:",";"],p.small,(function(e){return e.theme.error}))},kRP3:function(e,t,n){"use strict";n.d(t,"a",(function(){return h}));var r=n("jg1C"),i=n("zjfJ"),a=n("HbGN"),o=n("R+09"),s=(n("ERkP"),n("hzn3")),c=n("J7iC"),l=n("j/s1"),u=n("WrCP"),f=n("jwsI"),d=n("796T");function p(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function b(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?p(Object(n),!0).forEach((function(t){Object(i.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):p(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function h(e){var t=e.name,n=e.label,i=e.inputType,l=void 0===i?"text":i,p=e.validate,h=e.validateOnChange,v=void 0!==h&&h,y=Object(a.a)(e,["name","label","inputType","validate","validateOnChange"]),O="date"===l?o.t:o.r;return Object(r.jsx)(c.a,{children:function(e){return Object(r.jsxs)(r.Fragment,{children:[Object(r.jsx)(f.a,{required:!0,htmlFor:e,children:n}),Object(r.jsx)(m,{children:Object(r.jsx)(s.a,{name:t,validate:function(e){return p?p(e):Object(d.d)(e)},subscription:{dirty:!0,error:!0,invalid:!0,submitFailed:!0,touched:!0,value:!0},render:function(t){var n=t.input,i=t.meta,a=i.error,o=i.invalid,s=i.dirty,c=i.touched,l=i.submitFailed;return Object(r.jsxs)(r.Fragment,{children:[Object(r.jsx)(O,b(b(b({},n),y),{},{id:e,invalid:c&&o})),o&&(!v&&l||v&&s)&&Object(r.jsx)(g,{children:Object(r.jsx)(u.d,{children:a})})]})}})})]})}})}var v=o.T.spacings,m=l.d.div.withConfig({displayName:"TextQuestion__QuestionWrapper",componentId:"sc-1ani00u-0"})(["display:flex;align-items:center;margin-bottom:",";"],v.medium),g=l.d.div.withConfig({displayName:"TextQuestion__ErrorWrapper",componentId:"sc-1ani00u-1"})(["display:inline-block;margin-left:",";"],v.medium)},lrUq:function(e,t,n){"use strict";n.d(t,"a",(function(){return h}));var r=n("jg1C"),i=n("zjfJ"),a=n("HbGN"),o=n("R+09"),s=(n("ERkP"),n("hzn3")),c=n("KZJo"),l=n("WrCP"),u=n("jwsI"),f=n("sQhx"),d=n("796T");function p(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function b(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?p(Object(n),!0).forEach((function(t){Object(i.a)(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):p(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function h(e){var t=e.name,n=e.label,i=e.required,p=void 0===i||i,h=e.onChange,v=Object(a.a)(e,["name","label","required","onChange"]);return Object(r.jsxs)(r.Fragment,{children:[Object(r.jsx)(u.a,{as:"p",required:p,children:n}),Object(r.jsxs)(f.c,b(b({},v),{},{children:[Object(r.jsx)(s.a,{type:"radio",parse:function(e){return"true"===e},name:t,label:"Oui",value:!0,validate:d.e,children:function(e){return Object(r.jsx)(o.u,b({id:"".concat(t,"-yes"),label:"Oui"},e.input))}}),Object(r.jsx)(s.a,{type:"radio",parse:function(e){return"true"===e},name:t,value:!1,validate:d.e,children:function(e){return Object(r.jsx)(o.u,b({id:"".concat(t,"-no"),label:"Non"},e.input))}})]})),Object(r.jsx)(l.c,{name:t}),h&&Object(r.jsx)(c.a,{name:t,children:function(e){return h(e)}})]})}},mj5F:function(e,t,n){"use strict";(function(e,r){n.d(t,"a",(function(){return w})),n.d(t,"b",(function(){return o})),n.d(t,"c",(function(){return m})),n.d(t,"d",(function(){return v})),n.d(t,"e",(function(){return f})),n.d(t,"f",(function(){return l})),n.d(t,"g",(function(){return p})),n.d(t,"h",(function(){return g})),n.d(t,"i",(function(){return O}));var i=n("HUYn"),a=n("c6Sh"),o={identify:function(e){return e instanceof Uint8Array},default:!1,tag:"tag:yaml.org,2002:binary",resolve:function(t,n){var r=Object(a.q)(t,n);if("function"===typeof e)return e.from(r,"base64");if("function"===typeof atob){for(var o=atob(r.replace(/[\n\r]/g,"")),s=new Uint8Array(o.length),c=0;c<o.length;++c)s[c]=o.charCodeAt(c);return s}return t.errors.push(new i.v(n,"This environment does not support reading binary tags; either Buffer or atob is required")),null},options:a.i,stringify:function(t,n,r,o){var s,c=t.comment,l=t.type,u=t.value;if("function"===typeof e)s=u instanceof e?u.toString("base64"):e.from(u.buffer).toString("base64");else{if("function"!==typeof btoa)throw new Error("This environment does not support writing binary tags; either Buffer or btoa is required");for(var f="",d=0;d<u.length;++d)f+=String.fromCharCode(u[d]);s=btoa(f)}if(l||(l=a.i.defaultType),l===i.e.QUOTE_DOUBLE)u=s;else{for(var p=a.i.lineWidth,b=Math.ceil(s.length/p),h=new Array(b),v=0,m=0;v<b;++v,m+=p)h[v]=s.substr(m,p);u=h.join(l===i.e.BLOCK_LITERAL?"\n":" ")}return Object(a.j)({comment:c,type:l,value:u},n,r,o)}};function s(e,t){for(var n=Object(a.o)(e,t),r=0;r<n.items.length;++r){var o=n.items[r];if(!(o instanceof a.e)){if(o instanceof a.k){if(o.items.length>1){throw new i.n(t,"Each pair must have its own sequence indicator")}var s=o.items[0]||new a.e;o.commentBefore&&(s.commentBefore=s.commentBefore?"".concat(o.commentBefore,"\n").concat(s.commentBefore):o.commentBefore),o.comment&&(s.comment=s.comment?"".concat(o.comment,"\n").concat(s.comment):o.comment),o=s}n.items[r]=o instanceof a.e?o:new a.e(o)}}return n}function c(e,t,n){var r=new a.g(e);r.tag="tag:yaml.org,2002:pairs";var o,s=Object(i.g)(t);try{for(s.s();!(o=s.n()).done;){var c=o.value,l=void 0,u=void 0;if(Array.isArray(c)){if(2!==c.length)throw new TypeError("Expected [key, value] tuple: ".concat(c));l=c[0],u=c[1]}else if(c&&c instanceof Object){var f=Object.keys(c);if(1!==f.length)throw new TypeError("Expected { key: value } tuple: ".concat(c));u=c[l=f[0]]}else l=c;var d=e.createPair(l,u,n);r.items.push(d)}}catch(p){s.e(p)}finally{s.f()}return r}var l={default:!1,tag:"tag:yaml.org,2002:pairs",resolve:s,createNode:c},u=function(e){Object(i.q)(n,e);var t=Object(i.r)(n);function n(){var e;return Object(i.j)(this,n),e=t.call(this),Object(i.l)(Object(i.w)(e),"add",a.k.prototype.add.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"delete",a.k.prototype.delete.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"get",a.k.prototype.get.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"has",a.k.prototype.has.bind(Object(i.w)(e))),Object(i.l)(Object(i.w)(e),"set",a.k.prototype.set.bind(Object(i.w)(e))),e.tag=n.tag,e}return Object(i.i)(n,[{key:"toJSON",value:function(e,t){var n=new Map;t&&t.onCreate&&t.onCreate(n);var r,o=Object(i.g)(this.items);try{for(o.s();!(r=o.n()).done;){var s=r.value,c=void 0,l=void 0;if(s instanceof a.e?(c=Object(a.w)(s.key,"",t),l=Object(a.w)(s.value,c,t)):c=Object(a.w)(s,"",t),n.has(c))throw new Error("Ordered maps must not include duplicate keys");n.set(c,l)}}catch(u){o.e(u)}finally{o.f()}return n}}]),n}(a.g);Object(i.l)(u,"tag","tag:yaml.org,2002:omap");var f={identify:function(e){return e instanceof Map},nodeClass:u,default:!1,tag:"tag:yaml.org,2002:omap",resolve:function(e,t){var n,r=s(e,t),o=[],c=Object(i.g)(r.items);try{for(c.s();!(n=c.n()).done;){var l=n.value.key;if(l instanceof a.f){if(o.includes(l.value)){throw new i.n(t,"Ordered maps must not include duplicate keys")}o.push(l.value)}}}catch(f){c.e(f)}finally{c.f()}return Object.assign(new u,r)},createNode:function(e,t,n){var r=c(e,t,n),i=new u;return i.items=r.items,i}},d=function(e){Object(i.q)(n,e);var t=Object(i.r)(n);function n(){var e;return Object(i.j)(this,n),(e=t.call(this)).tag=n.tag,e}return Object(i.i)(n,[{key:"add",value:function(e){var t=e instanceof a.e?e:new a.e(e);Object(a.s)(this.items,t.key)||this.items.push(t)}},{key:"get",value:function(e,t){var n=Object(a.s)(this.items,e);return!t&&n instanceof a.e?n.key instanceof a.f?n.key.value:n.key:n}},{key:"set",value:function(e,t){if("boolean"!==typeof t)throw new Error("Expected boolean value for set(key, value) in a YAML set, not ".concat(Object(i.h)(t)));var n=Object(a.s)(this.items,e);n&&!t?this.items.splice(this.items.indexOf(n),1):!n&&t&&this.items.push(new a.e(e))}},{key:"toJSON",value:function(e,t){return Object(i.s)(Object(i.t)(n.prototype),"toJSON",this).call(this,e,t,Set)}},{key:"toString",value:function(e,t,r){if(!e)return JSON.stringify(this);if(this.hasAllNullValues())return Object(i.s)(Object(i.t)(n.prototype),"toString",this).call(this,e,t,r);throw new Error("Set items must all have null values")}}]),n}(a.k);Object(i.l)(d,"tag","tag:yaml.org,2002:set");var p={identify:function(e){return e instanceof Set},nodeClass:d,default:!1,tag:"tag:yaml.org,2002:set",resolve:function(e,t){var n=Object(a.n)(e,t);if(!n.hasAllNullValues())throw new i.n(t,"Set items must all have null values");return Object.assign(new d,n)},createNode:function(e,t,n){var r,a=new d,o=Object(i.g)(t);try{for(o.s();!(r=o.n()).done;){var s=r.value;a.items.push(e.createPair(s,null,n))}}catch(c){o.e(c)}finally{o.f()}return a}},b=function(e,t){var n=t.split(":").reduce((function(e,t){return 60*e+Number(t)}),0);return"-"===e?-n:n},h=function(e){var t=e.value;if(isNaN(t)||!isFinite(t))return Object(a.r)(t);var n="";t<0&&(n="-",t=Math.abs(t));var r=[t%60];return t<60?r.unshift(0):(t=Math.round((t-r[0])/60),r.unshift(t%60),t>=60&&(t=Math.round((t-r[0])/60),r.unshift(t))),n+r.map((function(e){return e<10?"0"+String(e):String(e)})).join(":").replace(/000000\d*$/,"")},v={identify:function(e){return"number"===typeof e},default:!0,tag:"tag:yaml.org,2002:int",format:"TIME",test:/^([-+]?)([0-9][0-9_]*(?::[0-5]?[0-9])+)$/,resolve:function(e,t,n){return b(t,n.replace(/_/g,""))},stringify:h},m={identify:function(e){return"number"===typeof e},default:!0,tag:"tag:yaml.org,2002:float",format:"TIME",test:/^([-+]?)([0-9][0-9_]*(?::[0-5]?[0-9])+\.[0-9_]*)$/,resolve:function(e,t,n){return b(t,n.replace(/_/g,""))},stringify:h},g={identify:function(e){return e instanceof Date},default:!0,tag:"tag:yaml.org,2002:timestamp",test:RegExp("^(?:([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})(?:(?:t|T|[ \\t]+)([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2}(\\.[0-9]+)?)(?:[ \\t]*(Z|[-+][012]?[0-9](?::[0-9]{2})?))?)?)$"),resolve:function(e,t,n,r,i,a,o,s,c){s&&(s=(s+"00").substr(1,3));var l=Date.UTC(t,n-1,r,i||0,a||0,o||0,s||0);if(c&&"Z"!==c){var u=b(c[0],c.slice(1));Math.abs(u)<30&&(u*=60),l-=6e4*u}return new Date(l)},stringify:function(e){return e.value.toISOString().replace(/((T00:00)?:00)?\.000Z$/,"")}};function y(e){var t="undefined"!==typeof r&&r.env||{};return e?"undefined"!==typeof YAML_SILENCE_DEPRECATION_WARNINGS?!YAML_SILENCE_DEPRECATION_WARNINGS:!t.YAML_SILENCE_DEPRECATION_WARNINGS:"undefined"!==typeof YAML_SILENCE_WARNINGS?!YAML_SILENCE_WARNINGS:!t.YAML_SILENCE_WARNINGS}function O(e,t){if(y(!1)){var n="undefined"!==typeof r&&r.emitWarning;n?n(e,t):console.warn(t?"".concat(t,": ").concat(e):e)}}var j={};function w(e,t){if(!j[e]&&y(!0)){j[e]=!0;var n="The option '".concat(e,"' will be removed in a future release");O(n+=t?", use '".concat(t,"' instead."):".","DeprecationWarning")}}}).call(this,n("+ZX+").Buffer,n("F63i"))},nENm:function(e,t,n){var r,i;r=this,i=function(){function e(t,n,r){return this.id=++e.highestId,this.name=t,this.symbols=n,this.postprocess=r,this}function t(e,t,n,r){this.rule=e,this.dot=t,this.reference=n,this.data=[],this.wantedBy=r,this.isComplete=this.dot===e.symbols.length}function n(e,t){this.grammar=e,this.index=t,this.states=[],this.wants={},this.scannable=[],this.completed={}}function r(e,t){this.rules=e,this.start=t||this.rules[0].name;var n=this.byName={};this.rules.forEach((function(e){n.hasOwnProperty(e.name)||(n[e.name]=[]),n[e.name].push(e)}))}function i(){this.reset("")}function a(e,t,a){if(e instanceof r){var o=e;a=t}else o=r.fromCompiled(e,t);for(var s in this.grammar=o,this.options={keepHistory:!1,lexer:o.lexer||new i},a||{})this.options[s]=a[s];this.lexer=this.options.lexer,this.lexerState=void 0;var c=new n(o,0);this.table=[c],c.wants[o.start]=[],c.predict(o.start),c.process(),this.current=0}function o(e){var t=typeof e;if("string"===t)return e;if("object"===t){if(e.literal)return JSON.stringify(e.literal);if(e instanceof RegExp)return e.toString();if(e.type)return"%"+e.type;if(e.test)return"<"+String(e.test)+">";throw new Error("Unknown symbol type: "+e)}}return e.highestId=0,e.prototype.toString=function(e){var t="undefined"===typeof e?this.symbols.map(o).join(" "):this.symbols.slice(0,e).map(o).join(" ")+" \u25cf "+this.symbols.slice(e).map(o).join(" ");return this.name+" \u2192 "+t},t.prototype.toString=function(){return"{"+this.rule.toString(this.dot)+"}, from: "+(this.reference||0)},t.prototype.nextState=function(e){var n=new t(this.rule,this.dot+1,this.reference,this.wantedBy);return n.left=this,n.right=e,n.isComplete&&(n.data=n.build(),n.right=void 0),n},t.prototype.build=function(){var e=[],t=this;do{e.push(t.right.data),t=t.left}while(t.left);return e.reverse(),e},t.prototype.finish=function(){this.rule.postprocess&&(this.data=this.rule.postprocess(this.data,this.reference,a.fail))},n.prototype.process=function(e){for(var t=this.states,n=this.wants,r=this.completed,i=0;i<t.length;i++){var o=t[i];if(o.isComplete){if(o.finish(),o.data!==a.fail){for(var s=o.wantedBy,c=s.length;c--;){var l=s[c];this.complete(l,o)}if(o.reference===this.index){var u=o.rule.name;(this.completed[u]=this.completed[u]||[]).push(o)}}}else{if("string"!==typeof(u=o.rule.symbols[o.dot])){this.scannable.push(o);continue}if(n[u]){if(n[u].push(o),r.hasOwnProperty(u)){var f=r[u];for(c=0;c<f.length;c++){var d=f[c];this.complete(o,d)}}}else n[u]=[o],this.predict(u)}}},n.prototype.predict=function(e){for(var n=this.grammar.byName[e]||[],r=0;r<n.length;r++){var i=n[r],a=this.wants[e],o=new t(i,0,this.index,a);this.states.push(o)}},n.prototype.complete=function(e,t){var n=e.nextState(t);this.states.push(n)},r.fromCompiled=function(t,n){var i=t.Lexer;t.ParserStart&&(n=t.ParserStart,t=t.ParserRules);var a=new r(t=t.map((function(t){return new e(t.name,t.symbols,t.postprocess)})),n);return a.lexer=i,a},i.prototype.reset=function(e,t){this.buffer=e,this.index=0,this.line=t?t.line:1,this.lastLineBreak=t?-t.col:0},i.prototype.next=function(){if(this.index<this.buffer.length){var e=this.buffer[this.index++];return"\n"===e&&(this.line+=1,this.lastLineBreak=this.index),{value:e}}},i.prototype.save=function(){return{line:this.line,col:this.index-this.lastLineBreak}},i.prototype.formatError=function(e,t){var n=this.buffer;if("string"===typeof n){var r=n.split("\n").slice(Math.max(0,this.line-5),this.line),i=n.indexOf("\n",this.index);-1===i&&(i=n.length);var a=this.index-this.lastLineBreak,o=String(this.line).length;return t+=" at line "+this.line+" col "+a+":\n\n",t+=r.map((function(e,t){return s(this.line-r.length+t+1,o)+" "+e}),this).join("\n"),t+="\n"+s("",o+a)+"^\n"}return t+" at index "+(this.index-1);function s(e,t){var n=String(e);return Array(t-n.length+1).join(" ")+n}},a.fail={},a.prototype.feed=function(e){var t,r=this.lexer;for(r.reset(e,this.lexerState);;){try{if(!(t=r.next()))break}catch(v){var a=new n(this.grammar,this.current+1);throw this.table.push(a),(c=new Error(this.reportLexerError(v))).offset=this.current,c.token=v.token,c}var o=this.table[this.current];this.options.keepHistory||delete this.table[this.current-1];var s=this.current+1;a=new n(this.grammar,s),this.table.push(a);for(var c,l=void 0!==t.text?t.text:t.value,u=r.constructor===i?t.value:t,f=o.scannable,d=f.length;d--;){var p=f[d],b=p.rule.symbols[p.dot];if(b.test?b.test(u):b.type?b.type===t.type:b.literal===l){var h=p.nextState({data:u,token:t,isToken:!0,reference:s-1});a.states.push(h)}}if(a.process(),0===a.states.length)throw(c=new Error(this.reportError(t))).offset=this.current,c.token=t,c;this.options.keepHistory&&(o.lexerState=r.save()),this.current++}return o&&(this.lexerState=r.save()),this.results=this.finish(),this},a.prototype.reportLexerError=function(e){var t,n,r=e.token;return r?(t="input "+JSON.stringify(r.text[0])+" (lexer error)",n=this.lexer.formatError(r,"Syntax error")):(t="input (lexer error)",n=e.message),this.reportErrorCommon(n,t)},a.prototype.reportError=function(e){var t=(e.type?e.type+" token: ":"")+JSON.stringify(void 0!==e.value?e.value:e),n=this.lexer.formatError(e,"Syntax error");return this.reportErrorCommon(n,t)},a.prototype.reportErrorCommon=function(e,t){var n=[];n.push(e);var r=this.table.length-2,i=this.table[r],a=i.states.filter((function(e){var t=e.rule.symbols[e.dot];return t&&"string"!==typeof t}));return 0===a.length?(n.push("Unexpected "+t+". I did not expect any more input. Here is the state of my parse table:\n"),this.displayStateStack(i.states,n)):(n.push("Unexpected "+t+". Instead, I was expecting to see one of the following:\n"),a.map((function(e){return this.buildFirstStateStack(e,[])||[e]}),this).forEach((function(e){var t=e[0],r=t.rule.symbols[t.dot],i=this.getSymbolDisplay(r);n.push("A "+i+" based on:"),this.displayStateStack(e,n)}),this)),n.push(""),n.join("\n")},a.prototype.displayStateStack=function(e,t){for(var n,r=0,i=0;i<e.length;i++){var a=e[i],o=a.rule.toString(a.dot);o===n?r++:(r>0&&t.push("    ^ "+r+" more lines identical to this"),r=0,t.push("    "+o)),n=o}},a.prototype.getSymbolDisplay=function(e){return function(e){var t=typeof e;if("string"===t)return e;if("object"===t){if(e.literal)return JSON.stringify(e.literal);if(e instanceof RegExp)return"character matching "+e;if(e.type)return e.type+" token";if(e.test)return"token matching "+String(e.test);throw new Error("Unknown symbol type: "+e)}}(e)},a.prototype.buildFirstStateStack=function(e,t){if(-1!==t.indexOf(e))return null;if(0===e.wantedBy.length)return[e];var n=e.wantedBy[0],r=[e].concat(t),i=this.buildFirstStateStack(n,r);return null===i?null:[e].concat(i)},a.prototype.save=function(){var e=this.table[this.current];return e.lexerState=this.lexerState,e},a.prototype.restore=function(e){var t=e.index;this.current=t,this.table[t]=e,this.table.splice(t+1),this.lexerState=e.lexerState,this.results=this.finish()},a.prototype.rewind=function(e){if(!this.options.keepHistory)throw new Error("set option `keepHistory` to enable rewinding");this.restore(this.table[e])},a.prototype.finish=function(){var e=[],t=this.grammar.start;return this.table[this.table.length-1].states.forEach((function(n){n.rule.name===t&&n.dot===n.rule.symbols.length&&0===n.reference&&n.data!==a.fail&&e.push(n)})),e.map((function(e){return e.data}))},{Parser:a,Grammar:r,Rule:e}},e.exports?e.exports=i():r.nearley=i()},ns0p:function(e,t,n){"use strict";n.d(t,"a",(function(){return u}));var r=n("N1LS"),i=n("mrqE"),a=36e5,o={dateTimeDelimiter:/[T ]/,timeZoneDelimiter:/[Z ]/i,timezone:/([Z+-].*)$/},s=/^-?(?:(\d{3})|(\d{2})(?:-?(\d{2}))?|W(\d{2})(?:-?(\d{1}))?|)$/,c=/^(\d{2}(?:[.,]\d*)?)(?::?(\d{2}(?:[.,]\d*)?))?(?::?(\d{2}(?:[.,]\d*)?))?$/,l=/^([+-])(\d{2})(?::?(\d{2}))?$/;function u(e,t){Object(i.a)(1,arguments);var n=t||{},a=null==n.additionalDigits?2:Object(r.a)(n.additionalDigits);if(2!==a&&1!==a&&0!==a)throw new RangeError("additionalDigits must be 0, 1 or 2");if("string"!==typeof e&&"[object String]"!==Object.prototype.toString.call(e))return new Date(NaN);var o,s=f(e);if(s.date){var c=d(s.date,a);o=p(c.restDateString,c.year)}if(isNaN(o)||!o)return new Date(NaN);var l,u=o.getTime(),b=0;if(s.time&&(b=h(s.time),isNaN(b)||null===b))return new Date(NaN);if(!s.timezone){var v=new Date(u+b),g=new Date(0);return g.setFullYear(v.getUTCFullYear(),v.getUTCMonth(),v.getUTCDate()),g.setHours(v.getUTCHours(),v.getUTCMinutes(),v.getUTCSeconds(),v.getUTCMilliseconds()),g}return l=m(s.timezone),isNaN(l)?new Date(NaN):new Date(u+b+l)}function f(e){var t,n={},r=e.split(o.dateTimeDelimiter);if(r.length>2)return n;if(/:/.test(r[0])?(n.date=null,t=r[0]):(n.date=r[0],t=r[1],o.timeZoneDelimiter.test(n.date)&&(n.date=e.split(o.timeZoneDelimiter)[0],t=e.substr(n.date.length,e.length))),t){var i=o.timezone.exec(t);i?(n.time=t.replace(i[1],""),n.timezone=i[1]):n.time=t}return n}function d(e,t){var n=new RegExp("^(?:(\\d{4}|[+-]\\d{"+(4+t)+"})|(\\d{2}|[+-]\\d{"+(2+t)+"})$)"),r=e.match(n);if(!r)return{year:null};var i=r[1]&&parseInt(r[1]),a=r[2]&&parseInt(r[2]);return{year:null==a?i:100*a,restDateString:e.slice((r[1]||r[2]).length)}}function p(e,t){if(null===t)return null;var n=e.match(s);if(!n)return null;var r=!!n[4],i=b(n[1]),a=b(n[2])-1,o=b(n[3]),c=b(n[4]),l=b(n[5])-1;if(r)return function(e,t,n){return t>=1&&t<=53&&n>=0&&n<=6}(0,c,l)?function(e,t,n){var r=new Date(0);r.setUTCFullYear(e,0,4);var i=r.getUTCDay()||7,a=7*(t-1)+n+1-i;return r.setUTCDate(r.getUTCDate()+a),r}(t,c,l):new Date(NaN);var u=new Date(0);return function(e,t,n){return t>=0&&t<=11&&n>=1&&n<=(g[t]||(y(e)?29:28))}(t,a,o)&&function(e,t){return t>=1&&t<=(y(e)?366:365)}(t,i)?(u.setUTCFullYear(t,a,Math.max(i,o)),u):new Date(NaN)}function b(e){return e?parseInt(e):1}function h(e){var t=e.match(c);if(!t)return null;var n=v(t[1]),r=v(t[2]),i=v(t[3]);return function(e,t,n){if(24===e)return 0===t&&0===n;return n>=0&&n<60&&t>=0&&t<60&&e>=0&&e<25}(n,r,i)?n*a+6e4*r+1e3*i:NaN}function v(e){return e&&parseFloat(e.replace(",","."))||0}function m(e){if("Z"===e)return 0;var t=e.match(l);if(!t)return 0;var n="+"===t[1]?-1:1,r=parseInt(t[2]),i=t[3]&&parseInt(t[3])||0;return function(e,t){return t>=0&&t<=59}(0,i)?n*(r*a+6e4*i):NaN}var g=[31,null,31,30,31,30,31,31,30,31,30,31];function y(e){return e%400===0||e%4===0&&e%100}},o9IJ:function(e,t,n){"use strict";n.d(t,"a",(function(){return p}));var r=n("jg1C"),i=n("ERkP"),a=n.n(i),o=n("Xpb+"),s=n.n(o);function c(){return(c=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}var l=Object(i.memo)((function(e){var t=e.children,n=e.math,r=e.block,o=e.errorColor,l=e.renderError,u=e.settings,f=e.as,d=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)t.indexOf(n=a[r])>=0||(i[n]=e[n]);return i}(e,["children","math","block","errorColor","renderError","settings","as"]),p=f||(r?"div":"span"),b=null!=t?t:n,h=Object(i.useState)({innerHtml:""}),v=h[0],m=h[1];return Object(i.useEffect)((function(){try{var e=s.a.renderToString(b,c({displayMode:!!r,errorColor:o,throwOnError:!!l},u));m({innerHtml:e})}catch(e){if(!(e instanceof s.a.ParseError||e instanceof TypeError))throw e;m(l?{errorElement:l(e)}:{innerHtml:e.message})}}),[r,b,o,l,u]),"errorElement"in v?v.errorElement:a.a.createElement(p,Object.assign({},d,{dangerouslySetInnerHTML:{__html:v.innerHtml}}))})),u=n("R+09"),f=n("j/s1"),d=function(e){for(var t=e.replace(/\*/g,"\\times"),n="(?:".concat("(\\(.+\\))","|").concat("([^()\\s]+)",")");t.includes("/");)t=t.replace(new RegExp("".concat(n,"\\s?\\/\\s?").concat(n),"gm"),"\\frac{$1$2}{$3$4}");return t},p=function(e){var t=e.formula;return Object(r.jsx)(h,{children:Object(r.jsx)(v,{children:Object(r.jsx)(l,{block:!0,children:d(t)})})})},b=u.T.spacings,h=f.d.div.withConfig({displayName:"MathFormula__Wrapper",componentId:"a5y61z-0"})(["margin:"," 0;"],b.base),v=f.d.div.withConfig({displayName:"MathFormula__StyledFormula",componentId:"a5y61z-1"})(["display:flex;"])},"p0B+":function(e,t,n){"use strict";n.d(t,"b",(function(){return r})),n.d(t,"a",(function(){return i}));var r=function(e){return e.reduce((function(e,t){return e+parseFloat(t)}),0)},i=function(e){return parseInt(100*e,10)/100}},pTV2:function(e,t,n){var r={"./0016":["+6Xc",9,0,1,11],"./0016/":["+6Xc",9,0,1,11],"./0016/Categorie":["Kz3b",9,51],"./0016/Categorie.js":["Kz3b",9,51],"./0016/CategoriePeriod":["VDYZ",9,0],"./0016/CategoriePeriod.js":["VDYZ",9,0],"./0016/Result":["5Wu1",9,0,1],"./0016/Result.js":["5Wu1",9,0,1],"./0016/Step":["DTl4",9,0,1],"./0016/Step.js":["DTl4",9,0,1],"./0016/__tests__/Categorie.test":["Xa3K",7,30],"./0016/__tests__/Categorie.test.js":["Xa3K",7,30],"./0016/__tests__/CategoriePeriod.test":["BP6y",7,31],"./0016/__tests__/CategoriePeriod.test.js":["BP6y",7,31],"./0016/__tests__/Result.test":["aevT",7,32],"./0016/__tests__/Result.test.js":["aevT",7,32],"./0016/__tests__/Step.test":["+KUf",7,33],"./0016/__tests__/Step.test.js":["+KUf",7,33],"./0016/__tests__/__snapshots__/Categorie.test.js.snap":["qaCH",7,91],"./0016/__tests__/__snapshots__/CategoriePeriod.test.js.snap":["QExd",7,92],"./0016/__tests__/__snapshots__/Result.test.js.snap":["BydI",7,93],"./0016/__tests__/__snapshots__/Step.test.js.snap":["0xq3",7,94],"./0016/__tests__/__snapshots__/indemnite.test.js.snap":["161e",7,95],"./0016/__tests__/indemnite.test":["OpC2",7,34],"./0016/__tests__/indemnite.test.js":["OpC2",7,34],"./0016/indemnite":["Eq7m",9,0],"./0016/indemnite.js":["Eq7m",9,0],"./0016/index":["+6Xc",9,0,1,11],"./0016/index.js":["+6Xc",9,0,1,11],"./0029":["yP+t",9,20],"./0029.js":["yP+t",9,20],"./0044":["+I9v",9,0,1,12],"./0044/":["+I9v",9,0,1,12],"./0044/EchelonChimie":["iQ+F",9,0],"./0044/EchelonChimie.js":["iQ+F",9,0],"./0044/Result":["CqnR",9,0,1],"./0044/Result.js":["CqnR",9,0,1],"./0044/Step":["NKiU",9,0,1],"./0044/Step.js":["NKiU",9,0,1],"./0044/__tests__/EchelonChimie.test":["l2YB",7,35],"./0044/__tests__/EchelonChimie.test.js":["l2YB",7,35],"./0044/__tests__/Result.test":["c2EL",7,36],"./0044/__tests__/Result.test.js":["c2EL",7,36],"./0044/__tests__/Step.test":["673k",7,37],"./0044/__tests__/Step.test.js":["673k",7,37],"./0044/__tests__/__snapshots__/EchelonChimie.test.js.snap":["Cm/8",7,96],"./0044/__tests__/__snapshots__/Result.test.js.snap":["vJ89",7,97],"./0044/__tests__/__snapshots__/Step.test.js.snap":["gu8c",7,98],"./0044/__tests__/__snapshots__/indemnite.test.js.snap":["EXkk",7,99],"./0044/__tests__/indemnite.test":["iG4M",7,38],"./0044/__tests__/indemnite.test.js":["iG4M",7,38],"./0044/coefficients":["jelt",9,52],"./0044/coefficients.js":["jelt",9,52],"./0044/indemnite":["f/SN",9,0],"./0044/indemnite.js":["f/SN",9,0],"./0044/index":["+I9v",9,0,1,12],"./0044/index.js":["+I9v",9,0,1,12],"./0843":["SVjw",9,21],"./0843.js":["SVjw",9,21],"./0992":["YpzO",9,22],"./0992.js":["YpzO",9,22],"./1090":["KA5q",9,23],"./1090.js":["KA5q",9,23],"./1351":["k1nJ",9,24],"./1351.js":["k1nJ",9,24],"./1486":["Qo9l",9,0,1,8],"./1486/":["Qo9l",9,0,1,8],"./1486/__tests__/__snapshots__/indemnite.test.js.snap":["Sqaw",7,100],"./1486/__tests__/indemnite.test":["5+0e",7,39],"./1486/__tests__/indemnite.test.js":["5+0e",7,39],"./1486/indemnite":["7zvQ",9,0],"./1486/indemnite.js":["7zvQ",9,0],"./1486/index":["Qo9l",9,0,1,8],"./1486/index.js":["Qo9l",9,0,1,8],"./1486/steps/Anciennete":["GWAK",9,0,1,8],"./1486/steps/Anciennete.js":["GWAK",9,0,1,8],"./1486/steps/AncienneteCE":["aaPR",9,1],"./1486/steps/AncienneteCE.js":["aaPR",9,1],"./1486/steps/AncienneteETAMIC":["YwAb",9,1],"./1486/steps/AncienneteETAMIC.js":["YwAb",9,1],"./1486/steps/Categorie":["lQ4X",9,0,1,8],"./1486/steps/Categorie.js":["lQ4X",9,0,1,8],"./1486/steps/Result":["7Fuk",9,0,1],"./1486/steps/Result.js":["7Fuk",9,0,1],"./1486/steps/Salaire":["uhW6",9,1],"./1486/steps/Salaire.js":["uhW6",9,1],"./1486/steps/__tests__/Anciennete.test":["QaTA",7,40],"./1486/steps/__tests__/Anciennete.test.js":["QaTA",7,40],"./1486/steps/__tests__/AncienneteCE.test":["i/FB",7,41],"./1486/steps/__tests__/AncienneteCE.test.js":["i/FB",7,41],"./1486/steps/__tests__/AncienneteETAMIC.test":["2JoL",7,42],"./1486/steps/__tests__/AncienneteETAMIC.test.js":["2JoL",7,42],"./1486/steps/__tests__/Categorie.test":["Jmbi",7,43],"./1486/steps/__tests__/Categorie.test.js":["Jmbi",7,43],"./1486/steps/__tests__/Result.test":["oBjX",7,44],"./1486/steps/__tests__/Result.test.js":["oBjX",7,44],"./1486/steps/__tests__/Salaire.test":["3o1D",7,45],"./1486/steps/__tests__/Salaire.test.js":["3o1D",7,45],"./1486/steps/__tests__/__snapshots__/Anciennete.test.js.snap":["iLc9",7,101],"./1486/steps/__tests__/__snapshots__/AncienneteCE.test.js.snap":["quLL",7,102],"./1486/steps/__tests__/__snapshots__/AncienneteETAMIC.test.js.snap":["QjHR",7,103],"./1486/steps/__tests__/__snapshots__/Categorie.test.js.snap":["BCVD",7,104],"./1486/steps/__tests__/__snapshots__/Result.test.js.snap":["lxxi",7,105],"./1486/steps/__tests__/__snapshots__/Salaire.test.js.snap":["zS7t",7,106],"./1518":["fDG8",9,25],"./1518.js":["fDG8",9,25],"./1534":["+Mfw",9,26],"./1534.js":["+Mfw",9,26],"./1596":["FK2k",9,27],"./1596.js":["FK2k",9,27],"./1597":["hv1W",9,28],"./1597.js":["hv1W",9,28],"./2120":["gboR",9,0,1,13],"./2120/":["gboR",9,0,1,13],"./2120/Result":["l9PD",9,0,1],"./2120/Result.js":["l9PD",9,0,1],"./2120/Step":["2yox",9,53],"./2120/Step.js":["2yox",9,53],"./2120/__tests__/Result.test":["TAZf",7,46],"./2120/__tests__/Result.test.js":["TAZf",7,46],"./2120/__tests__/Step.test":["3vee",7,47],"./2120/__tests__/Step.test.js":["3vee",7,47],"./2120/__tests__/__snapshots__/Result.test.js.snap":["1Y+t",7,107],"./2120/__tests__/__snapshots__/Step.test.js.snap":["L3sV",7,108],"./2120/__tests__/__snapshots__/indemnite.test.js.snap":["Qjv1",7,109],"./2120/__tests__/indemnite.test":["g+87",7,48],"./2120/__tests__/indemnite.test.js":["g+87",7,48],"./2120/indemnite":["rn8k",9,0],"./2120/indemnite.js":["rn8k",9,0],"./2120/index":["gboR",9,0,1,13],"./2120/index.js":["gboR",9,0,1,13],"./2344":["jAFk",9,29],"./2344.js":["jAFk",9,29],"./3043":["Kvcs",9,0,1,14],"./3043/":["Kvcs",9,0,1,14],"./3043/Result":["PmkD",9,0,1],"./3043/Result.js":["PmkD",9,0,1],"./3043/__tests__/Result.test":["iDkD",7,49],"./3043/__tests__/Result.test.js":["iDkD",7,49],"./3043/__tests__/__snapshots__/Result.test.js.snap":["yS9T",7,110],"./3043/__tests__/__snapshots__/indemnite.test.js.snap":["8FUA",7,111],"./3043/__tests__/indemnite.test":["bTmF",7,50],"./3043/__tests__/indemnite.test.js":["bTmF",7,50],"./3043/indemnite":["rHvt",9,0],"./3043/indemnite.js":["rHvt",9,0],"./3043/index":["Kvcs",9,0,1,14],"./3043/index.js":["Kvcs",9,0,1,14],"./SansIndemniteLicenciement":["wiln",9,54],"./SansIndemniteLicenciement.js":["wiln",9,54]};function i(e){if(!n.o(r,e))return Promise.resolve().then((function(){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}));var t=r[e],i=t[0];return Promise.all(t.slice(2).map(n.e)).then((function(){return n.t(i,t[1])}))}i.keys=function(){return Object.keys(r)},i.id="pTV2",e.exports=i},sQhx:function(e,t,n){"use strict";n.d(t,"b",(function(){return l})),n.d(t,"c",(function(){return u})),n.d(t,"d",(function(){return f})),n.d(t,"a",(function(){return d})),n.d(t,"e",(function(){return p}));var r=n("R+09"),i=n("j/s1"),a=r.T.breakpoints,o=r.T.fonts,s=r.T.colors,c=r.T.spacings,l=i.d.label.withConfig({displayName:"stepStyles__Label",componentId:"sc-1cym743-0"})(["display:flex;align-items:center;margin-right:2em;padding:0;"]),u=i.d.div.withConfig({displayName:"stepStyles__RadioContainer",componentId:"sc-1cym743-1"})(["display:flex;flex-direction:",";align-items:flex-start;justify-content:flex-start;margin-bottom:",";"],(function(e){return"row"===e.direction?"row":"column"}),c.medium),f=i.d.h2.withConfig({displayName:"stepStyles__SectionTitle",componentId:"sc-1cym743-2"})(["margin-top:",";margin-bottom:",";color:",";font-weight:600;font-size:",';font-family:"Open Sans",sans-serif;'],c.large,c.medium,(function(e){return e.theme.altText}),o.sizes.headings.small),d=i.d.strong.withConfig({displayName:"stepStyles__Highlight",componentId:"sc-1cym743-3"})(["color:",";font-weight:700;font-size:",";white-space:pre-line;@media (max-width:","){font-size:",";}"],s.primary,o.sizes.headings.small,a.mobile,o.sizes.default),p=i.d.p.withConfig({displayName:"stepStyles__SmallText",componentId:"sc-1cym743-4"})(["color:",";font-size:",";font-style:italic;"],s.paragraph,o.sizes.small)}}</p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Sub Resource Integrity Attribute Missing
##### Medium (High)
  
  
  
  
#### Description
<p>The integrity attribute is missing on a script or link tag served by an external server. The integrity tag prevents an attacker who have gained access to this server from injecting a malicious content. </p>
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/mesures-de-prevention-sante-hors-covid-19](https://code.travail.gouv.fr/fiche-ministere-travail/mesures-de-prevention-sante-hors-covid-19)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/questions-reponses-par-theme/article/mesures-de-prevention-sante-hors-covid-19"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/securite-et-sante-des-travailleurs-les-obligations-generales-de-lemployeur-et-sa-responsabilite](https://code.travail.gouv.fr/fiche-ministere-travail/securite-et-sante-des-travailleurs-les-obligations-generales-de-lemployeur-et-sa-responsabilite)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/protection-des-travailleurs/article/securite-et-sante-des-travailleurs-les-obligations-generales-de-l-employeur-et"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/services-de-sante-au-travail](https://code.travail.gouv.fr/fiche-ministere-travail/services-de-sante-au-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/questions-reponses-par-theme/article/services-de-sante-au-travail"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/aide-a-lembauche-dun-jeune-de-moins-de-26-ans](https://code.travail.gouv.fr/fiche-service-public/aide-a-lembauche-dun-jeune-de-moins-de-26-ans)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://www.service-public.fr/professionnels-entreprises/vosdroits/F35364"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/responsabilite-de-lemployeur-droit-de-retrait](https://code.travail.gouv.fr/fiche-ministere-travail/responsabilite-de-lemployeur-droit-de-retrait)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/questions-reponses-par-theme/article/responsabilite-de-l-employeur-droit-de-retrait"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/mise-a-disposition-temporaire-de-salaries-volontaires-entre-deux-entreprises](https://code.travail.gouv.fr/fiche-ministere-travail/mise-a-disposition-temporaire-de-salaries-volontaires-entre-deux-entreprises)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/poursuite-de-l-activite-en-periode-de-covid-19/article/mise-a-disposition-temporaire-de-salaries-volontaires-entre-deux-entreprises"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/arret-maladie-indemnites-journalieres-versees-au-salarie](https://code.travail.gouv.fr/fiche-service-public/arret-maladie-indemnites-journalieres-versees-au-salarie)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://www.service-public.fr/particuliers/vosdroits/F3053"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/teletravail-dans-le-secteur-prive](https://code.travail.gouv.fr/fiche-service-public/teletravail-dans-le-secteur-prive)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://www.service-public.fr/particuliers/vosdroits/F13851"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/questions-reponses-par-theme/faq-chomage-partiel-activite-partielle"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/teletravail-en-periode-de-covid-19](https://code.travail.gouv.fr/fiche-ministere-travail/teletravail-en-periode-de-covid-19)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/questions-reponses-par-theme/article/teletravail-en-periode-de-covid-19"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/remuneration-dun-salarie-en-chomage-partiel-activite-partielle](https://code.travail.gouv.fr/fiche-service-public/remuneration-dun-salarie-en-chomage-partiel-activite-partielle)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://www.service-public.fr/particuliers/vosdroits/F13898"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/poursuite-de-l-activite-en-periode-de-covid-19/chomage-partiel-activite-partielle/article/fiche-activite-partielle-chomage-partiel"/>`
  
  
  
  
Instances: 12
  
### Solution
<p>Provide a valid integrity attribute to the tag.</p>
  
### Reference
* https://developer.mozilla.org/en/docs/Web/Security/Subresource_Integrity

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### X-Frame-Options Header Not Set
##### Medium (Medium)
  
  
  
  
#### Description
<p>X-Frame-Options header is not included in the HTTP response to protect against 'ClickJacking' attacks.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
Instances: 11
  
### Solution
<p>Most modern Web browsers support the X-Frame-Options HTTP header. Ensure it's set on all web pages returned by your site (if you expect the page to be framed only by pages on your server (e.g. it's part of a FRAMESET) then you'll want to use SAMEORIGIN, otherwise if you never expect the page to be framed, you should use DENY. Alternatively consider implementing Content Security Policy's "frame-ancestors" directive. </p>
  
### Reference
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Absence of Anti-CSRF Tokens
##### Low (Medium)
  
  
  
  
#### Description
<p>No Anti-CSRF tokens were found in a HTML submission form.</p><p>A cross-site request forgery is an attack that involves forcing a victim to send an HTTP request to a target destination without their knowledge or intent in order to perform an action as the victim. The underlying cause is application functionality using predictable URL/form actions in a repeatable way. The nature of the attack is that CSRF exploits the trust that a web site has for a user. By contrast, cross-site scripting (XSS) exploits the trust that a user has for a web site. Like XSS, CSRF attacks are not necessarily cross-site, but they can be. Cross-site request forgery is also known as CSRF, XSRF, one-click attack, session riding, confused deputy, and sea surf.</p><p></p><p>CSRF attacks are effective in a number of situations, including:</p><p>    * The victim has an active session on the target site.</p><p>    * The victim is authenticated via HTTP auth on the target site.</p><p>    * The victim is on the same local network as the target site.</p><p></p><p>CSRF has primarily been used to perform an action against a target site using the victim's privileges, but recent techniques have been discovered to disclose information by gaining access to the response. The risk of information disclosure is dramatically increased when the target site is vulnerable to XSS, because XSS can be used as a platform for CSRF, allowing the attack to operate within the bounds of the same-origin policy.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 chVHgz">`
  
  
  
  
Instances: 11
  
### Solution
<p>Phase: Architecture and Design</p><p>Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid.</p><p>For example, use anti-CSRF packages such as the OWASP CSRFGuard.</p><p></p><p>Phase: Implementation</p><p>Ensure that your application is free of cross-site scripting issues, because most CSRF defenses can be bypassed using attacker-controlled script.</p><p></p><p>Phase: Architecture and Design</p><p>Generate a unique nonce for each form, place the nonce into the form, and verify the nonce upon receipt of the form. Be sure that the nonce is not predictable (CWE-330).</p><p>Note that this can be bypassed using XSS.</p><p></p><p>Identify especially dangerous operations. When the user performs a dangerous operation, send a separate confirmation request to ensure that the user intended to perform that operation.</p><p>Note that this can be bypassed using XSS.</p><p></p><p>Use the ESAPI Session Management control.</p><p>This control includes a component for CSRF.</p><p></p><p>Do not use the GET method for any request that triggers a state change.</p><p></p><p>Phase: Implementation</p><p>Check the HTTP Referer header to see if the request originated from an expected page. This could break legitimate functionality, because users or proxies may have disabled sending the Referer for privacy reasons.</p>
  
### Other information
<p>No known Anti-CSRF token [anticsrf, CSRFToken, __RequestVerificationToken, csrfmiddlewaretoken, authenticity_token, OWASP_CSRFTOKEN, anoncsrf, csrf_token, _csrf, _csrfSecret, __csrf_magic, CSRF] was found in the following HTML form: [Form 1: "main-search-input" ].</p>
  
### Reference
* http://projects.webappsec.org/Cross-Site-Request-Forgery
* http://cwe.mitre.org/data/definitions/352.html

  
#### CWE Id : 352
  
#### WASC Id : 9
  
#### Source ID : 3

  
  
  
  
### CSP: Notices
##### Low (Medium)
  
  
  
  
#### Description
<p>Errors:</p><p>1:574: Expecting uri-reference but found "https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0".</p><p>Info Items:</p><p>1:563: A draft of the next version of CSP deprecates report-uri in favour of a new report-to directive.</p><p></p>
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.48.0`
  
  
  
  
Instances: 2
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is properly configured to set the Content-Security-Policy header.</p>
  
### Other information
<p>The response contained multiple CSP headers, one or more of them contained a report-uri directive and therefore they could not be merged. The first identified header/policy was analyzed.</p>
  
### Reference
* http://www.w3.org/TR/CSP2/
* http://www.w3.org/TR/CSP/
* http://caniuse.com/#search=content+security+policy
* http://content-security-policy.com/
* https://github.com/shapesecurity/salvation
* https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/_next/static/chunks/framework.2fe8aafb57f6310f3ab8.js](https://code.travail.gouv.fr/_next/static/chunks/framework.2fe8aafb57f6310f3ab8.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://code.travail.gouv.fr/_next/static/chunks/pages/outils/%5Bslug%5D-543a755a0f2acb412fd4.js](https://code.travail.gouv.fr/_next/static/chunks/pages/outils/%5Bslug%5D-543a755a0f2acb412fd4.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://code.travail.gouv.fr/static/polyfill.min.js](https://code.travail.gouv.fr/static/polyfill.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/mesures-de-prevention-sante-hors-covid-19](https://code.travail.gouv.fr/fiche-ministere-travail/mesures-de-prevention-sante-hors-covid-19)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/lindemnite-legale-de-licenciement](https://code.travail.gouv.fr/fiche-ministere-travail/lindemnite-legale-de-licenciement)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/information/covid-19-integrer-le-risque-sanitaire-dans-lentreprise-protocole-national](https://code.travail.gouv.fr/information/covid-19-integrer-le-risque-sanitaire-dans-lentreprise-protocole-national)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/comment-calculer-lanciennete-pour-le-montant-de-lindemnite-de-licenciement](https://code.travail.gouv.fr/fiche-service-public/comment-calculer-lanciennete-pour-le-montant-de-lindemnite-de-licenciement)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/teletravail-en-periode-de-covid-19](https://code.travail.gouv.fr/fiche-ministere-travail/teletravail-en-periode-de-covid-19)
  
  
  * Method: `GET`
  
  
  * Evidence: `Eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/_next/static/chunks/commons.42b85e1ee9d812389ca4.js](https://code.travail.gouv.fr/_next/static/chunks/commons.42b85e1ee9d812389ca4.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/emploi-et-formation-professionnelle](https://code.travail.gouv.fr/themes/emploi-et-formation-professionnelle)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/arret-maladie-indemnites-journalieres-versees-au-salarie](https://code.travail.gouv.fr/fiche-service-public/arret-maladie-indemnites-journalieres-versees-au-salarie)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://code.travail.gouv.fr/_next/static/chunks/b5deef23c7d8ef607d56d0077c937a2f99b5818b.b71fa344b67ca78fe631.js](https://code.travail.gouv.fr/_next/static/chunks/b5deef23c7d8ef607d56d0077c937a2f99b5818b.b71fa344b67ca78fe631.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
Instances: 12
  
### Solution
<p>See the references for security advice on the use of these functions.</p>
  
### Reference
* https://angular.io/guide/security

  
#### CWE Id : 749
  
#### Source ID : 3

  
  
  
  
### Feature Policy Header Not Set
##### Low (Medium)
  
  
  
  
#### Description
<p>Feature Policy Header is an added layer of security that helps to restrict from unauthorized access or usage of browser/client features by web resources. This policy ensures the user privacy by limiting or specifying the features of the browsers can be used by the web resources. Feature Policy provides a set of standard HTTP headers that allow website owners to limit which features of browsers can be used by the page such as camera, microphone, location, full screen etc.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
Instances: 11
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is configured to set the Feature-Policy header.</p>
  
### Reference
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Feature-Policy
* https://developers.google.com/web/updates/2018/06/feature-policy
* https://scotthelme.co.uk/a-new-security-header-feature-policy/
* https://w3c.github.io/webappsec-feature-policy/
* https://www.smashingmagazine.com/2018/12/feature-policy/

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Incomplete or No Cache-control and Pragma HTTP Header Set
##### Low (Medium)
  
  
  
  
#### Description
<p>The cache-control and pragma HTTP header have not been set properly or are missing allowing the browser and proxies to cache content.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/robots.txt](https://code.travail.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 11
  
### Solution
<p>Whenever possible ensure the cache-control HTTP header is set with no-cache, no-store, must-revalidate; and that the pragma HTTP header is set with no-cache.</p>
  
### Reference
* https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#web-content-caching

  
#### CWE Id : 525
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Server Leaks Version Information via "Server" HTTP Response Header Field
##### Low (High)
  
  
  
  
#### Description
<p>The web/application server is leaking version information via the "Server" HTTP response header. Access to such information may facilitate attackers identifying other vulnerabilities your web/application server is subject to.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/assets/](https://code.travail.gouv.fr/assets/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/sitemap.xml](https://code.travail.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/api/sitemap](https://code.travail.gouv.fr/api/sitemap)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/images/](https://code.travail.gouv.fr/images/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/robots.txt](https://code.travail.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
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

  
  
  
  
### X-Content-Type-Options Header Missing
##### Low (Medium)
  
  
  
  
#### Description
<p>The Anti-MIME-Sniffing header X-Content-Type-Options was not set to 'nosniff'. This allows older versions of Internet Explorer and Chrome to perform MIME-sniffing on the response body, potentially causing the response body to be interpreted and displayed as a content type other than the declared content type. Current (early 2014) and legacy versions of Firefox will use the declared content type (if one is set), rather than performing MIME-sniffing.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/robots.txt](https://code.travail.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/api/sitemap](https://code.travail.gouv.fr/api/sitemap)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
Instances: 11
  
### Solution
<p>Ensure that the application/web server sets the Content-Type header appropriately, and that it sets the X-Content-Type-Options header to 'nosniff' for all web pages.</p><p>If possible, ensure that the end user uses a standards-compliant and modern web browser that does not perform MIME-sniffing at all, or that can be directed by the web application/web server to not perform MIME-sniffing.</p>
  
### Other information
<p>This issue still applies to error type pages (401, 403, 500, etc.) as those pages are often still affected by injection issues, in which case there is still concern for browsers sniffing pages away from their actual content type.</p><p>At "High" threshold this scan rule will not alert on client or server error responses.</p>
  
### Reference
* http://msdn.microsoft.com/en-us/library/ie/gg622941%28v=vs.85%29.aspx
* https://owasp.org/www-community/Security_Headers

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Base64 Disclosure
##### Informational (Medium)
  
  
  
  
#### Description
<p>Base64 encoded data was disclosed by the application/web server. Note: in the interests of performance not all base64 strings in the response were analyzed individually, the entire response should be looked at by the analyst/security team/developer(s).</p>
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Evidence: `d440-A+xb3aJ3NlxHP/ocJIuO1GylqWY`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `e07e-rz8jWp8n93gEMwIS+RtrVBek3Cw`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `d5f1-BiTxMaBw3tQLPe3+revByHetZgo`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `eddb-d14NE/jcKK+DYKRsq0vtH6rPb2A`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipLink-c0h2yu-2`
  
  
  
  
Instances: 11
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>w�4�\x000f�ov���q\x001c��p�.;Q����</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Content-Type Header Missing
##### Informational (Medium)
  
  
  
  
#### Description
<p>The Content-Type header was either missing or empty.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/api/sitemap](https://code.travail.gouv.fr/api/sitemap)
  
  
  * Method: `GET`
  
  
  
  
Instances: 1
  
### Solution
<p>Ensure each page is setting the specific and appropriate content-type value for the content being delivered.</p>
  
### Reference
* http://msdn.microsoft.com/en-us/library/ie/gg622941%28v=vs.85%29.aspx

  
#### CWE Id : 345
  
#### WASC Id : 12
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"data":{"_index":"cdtn-prod-v1_documents-1619431286822", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures](https://code.travail.gouv.fr/themes/licenciement-droits-des-salaries-et-procedures)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
Instances: 11
  
### Solution
<p>This is an informational alert and so no changes are required.</p>
  
### Other information
<p>A noScript tag has been found, which is an indication that the application works differently with JavaScript enabled compared to when it is not.</p>
  
### Reference
* 

  
#### Source ID : 3

  
  
  
  
### Non-Storable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are not storable by caching components such as proxy servers. If the response does not contain sensitive, personal or user-specific information, it may benefit from being stored and cached, to improve performance.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/assets/](https://code.travail.gouv.fr/assets/)
  
  
  * Method: `GET`
  
  
  * Evidence: `308`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `no-store`
  
  
  
  
* URL: [https://code.travail.gouv.fr/images/](https://code.travail.gouv.fr/images/)
  
  
  * Method: `GET`
  
  
  * Evidence: `308`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `no-store`
  
  
  
  
* URL: [https://code.travail.gouv.fr/sitemap.xml](https://code.travail.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `307`
  
  
  
  
Instances: 5
  
### Solution
<p>The content may be marked as storable by ensuring that the following conditions are satisfied:</p><p>The request method must be understood by the cache and defined as being cacheable ("GET", "HEAD", and "POST" are currently defined as cacheable)</p><p>The response status code must be understood by the cache (one of the 1XX, 2XX, 3XX, 4XX, or 5XX response classes are generally understood)</p><p>The "no-store" cache directive must not appear in the request or response header fields</p><p>For caching by "shared" caches such as "proxy" caches, the "private" response directive must not appear in the response</p><p>For caching by "shared" caches such as "proxy" caches, the "Authorization" header field must not appear in the request, unless the response explicitly allows it (using one of the "must-revalidate", "public", or "s-maxage" Cache-Control response directives)</p><p>In addition to the conditions above, at least one of the following conditions must also be satisfied by the response:</p><p>It must contain an "Expires" header field</p><p>It must contain a "max-age" response directive</p><p>For "shared" caches such as "proxy" caches, it must contain a "s-maxage" response directive</p><p>It must contain a "Cache Control Extension" that allows it to be cached</p><p>It must have a status code that is defined as cacheable by default (200, 203, 204, 206, 300, 301, 404, 405, 410, 414, 501).   </p>
  
### Reference
* https://tools.ietf.org/html/rfc7234
* https://tools.ietf.org/html/rfc7231
* http://www.w3.org/Protocols/rfc2616/rfc2616-sec13.html (obsoleted by rfc7234)

  
#### CWE Id : 524
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Storable and Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, and may be retrieved directly from the cache, rather than from the origin server by the caching servers, in response to similar requests from other users.  If the response data is sensitive, personal or user-specific, this may result in sensitive information being leaked. In some cases, this may even result in a user gaining complete control of the session of another user, depending on the configuration of the caching components in use in their environment. This is primarily an issue where "shared" caching servers such as "proxy" caches are configured on the local network. This configuration is typically found in corporate or educational environments, for instance.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/api/sitemap](https://code.travail.gouv.fr/api/sitemap)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/robots.txt](https://code.travail.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
Instances: 6
  
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
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0686107799`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0225484204`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0771038309`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0242797844`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0381467976`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `021383116`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0132885762`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0414459556`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `058274284`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0147967273`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0517227538`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0218160991`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0503734797`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0436680764`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0125710648`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0540788546`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0621376969`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0169465076`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0346788764`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0434065908`
  
  
  
  
Instances: 430
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>0686107799, which evaluates to: 1991-09-29 01:29:59</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
