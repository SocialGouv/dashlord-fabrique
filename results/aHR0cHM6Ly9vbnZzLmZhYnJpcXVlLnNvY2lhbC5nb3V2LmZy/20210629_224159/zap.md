
# ZAP Scanning Report

Generated on Tue, 29 Jun 2021 22:35:48


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 2 |
| Low | 7 |
| Informational | 7 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| Content Security Policy (CSP) Header Not Set | Medium | 9 | 
| X-Frame-Options Header Not Set | Medium | 7 | 
| Absence of Anti-CSRF Tokens | Low | 3 | 
| Dangerous JS Functions | Low | 1 | 
| Incomplete or No Cache-control Header Set | Low | 7 | 
| Permissions Policy Header Not Set | Low | 11 | 
| Server Leaks Information via "X-Powered-By" HTTP Response Header Field(s) | Low | 11 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| X-Content-Type-Options Header Missing | Low | 11 | 
| Base64 Disclosure | Informational | 10 | 
| Information Disclosure - Sensitive Information in URL | Informational | 2 | 
| Information Disclosure - Suspicious Comments | Informational | 11 | 
| Modern Web Application | Informational | 11 | 
| Storable and Cacheable Content | Informational | 10 | 
| Storable but Non-Cacheable Content | Informational | 1 | 
| Timestamp Disclosure - Unix | Informational | 10 | 

## Alert Detail


  
  
  
  
### Content Security Policy (CSP) Header Not Set
##### Medium (High)
  
  
  
  
#### Description
<p>Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement or distribution of malware. CSP provides a set of standard HTTP headers that allow website owners to declare approved sources of content that browsers should be allowed to load on that page — covered types are JavaScript, CSS, HTML frames, fonts, images and embeddable objects such as Java applets, ActiveX, audio and video files.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  
  
Instances: 9
  
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

  
  
  
  
### X-Frame-Options Header Not Set
##### Medium (Medium)
  
  
  
  
#### Description
<p>X-Frame-Options header is not included in the HTTP response to protect against 'ClickJacking' attacks.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
Instances: 7
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form class="mt-5" novalidate="">`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form class="mt-5" novalidate="">`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<form class="mt-5" novalidate="">`
  
  
  
  
Instances: 3
  
### Solution
<p>Phase: Architecture and Design</p><p>Use a vetted library or framework that does not allow this weakness to occur or provides constructs that make this weakness easier to avoid.</p><p>For example, use anti-CSRF packages such as the OWASP CSRFGuard.</p><p></p><p>Phase: Implementation</p><p>Ensure that your application is free of cross-site scripting issues, because most CSRF defenses can be bypassed using attacker-controlled script.</p><p></p><p>Phase: Architecture and Design</p><p>Generate a unique nonce for each form, place the nonce into the form, and verify the nonce upon receipt of the form. Be sure that the nonce is not predictable (CWE-330).</p><p>Note that this can be bypassed using XSS.</p><p></p><p>Identify especially dangerous operations. When the user performs a dangerous operation, send a separate confirmation request to ensure that the user intended to perform that operation.</p><p>Note that this can be bypassed using XSS.</p><p></p><p>Use the ESAPI Session Management control.</p><p>This control includes a component for CSRF.</p><p></p><p>Do not use the GET method for any request that triggers a state change.</p><p></p><p>Phase: Implementation</p><p>Check the HTTP Referer header to see if the request originated from an expected page. This could break legitimate functionality, because users or proxies may have disabled sending the Referer for privacy reasons.</p>
  
### Other information
<p>No known Anti-CSRF token [anticsrf, CSRFToken, __RequestVerificationToken, csrfmiddlewaretoken, authenticity_token, OWASP_CSRFTOKEN, anoncsrf, csrf_token, _csrf, _csrfSecret, __csrf_magic, CSRF] was found in the following HTML form: [Form 1: "email" "password" "rememberMe" ].</p>
  
### Reference
* http://projects.webappsec.org/Cross-Site-Request-Forgery
* http://cwe.mitre.org/data/definitions/352.html

  
#### CWE Id : 352
  
#### WASC Id : 9
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `Eval`
  
  
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/404-98154950255df44c85a6.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/404-98154950255df44c85a6.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
Instances: 11
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/404-98154950255df44c85a6.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/404-98154950255df44c85a6.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `917-j/tom9Ex1tJQsI4WTM08y5dN4NU`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `a1bb-G4lVma8j5mQFtlQ83s3LcbTs1E4`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/apropos-d5a906e757caa74a174a.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/apropos-d5a906e757caa74a174a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `fr/IMG/pdf/protocole_accord_amelioration_securite_es_100610`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `7d16-rtcuSEiarjMTt2F9a0PnR19K4QA`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Evidence: `69b1-cV3A45Nm6Sgs5njzgOqJ0ZFNKpc`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `9d84-NvTIpH6QrSAygtOv/JxgBPnviDg`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `/_next/static/J7mwn68-5kXLHeoSdlx40/_buildManifest`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `917-j/tom9Ex1tJQsI4WTM08y5dN4NU`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `/_next/static/J7mwn68-5kXLHeoSdlx40/_buildManifest`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Evidence: `/_next/static/J7mwn68-5kXLHeoSdlx40/_buildManifest`
  
  
  
  
Instances: 10
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>�^���h��1��P��\x0016L�<˗M��</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Sensitive Information in URL
##### Informational (Medium)
  
  
  
  
#### Description
<p>The request appeared to contain sensitive information leaked in the URL. This can violate PCI and most organizational compliance policies. You can configure the list of strings for this check to add or remove values specific to your environment.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Parameter: `email`
  
  
  * Evidence: `foo-bar@example.com`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Parameter: `password`
  
  
  * Evidence: `password`
  
  
  
  
Instances: 2
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bug`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/mentions","query":{},"buildId":"J7mwn68-5k", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/404","query":{},"buildId":"J7mwn68-5kXLHeoSdlx40","nextExport":true,"autoExport":true,"isFallback":false}</script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/404","query":{},"buildId":"J7mwn68-5kXLHeoSdlx40","nextExport":true,"autoExport":true,"isFallback":false}</script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-e704c291969034ed3350.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
Instances: 11
  
### Solution
<p>This is an informational alert and so no changes are required.</p>
  
### Other information
<p>Links have been found that do not have traditional href attributes, which is an indication that this is a modern web application.</p>
  
### Reference
* 

  
#### Source ID : 3

  
  
  
  
### Storable and Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, and may be retrieved directly from the cache, rather than from the origin server by the caching servers, in response to similar requests from other users.  If the response data is sensitive, personal or user-specific, this may result in sensitive information being leaked. In some cases, this may even result in a user gaining complete control of the session of another user, depending on the configuration of the caching components in use in their environment. This is primarily an issue where "shared" caching servers such as "proxy" caches are configured on the local network. This configuration is typically found in corporate or educational environments, for instance.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-09a88f8e6a8ced89af74.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/dd70cf9bf6f0f0f860e0.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-2d63237b7f1f3d9ea422.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/_app-a2c0a7ab209cadf64726.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/992-0ea32b8d1259fd441f2b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-24089933eafb1cd2841c.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
Instances: 10
  
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

  
  
  
  
### Storable but Non-Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, but will not be retrieved directly from the cache, without validating the request upstream, in response to similar requests from other users. </p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=0`
  
  
  
  
Instances: 1
  
### Solution
<p></p>
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `17732733`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `00939483`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `70158769`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `00939483`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `17732733`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `40356452`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `40356452`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `70158769`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `82267267`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `82267267`
  
  
  
  
Instances: 10
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>17732733, which evaluates to: 1970-07-25 05:45:33</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3