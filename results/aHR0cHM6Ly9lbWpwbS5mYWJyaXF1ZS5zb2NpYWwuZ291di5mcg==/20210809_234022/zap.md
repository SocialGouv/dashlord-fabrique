
# ZAP Scanning Report

Generated on Mon, 9 Aug 2021 23:35:36


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 4 |
| Low | 2 |
| Informational | 5 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: script-src unsafe-inline | Medium | 3 | 
| CSP: style-src unsafe-inline | Medium | 3 | 
| CSP: Wildcard Directive | Medium | 3 | 
| Sub Resource Integrity Attribute Missing | Medium | 3 | 
| Incomplete or No Cache-control Header Set | Low | 5 | 
| Permissions Policy Header Not Set | Low | 4 | 
| Base64 Disclosure | Informational | 4 | 
| Information Disclosure - Suspicious Comments | Informational | 2 | 
| Modern Web Application | Informational | 3 | 
| Storable and Cacheable Content | Informational | 11 | 
| Timestamp Disclosure - Unix | Informational | 102 | 

## Alert Detail


  
  
  
  
### CSP: script-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>script-src includes unsafe-inline.</p>
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
Instances: 3
  
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
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
Instances: 3
  
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
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src https://matomo.fabrique.social.gouv.fr/; connect-src *.dev.fabrique.social.gouv.fr https://api-emjpm.fabrique.social.gouv.fr/api/ https://emjpm.fabrique.social.gouv.fr https://hasura-emjpm.fabrique.social.gouv.fr/v1/graphql https://matomo.fabrique.social.gouv.fr/ https://openmaptiles.geo.data.gouv.fr/ https://openmaptiles.github.io/ https://api-adresse.data.gouv.fr https://entreprise.data.gouv.fr https://nominatim.openstreetmap.org; font-src 'self'; img-src  https://openmaptiles.github.io/ https://api.mapbox.com/ 'self' data: blob:; script-src https://matomo.fabrique.social.gouv.fr/ blob: 'self' 'unsafe-inline'; style-src 'self' 'unsafe-inline' https://api.tiles.mapbox.com/; manifest-src 'self';`
  
  
  
  
Instances: 3
  
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

  
  
  
  
### Sub Resource Integrity Attribute Missing
##### Medium (High)
  
  
  
  
#### Description
<p>The integrity attribute is missing on a script or link tag served by an external server. The integrity tag prevents an attacker who have gained access to this server from injecting a malicious content. </p>
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css" rel="stylesheet"/>`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css" rel="stylesheet"/>`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<link href="https://api.tiles.mapbox.com/mapbox-gl-js/v1.4.1/mapbox-gl.css" rel="stylesheet"/>`
  
  
  
  
Instances: 3
  
### Solution
<p>Provide a valid integrity attribute to the tag.</p>
  
### Reference
* https://developer.mozilla.org/en/docs/Web/Security/Subresource_Integrity

  
#### CWE Id : 345
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Incomplete or No Cache-control Header Set
##### Low (Medium)
  
  
  
  
#### Description
<p>The cache-control header has not been set properly or is missing, allowing the browser and proxies to cache content.</p>
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/robots.txt](https://emjpm.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/manifest.json](https://emjpm.fabrique.social.gouv.fr/manifest.json)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 5
  
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
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js)
  
  
  * Method: `GET`
  
  
  
  
Instances: 4
  
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

  
  
  
  
### Base64 Disclosure
##### Informational (Medium)
  
  
  
  
#### Description
<p>Base64 encoded data was disclosed by the application/web server. Note: in the interests of performance not all base64 strings in the response were analyzed individually, the entire response should be looked at by the analyst/security team/developer(s).</p>
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `iVBORw0KGgoAAAANSUhEUgAAADwAAABICAYAAACqT5alAAAABGdBTUEAALGPC/xhBQAABR5JREFUeAHtm01sG0UUgN/Mxg1tkqZFbUElQNqmsjYgocQpOXBp6KHiAG0RajkgWiSkShUXfgoIQbT1AYEqxAUOPXHIBYQACwmkICTSQyUosXMoieWmEfSHUqqAmsahcW3v8N6GXa0d78Z2PEPX9hy6s++92fe+93Z3xpsOgxJNRE6FUvD7fmGK/QBsQABsBRDtJUzvIBFLM4CrGOc44ywWhvtiLH40Wxwg2hS2qf7hAzjoJAjYUagJ2BmDGSzW8d5E9Ct35A6wMAye/Np8D4Q47jYIfJ+xk/pT/E1mGCaxtNhAdQlLcFhAZKPe6/SPVWHrNhbiSxLUbWPsabq9Gb2gkuJKMvDP7EqVwmdaZ106p7dx3cNSMvAlTKx8aepZKT31oSdWTvNsfeCUQ8EG+NKiohzj4NsQK1b4Tl9B1TLRoh2BG6s1geu93s7SUgWotmEdbHl5L7QNLv0uWfhpBq5/OAr5G/+ocG/5UAasda6FbZ8eg9CW9Q7chif7LPhfD30M+blbjlxmR9kzvPnYngJYG4oSQDpVTRmwfRuXAvPTlbJfjUwZsLaxzTNOP53noCoVyoAz09c8Q/TTeQ6qUqEM+K+RM54h+uk8B1WpUAacPp2C6x99DyKXd0KlPslIp6qxqb53cE2troXuvxvaIt2Ww4X4b5C9/Lc65+hJyTzM21ut+bZlUwcsnJ2BG7GEBblm2ybYeGgQcrPzQIsQM52RDi8dmCr64KkXIHRvpwNjLuLnYiGAr13jyLLX5uDi0U+kV1z6M3zPa08UwBIhvytUAEsySgjZym7Sgdf1d5fNUIlt2RctMpQOrLW1Frn0Pq3E1vsq/hrpwP7u1WubwOpzrtZjs8Jq863eW7PC6nOu1qP0CgtcQpbbKrEt95rFdtKBb527UuzT87wSW8+LrKCQ/uPh8ksj0P7YTli/92Ho2K2XDGd+LAk3R3+B9JnpkvpaCqVX2EwvIsw5WEx5f+IhHdmQrewmHVg2QKXXbwJXmrGg2TcrHLSKVRpvs8KVZixo9soqLDLL/mOrkys/nWNUo44y4DlcWGQuzi4Lm2SkU9WU/+VBFZiXH2UV9gpAtbzxgBljN1Vn+f/yR6xUYdwn0DDtKgKLHxsGF1k5E1rBJoh6hidWHu7p/QYhJ+sZ9D+2SWLl7PODeca1V3DzQ/lf2wKWHWKzGJHVmpb0uPEdbvd4O2Ac5YeLbBYjjnD2LdHoqb7hN1DwrgBRF/MzA2bibftW70T0fTs7BcAkTA4Yu8E0P8BvxP22URCPOOcmgPNX9XFjzB3/MmBSIixLRU4M4XEfntGeiK3ARId7YMm+YJhU0Ynf3rWS+gqFGJwAxubx4P1Ty76mIDtaUzDceyhi4fETYwi97L1UEti+RjXH6UGjK5c1T2Oytlcz3h6DgWUQdp+eiI7aslocaw5MQc1EjAdumwgNoru6INltTeMHwuPGt9WN9x4l5eW0I25cglY+hBW65O3aQ8Mgiw/GMzJgyaOUCtso53cZ2/M5q9Jdtsz3iLAa0w6G40bM124VSqnAFNeFfqMnC9YzjZuufRpjOXzFPKtPRL/wsVq1Ssot7Y6qJ2FcgBY+hLfpH265u4+6PL7Wn5MNSz6lA5MT/axxnjPtcez+SefuRosDYNrz4UT0M7dcVl/6Le0OfHpX9KFcLvsDTo6bSU6wmPEj4YnoiNtOZl9JhW2AnT8PTwIP7cEFwSxmmpYpL6qEteNQfkw9Gn0kGRk+rNxxIzr8FxOWgBFarZIGAAAAAElFTkSuQmCC`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `VMN8HGADJ9JA3HTL5D28z-AqF4so6aHiBGHst3Oz69g`
  
  
  
  
Instances: 4
  
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
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bug`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
Instances: 2
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bBUG\b and was detected in the element starting with: "(this["webpackJsonp@emjpm/app"]=this["webpackJsonp@emjpm/app"]||[]).push([[3],[function(e,t,n){"use strict";e.exports=n(677)},fu", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>!function(e){function r(r){for(var n,a,i=r[0],c=r[1],f=r[2],p=0,s=[];p<i.length;p++)a=i[p],Object.prototype.hasOwnProperty.call(o,a)&&o[a]&&s.push(o[a][0]),o[a]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(e[n]=c[n]);for(l&&l(r);s.length;)s.shift()();return u.push.apply(u,f||[]),t()}function t(){for(var e,r=0;r<u.length;r++){for(var t=u[r],n=!0,i=1;i<t.length;i++){var c=t[i];0!==o[c]&&(n=!1)}n&&(u.splice(r--,1),e=a(a.s=t[0]))}return e}var n={},o={2:0},u=[];function a(r){if(n[r])return n[r].exports;var t=n[r]={i:r,l:!1,exports:{}};return e[r].call(t.exports,t,t.exports,a),t.l=!0,t.exports}a.e=function(e){var r=[],t=o[e];if(0!==t)if(t)r.push(t[2]);else{var n=new Promise((function(r,n){t=o[e]=[r,n]}));r.push(t[2]=n);var u,i=document.createElement("script");i.charset="utf-8",i.timeout=120,a.nc&&i.setAttribute("nonce",a.nc),i.src=function(e){return a.p+"static/js/"+({}[e]||e)+"."+{0:"deadd5e4",4:"793e6bd8",5:"39474ab7",6:"b83b5bf3",7:"5965b42f",8:"9b82c50d",9:"4f2975ef",10:"b4c684e8",11:"4b1db507",12:"b8d9b895",13:"c3ed8f93",14:"b967c1b9",15:"57a5b457",16:"e78a64cd"}[e]+".chunk.js"}(e);var c=new Error;u=function(r){i.onerror=i.onload=null,clearTimeout(f);var t=o[e];if(0!==t){if(t){var n=r&&("load"===r.type?"missing":r.type),u=r&&r.target&&r.target.src;c.message="Loading chunk "+e+" failed.\n("+n+": "+u+")",c.name="ChunkLoadError",c.type=n,c.request=u,t[1](c)}o[e]=void 0}};var f=setTimeout((function(){u({type:"timeout",target:i})}),12e4);i.onerror=i.onload=u,document.head.appendChild(i)}return Promise.all(r)},a.m=e,a.c=n,a.d=function(e,r,t){a.o(e,r)||Object.defineProperty(e,r,{enumerable:!0,get:t})},a.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},a.t=function(e,r){if(1&r&&(e=a(e)),8&r)return e;if(4&r&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(a.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&r&&"string"!=typeof e)for(var n in e)a.d(t,n,function(r){return e[r]}.bind(null,n));return t},a.n=function(e){var r=e&&e.__esModule?function(){return e.default}:function(){return e};return a.d(r,"a",r),r},a.o=function(e,r){return Object.prototype.hasOwnProperty.call(e,r)},a.p="/",a.oe=function(e){throw console.error(e),e};var i=this["webpackJsonp@emjpm/app"]=this["webpackJsonp@emjpm/app"]||[],c=i.push.bind(i);i.push=r,i=i.slice();for(var f=0;f<i.length;f++)r(i[f]);var l=c;t()}([])</script>`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>!function(e){function r(r){for(var n,a,i=r[0],c=r[1],f=r[2],p=0,s=[];p<i.length;p++)a=i[p],Object.prototype.hasOwnProperty.call(o,a)&&o[a]&&s.push(o[a][0]),o[a]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(e[n]=c[n]);for(l&&l(r);s.length;)s.shift()();return u.push.apply(u,f||[]),t()}function t(){for(var e,r=0;r<u.length;r++){for(var t=u[r],n=!0,i=1;i<t.length;i++){var c=t[i];0!==o[c]&&(n=!1)}n&&(u.splice(r--,1),e=a(a.s=t[0]))}return e}var n={},o={2:0},u=[];function a(r){if(n[r])return n[r].exports;var t=n[r]={i:r,l:!1,exports:{}};return e[r].call(t.exports,t,t.exports,a),t.l=!0,t.exports}a.e=function(e){var r=[],t=o[e];if(0!==t)if(t)r.push(t[2]);else{var n=new Promise((function(r,n){t=o[e]=[r,n]}));r.push(t[2]=n);var u,i=document.createElement("script");i.charset="utf-8",i.timeout=120,a.nc&&i.setAttribute("nonce",a.nc),i.src=function(e){return a.p+"static/js/"+({}[e]||e)+"."+{0:"deadd5e4",4:"793e6bd8",5:"39474ab7",6:"b83b5bf3",7:"5965b42f",8:"9b82c50d",9:"4f2975ef",10:"b4c684e8",11:"4b1db507",12:"b8d9b895",13:"c3ed8f93",14:"b967c1b9",15:"57a5b457",16:"e78a64cd"}[e]+".chunk.js"}(e);var c=new Error;u=function(r){i.onerror=i.onload=null,clearTimeout(f);var t=o[e];if(0!==t){if(t){var n=r&&("load"===r.type?"missing":r.type),u=r&&r.target&&r.target.src;c.message="Loading chunk "+e+" failed.\n("+n+": "+u+")",c.name="ChunkLoadError",c.type=n,c.request=u,t[1](c)}o[e]=void 0}};var f=setTimeout((function(){u({type:"timeout",target:i})}),12e4);i.onerror=i.onload=u,document.head.appendChild(i)}return Promise.all(r)},a.m=e,a.c=n,a.d=function(e,r,t){a.o(e,r)||Object.defineProperty(e,r,{enumerable:!0,get:t})},a.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},a.t=function(e,r){if(1&r&&(e=a(e)),8&r)return e;if(4&r&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(a.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&r&&"string"!=typeof e)for(var n in e)a.d(t,n,function(r){return e[r]}.bind(null,n));return t},a.n=function(e){var r=e&&e.__esModule?function(){return e.default}:function(){return e};return a.d(r,"a",r),r},a.o=function(e,r){return Object.prototype.hasOwnProperty.call(e,r)},a.p="/",a.oe=function(e){throw console.error(e),e};var i=this["webpackJsonp@emjpm/app"]=this["webpackJsonp@emjpm/app"]||[],c=i.push.bind(i);i.push=r,i=i.slice();for(var f=0;f<i.length;f++)r(i[f]);var l=c;t()}([])</script>`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>!function(e){function r(r){for(var n,a,i=r[0],c=r[1],f=r[2],p=0,s=[];p<i.length;p++)a=i[p],Object.prototype.hasOwnProperty.call(o,a)&&o[a]&&s.push(o[a][0]),o[a]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(e[n]=c[n]);for(l&&l(r);s.length;)s.shift()();return u.push.apply(u,f||[]),t()}function t(){for(var e,r=0;r<u.length;r++){for(var t=u[r],n=!0,i=1;i<t.length;i++){var c=t[i];0!==o[c]&&(n=!1)}n&&(u.splice(r--,1),e=a(a.s=t[0]))}return e}var n={},o={2:0},u=[];function a(r){if(n[r])return n[r].exports;var t=n[r]={i:r,l:!1,exports:{}};return e[r].call(t.exports,t,t.exports,a),t.l=!0,t.exports}a.e=function(e){var r=[],t=o[e];if(0!==t)if(t)r.push(t[2]);else{var n=new Promise((function(r,n){t=o[e]=[r,n]}));r.push(t[2]=n);var u,i=document.createElement("script");i.charset="utf-8",i.timeout=120,a.nc&&i.setAttribute("nonce",a.nc),i.src=function(e){return a.p+"static/js/"+({}[e]||e)+"."+{0:"deadd5e4",4:"793e6bd8",5:"39474ab7",6:"b83b5bf3",7:"5965b42f",8:"9b82c50d",9:"4f2975ef",10:"b4c684e8",11:"4b1db507",12:"b8d9b895",13:"c3ed8f93",14:"b967c1b9",15:"57a5b457",16:"e78a64cd"}[e]+".chunk.js"}(e);var c=new Error;u=function(r){i.onerror=i.onload=null,clearTimeout(f);var t=o[e];if(0!==t){if(t){var n=r&&("load"===r.type?"missing":r.type),u=r&&r.target&&r.target.src;c.message="Loading chunk "+e+" failed.\n("+n+": "+u+")",c.name="ChunkLoadError",c.type=n,c.request=u,t[1](c)}o[e]=void 0}};var f=setTimeout((function(){u({type:"timeout",target:i})}),12e4);i.onerror=i.onload=u,document.head.appendChild(i)}return Promise.all(r)},a.m=e,a.c=n,a.d=function(e,r,t){a.o(e,r)||Object.defineProperty(e,r,{enumerable:!0,get:t})},a.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},a.t=function(e,r){if(1&r&&(e=a(e)),8&r)return e;if(4&r&&"object"==typeof e&&e&&e.__esModule)return e;var t=Object.create(null);if(a.r(t),Object.defineProperty(t,"default",{enumerable:!0,value:e}),2&r&&"string"!=typeof e)for(var n in e)a.d(t,n,function(r){return e[r]}.bind(null,n));return t},a.n=function(e){var r=e&&e.__esModule?function(){return e.default}:function(){return e};return a.d(r,"a",r),r},a.o=function(e,r){return Object.prototype.hasOwnProperty.call(e,r)},a.p="/",a.oe=function(e){throw console.error(e),e};var i=this["webpackJsonp@emjpm/app"]=this["webpackJsonp@emjpm/app"]||[],c=i.push.bind(i);i.push=r,i=i.slice();for(var f=0;f<i.length;f++)r(i[f]);var l=c;t()}([])</script>`
  
  
  
  
Instances: 3
  
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
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/sitemap.xml](https://emjpm.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/css/pagination.css](https://emjpm.fabrique.social.gouv.fr/css/pagination.css)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/css/font-open-sans.css](https://emjpm.fabrique.social.gouv.fr/css/font-open-sans.css)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr](https://emjpm.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/](https://emjpm.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/favicon.ico](https://emjpm.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/css/main.9ae4211f.chunk.css](https://emjpm.fabrique.social.gouv.fr/static/css/main.9ae4211f.chunk.css)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/manifest.json](https://emjpm.fabrique.social.gouv.fr/manifest.json)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/css/font-source-sans-pro.css](https://emjpm.fabrique.social.gouv.fr/css/font-source-sans-pro.css)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/robots.txt](https://emjpm.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/css/font-quicksand.css](https://emjpm.fabrique.social.gouv.fr/css/font-quicksand.css)
  
  
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
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `10025880`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `13468991`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16775388`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16774638`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16775930`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `94906265`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `13458524`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741824`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `67108864`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `11403055`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `12211667`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16747520`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1073741825`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `14204888`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `134217727`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `10506797`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/main.fa1d03ca.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `00156209`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16711680`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16775885`
  
  
  
  
* URL: [https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js](https://emjpm.fabrique.social.gouv.fr/static/js/3.4cf3cfd6.chunk.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16744272`
  
  
  
  
Instances: 102
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>10025880, which evaluates to: 1970-04-27 00:58:00</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
