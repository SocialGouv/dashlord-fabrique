
# ZAP Scanning Report

Generated on Mon, 6 Sep 2021 16:27:32


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
| Application Error Disclosure | Medium | 1 | 
| Content Security Policy (CSP) Header Not Set | Medium | 11 | 
| Sub Resource Integrity Attribute Missing | Medium | 11 | 
| Dangerous JS Functions | Low | 1 | 
| Incomplete or No Cache-control Header Set | Low | 11 | 
| Permissions Policy Header Not Set | Low | 11 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| Base64 Disclosure | Informational | 11 | 
| Information Disclosure - Suspicious Comments | Informational | 11 | 
| Modern Web Application | Informational | 11 | 
| Storable and Cacheable Content | Informational | 11 | 
| Timestamp Disclosure - Unix | Informational | 14 | 

## Alert Detail


  
  
  
  
### Application Error Disclosure
##### Medium (Medium)
  
  
  
  
#### Description
<p>This page contains an error/warning message that may disclose sensitive information like the location of the file that produced the unhandled exception. This information can be used to launch further attacks against the web application. The alert could be a false positive if the error message is found inside a documentation page.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/main-89e612c37cd79392e22d.js](https://pjm.social.gouv.fr/_next/static/chunks/main-89e612c37cd79392e22d.js)
  
  
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

  
  
  
  
### Content Security Policy (CSP) Header Not Set
##### Medium (High)
  
  
  
  
#### Description
<p>Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement or distribution of malware. CSP provides a set of standard HTTP headers that allow website owners to declare approved sources of content that browsers should be allowed to load on that page — covered types are JavaScript, CSS, HTML frames, fonts, images and embeddable objects such as Java applets, ActiveX, audio and video files.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
Instances: 11
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is configured to set the Content-Security-Policy header, to achieve optimal browser support: "Content-Security-Policy" for Chrome 25+, Firefox 23+ and Safari 7+, "X-Content-Security-Policy" for Firefox 4.0+ and Internet Explorer 10+, and "X-WebKit-CSP" for Chrome 14+ and Safari 6+.</p>
  
### Reference
* https://developer.mozilla.org/en-US/docs/Web/Security/CSP/Introducing_Content_Security_Policy
* https://cheatsheetseries.owasp.org/cheatsheets/Content_Security_Policy_Cheat_Sheet.html
* http://www.w3.org/TR/CSP/
* http://w3c.github.io/webappsec/specs/content-security-policy/csp-specification.dev.html
* http://www.html5rocks.com/en/tutorials/security/content-security-policy/
* http://caniuse.com/#feat=contentsecuritypolicy
* http://content-security-policy.com/

  
#### CWE Id : 693
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Sub Resource Integrity Attribute Missing
##### Medium (High)
  
  
  
  
#### Description
<p>The integrity attribute is missing on a script or link tag served by an external server. The integrity tag prevents an attacker who have gained access to this server from injecting a malicious content. </p>
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />`
  
  
  
  
Instances: 11
  
### Solution
<p>Provide a valid integrity attribute to the tag.</p>
  
### Reference
* https://developer.mozilla.org/en/docs/Web/Security/Subresource_Integrity

  
#### CWE Id : 345
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js](https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/sitemap.xml](https://pjm.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
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
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
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
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
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
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/professionnel](https://pjm.social.gouv.fr/professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/mentions-legales](https://pjm.social.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/](https://pjm.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr](https://pjm.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/devenir-professionnel/la-procedure-d-agrem", see evidence field for the suspicious comment/snippet.</p>
  
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
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-agrement-des-mandataires-individuels)
  
  
  * Method: `GET`
  
  
  * Evidence: `<noscript data-n-css=""></noscript>`
  
  
  
  
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
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires](https://pjm.social.gouv.fr/devenir-professionnel/la-procedure-d-autorisation-des-services-mandataires)
  
  
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
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences](https://pjm.social.gouv.fr/devenir-professionnel/la-formation-au-certificat-national-de-competences)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/favicon.ico](https://pjm.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets](https://pjm.social.gouv.fr/devenir-professionnel/appel-a-candidatures-et-a-projets)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/robots.txt](https://pjm.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/politique-de-confidentialite](https://pjm.social.gouv.fr/politique-de-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/devenir-professionnel](https://pjm.social.gouv.fr/devenir-professionnel)
  
  
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
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `62914560`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `134217728`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741824`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `67108864`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741825`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `134217727`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741823`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/polyfills-a40ef1678bae11e696dba45124eadd70.js](https://pjm.social.gouv.fr/_next/static/chunks/polyfills-a40ef1678bae11e696dba45124eadd70.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `2147483647`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/polyfills-a40ef1678bae11e696dba45124eadd70.js](https://pjm.social.gouv.fr/_next/static/chunks/polyfills-a40ef1678bae11e696dba45124eadd70.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `0123456789`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `33554432`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js](https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `20191031`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js](https://pjm.social.gouv.fr/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `86400000`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `805306368`
  
  
  
  
* URL: [https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js](https://pjm.social.gouv.fr/_next/static/chunks/framework-895f067827ebe11ffe45.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `268435456`
  
  
  
  
Instances: 14
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>62914560, which evaluates to: 1971-12-30 04:16:00</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
