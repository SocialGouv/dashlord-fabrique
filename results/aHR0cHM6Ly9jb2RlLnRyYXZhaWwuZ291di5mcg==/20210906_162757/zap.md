
# ZAP Scanning Report

Generated on Mon, 6 Sep 2021 16:22:24


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 6 |
| Low | 7 |
| Informational | 8 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: script-src unsafe-inline | Medium | 2 | 
| CSP: style-src unsafe-inline | Medium | 2 | 
| CSP: Wildcard Directive | Medium | 2 | 
| Reverse Tabnabbing | Medium | 12 | 
| Sub Resource Integrity Attribute Missing | Medium | 12 | 
| X-Frame-Options Header Not Set | Medium | 11 | 
| Absence of Anti-CSRF Tokens | Low | 11 | 
| CSP: Notices | Low | 2 | 
| Dangerous JS Functions | Low | 1 | 
| Incomplete or No Cache-control Header Set | Low | 11 | 
| Permissions Policy Header Not Set | Low | 11 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| X-Content-Type-Options Header Missing | Low | 11 | 
| Base64 Disclosure | Informational | 11 | 
| Content-Type Header Missing | Informational | 1 | 
| Information Disclosure - Suspicious Comments | Informational | 11 | 
| Modern Web Application | Informational | 11 | 
| Non-Storable Content | Informational | 4 | 
| Storable and Cacheable Content | Informational | 7 | 
| Timestamp Disclosure - Unix | Informational | 431 | 
| User Controllable HTML Element Attribute (Potential XSS) | Informational | 3 | 

## Alert Detail


  
  
  
  
### CSP: script-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>script-src includes unsafe-inline.</p>
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
Instances: 2
  
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

  
  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
Instances: 2
  
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
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
Instances: 2
  
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

  
  
  
  
### Reverse Tabnabbing
##### Medium (Medium)
  
  
  
  
#### Description
<p>At least one link on this page is vulnerable to Reverse tabnabbing as it uses a target attribute without using both of the "noopener" and "noreferrer" keywords in the "rel" attribute, which allows the target page to take control of this page.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/apprentissage-apprentis-et-organismes-de-formation-cfa](https://code.travail.gouv.fr/fiche-ministere-travail/apprentissage-apprentis-et-organismes-de-formation-cfa)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/IMG/pdf/qr_of_cfa_nouveau-confinement.pdf" type="application/pdf" class="doc-joint__link pdf" target="_blank" rel="nofollow, noopener"><span class="doc-joint__libelle-lien">Téléchargement</span><span class="doc-joint__taille">(180.5&nbsp;ko)</span></a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/aide-a-lembauche-des-jeunes](https://code.travail.gouv.fr/fiche-ministere-travail/aide-a-lembauche-des-jeunes)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/IMG/pdf/qr_aej.pdf" class="spip_in" type="application/pdf" target="_blank" rel="nofollow, noopener">Questions-réponses&nbsp;: Aide à l’embauche des jeunes</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/responsabilite-de-lemployeur-droit-de-retrait](https://code.travail.gouv.fr/fiche-ministere-travail/responsabilite-de-lemployeur-droit-de-retrait)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/actualites/l-actualite-du-ministere/article/coronavirus-covid-19-securite-et-sante-des-travailleurs-les-obligations" class="spip_in" target="_blank" rel="nofollow, noopener">Lire l’article plus détaillé à propos de la responsabilité de l’employeur et ses obligations</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/formation-professionnelle-des-salaries-en-activite-partielle](https://code.travail.gouv.fr/fiche-ministere-travail/formation-professionnelle-des-salaries-en-activite-partielle)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/emploi-et-insertion/accompagnement-des-mutations-economiques/activite-partielle" class="spip_in" target="_blank" rel="nofollow, noopener">activité partielle</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/actualites/l-actualite-du-ministere/article/activite-partielle-tentatives-d-escroquerie-par-hameconnage-phishing" class="spip_in" target="_blank" rel="nofollow, noopener"><strong>En savoir +</strong></a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/emploi-et-insertion/accompagnement-des-mutations-economiques/activite-partielle" class="spip_in" target="_blank" rel="nofollow, noopener">activité partielle</a>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/adaptation-de-lactivite-conges-mise-a-disposition-de-main-doeuvre](https://code.travail.gouv.fr/fiche-ministere-travail/adaptation-de-lactivite-conges-mise-a-disposition-de-main-doeuvre)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://travail-emploi.gouv.fr/emploi-et-insertion/accompagnement-des-mutations-economiques/activite-partielle" class="spip_in" target="_blank" rel="nofollow, noopener">activité partielle</a>`
  
  
  
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/aide-a-lembauche-dun-jeune-de-moins-de-26-ans](https://code.travail.gouv.fr/fiche-service-public/aide-a-lembauche-dun-jeune-de-moins-de-26-ans)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://www.service-public.fr/associations/vosdroits/F35364"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/remuneration-dun-salarie-en-chomage-partiel-activite-partielle](https://code.travail.gouv.fr/fiche-service-public/remuneration-dun-salarie-en-chomage-partiel-activite-partielle)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://www.service-public.fr/particuliers/vosdroits/F13898"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/aide-exceptionnelle-aux-employeurs-qui-recrutent-en-apprentissage](https://code.travail.gouv.fr/fiche-ministere-travail/aide-exceptionnelle-aux-employeurs-qui-recrutent-en-apprentissage)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/formation-professionnelle/entreprise-et-alternance/aide-exceptionnelle-apprentissage"/>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel](https://code.travail.gouv.fr/fiche-ministere-travail/fiche-activite-partielle-chomage-partiel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="canonical" href="https://travail-emploi.gouv.fr/le-ministere-en-action/coronavirus-covid-19/poursuite-de-l-activite-en-periode-de-covid-19/chomage-partiel-activite-partielle/article/fiche-activite-partielle-chomage-partiel"/>`
  
  
  
  
Instances: 12
  
### Solution
<p>Provide a valid integrity attribute to the tag.</p>
  
### Reference
* https://developer.mozilla.org/en/docs/Web/Security/Subresource_Integrity

  
#### CWE Id : 345
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
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

  
#### CWE Id : 1021
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Absence of Anti-CSRF Tokens
##### Low (Medium)
  
  
  
  
#### Description
<p>No Anti-CSRF tokens were found in a HTML submission form.</p><p>A cross-site request forgery is an attack that involves forcing a victim to send an HTTP request to a target destination without their knowledge or intent in order to perform an action as the victim. The underlying cause is application functionality using predictable URL/form actions in a repeatable way. The nature of the attack is that CSRF exploits the trust that a web site has for a user. By contrast, cross-site scripting (XSS) exploits the trust that a user has for a web site. Like XSS, CSRF attacks are not necessarily cross-site, but they can be. Cross-site request forgery is also known as CSRF, XSRF, one-click attack, session riding, confused deputy, and sea surf.</p><p></p><p>CSRF attacks are effective in a number of situations, including:</p><p>    * The victim has an active session on the target site.</p><p>    * The victim is authenticated via HTTP auth on the target site.</p><p>    * The victim is on the same local network as the target site.</p><p></p><p>CSRF has primarily been used to perform an action against a target site using the victim's privileges, but recent techniques have been discovered to disclose information by gaining access to the response. The risk of information disclosure is dramatically increased when the target site is vulnerable to XSS, because XSS can be used as a platform for CSRF, allowing the attack to operate within the bounds of the same-origin policy.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form role="search" action="/recherche" class="SearchBar__SearchForm-sc-14cbasn-0 dczXD">`
  
  
  
  
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
<p>Warnings:</p><p>The report-uri directive has ben deprecated in favor of the new report-to directive</p><p></p>
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' *.travail.gouv.fr *.data.gouv.fr *.fabrique.social.gouv.fr;font-src 'self' data: blob:;frame-src 'self' https://mon-entreprise.fr https://matomo.fabrique.social.gouv.fr *.dailymotion.com;img-src 'self' data: *.fabrique.social.gouv.fr https://travail-emploi.gouv.fr https://mon-entreprise.fr https://ad.doubleclick.net https://cdtnadminprod.blob.core.windows.net;script-src 'self' 'unsafe-inline' https://mon-entreprise.fr https://www.googletagmanager.com *.fabrique.social.gouv.fr https://cdnjs.cloudflare.com;style-src 'self' 'unsafe-inline';report-uri https://c2aa7e731a494cfd8f7fb1ddabca11c9@sentry.fabrique.social.gouv.fr/5&sentry_environment=production&sentry_release=v4.52.2`
  
  
  
  
Instances: 2
  
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

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/_next/static/chunks/pages/_app-cdfae6980ad1c96f5ada.js](https://code.travail.gouv.fr/_next/static/chunks/pages/_app-cdfae6980ad1c96f5ada.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
Instances: 1
  
### Solution
<p>See the references for security advice on the use of these functions.</p>
  
### Reference
* https://angular.io/guide/security

  
#### CWE Id : 749
  
#### Source ID : 3

  
  
  
  
### Incomplete or No Cache-control Header Set
##### Low (Medium)
  
  
  
  
#### Description
<p>The cache-control header has not been set properly or is missing, allowing the browser and proxies to cache content.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/robots.txt](https://code.travail.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/temps-de-travail](https://code.travail.gouv.fr/themes/temps-de-travail)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 11
  
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
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
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

  
  
  
  
### Server Leaks Version Information via "Server" HTTP Response Header Field
##### Low (High)
  
  
  
  
#### Description
<p>The web/application server is leaking version information via the "Server" HTTP response header. Access to such information may facilitate attackers identifying other vulnerabilities your web/application server is subject to.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
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

  
#### CWE Id : 693
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Base64 Disclosure
##### Informational (Medium)
  
  
  
  
#### Description
<p>Base64 encoded data was disclosed by the application/web server. Note: in the interests of performance not all base64 strings in the response were analyzed individually, the entire response should be looked at by the analyst/security team/developer(s).</p>
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `d329-pujlXwN7WJsgHkEyGfGv+Z3jFU0`
  
  
  
  
* URL: [https://code.travail.gouv.fr](https://code.travail.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils](https://code.travail.gouv.fr/outils)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `eb9e-15eyhUA540e7WDWMzLpYKk0XmK0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux](https://code.travail.gouv.fr/contribution/les-conges-pour-evenements-familiaux)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/salaire-et-remuneration](https://code.travail.gouv.fr/themes/salaire-et-remuneration)
  
  
  * Method: `GET`
  
  
  * Evidence: `d1c1-fkNQN0VPcGW8EAfbF1+B2AHNTWs`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
  * Method: `GET`
  
  
  * Evidence: `bde3-vQPaXyqMFtavs8QNGjUdke4mTkw`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
* URL: [https://code.travail.gouv.fr/](https://code.travail.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `SkipNavLink__SkipNav-sc-c0h2yu-0`
  
  
  
  
Instances: 11
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>w}�����|
�bl�y\x0004�gƿ�w�U4</p>
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{"data":{"_index":"cdtn-prod-v1_documents-1630923522499", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail](https://code.travail.gouv.fr/themes/embauche-et-contrat-de-travail)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes](https://code.travail.gouv.fr/themes)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/outils/simulateur-embauche](https://code.travail.gouv.fr/outils/simulateur-embauche)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/themes/conges-et-repos](https://code.travail.gouv.fr/themes/conges-et-repos)
  
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/sitemap.xml](https://code.travail.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `307`
  
  
  
  
Instances: 4
  
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
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois](https://code.travail.gouv.fr/dossiers/aides-et-accompagnement-embauche-et-perennisation-des-emplois)
  
  
  * Method: `GET`
  
  
  
  
Instances: 7
  
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
  
  
  * Evidence: `0104301302`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0318676755`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0771038309`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0135049662`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0314144492`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0614962764`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `03168061`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `058274284`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0103068454`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0302117299`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0517227538`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0293342546`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `02074508`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0509440862`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0203681719`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0206376556`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0163633414`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0621376969`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0166236144`
  
  
  
  
* URL: [https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus](https://code.travail.gouv.fr/dossiers/ministere-du-travail-notre-dossier-sur-le-coronavirus)
  
  
  * Method: `GET`
  
  
  * Evidence: `0343925022`
  
  
  
  
Instances: 431
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>0104301302, which evaluates to: 1973-04-22 04:35:02</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### User Controllable HTML Element Attribute (Potential XSS)
##### Informational (Low)
  
  
  
  
#### Description
<p>This check looks at user-supplied input in query string parameters and POST data to identify where certain HTML attribute values might be controlled. This provides hot-spot detection for XSS (cross-site scripting) that will require further review by a security analyst to determine exploitability.</p>
  
  
  
* URL: [https://code.travail.gouv.fr/fiche-service-public/bassin-demploi-a-redynamiser-ber-exonerations-dimpot-et-de-cotisations?q=ber](https://code.travail.gouv.fr/fiche-service-public/bassin-demploi-a-redynamiser-ber-exonerations-dimpot-et-de-cotisations?q=ber)
  
  
  * Method: `GET`
  
  
  * Parameter: `q`
  
  
  
  
* URL: [https://code.travail.gouv.fr/recherche?q=ber](https://code.travail.gouv.fr/recherche?q=ber)
  
  
  * Method: `GET`
  
  
  * Parameter: `q`
  
  
  
  
* URL: [https://code.travail.gouv.fr/recherche?q=ber](https://code.travail.gouv.fr/recherche?q=ber)
  
  
  * Method: `GET`
  
  
  * Parameter: `q`
  
  
  
  
Instances: 3
  
### Solution
<p>Validate all input and sanitize output it before writing to any HTML attributes.</p>
  
### Other information
<p>User-controlled HTML attribute values were found. Try injecting special characters to see if XSS might be possible. The page at the following URL:</p><p></p><p>https://code.travail.gouv.fr/fiche-service-public/bassin-demploi-a-redynamiser-ber-exonerations-dimpot-et-de-cotisations?q=ber</p><p></p><p>appears to include user input in: </p><p></p><p>a(n) [input] tag [value] attribute </p><p></p><p>The user input found was:</p><p>q=ber</p><p></p><p>The user-controlled value was:</p><p>ber</p>
  
### Reference
* http://websecuritytool.codeplex.com/wikipage?title=Checks#user-controlled-html-attribute

  
#### CWE Id : 20
  
#### WASC Id : 20
  
#### Source ID : 3
