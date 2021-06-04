
# ZAP Scanning Report

Generated on Fri, 4 Jun 2021 16:43:00


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 3 |
| Low | 4 |
| Informational | 5 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: style-src unsafe-inline | Medium | 5 | 
| CSP: Wildcard Directive | Medium | 5 | 
| Sub Resource Integrity Attribute Missing | Medium | 11 | 
| Dangerous JS Functions | Low | 4 | 
| Feature Policy Header Not Set | Low | 11 | 
| Incomplete or No Cache-control and Pragma HTTP Header Set | Low | 11 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| Base64 Disclosure | Informational | 11 | 
| Information Disclosure - Suspicious Comments | Informational | 11 | 
| Modern Web Application | Informational | 11 | 
| Storable and Cacheable Content | Informational | 11 | 
| Timestamp Disclosure - Unix | Informational | 6 | 

## Alert Detail


  
  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
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

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### CSP: Wildcard Directive
##### Medium (Medium)
  
  
  
  
#### Description
<p>The following directives either allow wildcard sources (or ancestors), are not defined, or are overly broadly defined: </p><p>frame-ancestors, form-action</p><p></p><p>The directive(s): frame-ancestors, form-action are among the directives that do not fallback to default-src, missing/excluding them is the same as allowing anything.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
  * Evidence: `default-src 'none'; connect-src 'self' https://*.gouv.fr; font-src 'self'; media-src 'self' https://*.gouv.fr; img-src 'self' https://*.gouv.fr https://a.tile.openstreetmap.org https://b.tile.openstreetmap.org https://c.tile.openstreetmap.org; prefetch-src 'self' https://*.gouv.fr; script-src 'self' https://*.gouv.fr; frame-src 'self' https://*.gouv.fr; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Content-Security-Policy`
  
  
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

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Sub Resource Integrity Attribute Missing
##### Medium (High)
  
  
  
  
#### Description
<p>The integrity attribute is missing on a script or link tag served by an external server. The integrity tag prevents an attacker who have gained access to this server from injecting a malicious content. </p>
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&amp;family=Open+Sans:ital,wght@0,600;0,700;1,400&amp;family=Quicksand:wght@400;700&amp;display=swap" rel="stylesheet"/>`
  
  
  
  
Instances: 11
  
### Solution
<p>Provide a valid integrity attribute to the tag.</p>
  
### Reference
* https://developer.mozilla.org/en/docs/Web/Security/Subresource_Integrity

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js](https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/42975ff78b817bf632e4ba483f29e0b9b1370696.d7d8d85b7e8e9770c682.js](https://pjm.social.gouv.fr/_next/static/chunks/42975ff78b817bf632e4ba483f29e0b9b1370696.d7d8d85b7e8e9770c682.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js](https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/feb597ccb37462309f421c2919bedcd355cb50c7.a46e8351472900e84407.js](https://pjm.social.gouv.fr/_next/static/chunks/feb597ccb37462309f421c2919bedcd355cb50c7.a46e8351472900e84407.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `Eval`
  
  
  
  
Instances: 4
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js](https://pjm.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/main-df87bbce607a8ba2b1a5.js](https://pjm.social.gouv.fr/_next/static/chunks/main-df87bbce607a8ba2b1a5.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js](https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/commons.6fec3e9d6d4de334c83e.js](https://pjm.social.gouv.fr/_next/static/chunks/commons.6fec3e9d6d4de334c83e.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/sitemap.xml](https://pjm.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js](https://pjm.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/favicon.ico](https://pjm.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/sitemap.xml](https://pjm.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js](https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/pages/_app-78631007dfb216eaa8ae.js](https://pjm.social.gouv.fr/_next/static/chunks/pages/_app-78631007dfb216eaa8ae.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
Instances: 11
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>T�|\x001c`\x0003'�@�t��=���*\x0017�(��\x0004a�s���</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/commons.6fec3e9d6d4de334c83e.js](https://pjm.social.gouv.fr/_next/static/chunks/commons.6fec3e9d6d4de334c83e.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/42975ff78b817bf632e4ba483f29e0b9b1370696.d7d8d85b7e8e9770c682.js](https://pjm.social.gouv.fr/_next/static/chunks/42975ff78b817bf632e4ba483f29e0b9b1370696.d7d8d85b7e8e9770c682.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js](https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/main-df87bbce607a8ba2b1a5.js](https://pjm.social.gouv.fr/_next/static/chunks/main-df87bbce607a8ba2b1a5.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/mentions-legales","query":{},"buildId":"RC", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js](https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/polyfills-c187b3492310cbd1eb58.js](https://pjm.social.gouv.fr/_next/static/chunks/polyfills-c187b3492310cbd1eb58.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
Instances: 11
  
### Solution
<p>This is an informational alert and so no changes are required.</p>
  
### Other information
<p>A noScript tag has been found, which is an indication that the application works differently with JavaScript enabled compared to when it is not.</p>
  
### Reference
* 

  
#### Source ID : 3

  
  
  
  
### Storable and Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, and may be retrieved directly from the cache, rather than from the origin server by the caching servers, in response to similar requests from other users.  If the response data is sensitive, personal or user-specific, this may result in sensitive information being leaked. In some cases, this may even result in a user gaining complete control of the session of another user, depending on the configuration of the caching components in use in their environment. This is primarily an issue where "shared" caching servers such as "proxy" caches are configured on the local network. This configuration is typically found in corporate or educational environments, for instance.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/sitemap.xml](https://pjm.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/favicon.ico](https://pjm.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js](https://pjm.social.gouv.fr/_next/static/chunks/webpack-50bee04d1dc61f8adf5b.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js](https://pjm.social.gouv.fr/_next/static/chunks/framework.4b81eedf2fcdb09bf521.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `00156209`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `00156209`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `00261106`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `00261106`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `00261106`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `00156209`
  
  
  
  
Instances: 6
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>00156209, which evaluates to: 1970-01-02 19:23:29</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
