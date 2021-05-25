
# ZAP Scanning Report

Generated on Tue, 25 May 2021 23:17:35


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 3 |
| Low | 7 |
| Informational | 7 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| Content Security Policy (CSP) Header Not Set | Medium | 9 | 
| Source Code Disclosure - Java | Medium | 2 | 
| X-Frame-Options Header Not Set | Medium | 7 | 
| Absence of Anti-CSRF Tokens | Low | 3 | 
| Dangerous JS Functions | Low | 5 | 
| Feature Policy Header Not Set | Low | 11 | 
| Incomplete or No Cache-control and Pragma HTTP Header Set | Low | 8 | 
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

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Source Code Disclosure - Java
##### Medium (Medium)
  
  
  
  
#### Description
<p>Application Source Code was disclosed by the web server - Java</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/167-f1448fcfae8feb44daa5.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/167-f1448fcfae8feb44daa5.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `class z{constructor(e){this.deps=[],this.conditions=[],this._whitelist=new N,this._blacklist=new N,this.exclusiveTests=Object.create(null),this.tests=[],this.transforms=[],this.withMutation((()=>{this.typeError(h.notType)})),this.type=(null==e?void 0:e.type)||"mixed",this.spec=L({strip:!1,strict:!1,abortEarly:!0,recursive:!0,nullable:!1,presence:"optional"},null==e?void 0:e.spec)}get _type(){return this.type}_typeCheck(e){return!0}clone(e){if(this._mutate)return e&&Object.assign(this.spec,e),this;const t=Object.create(Object.getPrototypeOf(this));return t.type=this.type,t._typeError=this._typeError,t._whitelistError=this._whitelistError,t._blacklistError=this._blacklistError,t._whitelist=this._whitelist.clone(),t._blacklist=this._blacklist.clone(),t.exclusiveTests=L({},this.exclusiveTests),t.deps=[...this.deps],t.conditions=[...this.conditions],t.tests=[...this.tests],t.transforms=[...this.transforms],t.spec=s(L({},this.spec,e)),t}label(e){var t=this.clone();return t.spec.label=e,t}meta(...e){if(0===e.length)return this.spec.meta;let t=this.clone();return t.spec.meta=Object.assign(t.spec.meta||{},e[0]),t}withMutation(e){let t=this._mutate;this._mutate=!0;let n=e(this);return this._mutate=t,n}concat(e){if(!e||e===this)return this;if(e.type!==this.type&&"mixed"!==this.type)throw new TypeError(`You cannot \`concat()\` schema's of different types: ${this.type} and ${e.type}`);let t=this,n=e.clone();const r=L({},t.spec,n.spec);return n.spec=r,n._typeError||(n._typeError=t._typeError),n._whitelistError||(n._whitelistError=t._whitelistError),n._blacklistError||(n._blacklistError=t._blacklistError),n._whitelist=t._whitelist.merge(e._whitelist,e._blacklist),n._blacklist=t._blacklist.merge(e._blacklist,e._whitelist),n.tests=t.tests,n.exclusiveTests=t.exclusiveTests,n.withMutation((t=>{e.tests.forEach((e=>{t.test(e.OPTIONS)}))})),n}isType(e){return!(!this.spec.nullable||null!==e)||this._typeCheck(e)}resolve(e){let t=this;if(t.conditions.length){let n=t.conditions;t=t.clone(),t.conditions=[],t=n.reduce(((t,n)=>n.resolve(t,e)),t),t=t.resolve(e)}return t}cast(e,t={}){let n=this.resolve(L({value:e},t)),r=n._cast(e,t);if(void 0!==e&&!1!==t.assert&&!0!==n.isType(r)){let o=d(e),i=d(r);throw new TypeError(`The value of ${t.path||"field"} could not be cast to a value that satisfies the schema type: "${n._type}". \n\nattempted value: ${o} \n`+(i!==o?`result of cast: ${i}`:""))}return r}_cast(e,t){let n=void 0===e?e:this.transforms.reduce(((t,n)=>n.call(this,t,e,this)),e);return void 0===n&&(n=this.getDefault()),n}_validate(e,t={},n){let{sync:r,path:o,from:i=[],originalValue:s=e,strict:a=this.spec.strict,abortEarly:u=this.spec.abortEarly}=t,c=e;a||(c=this._cast(c,L({assert:!1},t)));let l={value:c,path:o,options:t,originalValue:s,schema:this,label:this.spec.label,sync:r,from:i},f=[];this._typeError&&f.push(this._typeError),this._whitelistError&&f.push(this._whitelistError),this._blacklistError&&f.push(this._blacklistError),k({args:l,value:c,path:o,sync:r,tests:f,endEarly:u},(e=>{e?n(e,c):k({tests:this.tests,args:l,path:o,sync:r,value:c,endEarly:u},n)}))}validate(e,t,n){let r=this.resolve(L({},t,{value:e}));return"function"===typeof n?r._validate(e,t,n):new Promise(((n,o)=>r._validate(e,t,((e,t)=>{e?o(e):n(t)}))))}validateSync(e,t){let n;return this.resolve(L({},t,{value:e}))._validate(e,L({},t,{sync:!0}),((e,t)=>{if(e)throw e;n=t})),n}isValid(e,t){return this.validate(e,t).then((()=>!0),(e=>{if(D.isError(e))return!1;throw e}))}isValidSync(e,t){try{return this.validateSync(e,t),!0}catch(n){if(D.isError(n))return!1;throw n}}_getDefault(){let e=this.spec.default;return null==e?e:"function"===typeof e?e.call(this):s(e)}getDefault(e){return this.resolve(e||{})._getDefault()}default(e){if(0===arguments.length)return this._getDefault();return this.clone({default:e})}strict(e=!0){var t=this.clone();return t.spec.strict=e,t}_isPresent(e){return null!=e}defined(e=h.defined){return this.test({message:e,name:"defined",exclusive:!0,test:e=>void 0!==e})}required(e=h.required){return this.clone({presence:"required"}).withMutation((t=>t.test({message:e,name:"required",exclusive:!0,test(e){return this.schema._isPresent(e)}})))}notRequired(){var e=this.clone({presence:"optional"});return e.tests=e.tests.filter((e=>"required"!==e.OPTIONS.name)),e}nullable(e=!0){return this.clone({nullable:!1!==e})}transform(e){var t=this.clone();return t.transforms.push(e),t}test(...e){let t;if(t=1===e.length?"function"===typeof e[0]?{test:e[0]}:e[0]:2===e.length?{name:e[0],test:e[1]}:{name:e[0],message:e[1],test:e[2]},void 0===t.message&&(t.message=h.default),"function"!==typeof t.test)throw new TypeError("`test` is a required parameters");let n=this.clone(),r=I(t),o=t.exclusive||t.name&&!0===n.exclusiveTests[t.name];if(t.exclusive&&!t.name)throw new TypeError("Exclusive tests must provide a unique `name` identifying the test");return t.name&&(n.exclusiveTests[t.name]=!!t.exclusive),n.tests=n.tests.filter((e=>{if(e.OPTIONS.name===t.name){if(o)return!1;if(e.OPTIONS.test===r.OPTIONS.test)return!1}return!0})),n.tests.push(r),n}when(e,t){Array.isArray(e)||"string"===typeof e||(t=e,e=".");let n=this.clone(),r=E(e).map((e=>new P(e)));return r.forEach((e=>{e.isSibling&&n.deps.push(e.key)})),n.conditions.push(new S(r,t)),n}typeError(e){var t=this.clone();return t._typeError=I({message:e,name:"typeError",test(e){return!(void 0!==e&&!this.schema.isType(e))||this.createError({params:{type:this.schema._type}})}}),t}oneOf(e,t=h.oneOf){var n=this.clone();return e.forEach((e=>{n._whitelist.add(e),n._blacklist.delete(e)})),n._whitelistError=I({message:t,name:"oneOf",test(e){if(void 0===e)return!0;let t=this.schema._whitelist;return!!t.has(e,this.resolve)||this.createError({params:{values:t.toArray().join(", ")}})}}),n}notOneOf(e,t=h.notOneOf){var n=this.clone();return e.forEach((e=>{n._blacklist.add(e),n._whitelist.delete(e)})),n._blacklistError=I({message:t,name:"notOneOf",test(e){let t=this.schema._blacklist;return!t.has(e,this.resolve)||this.createError({params:{values:t.toArray().join(", ")}})}}),n}strip(e=!0){let t=this.clone();return t.spec.strip=e,t}describe(){const e=this.clone(),{label:t,meta:n}=e.spec;return{meta:n,label:t,type:e.type,oneOf:e._whitelist.describe(),notOneOf:e._blacklist.describe(),tests:e.tests.map((e=>({name:e.OPTIONS.name,params:e.OPTIONS.params}))).filter(((e,t,n)=>n.findIndex((t=>t.name===e.name))===t))}}}z.prototype.__isYupSchema__=!0;for(const Oe of["validate","validateSync"])z.prototype[`${Oe}At`]=function(e,t,n={}){const{parent:r,parentPath:o,schema:i}=$(this,e,t,n.context);return i[Oe](r&&r[o],L({},n,{parent:r,path:e}))};for(const Oe of["equals","is"])z.prototype[Oe]=z.prototype.oneOf;for(const Oe of["not","nope"])z.prototype[Oe]=z.prototype.notOneOf;z.prototype.optional=z.prototype.notRequired;const U=z;function Z(){return new U}Z.prototype=U.prototype;var H=e=>null==e;let B=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/i,W=/^((https?|ftp):)?\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i,Y=/^(?:[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}|00000000-0000-0000-0000-000000000000)$/i,q=e=>H(e)||e===e.trim(),G={}.toString();function K(){return new X}class X extends z{constructor(){super({type:"string"}),this.withMutation((()=>{this.transform((function(e){if(this.isType(e))return e;if(Array.isArray(e))return e;const t=null!=e&&e.toString?e.toString():e;return t===G?e:t}))}))}_typeCheck(e){return e instanceof String&&(e=e.valueOf()),"string"===typeof e}_isPresent(e){return super._isPresent(e)&&!!e.length}length(e,t=v.length){return this.test({message:t,name:"length",exclusive:!0,params:{length:e},test(t){return H(t)||t.length===this.resolve(e)}})}min(e,t=v.min){return this.test({message:t,name:"min",exclusive:!0,params:{min:e},test(t){return H(t)||t.length>=this.resolve(e)}})}max(e,t=v.max){return this.test({name:"max",exclusive:!0,message:t,params:{max:e},test(t){return H(t)||t.length<=this.resolve(e)}})}matches(e,t){let n,r,o=!1;return t&&("object"===typeof t?({excludeEmptyString:o=!1,message:n,name:r}=t):n=t),this.test({name:r||"matches",message:n||v.matches,params:{regex:e},test:t=>H(t)||""===t&&o||-1!==t.search(e)})}email(e=v.email){return this.matches(B,{name:"email",message:e,excludeEmptyString:!0})}url(e=v.url){return this.matches(W,{name:"url",message:e,excludeEmptyString:!0})}uuid(e=v.uuid){return this.matches(Y,{name:"uuid",message:e,excludeEmptyString:!1})}ensure(){return this.default("").transform((e=>null===e?"":e))}trim(e=v.trim){return this.transform((e=>null!=e?e.trim():e)).test({message:e,name:"trim",test:q})}lowercase(e=v.lowercase){return this.transform((e=>H(e)?e:e.toLowerCase())).test({message:e,name:"string_case",exclusive:!0,test:e=>H(e)||e===e.toLowerCase()})}uppercase(e=v.uppercase){return this.transform((e=>H(e)?e:e.toUpperCase())).test({message:e,name:"string_case",exclusive:!0,test:e=>H(e)||e===e.toUpperCase()})}}K.prototype=X.prototype;var J=/^(\d{4}|[+\-]\d{6})(?:-?(\d{2})(?:-?(\d{2}))?)?(?:[ T]?(\d{2}):?(\d{2})(?::?(\d{2})(?:[,\.](\d{1,}))?)?(?:(Z)|([+\-])(\d{2})(?::?(\d{2}))?)?)?$/;let Q=new Date("");function ee(){return new te}class te extends z{constructor(){super({type:"date"}),this.withMutation((()=>{this.transform((function(e){return this.isType(e)?e:(e=function(e){var t,n,r=[1,4,5,6,7,10,11],o=0;if(n=J.exec(e)){for(var i,s=0;i=r[s];++s)n[i]=+n[i]||0;n[2]=(+n[2]||1)-1,n[3]=+n[3]||1,n[7]=n[7]?String(n[7]).substr(0,3):0,void 0!==n[8]&&""!==n[8]||void 0!==n[9]&&""!==n[9]?("Z"!==n[8]&&void 0!==n[9]&&(o=60*n[10]+n[11],"+"===n[9]&&(o=0-o)),t=Date.UTC(n[1],n[2],n[3],n[4],n[5]+o,n[6],n[7])):t=+new Date(n[1],n[2],n[3],n[4],n[5],n[6],n[7])}else t=Date.parse?Date.parse(e):NaN;return t}(e),isNaN(e)?Q:new Date(e))}))}))}_typeCheck(e){return t=e,"[object Date]"===Object.prototype.toString.call(t)&&!isNaN(e.getTime());var t}prepareParam(e,t){let n;if(P.isRef(e))n=e;else{let r=this.cast(e);if(!this._typeCheck(r))throw new TypeError(`\`${t}\` must be a Date or a value that can be \`cast()\` to a Date`);n=r}return n}min(e,t=g.min){let n=this.prepareParam(e,"min");return this.test({message:t,name:"min",exclusive:!0,params:{min:e},test(e){return H(e)||e>=this.resolve(n)}})}max(e,t=g.max){var n=this.prepareParam(e,"max");return this.test({message:t,name:"max",exclusive:!0,params:{max:e},test(e){return H(e)||e<=this.resolve(n)}})}}te.INVALID_DATE=Q,ee.prototype=te.prototype,ee.INVALID_DATE=Q;var ne=n(1865),re=n.n(ne),oe=n(8929),ie=n.n(oe),se=n(7523),ae=n.n(se),ue=n(4633),ce=n.n(ue);function le(e,t){let n=1/0;return e.some(((e,r)=>{var o;if(-1!==(null==(o=t.path)?void 0:o.indexOf(e)))return n=r,!0})),n}function fe(e){return(t,n)=>le(e,t)-le(e,n)}function pe(){return(pe=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}let de=e=>"[object Object]"===Object.prototype.toString.call(e);const he=fe([]);class ve extends z{constructor(e){super({type:"object"}),this.fields=Object.create(null),this._sortErrors=he,this._nodes=[],this._excludedEdges=[],this.withMutation((()=>{this.transform((function(e){if("string"===typeof e)try{e=JSON.parse(e)}catch(t){e=null}return this.isType(e)?e:null})),e&&this.shape(e)}))}_typeCheck(e){return de(e)||"function"===typeof e}_cast(e,t={}){var n;let r=super._cast(e,t);if(void 0===r)return this.getDefault();if(!this._typeCheck(r))return r;let o=this.fields,i=null!=(n=t.stripUnknown)?n:this.spec.noUnknown,s=this._nodes.concat(Object.keys(r).filter((e=>-1===this._nodes.indexOf(e)))),a={},u=pe({},t,{parent:a,__validating:t.__validating||!1}),c=!1;for(const l of s){let e=o[l],n=w()(r,l);if(e){let n,o=r[l];u.path=(t.path?`${t.path}.`:"")+l,e=e.resolve({value:o,context:t.context,parent:a});let i="spec"in e?e.spec:void 0,s=null==i?void 0:i.strict;if(null==i?void 0:i.strip){c=c||l in r;continue}n=t.__validating&&s?r[l]:e.cast(r[l],u),void 0!==n&&(a[l]=n)}else n&&!i&&(a[l]=r[l]);a[l]!==r[l]&&(c=!0)}return c?a:r}_validate(e,t={},n){let r=[],{sync:o,from:i=[],originalValue:s=e,abortEarly:a=this.spec.abortEarly,recursive:u=this.spec.recursive}=t;i=[{schema:this,value:s},...i],t.__validating=!0,t.originalValue=s,t.from=i,super._validate(e,t,((e,c)=>{if(e){if(!D.isError(e)||a)return void n(e,c);r.push(e)}if(!u||!de(c))return void n(r[0]||null,c);s=s||c;let l=this._nodes.map((e=>(n,r)=>{let o=-1===e.indexOf(".")?(t.path?`${t.path}.`:"")+e:`${t.path||""}["${e}"]`,a=this.fields[e];a&&"validate"in a?a.validate(c[e],pe({},t,{path:o,from:i,strict:!0,parent:c,originalValue:s[e]}),r):r(null)}));k({sync:o,tests:l,value:c,errors:r,endEarly:a,sort:this._sortErrors,path:t.path},n)}))}clone(e){const t=super.clone(e);return t.fields=pe({},this.fields),t._nodes=this._nodes,t._excludedEdges=this._excludedEdges,t._sortErrors=this._sortErrors,t}concat(e){let t=super.concat(e),n=t.fields;for(let[r,o]of Object.entries(this.fields)){const e=n[r];void 0===e?n[r]=o:e instanceof z&&o instanceof z&&(n[r]=o.concat(e))}return t.withMutation((()=>t.shape(n)))}getDefaultFromShape(){let e={};return this._nodes.forEach((t=>{const n=this.fields[t];e[t]="default"in n?n.getDefault():void 0})),e}_getDefault(){return"default"in this.spec?super._getDefault():this._nodes.length?this.getDefaultFromShape():void 0}shape(e,t=[]){let n=this.clone(),r=Object.assign(n.fields,e);if(n.fields=r,n._sortErrors=fe(Object.keys(r)),t.length){Array.isArray(t[0])||(t=[t]);let e=t.map((([e,t])=>`${e}-${t}`));n._excludedEdges=n._excludedEdges.concat(e)}return n._nodes=function(e,t=[]){let n=[],r=[];function o(e,o){var i=(0,V.split)(e)[0];~r.indexOf(i)||r.push(i),~t.indexOf(`${o}-${i}`)||n.push([o,i])}for(const i in e)if(w()(e,i)){let t=e[i];~r.indexOf(i)||r.push(i),P.isRef(t)&&t.isSibling?o(t.path,i):F(t)&&"deps"in t&&t.deps.forEach((e=>o(e,i)))}return ce().array(r,n).reverse()}(r,n._excludedEdges),n}pick(e){const t={};for(const n of e)this.fields[n]&&(t[n]=this.fields[n]);return this.clone().withMutation((e=>(e.fields={},e.shape(t))))}omit(e){const t=this.clone(),n=t.fields;t.fields={};for(const r of e)delete n[r];return t.withMutation((()=>t.shape(n)))}from(e,t,n){let r=(0,V.getter)(e,!0);return this.transform((o=>{if(null==o)return o;let i=o;return w()(o,e)&&(i=pe({},o),n||delete i[e],i[t]=r(o)),i}))}noUnknown(e=!0,t=b.noUnknown){"string"===typeof e&&(t=e,e=!0);let n=this.test({name:"noUnknown",exclusive:!0,message:t,test(t){if(null==t)return!0;const n=function(e,t){let n=Object.keys(e.fields);return Object.keys(t).filter((e=>-1===n.indexOf(e)))}(this.schema,t);return!e||0===n.length||this.createError({params:{unknown:n.join(", ")}})}});return n.spec.noUnknown=e,n}unknown(e=!0,t=b.noUnknown){return this.noUnknown(!e,t)}transformKeys(e){return this.transform((t=>t&&ae()(t,((t,n)=>e(n)))))}camelCase(){return this.transformKeys(ie())}snakeCase(){return this.transformKeys(re())}constantCase(){return this.transformKeys((e=>re()(e).toUpperCase()))}describe(){let e=super.describe();return e.fields=A()(this.fields,(e=>e.describe())),e}}function me(e){return new ve(e)}function ge(){return(ge=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function ye(e){return new be(e)}me.prototype=ve.prototype;class be extends z{constructor(e){super({type:"array"}),this.innerType=e,this.withMutation((()=>{this.transform((function(e){if("string"===typeof e)try{e=JSON.parse(e)}catch(t){e=null}return this.isType(e)?e:null}))}))}_typeCheck(e){return Array.isArray(e)}get _subType(){return this.innerType}_cast(e,t){const n=super._cast(e,t);if(!this._typeCheck(n)||!this.innerType)return n;let r=!1;const o=n.map(((e,n)=>{const o=this.innerType.cast(e,ge({},t,{path:`${t.path||""}[${n}]`}));return o!==e&&(r=!0),o}));return r?o:n}_validate(e,t={},n){var r,o;let i=[],s=t.sync,a=t.path,u=this.innerType,c=null!=(r=t.abortEarly)?r:this.spec.abortEarly,l=null!=(o=t.recursive)?o:this.spec.recursive,f=null!=t.originalValue?t.originalValue:e;super._validate(e,t,((e,r)=>{if(e){if(!D.isError(e)||c)return void n(e,r);i.push(e)}if(!l||!u||!this._typeCheck(r))return void n(i[0]||null,r);f=f||r;let o=new Array(r.length);for(let n=0;n<r.length;n++){let e=r[n],i=`${t.path||""}[${n}]`,s=ge({},t,{path:i,strict:!0,parent:r,index:n,originalValue:f[n]});o[n]=(t,n)=>u.validate(e,s,n)}k({sync:s,path:a,value:r,errors:i,endEarly:c,tests:o},n)}))}clone(e){const t=super.clone(e);return t.innerType=this.innerType,t}concat(e){let t=super.concat(e);return t.innerType=this.innerType,e.innerType&&(t.innerType=t.innerType?t.innerType.concat(e.innerType):e.innerType),t}of(e){let t=this.clone();if(!F(e))throw new TypeError("`array.of()` sub-schema must be a valid yup schema not: "+d(e));return t.innerType=e,t}length(e,t=x.length){return this.test({message:t,name:"length",exclusive:!0,params:{length:e},test(t){return H(t)||t.length===this.resolve(e)}})}min(e,t){return t=t||x.min,this.test({message:t,name:"min",exclusive:!0,params:{min:e},test(t){return H(t)||t.length>=this.resolve(e)}})}max(e,t){return t=t||x.max,this.test({message:t,name:"max",exclusive:!0,params:{max:e},test(t){return H(t)||t.length<=this.resolve(e)}})}ensure(){return this.default((()=>[])).transform(((e,t)=>this._typeCheck(e)?e:null==t?[]:[].concat(t)))}compact(e){let t=e?(t,n,r)=>!e(t,n,r):e=>!!e;return this.transform((e=>null!=e?e.filter(t):e))}describe(){let e=super.describe();return this.innerType&&(e.innerType=this.innerType.describe()),e}nullable(e=!0){return super.nullable(e)}defined(){return super.defined()}required(e){return super.required(e)}}ye.prototype=be.prototype}}`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/index-ff07c0b396e790b20663.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/index-ff07c0b396e790b20663.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `class j{constructor(e){this.seed=e}next(){return this.seed?(2**31-1&(this.seed=Math.imul(48271,this.seed)))/2**31:Math.random()}}function z(e,t,s,l,i){return{type:"path",ops:b(e,t,s,l,i)}}function m(e,t,s){const l=(e||[]).length;if(l>2){const i=[];for(let t=0;t<l-1;t++)i.push(...b(e[t][0],e[t][1],e[t+1][0],e[t+1][1],s));return t&&i.push(...b(e[l-1][0],e[l-1][1],e[0][0],e[0][1],s)),{type:"path",ops:i}}return 2===l?z(e[0][0],e[0][1],e[1][0],e[1][1],s):{type:"path",ops:[]}}function F(e,t,s,l,i){return function(e,t){return m(e,!0,t)}([[e,t],[e+s,t],[e+s,t+l],[e,t+l]],i)}function M(e,t,s,l,i){return function(e,t,s,l){const[i,n]=R(l.increment,e,t,l.rx,l.ry,1,l.increment*y(.1,y(.4,1,s),s),s);let a=H(i,null,s);if(!s.disableMultiStroke){const[i]=R(l.increment,e,t,l.rx,l.ry,1.5,0,s),n=H(i,null,s);a=a.concat(n)}return{estimatedPoints:n,opset:{type:"path",ops:a}}}(e,t,i,function(e,t,s){const l=Math.sqrt(2*Math.PI*Math.sqrt((Math.pow(e/2,2)+Math.pow(t/2,2))/2)),i=Math.max(s.curveStepCount,s.curveStepCount/Math.sqrt(200)*l),n=2*Math.PI/i;let a=Math.abs(e/2),o=Math.abs(t/2);const r=1-s.curveFitting;return a+=v(a*r,s),o+=v(o*r,s),{increment:n,rx:a,ry:o}}(s,l,i)).opset}function g(e){return e.randomizer||(e.randomizer=new j(e.seed||0)),e.randomizer.next()}function y(e,t,s,l=1){return s.roughness*l*(g(s)*(t-e)+e)}function v(e,t,s=1){return y(-e,e,t,s)}function b(e,t,s,l,i,n=!1){const a=n?i.disableMultiStrokeFill:i.disableMultiStroke,o=w(e,t,s,l,i,!0,!1);if(a)return o;const r=w(e,t,s,l,i,!0,!0);return o.concat(r)}function w(e,t,s,l,i,n,a){const o=Math.pow(e-s,2)+Math.pow(t-l,2),r=Math.sqrt(o);let c=1;c=r<200?1:r>500?.4:-.0016668*r+1.233334;let h=i.maxRandomnessOffset||0;h*h*100>o&&(h=r/10);const f=h/2,d=.2+.2*g(i);let u=i.bowing*i.maxRandomnessOffset*(l-t)/200,p=i.bowing*i.maxRandomnessOffset*(e-s)/200;u=v(u,i,c),p=v(p,i,c);const x=[],j=()=>v(f,i,c),z=()=>v(h,i,c);return n&&(a?x.push({op:"move",data:[e+j(),t+j()]}):x.push({op:"move",data:[e+v(h,i,c),t+v(h,i,c)]})),a?x.push({op:"bcurveTo",data:[u+e+(s-e)*d+j(),p+t+(l-t)*d+j(),u+e+2*(s-e)*d+j(),p+t+2*(l-t)*d+j(),s+j(),l+j()]}):x.push({op:"bcurveTo",data:[u+e+(s-e)*d+z(),p+t+(l-t)*d+z(),u+e+2*(s-e)*d+z(),p+t+2*(l-t)*d+z(),s+z(),l+z()]}),x}function H(e,t,s){const l=e.length,i=[];if(l>3){const n=[],a=1-s.curveTightness;i.push({op:"move",data:[e[1][0],e[1][1]]});for(let t=1;t+2<l;t++){const s=e[t];n[0]=[s[0],s[1]],n[1]=[s[0]+(a*e[t+1][0]-a*e[t-1][0])/6,s[1]+(a*e[t+1][1]-a*e[t-1][1])/6],n[2]=[e[t+1][0]+(a*e[t][0]-a*e[t+2][0])/6,e[t+1][1]+(a*e[t][1]-a*e[t+2][1])/6],n[3]=[e[t+1][0],e[t+1][1]],i.push({op:"bcurveTo",data:[n[1][0],n[1][1],n[2][0],n[2][1],n[3][0],n[3][1]]})}if(t&&2===t.length){const e=s.maxRandomnessOffset;i.push({op:"lineTo",data:[t[0]+v(e,s),t[1]+v(e,s)]})}}else 3===l?(i.push({op:"move",data:[e[1][0],e[1][1]]}),i.push({op:"bcurveTo",data:[e[1][0],e[1][1],e[2][0],e[2][1],e[2][0],e[2][1]]})):2===l&&i.push(...b(e[0][0],e[0][1],e[1][0],e[1][1],s));return i}function R(e,t,s,l,i,n,a,o){const r=[],c=[],h=v(.5,o)-Math.PI/2;c.push([v(n,o)+t+.9*l*Math.cos(h-e),v(n,o)+s+.9*i*Math.sin(h-e)]);for(let f=h;f<2*Math.PI+h-.01;f+=e){const e=[v(n,o)+t+l*Math.cos(f),v(n,o)+s+i*Math.sin(f)];r.push(e),c.push(e)}return c.push([v(n,o)+t+l*Math.cos(h+2*Math.PI+.5*a),v(n,o)+s+i*Math.sin(h+2*Math.PI+.5*a)]),c.push([v(n,o)+t+.98*l*Math.cos(h+a),v(n,o)+s+.98*i*Math.sin(h+a)]),c.push([v(n,o)+t+.9*l*Math.cos(h+.5*a),v(n,o)+s+.9*i*Math.sin(h+.5*a)]),[c,r]}function _(e,t){return{maxRandomnessOffset:2,roughness:"highlight"===e?3:1.5,bowing:1,stroke:"#000",strokeWidth:1.5,curveTightness:0,curveFitting:.95,curveStepCount:9,fillStyle:"hachure",fillWeight:-1,hachureAngle:-41,hachureGap:-1,dashOffset:-1,dashGap:-1,zigzagOffset:-1,combineNestedSvgPaths:!1,disableMultiStroke:"double"!==e,disableMultiStrokeFill:!1,seed:t}}function O(e,t,s,l,i,n){const a=[];let o=s.strokeWidth||2;const r=function(e){const t=e.padding;if(t||0===t){if("number"==typeof t)return[t,t,t,t];if(Array.isArray(t)){const e=t;if(e.length)switch(e.length){case 4:return[...e];case 1:return[e[0],e[0],e[0],e[0]];case 2:return[...e,...e];case 3:return[...e,e[1]];default:return[e[0],e[1],e[2],e[3]]}}}return[5,5,5,5]}(s),c=void 0===s.animate||!!s.animate,h=s.iterations||2,f=s.rtl?1:0,d=_("single",n);switch(s.type){case"underline":{const e=t.y+t.h+r[2];for(let s=f;s<h+f;s++)s%2?a.push(z(t.x+t.w,e,t.x,e,d)):a.push(z(t.x,e,t.x+t.w,e,d));break}case"strike-through":{const e=t.y+t.h/2;for(let s=f;s<h+f;s++)s%2?a.push(z(t.x+t.w,e,t.x,e,d)):a.push(z(t.x,e,t.x+t.w,e,d));break}case"box":{const e=t.x-r[3],s=t.y-r[0],l=t.w+(r[1]+r[3]),i=t.h+(r[0]+r[2]);for(let t=0;t<h;t++)a.push(F(e,s,l,i,d));break}case"bracket":{const e=Array.isArray(s.brackets)?s.brackets:s.brackets?[s.brackets]:["right"],l=t.x-2*r[3],i=t.x+t.w+2*r[1],n=t.y-2*r[0],o=t.y+t.h+2*r[2];for(const s of e){let e;switch(s){case"bottom":e=[[l,t.y+t.h],[l,o],[i,o],[i,t.y+t.h]];break;case"top":e=[[l,t.y],[l,n],[i,n],[i,t.y]];break;case"left":e=[[t.x,n],[l,n],[l,o],[t.x,o]];break;case"right":e=[[t.x+t.w,n],[i,n],[i,o],[t.x+t.w,o]]}e&&a.push(m(e,!1,d))}break}case"crossed-off":{const e=t.x,s=t.y,l=e+t.w,i=s+t.h;for(let t=f;t<h+f;t++)t%2?a.push(z(l,i,e,s,d)):a.push(z(e,s,l,i,d));for(let t=f;t<h+f;t++)t%2?a.push(z(e,i,l,s,d)):a.push(z(l,s,e,i,d));break}case"circle":{const e=_("double",n),s=t.w+(r[1]+r[3]),l=t.h+(r[0]+r[2]),i=t.x-r[3]+s/2,o=t.y-r[0]+l/2,c=Math.floor(h/2),f=h-2*c;for(let t=0;t<c;t++)a.push(M(i,o,s,l,e));for(let t=0;t<f;t++)a.push(M(i,o,s,l,d));break}case"highlight":{const e=_("highlight",n);o=.95*t.h;const s=t.y+t.h/2;for(let l=f;l<h+f;l++)l%2?a.push(z(t.x+t.w,s,t.x,s,e)):a.push(z(t.x,s,t.x+t.w,s,e));break}}if(a.length){const t=function(e){const t=[];for(const s of e){let e="";for(const l of s.ops){const s=l.data;switch(l.op){case"move":e.trim()&&t.push(e.trim()),e=`M${s[0]} ${s[1]} `;break;case"bcurveTo":e+=`C${s[0]} ${s[1]}, ${s[2]} ${s[3]}, ${s[4]} ${s[5]} `;break;case"lineTo":e+=`L${s[0]} ${s[1]} `}}e.trim()&&t.push(e.trim())}return t}(a),n=[],r=[];let h=0;const f=(e,t,s)=>e.setAttribute(t,s);for(const l of t){const t=document.createElementNS(x,"path");if(f(t,"d",l),f(t,"fill","none"),f(t,"stroke",s.color||"currentColor"),f(t,"stroke-width",""+o),c){const e=t.getTotalLength();n.push(e),h+=e}e.appendChild(t),r.push(t)}if(c){let e=0;for(let t=0;t<r.length;t++){const s=r[t],a=n[t],o=h?i*(a/h):0,c=l+e,f=s.style;f.strokeDashoffset=""+a,f.strokeDasharray=""+a,f.animation=`rough-notation-dash ${o}ms ease-out ${c}ms forwards`,e+=o}}}}class C{constructor(e,t){this._state="unattached",this._resizing=!1,this._seed=Math.floor(Math.random()*2**31),this._lastSizes=[],this._animationDelay=0,this._resizeListener=()=>{this._resizing||(this._resizing=!0,setTimeout((()=>{this._resizing=!1,"showing"===this._state&&this.haveRectsChanged()&&this.show()}),400))},this._e=e,this._config=JSON.parse(JSON.stringify(t)),this.attach()}get animate(){return this._config.animate}set animate(e){this._config.animate=e}get animationDuration(){return this._config.animationDuration}set animationDuration(e){this._config.animationDuration=e}get iterations(){return this._config.iterations}set iterations(e){this._config.iterations=e}get color(){return this._config.color}set color(e){this._config.color!==e&&(this._config.color=e,this.refresh())}get strokeWidth(){return this._config.strokeWidth}set strokeWidth(e){this._config.strokeWidth!==e&&(this._config.strokeWidth=e,this.refresh())}get padding(){return this._config.padding}set padding(e){this._config.padding!==e&&(this._config.padding=e,this.refresh())}attach(){if("unattached"===this._state&&this._e.parentElement){!function(){if(!window.__rno_kf_s){const e=window.__rno_kf_s=document.createElement("style");e.textContent="@keyframes rough-notation-dash { to { stroke-dashoffset: 0; } }",document.head.appendChild(e)}}();const e=this._svg=document.createElementNS(x,"svg");e.setAttribute("class","rough-annotation");const t=e.style;t.position="absolute",t.top="0",t.left="0",t.overflow="visible",t.pointerEvents="none",t.width="100px",t.height="100px";const s="highlight"===this._config.type;if(this._e.insertAdjacentElement(s?"beforebegin":"afterend",e),this._state="not-showing",s){const e=window.getComputedStyle(this._e).position;(!e||"static"===e)&&(this._e.style.position="relative")}this.attachListeners()}}detachListeners(){window.removeEventListener("resize",this._resizeListener),this._ro&&this._ro.unobserve(this._e)}attachListeners(){this.detachListeners(),window.addEventListener("resize",this._resizeListener,{passive:!0}),!this._ro&&"ResizeObserver"in window&&(this._ro=new window.ResizeObserver((e=>{for(const t of e)t.contentRect&&this._resizeListener()}))),this._ro&&this._ro.observe(this._e)}haveRectsChanged(){if(this._lastSizes.length){const e=this.rects();if(e.length!==this._lastSizes.length)return!0;for(let t=0;t<e.length;t++)if(!this.isSameRect(e[t],this._lastSizes[t]))return!0}return!1}isSameRect(e,t){const s=(e,t)=>Math.round(e)===Math.round(t);return s(e.x,t.x)&&s(e.y,t.y)&&s(e.w,t.w)&&s(e.h,t.h)}isShowing(){return"not-showing"!==this._state}refresh(){this.isShowing()&&!this.pendingRefresh&&(this.pendingRefresh=Promise.resolve().then((()=>{this.isShowing()&&this.show(),delete this.pendingRefresh})))}show(){switch(this._state){case"unattached":break;case"showing":this.hide(),this._svg&&this.render(this._svg,!0);break;case"not-showing":this.attach(),this._svg&&this.render(this._svg,!1)}}hide(){if(this._svg)for(;this._svg.lastChild;)this._svg.removeChild(this._svg.lastChild);this._state="not-showing"}remove(){this._svg&&this._svg.parentElement&&this._svg.parentElement.removeChild(this._svg),this._svg=void 0,this._state="unattached",this.detachListeners()}render(e,t){let s=this._config;t&&(s=JSON.parse(JSON.stringify(this._config)),s.animate=!1);const l=this.rects();let i=0;l.forEach((e=>i+=e.w));const n=s.animationDuration||800;let a=0;for(let o=0;o<l.length;o++){const t=n*(l[o].w/i);O(e,l[o],s,a+this._animationDelay,t,this._seed),a+=t}this._lastSizes=l,this._state="showing"}rects(){const e=[];if(this._svg)if(this._config.multiline){const t=this._e.getClientRects();for(let s=0;s<t.length;s++)e.push(this.svgRect(this._svg,t[s]))}else e.push(this.svgRect(this._svg,this._e.getBoundingClientRect()));return e}svgRect(e,t){const s=e.getBoundingClientRect(),l=t;return{x:(l.x||l.left)-(s.x||s.left),y:(l.y||l.top)-(s.y||s.top),w:l.width,h:l.height}}}function k(e,t){var s=Object.keys(e);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);t&&(l=l.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),s.push.apply(s,l)}return s}var V=function(e){var t=e.children,s=e.type,i=void 0===s?"highlight":s,a=e.color,o=void 0===a?"orange":a,r=e.animate,c=void 0===r||r,h=e.animationDuration,f=void 0===h?1e3:h,d=(0,p.Z)(e,["children","type","color","animate","animationDuration"]),x=(0,n.useRef)(null);return(0,n.useEffect)((function(){var e=function(e,t){return new C(e,t)}(x.current,function(e){for(var t=1;t<arguments.length;t++){var s=null!=arguments[t]?arguments[t]:{};t%2?k(Object(s),!0).forEach((function(t){(0,u.Z)(e,t,s[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(s)):k(Object(s)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(s,t))}))}return e}({animate:c,animationDuration:f,color:o,type:i},d));setTimeout((function(){e.show()}),1e3*Math.random())}),[x,i,o,c,f,d]),(0,l.jsx)("span",{ref:x,children:t})};function D(e,t){var s=Object.keys(e);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);t&&(l=l.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),s.push.apply(s,l)}return s}function E(e){for(var t=1;t<arguments.length;t++){var s=null!=arguments[t]?arguments[t]:{};t%2?D(Object(s),!0).forEach((function(t){(0,u.Z)(e,t,s[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(s)):D(Object(s)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(s,t))}))}return e}function S(e){return(0,l.jsx)("svg",E(E({xmlns:"http://www.w3.org/2000/svg",width:"116",height:"64",viewBox:"0 0 116 64"},e),{},{children:(0,l.jsx)("g",{fill:"none",fillRule:"evenodd",stroke:"none",strokeWidth:"1",children:(0,l.jsx)("g",{transform:"translate(-469 -104)",children:(0,l.jsxs)("g",{transform:"translate(469 104)",children:[(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M26 63h-.27c0-7.03-5.7-12.73-12.73-12.73S.27 55.97.27 63H0c0-7.18 5.82-13 13-13s13 5.82 13 13zM116 63h-.27c0-7.03-5.7-12.73-12.73-12.73S90.27 55.97 90.27 63H90c0-7.18 5.82-13 13-13s13 5.82 13 13zM84 33h-.259c0-11.991-9.977-21.747-22.241-21.747S39.259 21.009 39.259 33H39c0-12.13 10.093-22 22.5-22S84 20.87 84 33z"}),(0,l.jsx)("circle",{cx:"19",cy:"6",r:"6",fill:"#FF6862",fillRule:"nonzero"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M21 40.8563095L29.6381721 30 46.6213625 30 57 40.6681104 56.7903498 40.810368 56.8651976 40.810368 56.8651976 63 21.0118382 63 21.0118382 40.810368z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M26 30H27V39H26z",transform:"rotate(-180 26.5 34.5)"}),(0,l.jsx)("path",{fill:"#387CCB",fillRule:"nonzero",d:"M29.429646 30L40 43.1177939 40 63 21 63 21 40.6223193z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M34 45H37V48H34z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M34 51H37V54H34z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M34 45H37V48H34z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M34 51H37V54H34z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M28 45H31V48H28z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M28 51H31V54H28z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M28 45H31V48H28z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M28 51H31V54H28z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M22 45H25V48H22z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M22 51H25V54H22z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M22 45H25V48H22z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M22 51H25V54H22z"}),(0,l.jsx)("path",{fill:"#387CCB",fillRule:"nonzero",d:"M64 7H65V10H64z"}),(0,l.jsx)("path",{fill:"#387CCB",fillRule:"nonzero",d:"M49 11H65V63H49z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M65 11H70V63H65z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M52 14H53V15H52z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 14H56V15H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 14H63V15H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M52 21H53V22H52z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 21H56V22H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 21H63V22H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M52 26H53V27H52z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 26H56V27H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 26H63V27H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M52 30H53V31H52z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 30H56V31H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 30H63V31H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M52 35H53V36H52z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 35H56V36H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 35H63V36H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M52 42H53V43H52z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 42H56V43H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 42H63V43H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M53 46H54V47H53z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 46H56V47H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 46H63V47H62z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M53 51H54V52H53z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 51H56V52H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M55 60H56V63H55z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M62 51H63V52H62z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M65 7H66V10H65z"}),(0,l.jsx)("path",{fill:"#6C63FF",fillRule:"nonzero",d:"M83 29H84V31H83z"}),(0,l.jsx)("path",{fill:"#387CCB",fillRule:"nonzero",d:"M68 31H84V64H68z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M85 31H90V64H85z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M73 35H74V36H73z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M77 35H78V36H77z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M80 35H81V36H80z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M73 42H74V43H73z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M77 42H78V43H77z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M80 42H81V43H80z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M73 46H74V47H73z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M77 46H78V47H77z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M80 46H81V47H80z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M73 51H74V52H73z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M77 51H78V52H77z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M77 60H78V63H77z"}),(0,l.jsx)("path",{fill:"#FFF",fillRule:"nonzero",d:"M82 51H83V52H82z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M85 29H86V31H85z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M0 62.853H116V63.853H0z"}),(0,l.jsx)("circle",{cx:"95.5",cy:"55.5",r:"4.5",fill:"#5FC7AE",fillRule:"nonzero"}),(0,l.jsx)("path",{fill:"#000",fillRule:"nonzero",d:"M99.34 51c.502.812.079 1.755-.999 2.229-1.077.473-2.492.337-3.341-.322.406.656 1.333 1.085 2.365 1.093 1.031.008 1.973-.405 2.4-1.055.428-.65.261-1.412-.425-1.945z",opacity:"0.2"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M95 53L95.0093948 53 95.1773273 63 94.8226727 63z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M95.8230738 58.049676L95.9918394 58.0500651 95.9933095 58.6856057 95.8245439 58.6852166z",transform:"rotate(62.234 95.908 58.368)"}),(0,l.jsx)("circle",{cx:"107",cy:"50",r:"6",fill:"#5FC7AE",fillRule:"nonzero"}),(0,l.jsx)("path",{fill:"#000",fillRule:"nonzero",d:"M111.68 45c1.004 2.435.158 5.267-1.997 6.687-2.155 1.42-4.985 1.01-6.683-.967.811 1.968 2.666 3.255 4.73 3.28 2.063.025 3.946-1.216 4.801-3.165.856-1.948.522-4.237-.851-5.835z",opacity:"0.2"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M105.5 49L105.526367 49 106 63 105 63z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M105.928818 55.6259871L106.185456 55.6265788 106.187692 56.5930311 105.931053 56.5924393z",transform:"rotate(62.234 106.058 56.11)"}),(0,l.jsx)("circle",{cx:"4.5",cy:"55.5",r:"4.5",fill:"#5FC7AE",fillRule:"nonzero"}),(0,l.jsx)("path",{fill:"#000",fillRule:"nonzero",d:"M4.34 51c.502.812.079 1.755-.999 2.229-1.077.473-2.492.337-3.341-.322.406.656 1.333 1.085 2.365 1.093 1.031.008 1.973-.405 2.4-1.055.428-.65.261-1.412-.425-1.945z",opacity:"0.2"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M2 53L2.00939483 53 2.17732733 63 1.82267267 63z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M3.70158769 57.9184597L3.8703533 57.9188488 3.8718234 58.5543894 3.7030578 58.5540003z",transform:"rotate(62.234 3.787 58.236)"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M80.198 3.545L81 3.008c-.623-.058-.879.226-.984.452-.486-.17-1.016.052-1.016.052L80.604 4a1.054 1.054 0 00-.406-.455zM19.198 9.545L20 9.008c-.623-.058-.879.226-.984.452-.486-.17-1.016.052-1.016.052l1.604.488a1.054 1.054 0 00-.406-.455zM97.198 14.545l.802-.537c-.623-.058-.879.226-.984.452-.486-.17-1.016.052-1.016.052l1.604.488a1.054 1.054 0 00-.406-.455zM29.198 8.545L30 8.008c-.623-.058-.879.226-.984.452-.486-.17-1.016.052-1.016.052L29.604 9a1.054 1.054 0 00-.406-.455zM30.198 18.545l.802-.537c-.623-.058-.879.226-.984.452-.486-.17-1.016.052-1.016.052l1.604.488a1.054 1.054 0 00-.406-.455zM78.198 22.545l.802-.537c-.623-.058-.879.226-.984.452-.486-.17-1.016.052-1.016.052l1.604.488a1.054 1.054 0 00-.406-.455z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M12 61L3 61 3 61.1904762 4.40356452 61.1904762 4.40356452 63 4.6938871 63 4.6938871 61.1904762 10.1609516 61.1904762 10.1609516 63 10.4512742 63 10.4512742 61.1904762 12 61.1904762z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M22.482 62.133c-.266 0-.528.043-.758.125-.479-.265-1.167-.332-1.756-.172-.59.16-.969.519-.968.914h5c-.057-.488-.72-.866-1.518-.867zM52.482 62.133c-.266 0-.528.043-.758.125-.479-.265-1.167-.332-1.756-.172-.59.16-.969.519-.968.914h5c-.057-.488-.72-.866-1.518-.867zM71.482 62.133c-.266 0-.528.043-.758.125-.479-.265-1.167-.332-1.756-.172-.59.16-.969.519-.968.914h5c-.057-.488-.72-.866-1.518-.867zM99.482 62.133c-.266 0-.528.043-.758.125-.479-.265-1.167-.332-1.756-.172-.59.16-.969.519-.968.914h5c-.057-.488-.72-.866-1.518-.867zM113.482 62.133c-.266 0-.528.043-.758.125-.479-.265-1.167-.332-1.756-.172-.59.16-.969.519-.968.914h5c-.057-.488-.72-.866-1.518-.867z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M16 53L15 53 15 55.2885914 15.4635625 55.2885914 15.4635625 63 15.5885625 63 15.5885625 55.2885914 16 55.2885914z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M3 60.869H12V61.869H3z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M3 60.869H12V61.869H3z"}),(0,l.jsx)("path",{fill:"#3F3D56",fillRule:"nonzero",d:"M3 57.869H12V58.869H3z"}),(0,l.jsx)("text",{fill:"#FFF",fontFamily:"SourceSansPro-Semibold, Source Sans Pro",fontSize:"7",fontWeight:"500",children:(0,l.jsx)("tspan",{x:"27.69",y:"41",children:"H"})})]})})})}))}var N=s(3911),L=s(8539),P={FEATURE_ETS_FORM:"off"};function A(e){return null!==P&&void 0!==P&&P[e]?/on/i.test(P[e]):(console.error("The feature doesn't exist"),!1)}var B=s(728),T=function(){var e=(0,f.useRouter)(),t=(0,L.Z)({}).mutateUser,s=n.useState(""),i=(0,c.Z)(s,2),a=i[0],u=i[1];function p(){return(p=(0,r.Z)(o().mark((function s(l){var i,n,a,r;return o().wrap((function(s){for(;;)switch(s.prev=s.next){case 0:if(l.preventDefault(),A("FEATURE_ETS_FORM")){s.next=3;break}return s.abrupt("return");case 3:return i=Object.fromEntries(new FormData(l.target)),n=i.email,a=i.password,r={email:n,password:a},s.prev=5,s.next=8,t((0,B.Z)("/api/auth/login",{body:JSON.stringify(r),headers:{"Content-Type":"application/json"},method:"POST"}));case 8:e.push("/private"),s.next=15;break;case 11:s.prev=11,s.t0=s.catch(5),console.error("An unexpected error happened:",s.t0),u({message:"L'authentification est incorrecte. \ud83d\ude15"});case 15:case"end":return s.stop()}}),s,null,[[5,11]])})))).apply(this,arguments)}return(0,N.e)(a),(0,l.jsxs)("div",{className:"w-full max-w-md px-4 py-2 text-gray-700 transition duration-500 ease-in transform bg-gray-100 border rounded shadow hover:scale-105 hover:border-gray-300",children:[(0,l.jsx)(S,{className:"w-auto h-12 mx-auto",alt:"h\xf4pital"}),(0,l.jsx)(d.cS,{children:(0,l.jsx)(V,{type:"highlight",multiline:"true",color:"#bee3f8",show:!1,animate:!0,animationDuration:800,children:"\xc9tablissement, ordre, f\xe9d\xe9ration, conf\xe9rence"})}),(0,l.jsx)(d.rO,{children:"Connectez-vous \xe0 votre compte"}),(0,l.jsxs)("form",{className:"mt-5",onSubmit:function(e){return p.apply(this,arguments)},noValidate:!0,children:[(0,l.jsx)("label",{htmlFor:"email",children:"Adresse courriel"}),(0,l.jsx)("div",{children:(0,l.jsx)(d.II,{ariaLabel:"Email address",name:"email",type:"email",required:!0,placeholder:"jeanne.lebrun@yahoo.fr"})}),(0,l.jsxs)("div",{className:"mt-3",children:[(0,l.jsx)("label",{htmlFor:"password2",children:"Mot de passe"}),(0,l.jsx)(d.II,{"aria-label":"Password",name:"password",type:"password",required:!0,placeholder:"Mot de passe"})]}),(0,l.jsxs)("div",{className:"flex items-center justify-between mt-6",children:[(0,l.jsxs)("div",{className:"flex items-center hidden",children:[(0,l.jsx)(d.XZ,{id:"rememberMe"}),(0,l.jsx)("label",{htmlFor:"rememberMe",className:"block ml-2 text-sm leading-5 text-gray-900",children:"Se souvenir de moi"})]}),(0,l.jsx)("div",{className:"hidden text-sm leading-5",children:(0,l.jsx)(h.default,{href:"/",children:(0,l.jsx)("a",{className:"font-medium text-indigo-600 transition duration-150 ease-in-out hover:text-indigo-500 focus:outline-none focus:underline",children:"Mot de passe oubli\xe9 ?"})})})]}),(0,l.jsx)("div",{className:"mt-6 text-center",children:(0,l.jsx)(d.jb,{type:"submit",children:"Se connecter"})})]}),(0,l.jsxs)("div",{className:"hidden",children:[(0,l.jsx)(d.rO,{children:"Vous n'avez pas encore de compte ?"}),(0,l.jsx)("div",{className:"mt-4 text-center",children:(0,l.jsx)(d.f5,{children:"Cr\xe9er un compte"})})]})]})},I=s(7596);function $(e,t){var s=Object.keys(e);if(Object.getOwnPropertySymbols){var l=Object.getOwnPropertySymbols(e);t&&(l=l.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),s.push.apply(s,l)}return s}function q(e){for(var t=1;t<arguments.length;t++){var s=null!=arguments[t]?arguments[t]:{};t%2?$(Object(s),!0).forEach((function(t){(0,u.Z)(e,t,s[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(s)):$(Object(s)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(s,t))}))}return e}function W(e){return(0,l.jsxs)("svg",q(q({xmlns:"http://www.w3.org/2000/svg",width:"186",height:"238",viewBox:"0 0 186 238"},e),{},{children:[(0,l.jsx)("defs",{children:(0,l.jsxs)("linearGradient",{id:"linearGradient-1",x1:"49.978%",x2:"49.978%",y1:"99.992%",y2:"-.014%",children:[(0,l.jsx)("stop",{offset:"0%",stopColor:"gray",stopOpacity:"0.25"}),(0,l.jsx)("stop",{offset:"54%",stopColor:"gray",stopOpacity:"0.12"}),(0,l.jsx)("stop",{offset:"100%",stopColor:"gray",stopOpacity:"0.1"})]})}),(0,l.jsx)("g",{fill:"none",fillRule:"evenodd",stroke:"none",strokeWidth:"1",children:(0,l.jsx)("g",{fillRule:"nonzero",transform:"translate(-885 -277)",children:(0,l.jsxs)("g",{transform:"translate(885 277)",children:[(0,l.jsx)("path",{fill:"url(#linearGradient-1)",d:"M81.886 85.555s-1.513-.21-1.513-2.413c0-2.201-1.084-6.324-1.084-6.324s-.938-7.174-2.232-8.311c-1.295-1.138-2.96-7.816-2.96-7.816s-.284-3.623-.864-4.403c-.58-.78-1.364-2.69-2.52-5.414-1.157-2.725-5.968-4.592-5.968-4.592s-8.718-5.057-11.189-6.705a3.82 3.82 0 01-.63-.477c-.43-.56-2.306-.572-2.306-.572-.196-1.241-.384-2.663-.445-3.95v-.415a13.295 13.295 0 005.844-7.232c.046-.146.085-.296.127-.445.34-.106.62-.352.768-.677.22-.495.227-1.072.504-1.537.323-.545.937-.837 1.421-1.245 1.222-1.041 1.537-2.79 1.48-4.376-.039-1.291-.246-2.59-.165-3.87 0-.107 0-.215.023-.322a9.21 9.21 0 01.084-.569c.188-.953.6-1.852.83-2.797.23-.946.254-2.01-.284-2.825-.788-1.195-2.429-1.433-3.87-1.537-1.633-.138-3.074.039-4.138-1.317a14.486 14.486 0 00-1.644-1.983c-.216-.2-2.306-1.48-2.306-1.56a9.341 9.341 0 00-6.532-.504c-1.088.315-2.106.83-3.209 1.088-2.366.56-5.095-.046-7.108 1.31-1.122.769-1.794 1.994-2.425 3.182-.512.978-1.032 1.958-1.56 2.94-.853 1.61-1.713 3.246-2.07 5.029-.076.39-.123.783-.143 1.18v.61c0 .131 0 .262.023.385s0 .157.027.238c.027.08.035.261.058.384s.069.342.115.507c0 .073.046.143.07.216.022.073.084.257.134.384s.053.134.084.2c.058.134.127.265.196.384.03.05.054.1.085.15.105.18.223.352.353.515.819 1.026 2.033 1.679 2.928 2.64v.43a13.153 13.153 0 006.025 10.72c0 .146.02.296.027.446.075 1.14.06 2.283-.042 3.42a1.622 1.622 0 00-1.276-.569 1.829 1.829 0 00-.492.042l-.034-.027v.035c-.846.207-1.887 1.087-2.882 3.589 0 0-3.028 3.412-5.334 3.27-2.305-.142-8.142 3.554-8.142 3.554s-5.694 3.693-6.916 7.458a52.138 52.138 0 01-2.456 6.256L1.295 75.826 0 87.354s.719 5.114.576 5.898c-.142.784 2.955 7.815 2.955 7.815s10.233 17.975 14.413 18.898l.3-.208c.18.09.37.16.565.208l.86-.604c.054.676.03 1.355-.069 2.025-.572 1.78.22 13.36 1.226 15.631 1.007 2.271.65 32.05.65 32.05l-.143 2.625s0 .084.035.23l-.035.623.104.054a7.427 7.427 0 01-.104 2.505c-.36 1.153-.507 4.407-.507 4.407s-2.882 18.398-1.514 22.094c1.368 3.697 2.525 7.747 2.525 7.747s1.44 4.61.069 5.379c-1.372.768-5.257 2.133-4.465 4.05.73 1.775 3.5 6.532 3.911 7.228l-.034.384-.565 6.12c.092.81.31 1.598.65 2.337.618 1.337 1.817 2.717 4.107 2.567.384-.027.826-.07 1.26-.127 4.185-.565 9.334-2.432 9.334-2.432a3.681 3.681 0 01-.727-.604 2.11 2.11 0 01-.641-1.536c.061-1.119-2.025-6.425-2.548-7.735l-.119-.292s4.757-4.976 3.966-9.38c0 0-5.265-3.074-3.532-4.764 1.733-1.691 4.83-6.533 4.83-6.533s.142-18.117 0-20.818a22.44 22.44 0 01.265-5.625c.058-.277.127-.55.2-.823 2.399.362 4.821.546 7.247.55.886 0 1.783-.018 2.69-.054 0 .256.011.533.034.83.2 4.488.573 12.361.876 15.285.43 4.189 2.81 15.49 2.81 15.49s-4.539 2.908.79 10.09c0 0 0 2.597-.353 2.977a32.515 32.515 0 00-.91 3.754c-.223 1.35-.315 2.72.046 3.428.864 1.698 6.052 1.56 6.052 1.56a.818.818 0 01.126-.02 7.404 7.404 0 015.491 1.653c1.971 1.583 9.449.891 13.503.384 1.587-.203 2.647-.384 2.647-.384.051-.18.07-.367.054-.553-.042-.996-.822-3.178-6.11-5.126 0 0-4.972-3.343-4.903-6.256H67.204c.362-.011.615-.011.615-.011s-1.948-7.105-1.152-7.685c.795-.58-1.587-8.453-1.587-8.453s-1.364-13.219-1.441-14.14a8.123 8.123 0 01.36-2.345l-.36-7.25s-.07-2.41 0-3.193c-.008-.68-.062-1.36-.162-2.033-.034-.269-.069-.55-.107-.826 1.863-.473 3.074-.907 3.074-.907l-.216-25.226c1.584-3.074 1.876-9.821 1.868-14.601 0-3.074-.138-5.349-.138-5.349l2.163-3.53s.5-4.228-.292-5.154c-.35-.418-.192-.853.096-1.21a4.02 4.02 0 01.48-.338.603.603 0 01-.05-.085 3.82 3.82 0 01.48-.342s-.768-1.19-.08-1.694c.645.438 1.222.788 1.66 1.037-.03.28-.062.442-.062.442l.185-.384.68.384s3.389-6.751 3.316-7.742c-.073-.992 2.305-5.188 2.305-5.188s.289-2.205 1.587-3.127c1.3-.923 1.007-7.605 1.007-7.605s.361-3.48 1.226-4.899c.864-1.418-.773-3.347-.773-3.347zm-64.845-2.962l.066 1.61-.661-1.06.595-.55z"}),(0,l.jsx)("path",{fill:"#FFF",d:"M73.418 114.543l-.83 3.535s-6.648-3.4-7.843-7.704c-1.195-4.304 2.002-5.944 2.002-5.944l6.198 2.62.473 7.493z"}),(0,l.jsx)("path",{fill:"#000",d:"M73.418 114.543l-.83 3.535s-6.648-3.4-7.843-7.704c-1.195-4.304 2.002-5.944 2.002-5.944l6.198 2.62.473 7.493z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M36.111 234.854s-6.148 2.26-10.374 2.544c-2.244.15-3.424-1.226-4.031-2.552a7.8 7.8 0 01-.638-2.305l.557-6.09.292-3.24 8.98-2.336 1.272 3.892.12.293c.506 1.302 2.558 6.582 2.497 7.684a2.11 2.11 0 00.626 1.537c.208.22.443.412.7.573zM78.086 231.757c.016.186-.002.374-.054.553 0 0-13.148 2.19-15.838 0a7.12 7.12 0 00-5.518-1.625s-5.087.138-5.936-1.537c-.354-.703-.262-2.067-.043-3.408.224-1.262.522-2.509.892-3.735l.203-.162 1.21-.972 14.172-.419h.107c-.069 2.898 4.807 6.221 4.807 6.221 5.191 1.922 5.956 4.093 5.998 5.084z"}),(0,l.jsx)("path",{fill:"#000",d:"M78.09 231.757c.014.186-.006.374-.058.553 0 0-13.148 2.19-15.834 0a7.12 7.12 0 00-5.522-1.625s-5.091.138-5.94-1.537c-.35-.703-.262-2.067-.043-3.412 1.96.196 5.053.684 6.267 1.852 1.837 1.767 4.95 3.535 6.855 3.677 1.507.092 10.463.377 14.275.492zM36.111 234.854s-6.148 2.26-10.374 2.544c-2.244.15-3.424-1.226-4.031-2.552 1.568.527 3.739 1.076 4.88.573 1.352-.604 6.148-.988 8.838-1.153.202.225.434.423.687.588z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#F2AAB7",d:"M45.233 52.764c-5.072-1.971-11.596-8.484-9.967-11.527a6.89 6.89 0 00.634-2.444c.105-1.15.12-2.306.046-3.458a47.493 47.493 0 00-.68-5.63s15.835.358 14.913 2.69c-.27.688-.316 1.875-.239 3.201.077 1.326.265 2.836.465 4.108.273 1.74.554 3.073.554 3.073s-.973 1.357-1.537 1.43c-.565.073 3.089 11.381-4.189 8.557z"}),(0,l.jsx)("path",{fill:"#000",d:"M32.273 225.04l-.12.13c-4.733-5.724-10.459 1.415-10.459 1.415l-.084-.154.292-3.239 8.98-2.336 1.272 3.892.119.292zM67.289 220.856s-3.458-.07-5.303 1.56c-1.844 1.63-10.758.35-10.374 0a1.33 1.33 0 00.2-.588l1.21-.972 14.17-.419c.055.269.097.419.097.419z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M38.163 175.895a10.778 10.778 0 00-.584 1.972 22.559 22.559 0 00-.265 5.594c.142 2.69 0 20.715 0 20.715s-3.04 4.807-4.738 6.501c-1.698 1.695 3.459 4.738 3.459 4.738.768 4.384-3.89 9.333-3.89 9.333-4.733-5.725-10.458 1.41-10.458 1.41s-3.113-5.379-3.889-7.3c-.776-1.921 3.04-3.247 4.38-4.03 1.342-.785-.069-5.38-.069-5.38s-1.13-4.031-2.474-7.708c-1.345-3.678 1.483-21.98 1.483-21.98s.146-3.254.496-4.387c.174-.818.21-1.66.104-2.49-.024-.28-.05-.511-.07-.673-.019-.16-.034-.23-.034-.23l.054-.092 1.92-3.581s15.497 5.333 14.575 7.588zM67.289 220.433s-3.458-.073-5.303 1.537c-1.844 1.61-10.758.354-10.374 0 .384-.353.35-2.966.35-2.966-5.23-7.143-.769-10.04-.769-10.04s-2.332-11.24-2.755-15.409c-.296-2.908-.661-10.759-.857-15.204a570.788 570.788 0 01-.134-3.247l4.234-.842.55-.107 10.305-2.071s.284 1.92.476 3.492c.098.671.15 1.348.158 2.025-.065.769 0 3.178 0 3.178l.353 7.209a8.315 8.315 0 00-.353 2.332c.073.922 1.414 14.067 1.414 14.067s2.332 7.846 1.537 8.411c-.795.565 1.168 7.635 1.168 7.635z"}),(0,l.jsx)("path",{fill:"#000",d:"M50.179 32.407c-.27.688-.316 1.875-.239 3.2a13.16 13.16 0 01-13.994-.26 47.493 47.493 0 00-.68-5.63s15.835.357 14.913 2.69z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#F2AAB7",d:"M56.292 23.923c.087 7.26-5.728 13.215-12.988 13.302-7.26.087-13.215-5.728-13.302-12.987v-.315c0-7.262 5.887-13.15 13.149-13.15S56.3 16.662 56.3 23.924h-.008z"}),(0,l.jsx)("path",{fill:"#000",d:"M45.233 52.764c-5.072-1.971-11.596-8.484-9.967-11.527a6.89 6.89 0 00.634-2.444l6.943 5.71 4.296 3.523 3.266-8.31c.273 1.74.554 3.073.554 3.073s-.973 1.356-1.537 1.43c-.565.072 3.089 11.37-4.189 8.545z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M63.1891004 77.997397L57.3908424 175.40352 49.8288996 175.899196 30.2439288 119.419015 33.4562175 52.364409 34.1363313 38.1972935 42.8433244 45.3480941 47.1391842 48.8716214 50.5013284 40.3144838 56.7529956 45.7630788z"}),(0,l.jsx)("path",{fill:"#000",d:"M38.163 175.895a10.778 10.778 0 00-.584 1.972 55.716 55.716 0 01-15.87-4.953l-.103-.054.035-.619v-.323l1.92-3.58s15.524 5.302 14.602 7.557zM51.808 177.882a38.92 38.92 0 01-4.25.488 570.783 570.783 0 01-.134-3.247l4.257-.86.127 3.619zM63.028 175.576c-2.732.711-6.955 1.51-10.728 1.011l-.054-2.432 10.305-2.071s.273 1.905.477 3.492z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#000",d:"M52.23 177.033c-15.754 2.69-30.182-5.022-30.182-5.022l.138-2.613s.358-29.622-.634-31.893c-.991-2.27-1.763-13.77-1.202-15.527.56-1.756-2.048-28.269-2.048-28.269l-.423-10.759-15.481-6.29 6.916-14.42a52.107 52.107 0 002.405-6.225c1.203-3.747 6.786-7.424 6.786-7.424s5.725-3.673 7.989-3.535c2.263.138 5.23-3.25 5.23-3.25 2.19-5.584 4.172-3.075 4.172-3.075 0 .27 0 0-.107.827-.769 6.128 12.426 25.494 12.614 25.84l1.272 30.609 1.272 38.736 1.283 42.29z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M51.808 177.033c-15.754 2.69-30.187-5.022-30.187-5.022l.143-2.613s.353-29.622-.638-31.893c-.992-2.27-1.764-13.782-1.2-15.554.566-1.771-2.059-28.257-2.059-28.257l-.426-10.76-15.478-6.29 6.917-14.42a52.922 52.922 0 002.405-6.22c1.203-3.736 6.805-7.417 6.805-7.417s5.726-3.673 7.985-3.535c2.26.139 5.241-3.247 5.241-3.247 2.194-5.583 4.61-3.074 4.61-3.074 0 .27-.23.385-.107.827 1.691 5.944 12.004 25.494 12.192 25.84l1.272 30.609 1.245 38.755 1.28 42.27z"}),(0,l.jsx)("path",{fill:"#000",d:"M47.562 66.263c-1.695-.707-10.67-10.955-10.67-10.955v-2.333c-.327-.768-2.272-.3-3.843.239l.676-14.168.769.638c1.679 5.94 12.883 26.237 13.068 26.579z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M47.988 65.417c-1.698-.71-10.674-10.955-10.674-10.955v-2.336c-.327-.768-2.267-.3-3.842.238l.664-14.151.769.634c1.694 5.932 12.895 26.224 13.083 26.57z"}),(0,l.jsx)("path",{fill:"#000",d:"M22.048 116.522c.211 0 10.955-1.13 10.955-1.13s6.505 12.795 6.079 15.904c-.427 3.109-1.2 5.867-3.816 5.38-2.617-.489-14.083.384-14.083.384l.865-20.538z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M21.621 115.673c.216 0 10.96-1.13 10.96-1.13s6.5 12.815 6.078 15.888c-.423 3.074-1.203 5.868-3.816 5.38-2.613-.488-14.086.384-14.086.384l.864-20.522z"}),(0,l.jsx)("path",{fill:"#F2AAB7",d:"M29.718 109.682s9.86 5.303 10.07 6.917c.212 1.613-5.018-.707-6.147-.992-.744-.176-1.501-.295-2.264-.353l-7.535.203 5.876-5.775z"}),(0,l.jsx)("circle",{cx:"44.807",cy:"65.886",r:"1.037",fill:"#000",opacity:"0.1"}),(0,l.jsx)("circle",{cx:"44.807",cy:"65.463",r:"1.037",fill:"#3F3D56"}),(0,l.jsx)("circle",{cx:"46.717",cy:"110.797",r:"1.037",fill:"#000",opacity:"0.1"}),(0,l.jsx)("circle",{cx:"46.717",cy:"110.37",r:"1.037",fill:"#3F3D56"}),(0,l.jsx)("circle",{cx:"45.844",cy:"88.341",r:"1.037",fill:"#000",opacity:"0.1"}),(0,l.jsx)("circle",{cx:"45.844",cy:"87.919",r:"1.037",fill:"#3F3D56"}),(0,l.jsx)("path",{fill:"#FFF",d:"M69.76 115.039s.707 1.06 0 1.537c-.707.476.069 1.698.069 1.698s-1.764 1.03-.988 1.963c.777.934.285 5.126.285 5.126l-2.121 3.531s.126 2.264.134 5.322c0 4.773-.28 11.482-1.833 14.54l.208 25.095s-7.428 2.717-13.645 1.887l-.922-40.27s1.345-22.835 1.84-27.215a45.59 45.59 0 00.354-6.859s-.211-6.855-.922-10.033c0 0-.769-13.786-.845-17.602-.035-1.825.061-7.15.169-12.215.119-5.537.253-10.759.253-10.759l-1.402-11.1s1.402-.139 1.825.422c.19.177.395.335.615.473 2.424 1.636 10.978 6.67 10.978 6.67s4.733 1.883 5.867 4.58c1.134 2.698 1.921 4.611 2.47 5.38.55.768.85 4.38.85 4.38s1.63 6.648 2.9 7.773c1.273 1.126 2.187 8.273 2.187 8.273l-11.239 8.838s-.987 14.701-1.199 15.27c-.211.568 4.112 13.295 4.112 13.295z"}),(0,l.jsx)("path",{fill:"#FFF",d:"M70.186 115.039s.703 1.06 0 1.537c-.703.476.066 1.698.066 1.698s-1.764 1.03-.988 1.963c.776.934.284 5.126.284 5.126l-2.113 3.531s.127 2.264.138 5.322c0 4.773-.28 11.482-1.833 14.54l.212 25.095s-7.428 2.717-13.645 1.887l-.918-40.27s1.34-22.835 1.84-27.215c.29-2.274.408-4.567.35-6.859 0 0-.211-6.855-.918-10.033 0 0-.769-13.786-.85-17.602-.034-1.825.062-7.15.17-12.215.119-5.537.253-10.759.253-10.759l-1.852-11.25s1.852 0 2.279.572c.187.179.393.337.615.473 2.42 1.636 10.974 6.67 10.974 6.67s4.722 1.883 5.875 4.58c1.152 2.698 1.92 4.611 2.47 5.38.55.768.85 4.38.85 4.38s1.629 6.648 2.9 7.773c1.273 1.126 2.19 8.273 2.19 8.273l-11.238 8.838s-.988 14.701-1.203 15.27c-.215.568 4.092 13.295 4.092 13.295z"}),(0,l.jsx)("path",{fill:"#000",d:"M56.726 54.047l1.018 2.96-5.345 5.379c.12-5.537.254-10.76.254-10.76L50.801 40.38s1.852 0 2.279.572c.187.18.393.338.614.473l4.542 13.099-1.51-.477z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M56.292 53.198l1.018 2.955-5.34 5.38c.114-5.537.253-10.76.253-10.76l-1.856-11.25s1.856 0 2.278.572c.189.178.395.337.615.473l4.569 13.11-1.537-.48z"}),(0,l.jsx)("path",{fill:"#000",d:"M56.292 23.923a13.107 13.107 0 01-.646 4.076.546.546 0 01-.415-.1c-.103-3.458-1.802-6.708-3.896-9.471a10.033 10.033 0 00-2.113-2.19 4.138 4.138 0 00-2.867-.811c-1.152.157-2.17.941-3.335 1.041-1.537.127-2.913-.937-4.438-.987a4.35 4.35 0 00-3.262 1.514 8.9 8.9 0 00-1.749 3.239 18.974 18.974 0 00-.975 5.594c-.02 1.076-.123 2.425-1.122 2.817a5.725 5.725 0 00-1.45-4.38l-.022-.027v-.315c0-7.262 5.887-13.15 13.149-13.15S56.3 16.662 56.3 23.924h-.008z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#A96A1D",d:"M48.607 3.047a9.053 9.053 0 00-6.386-.5c-1.065.315-2.067.826-3.147 1.084-2.306.557-4.995-.047-6.974 1.302-1.1.769-1.76 1.983-2.375 3.166l-1.537 2.924c-.837 1.603-1.683 3.232-2.032 4.996-.35 1.763-.139 3.738.98 5.16.81 1.03 2.017 1.68 2.9 2.651a5.764 5.764 0 011.445 4.392c1-.384 1.1-1.74 1.122-2.816.043-1.903.372-3.79.976-5.595a8.9 8.9 0 011.748-3.239 4.353 4.353 0 013.263-1.518c1.537.054 2.916 1.118 4.438.988 1.152-.096 2.175-.88 3.335-1.038a4.12 4.12 0 012.866.811 9.844 9.844 0 012.11 2.19c2.098 2.767 3.8 6.002 3.9 9.472.434.315 1.06-.1 1.276-.592.215-.492.223-1.068.495-1.537.316-.542.919-.834 1.391-1.241 1.2-1.034 1.499-2.774 1.453-4.353-.046-1.58-.354-3.182-.054-4.734.18-.95.588-1.845.81-2.786.224-.942.25-1.998-.276-2.809-.768-1.187-2.386-1.426-3.796-1.537-1.602-.138-3.036.038-4.058-1.31a15.02 15.02 0 00-1.614-1.975c-.211-.204-2.259-1.472-2.259-1.556z"}),(0,l.jsx)("path",{fill:"#000",d:"M6.832 84.076l-4.012-7.42-1.271 11.45s.707 5.088.564 5.868c-.142.78 2.898 7.774 2.898 7.774s10.04 17.886 14.14 18.805l13.833-9.899-3.674-4.664s-1.272-.496-1.59 0c0 0-6.825-11.735-7.528-12.58-.703-.846-.569-2.548-.569-2.548s-1.06-1.13-.707-2.19c.354-1.06-2.028-4.734-2.028-4.734l2.19-2.048-12.246 2.186z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M3.032 75.807l-1.06.85-1.273 11.45s.707 5.087.565 5.867c-.142.78 2.901 7.774 2.901 7.774s10.037 17.886 14.137 18.805l13.855-9.899-3.677-4.664s-1.272-.496-1.59 0c0 0-6.82-11.735-7.528-12.58-.707-.846-.565-2.548-.565-2.548s-1.06-1.13-.707-2.19c.354-1.06-2.052-4.734-2.052-4.734l2.19-2.048-15.196-6.083z"}),(0,l.jsx)("path",{fill:"#000",d:"M68.841 120.68c.769.933.285 5.129.285 5.129l-2.121 3.508s.126 2.267.134 5.326l-3.566 1.114a2.121 2.121 0 01-2.75-2.09l.618-19.827 8.319 3.177c-.707.492.069 1.699.069 1.699s-1.764 1.03-.988 1.963z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M69.264 120.257c.769.93.284 5.125.284 5.125l-2.113 3.512s.127 2.264.138 5.322l-3.63 1.134a2.071 2.071 0 01-2.69-2.04l.618-19.897 8.315 3.186c-.71.491.066 1.698.066 1.698s-1.764 1.026-.988 1.96z"}),(0,l.jsx)("path",{fill:"#F2AAB7",d:"M72.023 110.797s-.565 3.608-1.979 3.819c-1.414.211-2.048 5.837-3.458 5.64-1.41-.195-.477-5.233-.427-6.209.05-.976-1.537-5.018-.353-5.936 1.183-.919 4.949 0 4.949 0l1.268 2.686z"}),(0,l.jsx)("path",{fill:"#000",d:"M75.012 83.016l2.663-5.38s1.064 4.1 1.064 6.29c0 2.19 1.484 2.406 1.484 2.406s1.625 1.92.768 3.323-1.199 4.876-1.199 4.876.28 6.644-.991 7.562c-1.272.919-1.556 3.113-1.556 3.113s-2.333 4.169-2.26 5.16c.073.992-3.25 7.704-3.25 7.704s1.625-8.342-7.847-11.946c0 0-.073-2.828.634-3.604.707-.776 1.81-1.153 1.119-5.057-.692-3.904-.2-8.61-.2-9.552 0-.941 2.12-6.809 2.12-6.809l7.451 1.914z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M76.196 76.868l2.328.768s1.065 4.1 1.065 6.29c0 2.19 1.483 2.406 1.483 2.406s1.625 1.92.768 3.323-1.202 4.876-1.202 4.876.284 6.644-.988 7.562c-1.272.919-1.537 3.113-1.537 3.113s-2.332 4.169-2.26 5.16c.074.992-3.254 7.704-3.254 7.704s1.626-8.342-7.846-11.946c0 0-.07-2.828.638-3.604.707-.776 1.81-1.153 1.118-5.057-.692-3.904-.2-8.61-.2-9.552 0-.941 2.121-6.809 2.121-6.809l7.766-4.234z"}),(0,l.jsxs)("g",{transform:"translate(54)",children:[(0,l.jsx)("path",{fill:"#2F2E41",d:"M57.411 27.443l-24.329 4.12a2.463 2.463 0 01-2.787-1.768c-1.757-6.344-5.432-14.62-1.864-18.774a6.825 6.825 0 017.19-6.108C39.966-1.89 47.205-.869 52.097 3.38c4.924 1.7 6.78 4.718 6.132 8.814 2.127 1.862 3.242 3.96 3.477 6.261a9.042 9.042 0 01-2.474 7.035l-1.822 1.953z"}),(0,l.jsx)("path",{fill:"#9F616A",d:"M53.629 46.597l-18.86-1.11c1.848-4.242 2.586-8.327 1.848-12.203H50.67c-.032 2.976 1.45 8.124 2.959 13.313z"}),(0,l.jsx)("path",{fill:"#1D2649",d:"M30.926 220.87l-.773 10.575a3.367 3.367 0 003.56 3.606l5.433-.329a1.717 1.717 0 001.561-2.13l-3.015-12.06-6.766.338zM48.512 220.532l-3.016 12.06a1.717 1.717 0 001.562 2.13l5.432.33a3.367 3.367 0 003.561-3.607l-.773-10.575-6.766-.338z"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M55.6282566 222.338306L48.2981566 221.60269 41.0002566 143.59474 38.2421733 221.351223 31.0404899 221.09324 18.9022399 113.404556 65.2767566 113.404556z"}),(0,l.jsx)("circle",{cx:"44.014",cy:"23.767",r:"14.006",fill:"#9F616A"}),(0,l.jsx)("path",{fill:"#FFF",d:"M53.335 35.005c-6.127 2.549-12.551 2.445-19.239 0 1.946-3.321-.962-5.923-2.456-9.276l24.97-.742c-1.91 2.913-4.727 6.354-3.275 10.018z"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M17.387 87.645L6.663 80.99l9.146-26.787a12.637 12.637 0 015.524-6.561l3.08-1.784.269 27.023-7.295 14.765z"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M63.743 100.655l-1.587-13.59c-.084-7.173 1.136-14.109 4.046-20.499l1.48-19.97L51.41 39.94c-.05.332-.093.663-.14.995l-7.626 3.813-7.438-1.69.042-2.378-14.793 6.656c4.892 22.743 2.224 46.36-6.188 74.255l19.487 5.329.162-9.357 17.368-1.24c.179 3.035.323 6.017.406 8.933 9.8 3.608 10.137 3.548 19.066-1.618-3.556-7.476-6.372-15.256-8.013-22.983z"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M88.7601399 84.3168397L78.7754566 80.9887397 62.8042566 62.395923 67.6810233 46.5968397 89.8695066 77.6606397z"}),(0,l.jsx)("path",{fill:"#E6E6E6",d:"M57.468 98.711a2.778 2.778 0 003.318 2.093l8.476-1.92-1.225-5.41-8.476 1.92a2.774 2.774 0 00-2.093 3.317z"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M65.093 92.453l4.807 8.875c8.086-2.255 15.094-9.365 21.819-17.75l-1.85-5.918-11.463 2.959-13.313 11.834z"}),(0,l.jsx)("path",{fill:"#3F3D56",d:"M.773 64.246a.785.785 0 00-.644 1.216l19.718 29.917c.11.168.28.286.475.332l9.175 2.159a.784.784 0 00.82-1.214L8.667 65.873a.78.78 0 00-.503-.32L.921 64.259a.837.837 0 00-.148-.013z"})]}),(0,l.jsxs)("g",{transform:"translate(3 1)",children:[(0,l.jsx)("ellipse",{cx:"91.849",cy:"228.543",fill:"#08177D",opacity:"0.1",rx:"91.005",ry:"7.419"}),(0,l.jsx)("path",{fill:"#08177D",d:"M128.432 59.027H139.962V70.557H128.432z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#08177D",d:"M128.432 87.466H139.962V98.996H128.432z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#08177D",d:"M128.432 115.901H139.962V127.431H128.432z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#08177D",d:"M128.432 144.341H139.962V155.871H128.432z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#5FC7AE",d:"M164.152703 217.917568L163.67027 223.662162 165.287838 223.337838 165.044595 217.106757z"}),(0,l.jsx)("path",{fill:"#E58687",d:"M127.249 190.642c-1.95 5.554-1.399 13.05-.961 16.69.162 1.346.312 2.165.312 2.165s-2.915 6.64-3.158 6.892c-.243.252-8.578 5.34-8.578 5.34l-5.826 3.4s-5.911-2.59-3.077-3.482a4.301 4.301 0 001.528-1.042c2.838-2.696 6.402-9.397 6.402-9.397s.243-3.401 1.135-5.019c.892-1.617.567-18.616.567-18.616l.07-27.71v-3.612l11.087.081c.07 1.227.23 2.446.478 3.65a55.78 55.78 0 001.545 6.145c1.954 6.32 1.143 16.905-1.524 24.515z"}),(0,l.jsx)("path",{fill:"#000",d:"M126.6 209.497s-2.915 6.64-3.158 6.892c-.243.252-8.578 5.34-8.578 5.34l-5.826 3.4s-5.911-2.59-3.077-3.482a4.301 4.301 0 001.528-1.042l.252 1.772 1.941-.081 16.622-14.955c.146 1.337.296 2.156.296 2.156z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#5FC7AE",d:"M126.397 207.718l-16.715 15.056-1.941.081-.406-2.837s-3.397 4.37-10.946 4.127c0 0-4.532 2.996 2.185 3.158 6.718.162 15.296-.244 15.296-.244s5.992-9.324 11.007-8.108v7.042h1.54v-7.107a6.401 6.401 0 002.733-4.216 5.165 5.165 0 00-1.788-4.735 3.053 3.053 0 01-.965-2.217z"}),(0,l.jsx)("path",{fill:"#E58687",d:"M165.693 199.301c-1.078 3.852-.49 6.02.248 7.184v.024a13.277 13.277 0 011.937 4.732l.065.364-7.605 11.088-4.127 1.622s-6.637-2.266-5.425-2.915c.305-.158.779-1.001 1.322-2.165 1.622-3.507 3.86-9.977 3.86-9.977v-.053c.235-2.671.608-5.335 1.021-7.986.742-4.772-.62-16.484-.62-16.484s-.487-14.242-1.54-17.48a26.728 26.728 0 01-.945-5.044c-.22-2.027-.268-3.697-.268-3.697s4.37-6.082 12.381.486a8.814 8.814 0 011.675 1.816c5.533 7.873 1.078 25.216 1.078 25.216s-1.115 6.309-3.057 13.27z"}),(0,l.jsx)("path",{fill:"#000",d:"M167.955 211.605l-7.605 11.088-4.127 1.622s-6.637-2.266-5.424-2.915c.304-.158.778-1.001 1.321-2.165 2.81-.024 4.265 2.651 4.265 2.651l3.56-.567s4.694-9.227 5.748-9.79c1.054-.564.162-4.213.162-4.213v-.928c.029.032.053.069.086.101v.025a13.277 13.277 0 011.937 4.73l.077.361z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#5FC7AE",d:"M156.628 222.126s-2.027-3.722-5.91-2.348c0 0-2.186 4.46-4.37 5.181-2.186.722-1.456 3.155 3.482 2.267 4.938-.888 12.38-1.622 12.38-1.622l.325-4.536 5.02-6.394s2.99-2.712-1.46-8.051v.928s.891 3.649-.163 4.213c-1.054.563-5.732 9.794-5.732 9.794l-3.572.568z"}),(0,l.jsx)("path",{fill:"#000",d:"M126.762 156.324c.07 1.227.23 2.446.479 3.649-4.565-.669-8.802-.337-11.579-.118v-3.612l11.1.081zM168.122 161.826s-6.487.316-14.222.38a52.799 52.799 0 01-.268-3.697s4.37-6.08 12.382.487a8.814 8.814 0 011.674 1.816c.125.346.27.684.434 1.014z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M168.122 161.096s-28.411 1.374-37.07-1.054c-8.66-2.428-17.243-.324-18.536-.888-1.293-.563-.243-9.39.892-11.574 1.135-2.185 7.362-24.284 7.362-24.284l5.992-31.24 6.312-1.74.446-.125 10.999-3.033 8.06-2.226s16.025 62.567 14.65 67.18c-.498 1.767-.579 3.625-.234 5.429.21 1.231.589 2.427 1.127 3.555z"}),(0,l.jsx)("path",{fill:"#C7DAF5",d:"M105.876 70.69s-5.676 6.082-1.379 9.47c4.298 3.39 7.123.325 7.123.325l-5.744-9.794z"}),(0,l.jsx)("path",{fill:"#000",d:"M105.876 70.69s-5.676 6.082-1.379 9.47c4.298 3.39 7.123.325 7.123.325l-5.744-9.794z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#E58687",d:"M151.731 30.71s-.665.632-1.666 1.564a228.28 228.28 0 01-5.412 4.918c-2.595 2.258-4.735 3.916-3.97 2.501.767-1.415.621-3.88.24-6.186-.028-.154-.053-.308-.081-.458a42.486 42.486 0 00-1.253-5.011s4.192-5.416 6.511-7.553c.864-.81 1.468-1.143 1.504-.58.04.759.608 2.433 1.314 4.209a100.004 100.004 0 001.532 3.71 144.33 144.33 0 001.281 2.885z"}),(0,l.jsx)("path",{fill:"#000",d:"M148.982 24.28a12.032 12.032 0 01-8.059 9.227 42.19 42.19 0 00-1.334-5.47s7.893-10.195 8.015-8.132c.028.783.645 2.518 1.378 4.375zM140.136 36.231l1.022-1.44s.677 4.128 3.166 2.308c2.49-1.82 2.611 13.698 2.611 13.698l-2.671 39.945-19.306-1.156.547-19.3 2.186-9.73 5.404-14.145 3.214-4.675 3.827-5.505z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#387CCB",d:"M146.935 51.045l-2.432 36.117-.256 3.827-10.763-.644-.406-.025-8.108-.486.548-19.306 2.185-9.73 5.404-14.144 3.215-4.674 3.827-5.526 1.021-1.435s.677 4.127 3.166 2.307l.053-.037c2.433-1.54 2.546 13.756 2.546 13.756z"}),(0,l.jsx)("path",{fill:"#FFF",d:"M127.974 57.418s-.969 2.027-2.915 1.698c-1.945-.328-1.941 7.298-1.941 7.298s-1.294 1.216-2.186.162c-.891-1.054-3.243 2.51-3.243 2.51l-14.732.648s6.555 2.996 5.27 12.06c0 0 22.257-1.378 22.987-3.482.73-2.104-3.24-20.894-3.24-20.894z"}),(0,l.jsx)("path",{fill:"#000",d:"M127.974 57.418s-.969 2.027-2.915 1.698c-1.945-.328-1.941 7.298-1.941 7.298s-1.294 1.216-2.186.162c-.891-1.054-3.243 2.51-3.243 2.51l-14.732.648s6.555 2.996 5.27 12.06c0 0 22.257-1.378 22.987-3.482.73-2.104-3.24-20.894-3.24-20.894z",opacity:"0.03"}),(0,l.jsx)("path",{fill:"#FFF",d:"M85.1594595 74.4972973L89.0432432 77.8135135 121.013514 84.5310811 117.048649 80.4851351z"}),(0,l.jsx)("path",{fill:"#FFF",d:"M140.197 37.508c-.53.81-2.051 4.962-3.32 8.587-1.058 3.02-1.942 5.675-1.942 5.675s-2.063 13.435-3.117 15.864c-1.054 2.428-.483 11.898-.483 11.898l-3.928 23.388s-1.78 12.061-4.529 19.265c-2.712 7.09-5.732 10.415-5.825 10.52 1.216-1.646 7.844-34.054 7.844-34.054l2.19-40.873s.32-3.883.644-7.204c.324-3.32 6.892-7.852 6.892-7.852l6.332-9.004c.637.85.211 2.335-.758 3.79z"}),(0,l.jsx)("path",{fill:"#FFB0B1",d:"M123.685 90.036s-9.324-.405-13.84-5.83c-4.517-5.424 10.439-2.164 10.439-2.164l3.888.892-.487 7.102z"}),(0,l.jsx)("path",{fill:"#000",d:"M167.23 152.116c-.5 1.767-.58 3.625-.235 5.429-10.172.721-21.053-2.027-21.053-2.027-2.027 1.864-7.366 4.613-7.366 4.613l-2.911-36.081c-1.86-4.865-2.59-30.353-2.59-30.353s.166-1.333.405-3.332c0-.049 0-.101.02-.15.726-5.583 2.165-16.062 2.87-17.477.973-1.946-2.992-7.123-2.992-7.123l1.804-15.385.22-1.857c3.802-1.699 6.717-7.123 6.717-7.123l2.238-3.92c2.432-1.561 2.558 13.735 2.558 13.735l-2.433 36.117 8.06-2.225s16.062 62.546 14.688 67.16z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFF",d:"M177.669 154.61c-11.088 5.505-31.24.405-31.24.405-2.028 1.865-7.367 4.613-7.367 4.613l-2.915-36.08c-1.856-4.866-2.586-30.353-2.586-30.353s2.343-19.018 3.316-20.96c.284-.567.146-1.41-.19-2.319a29.343 29.343 0 01-1.776-13.577l.778-6.612.215-1.853c3.807-1.702 6.722-7.127 6.722-7.127l2.027-3.551 3.73-6.543 1.767-3.098.3.272 2.29 2.076s.974.81 2.433 2.027c3.174 2.675 8.66 7.386 11.49 10.269 2.488 2.537 3.275 12.41 3.502 19.84.15 4.893.06 8.729.06 8.729-2.509 4.13 4.055 37.297 4.055 37.297 1.528 6.41 3.389 46.544 3.389 46.544z"}),(0,l.jsx)("path",{fill:"#000",d:"M156.385 40.666s-7.61 14.485-6.726 19.99c.884 5.506 3.398 11.737 2.186 13.193a4.48 4.48 0 01-3.564 1.78c-1.216.08-4.46 2.347-4.46 2.59 0 .243-2.995.243-5.675 1.378-2.68 1.135-6.637 1.78-6.637 1.78s-7.702-.243-8.42.487c-.717.73-1.455 5.095.081 8.578 1.537 3.482 3.244 6.081 4.533 6.555 1.289.475 9.47-2.266 16.106-2.915 6.637-.648 13.841-5.906 13.841-5.906s7.934-2.838 9.324-7.61c1.39-4.771-1.698-30.997-1.698-30.997s-2.335-12.223-8.89-8.903z",opacity:"0.03"}),(0,l.jsx)("path",{fill:"#000",d:"M155.412 39.45s-7.61 14.49-6.717 19.99c.891 5.502 3.397 11.737 2.18 13.196a4.46 4.46 0 01-3.559 1.78c-1.216.081-4.46 2.348-4.46 2.59 0 .244-2.995.244-5.675 1.375-2.68 1.131-6.636 1.78-6.636 1.78s-7.703-.243-8.417.486c-.713.73-1.46 5.1.081 8.579 1.541 3.478 3.244 6.08 4.533 6.555 1.29.474 9.47-2.266 16.107-2.91 6.636-.645 13.84-5.912 13.84-5.912s7.93-2.837 9.304-7.605c1.375-4.768-1.698-31.001-1.698-31.001s-2.327-12.22-8.883-8.903z",opacity:"0.03"}),(0,l.jsx)("path",{fill:"#FFF",d:"M156.146 39.936s-7.61 14.49-6.718 19.991c.892 5.501 3.398 11.737 2.186 13.192a4.46 4.46 0 01-3.564 1.784c-1.216.08-4.46 2.347-4.46 2.586 0 .24-2.991.243-5.675 1.379-2.684 1.135-6.637 1.78-6.637 1.78s-7.702-.244-8.42.486c-.717.73-1.455 5.1.081 8.578 1.537 3.479 3.243 6.081 4.533 6.556 1.289.474 9.47-2.267 16.106-2.915 6.637-.649 13.84-5.907 13.84-5.907s7.935-2.838 9.325-7.61c1.39-4.771-1.678-30.997-1.678-30.997s-2.368-12.203-8.92-8.903z"}),(0,l.jsx)("path",{fill:"#000",d:"M155.98 78.799s-6.081-1.217-3.965.81c2.116 2.027 2.104 3.803 4.694 3.722 2.591-.081-.73-4.532-.73-4.532zM166.257 122.412s-2.749 1.861 2.51 6.15c5.257 4.29-2.51-6.15-2.51-6.15zM161.01 137.708c0 .243-.972 8.919 2.668 11.088 3.64 2.169-2.667-11.088-2.667-11.088z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#FFB0B1",d:"M103.208 69.714c-2.935.1-9.276.997-5.988 7.13 2.907 5.429 7.792 1.8 10.54-.952a10.358 10.358 0 00-4.552-6.178zM107.797 75.843l.122-.125-.122.125z"}),(0,l.jsx)("path",{fill:"#000",d:"M155.173 32.177c-3.114 2.128-5.724 3.924-6.235 4.297-1.395 1.034-4.054 7.103-5.77 10.2-1.365 2.494-5.804 3.134-7.479 3.292l.215-1.852c3.807-1.703 6.722-7.128 6.722-7.128l7.524-13.191 2.59 2.355s.974.81 2.433 2.027z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#DCE7FF",d:"M155.173 31.934c-3.114 2.128-5.724 3.924-6.235 4.301-1.395 1.03-4.054 7.099-5.77 10.196-1.365 2.493-5.804 3.134-7.479 3.292l.215-1.853c3.807-1.702 6.722-7.127 6.722-7.127l7.524-13.192 2.59 2.348s.974.802 2.433 2.035z"}),(0,l.jsx)("path",{fill:"#E58687",d:"M149.181 21.604a12.024 12.024 0 11-24.049.004 12.024 12.024 0 0124.05-.004z"}),(0,l.jsx)("path",{fill:"#000",d:"M170.165 62.043a10.686 10.686 0 01-3.88-4.167c-.677-1.338-1.127-2.883-2.282-3.831-1.042-.852-2.433-1.059-3.73-1.44-4.265-1.26-7.84-5.152-7.974-9.596-.065-2.091.587-4.18.292-6.25a6.924 6.924 0 00-1.355-3.224c-.357-.45-.749-.871-1.171-1.26-.568-.536-1.164-1.055-1.683-1.622a6.296 6.296 0 01-.85-1.156c-.194-.34-.35-.7-.467-1.074-.81-2.481-.073-5.424-.965-7.934l-.049-.138c-.336-.892-1.021-1.783-1.974-1.852-.953-.07-1.768.721-2.676 1.074-1.901.738-3.952-.519-5.537-1.8-1.586-1.281-3.373-2.745-5.388-2.46-1.334.19-2.388 1.098-3.617 1.568-.277.107-.563.19-.855.247a12.02 12.02 0 0123.177 4.48c.001.844-.087 1.685-.263 2.51a100.004 100.004 0 001.532 3.71l2.29 2.075s.974.81 2.433 2.027c3.174 2.675 8.66 7.386 11.49 10.269 2.488 2.546 3.267 12.413 3.502 19.844z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#591D4B",d:"M126.718 9.474c.58-1.18.867-2.501 1.56-3.62 1.018-1.622 2.794-2.66 4.618-3.288 4.763-1.642 14.83-4.025 17.838 0 .592.811 1.082 1.711 1.901 2.27.624.426 1.379.609 2.064.929 1.917.9 3.142 2.862 3.794 4.865.653 2.002.848 4.151 1.326 6.215.612 2.647 1.686 5.156 2.757 7.65 1.26 2.943 2.598 5.996 5.03 8.075 3.321 2.838 4.055 6.856 7.136 9.97 3.649 3.696 3.531 9.798 1.65 14.642-.247.637-.527 1.302-.43 1.979.097.677.6 1.293 1.074 1.832l1.995 2.25c-4.719 1.14-10.058-1.325-12.255-5.651-.677-1.338-1.127-2.878-2.287-3.831-1.038-.852-2.432-1.054-3.725-1.435-4.265-1.265-7.841-5.161-7.975-9.604-.065-2.088.588-4.176.292-6.244a6.892 6.892 0 00-1.358-3.243c-1.115-1.455-2.797-2.432-3.705-4.054-1.537-2.712-.37-6.235-1.476-9.146-.34-.892-1.022-1.784-1.974-1.853-.953-.068-1.768.722-2.68 1.075-1.897.738-3.949-.515-5.534-1.8-1.585-1.285-3.373-2.745-5.392-2.457-1.334.186-2.384 1.095-3.612 1.569-.908.349-2.749.66-3.543-.105-1.679-1.545 2.21-5.546 2.91-6.99z"}),(0,l.jsx)("path",{fill:"#000",d:"M167.903 56.254c-.681-1.338-1.127-2.878-2.287-3.827-1.038-.851-2.432-1.058-3.73-1.44-4.26-1.26-7.836-5.156-7.974-9.6-.065-2.087.588-4.179.296-6.246a6.932 6.932 0 00-1.358-3.223c-1.119-1.456-2.801-2.433-3.705-4.054-1.537-2.709-.37-6.232-1.48-9.146-.337-.888-1.022-1.78-1.97-1.853-.95-.073-1.772.726-2.68 1.078-1.897.738-3.953-.519-5.534-1.8-1.581-1.28-3.377-2.744-5.392-2.46-1.334.19-2.388 1.098-3.612 1.568-.908.349-2.753.665-3.547-.101-1.67-1.622 2.217-5.615 2.915-7.05.58-1.184.867-2.501 1.564-3.62.037-.061.077-.122.118-.183a6.438 6.438 0 00-1.334 1.517c-.693 1.118-.98 2.432-1.56 3.62-.702 1.435-4.59 5.44-2.915 7.05.81.77 2.635.454 3.543.105 1.216-.474 2.278-1.382 3.612-1.569 2.027-.288 3.81 1.176 5.392 2.457 1.58 1.281 3.649 2.538 5.538 1.8.908-.353 1.702-1.147 2.675-1.074.973.073 1.622.96 1.975 1.852 1.106 2.911-.061 6.434 1.475 9.146.908 1.594 2.59 2.59 3.706 4.054a6.892 6.892 0 011.358 3.244c.296 2.067-.357 4.155-.292 6.243.134 4.46 3.71 8.34 7.974 9.604 1.285.381 2.688.584 3.726 1.435 1.164.953 1.622 2.493 2.286 3.831 2.198 4.326 7.537 6.79 12.256 5.652l-.94-1.063c-4.091.061-8.23-2.266-10.1-5.947z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#000",d:"M139.954 37.751c-.531.811-2.051 4.963-3.32 8.587-1.188-.462-2.266-3.41-2.266-3.41l6.332-9.008c.649.892.223 2.372-.746 3.831z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#DCE7FF",d:"M140.197 37.508c-.53.81-2.051 4.962-3.32 8.587-1.188-.459-2.266-3.41-2.266-3.41l6.332-9.004c.649.888.223 2.372-.746 3.827z"}),(0,l.jsx)("path",{fill:"#BE8B87",d:"M103.378 78.924l-3.51-11.071a1.034 1.034 0 01.673-1.302c.543-.17 1.122.13 1.297.673l3.51 11.06-.348 2.315-1.622-1.675z"}),(0,l.jsx)("path",{fill:"#FFF",d:"M100.2 66.88a1.038 1.038 0 011.301.673l3.511 11.06-.263 1.734.255.268.349-2.315-3.531-11.06a1.038 1.038 0 00-1.298-.672c-.22.07-.41.214-.539.405a1.41 1.41 0 01.215-.093z",opacity:"0.1"}),(0,l.jsx)("path",{fill:"#EFC8C4",d:"M103.378378 78.9243243L105.348649 78.3 105.060811 80.1972973 105 80.6148649 104.424324 80.0148649z"}),(0,l.jsx)("path",{fill:"#727A9C",d:"M104.424 80.015a.405.405 0 01.126-.106.178.178 0 01.19 0c.028.034.051.07.07.11.054.09.146.152.25.166l-.06.406-.576-.576z"}),(0,l.jsx)("path",{fill:"#FFB0B1",d:"M99.847 71.785s7.042-.04 5.384 2.956c-1.658 2.995-4.249 3.356-4.249 3.356l-1.135-6.312z"})]})]})})})]}))}var Z=s(1310),G=function(){var e,t=(0,f.useRouter)(),s=function(){return t.push(Z.o7)};return(0,l.jsxs)("div",{className:"w-full max-w-md px-4 py-2 text-gray-700 transition duration-500 ease-in transform bg-gray-100 border rounded shadow hover:scale-105 hover:border-gray-300",onClick:s,onKeyPress:(e=s,function(t){return"Enter"===t.key&&e(t)}),role:"button",tabIndex:"0",children:[(0,l.jsxs)(d.cS,{children:["Vous exercez"," ",(0,l.jsx)(V,{type:"highlight",color:"lightgreen",show:!1,animate:!0,children:"en lib\xe9ral ?"})]}),(0,l.jsxs)(d.rO,{children:["Vous n\u2019avez pas besoin de compte ",(0,l.jsx)("br",{}),"pour remonter un signalement de violence."]}),(0,l.jsx)(W,{className:"mx-auto mt-5"}),(0,l.jsx)(d.rO,{className:"mt-8",children:"Votre d\xe9claration pourra \xeatre effectu\xe9e de mani\xe8re anonyme."}),(0,l.jsx)("div",{className:"my-6 text-center",children:(0,l.jsx)(d.jb,{type:"submit",children:"D\xe9clarer"})})]})},J=s(1330),U=s(9603),K=function(e){var t=e.openModal,s=e.setOpenModal,i=e.title,a=e.content,o=(0,n.useCallback)((function(){return function(e){27!==e.keyCode&&"Esc"!==e.keyCode||s(!1)}}),[s]);(0,n.useEffect)((function(){return document.addEventListener("keydown",o,!1),function(){document.removeEventListener("keydown",o,!1)}}),[t,s,o]);var r=function(){s(!1)};return(0,l.jsx)(J.uT,{show:t,enter:"transition-opacity duration-500",enterFrom:"opacity-0",enterTo:"opacity-100",leave:"transition-opacity duration-500",leaveFrom:"opacity-100",leaveTo:"opacity-0",children:(0,l.jsx)("div",{className:"fixed inset-0 z-10 overflow-y-auto",onClick:r,onKeyDown:o,role:"button",tabIndex:"0",children:(0,l.jsxs)("div",{className:"flex items-end justify-center min-h-screen px-4 pt-4 pb-20 text-center sm:block sm:p-0",children:[(0,l.jsx)("div",{className:"fixed inset-0 transition-opacity",children:(0,l.jsx)("div",{className:"absolute inset-0 bg-gray-500 opacity-75"})}),(0,l.jsx)("span",{className:"hidden sm:inline-block sm:align-middle sm:h-screen"}),"\u200b",(0,l.jsxs)("div",{className:"inline-block overflow-hidden text-left align-bottom transition-all transform bg-white rounded-lg shadow-xl sm:my-8 sm:align-middle sm:max-w-lg sm:w-full",role:"dialog","aria-modal":"true","aria-labelledby":"modal-headline",onClick:function(e){e.stopPropagation()},onKeyPress:function(e){return s=r,"Esc"===(t=e).key&&s(t);var t,s},children:[(0,l.jsx)("div",{className:"px-4 pt-5 pb-4 bg-white sm:p-6 sm:pb-4",children:(0,l.jsxs)("div",{className:"sm:flex sm:items-start",children:[(0,l.jsx)("div",{className:"flex items-center justify-center flex-shrink-0 w-12 h-12 mx-auto bg-blue-200 rounded-full sm:mx-0 sm:h-10 sm:w-10",children:(0,l.jsx)(U.Z,{})}),(0,l.jsxs)("div",{className:"mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left",children:[(0,l.jsx)("h3",{className:"text-lg font-medium leading-6 text-gray-900",id:"modal-headline",children:i}),(0,l.jsx)("div",{className:"mt-2",children:(0,l.jsx)("p",{className:"text-sm leading-5 text-gray-700",children:a})})]})]})}),(0,l.jsx)("div",{className:"px-4 py-3 bg-gray-50 sm:px-6 sm:flex sm:flex-row-reverse",children:(0,l.jsx)("span",{className:"flex w-full mt-3 rounded-md shadow-sm sm:mt-0 sm:w-auto",children:(0,l.jsx)("button",{type:"button",className:"inline-flex justify-center w-full px-4 py-2 text-base font-medium leading-6 text-gray-700 transition duration-150 ease-in-out bg-white border border-gray-300 rounded-md shadow-sm hover:text-gray-500 focus:outline-none focus:border-blue-300 focus:shadow-outline-blue sm:text-sm sm:leading-5",onClick:function(){return s(!1)},children:"Annuler"})})})]})]})})})};var X=function(){return(0,l.jsx)("svg",{xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 1440 120",children:(0,l.jsx)("path",{fill:"#FFF",d:"M0 64l80-5.3C160 53 320 43 480 53.3 640 64 800 96 960 101.3c160 5.7 320-16.3 400-26.6l80-10.7v256H0z"})})},Q=s(1939),Y=function(){var e=(0,i.j_)(Q.aB).action,t=(0,n.useState)(!1),s=t[0],a=t[1];return n.useEffect((function(){e({event:{name:"RESET"}})}),[e]),(0,l.jsxs)(l.Fragment,{children:[(0,l.jsxs)("div",{style:{background:"#387CCB",color:"#FFF",overflow:"hidden",textAlign:"center"},className:"relative",children:[(0,l.jsx)(d.LR,{children:"Observatoire National des Violences en Sant\xe9"}),(0,l.jsx)(K,{openModal:s,setOpenModal:a,title:"Nom de cat\xe9gorie",content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}),(0,l.jsx)(X,{className:"block"})]}),(0,l.jsx)("div",{className:"flex items-center justify-center w-full",children:(0,l.jsxs)("div",{className:"flex flex-wrap items-stretch justify-center w-full min-h-full py-6 space-x-0 space-y-8 lg:space-y-0 lg:space-x-8",children:[(0,l.jsx)(T,{flow:"ets"}),(0,l.jsx)(G,{})]})}),(0,l.jsx)(I.Z,{})]})}},8581:function(e,t,s){(window.__NEXT_P=window.__NEXT_P||[]).push(["/",function(){return s(6544)}])}},function(e){e.O(0,[774,118,433,427,351,964,167,618,16,898],(function(){return t=8581,e(e.s=t);var t}));var t=e.O();_N_E=t}`
  
  
  
  
Instances: 2
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p>class z{constructor(e){this.deps=[],this.conditions=[],this._whitelist=new N,this._blacklist=new N,this.exclusiveTests=Object.create(null),this.tests=[],this.transforms=[],this.withMutation((()=>{this.typeError(h.notType)})),this.type=(null==e?void 0:e.type)||"mixed",this.spec=L({strip:!1,strict:!1,abortEarly:!0,recursive:!0,nullable:!1,presence:"optional"},null==e?void 0:e.spec)}get _type(){return this.type}_typeCheck(e){return!0}clone(e){if(this._mutate)return e&&Object.assign(this.spec,e),this;const t=Object.create(Object.getPrototypeOf(this));return t.type=this.type,t._typeError=this._typeError,t._whitelistError=this._whitelistError,t._blacklistError=this._blacklistError,t._whitelist=this._whitelist.clone(),t._blacklist=this._blacklist.clone(),t.exclusiveTests=L({},this.exclusiveTests),t.deps=[...this.deps],t.conditions=[...this.conditions],t.tests=[...this.tests],t.transforms=[...this.transforms],t.spec=s(L({},this.spec,e)),t}label(e){var t=this.clone();return t.spec.label=e,t}meta(...e){if(0===e.length)return this.spec.meta;let t=this.clone();return t.spec.meta=Object.assign(t.spec.meta||{},e[0]),t}withMutation(e){let t=this._mutate;this._mutate=!0;let n=e(this);return this._mutate=t,n}concat(e){if(!e||e===this)return this;if(e.type!==this.type&&"mixed"!==this.type)throw new TypeError(`You cannot \`concat()\` schema's of different types: ${this.type} and ${e.type}`);let t=this,n=e.clone();const r=L({},t.spec,n.spec);return n.spec=r,n._typeError||(n._typeError=t._typeError),n._whitelistError||(n._whitelistError=t._whitelistError),n._blacklistError||(n._blacklistError=t._blacklistError),n._whitelist=t._whitelist.merge(e._whitelist,e._blacklist),n._blacklist=t._blacklist.merge(e._blacklist,e._whitelist),n.tests=t.tests,n.exclusiveTests=t.exclusiveTests,n.withMutation((t=>{e.tests.forEach((e=>{t.test(e.OPTIONS)}))})),n}isType(e){return!(!this.spec.nullable||null!==e)||this._typeCheck(e)}resolve(e){let t=this;if(t.conditions.length){let n=t.conditions;t=t.clone(),t.conditions=[],t=n.reduce(((t,n)=>n.resolve(t,e)),t),t=t.resolve(e)}return t}cast(e,t={}){let n=this.resolve(L({value:e},t)),r=n._cast(e,t);if(void 0!==e&&!1!==t.assert&&!0!==n.isType(r)){let o=d(e),i=d(r);throw new TypeError(`The value of ${t.path||"field"} could not be cast to a value that satisfies the schema type: "${n._type}". \n\nattempted value: ${o} \n`+(i!==o?`result of cast: ${i}`:""))}return r}_cast(e,t){let n=void 0===e?e:this.transforms.reduce(((t,n)=>n.call(this,t,e,this)),e);return void 0===n&&(n=this.getDefault()),n}_validate(e,t={},n){let{sync:r,path:o,from:i=[],originalValue:s=e,strict:a=this.spec.strict,abortEarly:u=this.spec.abortEarly}=t,c=e;a||(c=this._cast(c,L({assert:!1},t)));let l={value:c,path:o,options:t,originalValue:s,schema:this,label:this.spec.label,sync:r,from:i},f=[];this._typeError&&f.push(this._typeError),this._whitelistError&&f.push(this._whitelistError),this._blacklistError&&f.push(this._blacklistError),k({args:l,value:c,path:o,sync:r,tests:f,endEarly:u},(e=>{e?n(e,c):k({tests:this.tests,args:l,path:o,sync:r,value:c,endEarly:u},n)}))}validate(e,t,n){let r=this.resolve(L({},t,{value:e}));return"function"===typeof n?r._validate(e,t,n):new Promise(((n,o)=>r._validate(e,t,((e,t)=>{e?o(e):n(t)}))))}validateSync(e,t){let n;return this.resolve(L({},t,{value:e}))._validate(e,L({},t,{sync:!0}),((e,t)=>{if(e)throw e;n=t})),n}isValid(e,t){return this.validate(e,t).then((()=>!0),(e=>{if(D.isError(e))return!1;throw e}))}isValidSync(e,t){try{return this.validateSync(e,t),!0}catch(n){if(D.isError(n))return!1;throw n}}_getDefault(){let e=this.spec.default;return null==e?e:"function"===typeof e?e.call(this):s(e)}getDefault(e){return this.resolve(e||{})._getDefault()}default(e){if(0===arguments.length)return this._getDefault();return this.clone({default:e})}strict(e=!0){var t=this.clone();return t.spec.strict=e,t}_isPresent(e){return null!=e}defined(e=h.defined){return this.test({message:e,name:"defined",exclusive:!0,test:e=>void 0!==e})}required(e=h.required){return this.clone({presence:"required"}).withMutation((t=>t.test({message:e,name:"required",exclusive:!0,test(e){return this.schema._isPresent(e)}})))}notRequired(){var e=this.clone({presence:"optional"});return e.tests=e.tests.filter((e=>"required"!==e.OPTIONS.name)),e}nullable(e=!0){return this.clone({nullable:!1!==e})}transform(e){var t=this.clone();return t.transforms.push(e),t}test(...e){let t;if(t=1===e.length?"function"===typeof e[0]?{test:e[0]}:e[0]:2===e.length?{name:e[0],test:e[1]}:{name:e[0],message:e[1],test:e[2]},void 0===t.message&&(t.message=h.default),"function"!==typeof t.test)throw new TypeError("`test` is a required parameters");let n=this.clone(),r=I(t),o=t.exclusive||t.name&&!0===n.exclusiveTests[t.name];if(t.exclusive&&!t.name)throw new TypeError("Exclusive tests must provide a unique `name` identifying the test");return t.name&&(n.exclusiveTests[t.name]=!!t.exclusive),n.tests=n.tests.filter((e=>{if(e.OPTIONS.name===t.name){if(o)return!1;if(e.OPTIONS.test===r.OPTIONS.test)return!1}return!0})),n.tests.push(r),n}when(e,t){Array.isArray(e)||"string"===typeof e||(t=e,e=".");let n=this.clone(),r=E(e).map((e=>new P(e)));return r.forEach((e=>{e.isSibling&&n.deps.push(e.key)})),n.conditions.push(new S(r,t)),n}typeError(e){var t=this.clone();return t._typeError=I({message:e,name:"typeError",test(e){return!(void 0!==e&&!this.schema.isType(e))||this.createError({params:{type:this.schema._type}})}}),t}oneOf(e,t=h.oneOf){var n=this.clone();return e.forEach((e=>{n._whitelist.add(e),n._blacklist.delete(e)})),n._whitelistError=I({message:t,name:"oneOf",test(e){if(void 0===e)return!0;let t=this.schema._whitelist;return!!t.has(e,this.resolve)||this.createError({params:{values:t.toArray().join(", ")}})}}),n}notOneOf(e,t=h.notOneOf){var n=this.clone();return e.forEach((e=>{n._blacklist.add(e),n._whitelist.delete(e)})),n._blacklistError=I({message:t,name:"notOneOf",test(e){let t=this.schema._blacklist;return!t.has(e,this.resolve)||this.createError({params:{values:t.toArray().join(", ")}})}}),n}strip(e=!0){let t=this.clone();return t.spec.strip=e,t}describe(){const e=this.clone(),{label:t,meta:n}=e.spec;return{meta:n,label:t,type:e.type,oneOf:e._whitelist.describe(),notOneOf:e._blacklist.describe(),tests:e.tests.map((e=>({name:e.OPTIONS.name,params:e.OPTIONS.params}))).filter(((e,t,n)=>n.findIndex((t=>t.name===e.name))===t))}}}z.prototype.__isYupSchema__=!0;for(const Oe of["validate","validateSync"])z.prototype[`${Oe}At`]=function(e,t,n={}){const{parent:r,parentPath:o,schema:i}=$(this,e,t,n.context);return i[Oe](r&&r[o],L({},n,{parent:r,path:e}))};for(const Oe of["equals","is"])z.prototype[Oe]=z.prototype.oneOf;for(const Oe of["not","nope"])z.prototype[Oe]=z.prototype.notOneOf;z.prototype.optional=z.prototype.notRequired;const U=z;function Z(){return new U}Z.prototype=U.prototype;var H=e=>null==e;let B=/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$/i,W=/^((https?|ftp):)?\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i,Y=/^(?:[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}|00000000-0000-0000-0000-000000000000)$/i,q=e=>H(e)||e===e.trim(),G={}.toString();function K(){return new X}class X extends z{constructor(){super({type:"string"}),this.withMutation((()=>{this.transform((function(e){if(this.isType(e))return e;if(Array.isArray(e))return e;const t=null!=e&&e.toString?e.toString():e;return t===G?e:t}))}))}_typeCheck(e){return e instanceof String&&(e=e.valueOf()),"string"===typeof e}_isPresent(e){return super._isPresent(e)&&!!e.length}length(e,t=v.length){return this.test({message:t,name:"length",exclusive:!0,params:{length:e},test(t){return H(t)||t.length===this.resolve(e)}})}min(e,t=v.min){return this.test({message:t,name:"min",exclusive:!0,params:{min:e},test(t){return H(t)||t.length>=this.resolve(e)}})}max(e,t=v.max){return this.test({name:"max",exclusive:!0,message:t,params:{max:e},test(t){return H(t)||t.length<=this.resolve(e)}})}matches(e,t){let n,r,o=!1;return t&&("object"===typeof t?({excludeEmptyString:o=!1,message:n,name:r}=t):n=t),this.test({name:r||"matches",message:n||v.matches,params:{regex:e},test:t=>H(t)||""===t&&o||-1!==t.search(e)})}email(e=v.email){return this.matches(B,{name:"email",message:e,excludeEmptyString:!0})}url(e=v.url){return this.matches(W,{name:"url",message:e,excludeEmptyString:!0})}uuid(e=v.uuid){return this.matches(Y,{name:"uuid",message:e,excludeEmptyString:!1})}ensure(){return this.default("").transform((e=>null===e?"":e))}trim(e=v.trim){return this.transform((e=>null!=e?e.trim():e)).test({message:e,name:"trim",test:q})}lowercase(e=v.lowercase){return this.transform((e=>H(e)?e:e.toLowerCase())).test({message:e,name:"string_case",exclusive:!0,test:e=>H(e)||e===e.toLowerCase()})}uppercase(e=v.uppercase){return this.transform((e=>H(e)?e:e.toUpperCase())).test({message:e,name:"string_case",exclusive:!0,test:e=>H(e)||e===e.toUpperCase()})}}K.prototype=X.prototype;var J=/^(\d{4}|[+\-]\d{6})(?:-?(\d{2})(?:-?(\d{2}))?)?(?:[ T]?(\d{2}):?(\d{2})(?::?(\d{2})(?:[,\.](\d{1,}))?)?(?:(Z)|([+\-])(\d{2})(?::?(\d{2}))?)?)?$/;let Q=new Date("");function ee(){return new te}class te extends z{constructor(){super({type:"date"}),this.withMutation((()=>{this.transform((function(e){return this.isType(e)?e:(e=function(e){var t,n,r=[1,4,5,6,7,10,11],o=0;if(n=J.exec(e)){for(var i,s=0;i=r[s];++s)n[i]=+n[i]||0;n[2]=(+n[2]||1)-1,n[3]=+n[3]||1,n[7]=n[7]?String(n[7]).substr(0,3):0,void 0!==n[8]&&""!==n[8]||void 0!==n[9]&&""!==n[9]?("Z"!==n[8]&&void 0!==n[9]&&(o=60*n[10]+n[11],"+"===n[9]&&(o=0-o)),t=Date.UTC(n[1],n[2],n[3],n[4],n[5]+o,n[6],n[7])):t=+new Date(n[1],n[2],n[3],n[4],n[5],n[6],n[7])}else t=Date.parse?Date.parse(e):NaN;return t}(e),isNaN(e)?Q:new Date(e))}))}))}_typeCheck(e){return t=e,"[object Date]"===Object.prototype.toString.call(t)&&!isNaN(e.getTime());var t}prepareParam(e,t){let n;if(P.isRef(e))n=e;else{let r=this.cast(e);if(!this._typeCheck(r))throw new TypeError(`\`${t}\` must be a Date or a value that can be \`cast()\` to a Date`);n=r}return n}min(e,t=g.min){let n=this.prepareParam(e,"min");return this.test({message:t,name:"min",exclusive:!0,params:{min:e},test(e){return H(e)||e>=this.resolve(n)}})}max(e,t=g.max){var n=this.prepareParam(e,"max");return this.test({message:t,name:"max",exclusive:!0,params:{max:e},test(e){return H(e)||e<=this.resolve(n)}})}}te.INVALID_DATE=Q,ee.prototype=te.prototype,ee.INVALID_DATE=Q;var ne=n(1865),re=n.n(ne),oe=n(8929),ie=n.n(oe),se=n(7523),ae=n.n(se),ue=n(4633),ce=n.n(ue);function le(e,t){let n=1/0;return e.some(((e,r)=>{var o;if(-1!==(null==(o=t.path)?void 0:o.indexOf(e)))return n=r,!0})),n}function fe(e){return(t,n)=>le(e,t)-le(e,n)}function pe(){return(pe=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}let de=e=>"[object Object]"===Object.prototype.toString.call(e);const he=fe([]);class ve extends z{constructor(e){super({type:"object"}),this.fields=Object.create(null),this._sortErrors=he,this._nodes=[],this._excludedEdges=[],this.withMutation((()=>{this.transform((function(e){if("string"===typeof e)try{e=JSON.parse(e)}catch(t){e=null}return this.isType(e)?e:null})),e&&this.shape(e)}))}_typeCheck(e){return de(e)||"function"===typeof e}_cast(e,t={}){var n;let r=super._cast(e,t);if(void 0===r)return this.getDefault();if(!this._typeCheck(r))return r;let o=this.fields,i=null!=(n=t.stripUnknown)?n:this.spec.noUnknown,s=this._nodes.concat(Object.keys(r).filter((e=>-1===this._nodes.indexOf(e)))),a={},u=pe({},t,{parent:a,__validating:t.__validating||!1}),c=!1;for(const l of s){let e=o[l],n=w()(r,l);if(e){let n,o=r[l];u.path=(t.path?`${t.path}.`:"")+l,e=e.resolve({value:o,context:t.context,parent:a});let i="spec"in e?e.spec:void 0,s=null==i?void 0:i.strict;if(null==i?void 0:i.strip){c=c||l in r;continue}n=t.__validating&&s?r[l]:e.cast(r[l],u),void 0!==n&&(a[l]=n)}else n&&!i&&(a[l]=r[l]);a[l]!==r[l]&&(c=!0)}return c?a:r}_validate(e,t={},n){let r=[],{sync:o,from:i=[],originalValue:s=e,abortEarly:a=this.spec.abortEarly,recursive:u=this.spec.recursive}=t;i=[{schema:this,value:s},...i],t.__validating=!0,t.originalValue=s,t.from=i,super._validate(e,t,((e,c)=>{if(e){if(!D.isError(e)||a)return void n(e,c);r.push(e)}if(!u||!de(c))return void n(r[0]||null,c);s=s||c;let l=this._nodes.map((e=>(n,r)=>{let o=-1===e.indexOf(".")?(t.path?`${t.path}.`:"")+e:`${t.path||""}["${e}"]`,a=this.fields[e];a&&"validate"in a?a.validate(c[e],pe({},t,{path:o,from:i,strict:!0,parent:c,originalValue:s[e]}),r):r(null)}));k({sync:o,tests:l,value:c,errors:r,endEarly:a,sort:this._sortErrors,path:t.path},n)}))}clone(e){const t=super.clone(e);return t.fields=pe({},this.fields),t._nodes=this._nodes,t._excludedEdges=this._excludedEdges,t._sortErrors=this._sortErrors,t}concat(e){let t=super.concat(e),n=t.fields;for(let[r,o]of Object.entries(this.fields)){const e=n[r];void 0===e?n[r]=o:e instanceof z&&o instanceof z&&(n[r]=o.concat(e))}return t.withMutation((()=>t.shape(n)))}getDefaultFromShape(){let e={};return this._nodes.forEach((t=>{const n=this.fields[t];e[t]="default"in n?n.getDefault():void 0})),e}_getDefault(){return"default"in this.spec?super._getDefault():this._nodes.length?this.getDefaultFromShape():void 0}shape(e,t=[]){let n=this.clone(),r=Object.assign(n.fields,e);if(n.fields=r,n._sortErrors=fe(Object.keys(r)),t.length){Array.isArray(t[0])||(t=[t]);let e=t.map((([e,t])=>`${e}-${t}`));n._excludedEdges=n._excludedEdges.concat(e)}return n._nodes=function(e,t=[]){let n=[],r=[];function o(e,o){var i=(0,V.split)(e)[0];~r.indexOf(i)||r.push(i),~t.indexOf(`${o}-${i}`)||n.push([o,i])}for(const i in e)if(w()(e,i)){let t=e[i];~r.indexOf(i)||r.push(i),P.isRef(t)&&t.isSibling?o(t.path,i):F(t)&&"deps"in t&&t.deps.forEach((e=>o(e,i)))}return ce().array(r,n).reverse()}(r,n._excludedEdges),n}pick(e){const t={};for(const n of e)this.fields[n]&&(t[n]=this.fields[n]);return this.clone().withMutation((e=>(e.fields={},e.shape(t))))}omit(e){const t=this.clone(),n=t.fields;t.fields={};for(const r of e)delete n[r];return t.withMutation((()=>t.shape(n)))}from(e,t,n){let r=(0,V.getter)(e,!0);return this.transform((o=>{if(null==o)return o;let i=o;return w()(o,e)&&(i=pe({},o),n||delete i[e],i[t]=r(o)),i}))}noUnknown(e=!0,t=b.noUnknown){"string"===typeof e&&(t=e,e=!0);let n=this.test({name:"noUnknown",exclusive:!0,message:t,test(t){if(null==t)return!0;const n=function(e,t){let n=Object.keys(e.fields);return Object.keys(t).filter((e=>-1===n.indexOf(e)))}(this.schema,t);return!e||0===n.length||this.createError({params:{unknown:n.join(", ")}})}});return n.spec.noUnknown=e,n}unknown(e=!0,t=b.noUnknown){return this.noUnknown(!e,t)}transformKeys(e){return this.transform((t=>t&&ae()(t,((t,n)=>e(n)))))}camelCase(){return this.transformKeys(ie())}snakeCase(){return this.transformKeys(re())}constantCase(){return this.transformKeys((e=>re()(e).toUpperCase()))}describe(){let e=super.describe();return e.fields=A()(this.fields,(e=>e.describe())),e}}function me(e){return new ve(e)}function ge(){return(ge=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function ye(e){return new be(e)}me.prototype=ve.prototype;class be extends z{constructor(e){super({type:"array"}),this.innerType=e,this.withMutation((()=>{this.transform((function(e){if("string"===typeof e)try{e=JSON.parse(e)}catch(t){e=null}return this.isType(e)?e:null}))}))}_typeCheck(e){return Array.isArray(e)}get _subType(){return this.innerType}_cast(e,t){const n=super._cast(e,t);if(!this._typeCheck(n)||!this.innerType)return n;let r=!1;const o=n.map(((e,n)=>{const o=this.innerType.cast(e,ge({},t,{path:`${t.path||""}[${n}]`}));return o!==e&&(r=!0),o}));return r?o:n}_validate(e,t={},n){var r,o;let i=[],s=t.sync,a=t.path,u=this.innerType,c=null!=(r=t.abortEarly)?r:this.spec.abortEarly,l=null!=(o=t.recursive)?o:this.spec.recursive,f=null!=t.originalValue?t.originalValue:e;super._validate(e,t,((e,r)=>{if(e){if(!D.isError(e)||c)return void n(e,r);i.push(e)}if(!l||!u||!this._typeCheck(r))return void n(i[0]||null,r);f=f||r;let o=new Array(r.length);for(let n=0;n<r.length;n++){let e=r[n],i=`${t.path||""}[${n}]`,s=ge({},t,{path:i,strict:!0,parent:r,index:n,originalValue:f[n]});o[n]=(t,n)=>u.validate(e,s,n)}k({sync:s,path:a,value:r,errors:i,endEarly:c,tests:o},n)}))}clone(e){const t=super.clone(e);return t.innerType=this.innerType,t}concat(e){let t=super.concat(e);return t.innerType=this.innerType,e.innerType&&(t.innerType=t.innerType?t.innerType.concat(e.innerType):e.innerType),t}of(e){let t=this.clone();if(!F(e))throw new TypeError("`array.of()` sub-schema must be a valid yup schema not: "+d(e));return t.innerType=e,t}length(e,t=x.length){return this.test({message:t,name:"length",exclusive:!0,params:{length:e},test(t){return H(t)||t.length===this.resolve(e)}})}min(e,t){return t=t||x.min,this.test({message:t,name:"min",exclusive:!0,params:{min:e},test(t){return H(t)||t.length>=this.resolve(e)}})}max(e,t){return t=t||x.max,this.test({message:t,name:"max",exclusive:!0,params:{max:e},test(t){return H(t)||t.length<=this.resolve(e)}})}ensure(){return this.default((()=>[])).transform(((e,t)=>this._typeCheck(e)?e:null==t?[]:[].concat(t)))}compact(e){let t=e?(t,n,r)=>!e(t,n,r):e=>!!e;return this.transform((e=>null!=e?e.filter(t):e))}describe(){let e=super.describe();return this.innerType&&(e.innerType=this.innerType.describe()),e}nullable(e=!0){return super.nullable(e)}defined(){return super.defined()}required(e){return super.required(e)}}ye.prototype=be.prototype}}</p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
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

  
#### CWE Id : 16
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/427-6b57ca655ca82f57317b.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/427-6b57ca655ca82f57317b.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eval`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/167-f1448fcfae8feb44daa5.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/167-f1448fcfae8feb44daa5.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/132-9a6d8c9f7ef3ab50fd85.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/132-9a6d8c9f7ef3ab50fd85.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `Eval`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/351-3ad87cb5f47afb16b5f2.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/351-3ad87cb5f47afb16b5f2.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
Instances: 5
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/778-97c88666e10d4eb8456e.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/778-97c88666e10d4eb8456e.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-67905a6b4324a9ea59e6.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-67905a6b4324a9ea59e6.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  * Evidence: `public, max-age=31536000, immutable`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 8
  
### Solution
<p>Whenever possible ensure the cache-control HTTP header is set with no-cache, no-store, must-revalidate; and that the pragma HTTP header is set with no-cache.</p>
  
### Reference
* https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#web-content-caching

  
#### CWE Id : 525
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Server Leaks Information via "X-Powered-By" HTTP Response Header Field(s)
##### Low (Medium)
  
  
  
  
#### Description
<p>The web/application server is leaking information via one or more "X-Powered-By" HTTP response headers. Access to such information may facilitate attackers identifying other frameworks/components your web application is reliant upon and the vulnerabilities such components may be subject to.</p>
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Next.js`
  
  
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
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
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/favicon.ico](https://onvs.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/778-97c88666e10d4eb8456e.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/778-97c88666e10d4eb8456e.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-67905a6b4324a9ea59e6.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/main-67905a6b4324a9ea59e6.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `7f14-zFj6w2EQKWf68IDTrJRU5voT/c4`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/politique-confidentialite](https://onvs.fabrique.social.gouv.fr/politique-confidentialite)
  
  
  * Method: `GET`
  
  
  * Evidence: `a3b9-eEtS5ziyl4JRTMPMCOd+j0SIg5s`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `9f82-SCuK1J8H7S0ojYfnc6WxY2Kn02I`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `bbf-ojAwQFA1GV9hLpIuSCmUpL1qV5o`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `/_next/static/Pdyjjrc9llGHn0MCq-0bQ/_buildManifest`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Evidence: `/_next/static/Pdyjjrc9llGHn0MCq-0bQ/_buildManifest`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `/_next/static/Pdyjjrc9llGHn0MCq-0bQ/_buildManifest`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `bbf-ojAwQFA1GV9hLpIuSCmUpL1qV5o`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Evidence: `6baf-G0haJl5wiOhxXnB0NEQCRxSPTgA`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/apropos-725594ec1163bb36375d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/pages/apropos-725594ec1163bb36375d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `fr/IMG/pdf/protocole_accord_amelioration_securite_es_100610`
  
  
  
  
Instances: 10
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>��x�1c�
�@����\x0003N�QS��O�8</p>
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/778-97c88666e10d4eb8456e.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/778-97c88666e10d4eb8456e.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr](https://onvs.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `from`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/351-3ad87cb5f47afb16b5f2.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/351-3ad87cb5f47afb16b5f2.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `from`
  
  
  
  
Instances: 11
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bQUERY\b and was detected in the element starting with: "(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[778],{400:function(){"trimStart"in String.prototype||(String.prototype.", see evidence field for the suspicious comment/snippet.</p>
  
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
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-a0e6fb89a9dedec469c8.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/polyfills-a0e6fb89a9dedec469c8.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/404","query":{},"buildId":"Pdyjjrc9llGHn0MCq-0bQ","nextExport":true,"autoExport":true,"isFallback":false}</script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/cgu](https://onvs.fabrique.social.gouv.fr/cgu)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/mentions](https://onvs.fabrique.social.gouv.fr/mentions)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/robots.txt](https://onvs.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script id="__NEXT_DATA__" type="application/json">{"props":{"pageProps":{}},"page":"/404","query":{},"buildId":"Pdyjjrc9llGHn0MCq-0bQ","nextExport":true,"autoExport":true,"isFallback":false}</script>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP](https://onvs.fabrique.social.gouv.fr/?email=foo-bar%40example.com&password=ZAP)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/](https://onvs.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a><svg xmlns="http://www.w3.org/2000/svg" width="190" height="134" fill="none" viewBox="0 0 190 134"><path fill="#E1000F" d="M56.833 0h-21.45c.071.024.14.056.204.095l.54.289c.287.134.533.342.713.603.074.115.188.341.112.492-.076.19-.112.491-.302.567-.25.103-.524.13-.79.077a1.896 1.896 0 01-.453-.077c.566.227 1.093.492 1.469 1.021.038.076.19.114.34.114.038 0 .038.074.038.113-.076.076-.15.114-.114.226h.114c.188-.076.15-.453.414-.339a.427.427 0 01.152.566 3.977 3.977 0 01-.454.379.342.342 0 000 .265c.095.135.16.29.19.453.112.265.15.567.264.83.178.55.267 1.124.264 1.703 0 .3-.152.565-.038.868.1.283.239.55.413.794.151.192.29.393.414.603.226.38.642.756.454 1.212-.114.264-.528.238-.791.377-.226.188-.039.49.073.68.19.34-.226.567-.49.681.077.112.238.074.264.15.038.19.226.304.114.492-.152.226-.603.341-.378.68.153.264.055.558-.035.832a.93.93 0 01-.68.568 1.55 1.55 0 01-.714.035.546.546 0 00-.237-.074c-.64-.076-1.282-.264-1.921-.264a2.243 2.243 0 00-.528.15 3.44 3.44 0 00-.456.405l-.081.091-.05.06s-.022.024-.031.038c-.11.138-.21.284-.297.436l-.017.029-.029.052c-.12.22-.215.453-.285.694-.257.866-.145 1.608.036 1.79.05.05 1.243.419 2.075.788.308.131.606.284.892.456h21.062l.01-20z"></path><path fill="#9D9D9C" d="M36.658 7.295c.15.039.376.039.376.115-.074.303-.528.377-.754.68h-.112c-.114.076-.076.264-.19.264a.522.522 0 00-.337.039.647.647 0 00.565.238.17.17 0 01.112.153.119.119 0 00.076-.039c.038 0 .076 0 .076.039v.15c-.114.15-.302.076-.454.112.284.076.584.076.868 0 .238-.074 0-.453.15-.642-.074 0 0-.112-.074-.112.074-.076.15-.19.226-.238a.268.268 0 00.226-.112c0-.077-.152-.115-.114-.189.225-.152.413-.379.34-.605-.038-.113-.34-.113-.528-.189a1.24 1.24 0 00-.64.038 3.054 3.054 0 00-.566.15 2.583 2.583 0 00-.713.38c.27-.102.546-.182.828-.239.212-.025.427-.022.64.007z"></path><path fill="#000091" d="M24.667 17.648c.214-.214.43-.443.647-.674.387-.46.806-.89 1.255-1.288.13-.119.267-.229.411-.33.036-.035.036-.111.074-.15-.188.077-.302.239-.49.303-.038 0-.073-.038-.038-.076l.404-.303h-.026c-.038 0-.038-.036-.038-.074-.49-.076-.868.265-1.205.565-.076.038-.152-.036-.188-.036-.566.189-.98.68-1.545.907v-.084c-.226.077-.447.213-.678.265-.314.05-.634.063-.951.038-.46.053-.918.133-1.37.239h-.037a3.08 3.08 0 00-.714.284l-.026.014a.75.75 0 01-.052.064.935.935 0 01-.26.239 3.828 3.828 0 00-.625.491.093.093 0 01-.059.02c-.202.195-.402.39-.609.581a.178.178 0 01-.114.014.305.305 0 01.024-.035 3.56 3.56 0 01.095-.16l.112-.177c.038-.06.104-.155.162-.238a.036.036 0 000-.05.073.073 0 00-.053-.02c.193-.181.405-.341.633-.476-.027 0-.062 0-.043-.036.019-.036.043-.07.064-.105l.014-.034-.028-.028a1.19 1.19 0 00-.179.124c-.09.081-.161.238-.297.238h-.057a.09.09 0 01-.04-.014.23.23 0 01.019-.033l.016-.031.015-.027.026-.047.021-.036c.014-.029.031-.055.048-.084l.024-.04.04-.067c.019-.033 0-.057-.029-.069a.833.833 0 01.257-.224c.143-.074.288-.162.433-.239l.062-.054a2.56 2.56 0 00-.6.298.278.278 0 00-.064.033.095.095 0 01-.095-.033.05.05 0 010-.029c.038-.076.15-.114.238-.188.038 0 .074 0 .074.038 1.207-.954 2.853-.716 4.258-1.21l.34-.238c.188-.074.337-.262.566-.377a1.67 1.67 0 00.64-.87.134.134 0 00-.039-.074 5.82 5.82 0 01-1.664 1.247c-.792.415-1.664.339-2.487.453.038-.076.112-.076.188-.076 0-.112.076-.15.152-.227h.112c.038 0 .038-.076.076-.076.074 0 .188-.036.15-.036-.112-.152-.338.112-.528 0 .076-.076.038-.19.114-.226h.15a.267.267 0 01.076-.153c.566-.34 1.094-.603 1.619-.906-.112 0-.188.112-.3.038.074 0 0-.114.074-.114.416-.113.754-.341 1.17-.492-.152 0-.264.115-.416 0 .076-.038.114-.112.238-.112v-.114c0-.038.038-.038.076-.038a.132.132 0 01-.076-.039c.038-.074.152-.038.237-.112-.035 0-.111 0-.111-.038a.75.75 0 01.49-.226c-.039-.077-.153 0-.153-.077 0-.038.038-.038.076-.038h-.076c-.074-.038-.036-.112-.036-.15.238-.265.238-.606.338-.906-.038 0-.074 0-.074-.039-.378.415-.98.566-1.545.716h-.204a.777.777 0 01-.642-.038 2.618 2.618 0 01-.38-.318 4.457 4.457 0 00-.952-.453 8.431 8.431 0 00-2.903-.415c.416-.238.873-.238 1.32-.379.64-.188 1.243-.415 1.92-.377a1.239 1.239 0 00-.375 0c-.528-.038-1.055.112-1.621.239-.376.074-.714.226-1.092.303-.226.074-.34.3-.604.264v-.114c.378-.453.83-.906 1.427-.954.68-.114 1.32 0 1.997.074.482.053.958.141 1.427.265.19 0 .237.303.378.34.237.077.451 0 .677.151 0-.074-.038-.15 0-.227.152-.15.34.039.49-.038.302-.188-.264-.527-.414-.792a.134.134 0 01.038-.076c.3.265.528.568.904.756.188.076.64.189.566-.038-.188-.415-.566-.756-.868-1.133v-.152c-.074 0-.074-.039-.112-.074v-.153c-.152-.076-.114-.227-.19-.339-.112-.19-.036-.455-.112-.682a3.684 3.684 0 01-.15-.641c-.088-.647-.24-1.212-.325-1.818-.076-.715.413-1.285.753-1.927A3.244 3.244 0 0124.97 2.35c.148-.45.391-.862.713-1.209a3.122 3.122 0 011.163-.756c.33-.146.668-.274 1.013-.384H2v20h18.307c.713-.517 1.426-.763 2.434-1.26.478-.233 1.56-.729 1.926-1.091zm-5.787-2.714c-.073 0-.238.039-.188-.038.038-.188.302-.188.452-.264.076-.039.188-.113.264-.074.076.112.188.074.264.15-.233.226-.535.114-.792.226zm-5.77-.832a.124.124 0 01-.038-.074c.463-.602.866-1.247 1.205-1.927.478-.283.909-.64 1.275-1.059a7.298 7.298 0 012.108-1.67c.321-.1.667-.088.98.037-.112.152-.302.114-.452.238a.145.145 0 01-.114-.036.141.141 0 00.038-.114c-.375.415-.903.606-1.205 1.097-.219.377-.369.854-.858.978-.153.038.038-.115-.038-.077-1.173.718-1.998 1.589-2.901 2.607zm3.126-2.492c-.038.074-.078.083-.114.15a.281.281 0 01-.15.15c-.037 0-.076 0-.076-.038a.478.478 0 01.302-.338c.038 0 .038.038.038.076zm1.75 5.662a.33.33 0 01-.093.11c.048 0 .081.03.05.059a.841.841 0 01-.285.198.211.211 0 01-.06 0 3.626 3.626 0 01-.14.131c-.047.043-.252 0-.187-.045.064-.046.183-.177.278-.263.052-.05.11-.095.157-.15a.463.463 0 01.08-.086c.031-.012.231-.028.2.046zm-.675-.313c-.14.1-.28.2-.43.286-.15.086-.33.167-.497.239a.05.05 0 00-.064-.014 1.723 1.723 0 00-.43.34l-.053.053a1.575 1.575 0 00-.083.088.173.173 0 01-.05.053c-.024.014-.088.014-.081-.029l-.067.034c-.02.01-.04.02-.059.033a.047.047 0 00-.026 0 .036.036 0 00-.026 0 1.817 1.817 0 00-.354.353l-.012.014v.017l-.027.036a.061.061 0 01-.03.016l-.015-.023a.13.13 0 01-.012-.02c0-.019-.021-.038-.03-.06v-.018c.04-.043.078-.088.118-.136l.038-.048.003-.048.021-.028c.043-.055.081-.108.119-.16l.017-.024c.019-.026.035-.055.052-.08a.805.805 0 00.04-.077v-.015l.036-.088v-.026a.39.39 0 010-.04l.014-.055a.031.031 0 000-.027c.044-.073.094-.141.15-.205l-.017.012c-.054.034-.09.084-.14.12-.05.035-.116-.02-.069-.055a.924.924 0 00.086-.08c.06-.067.124-.13.192-.19a1.734 1.734 0 00.131-.105 1.09 1.09 0 01.086-.095c.359-.35.967-.334 1.443-.556.188-.076.414.036.601 0a.572.572 0 01.34.074c-.297.131-.606.341-.915.534zm.77-2.623c-.035-.038.114 0 .152-.077h-.304c-.038 0-.038-.038-.038-.076-.188.038-.414.115-.601.153-.264.074-.49.262-.792.338-.414.153-.754.492-1.206.644-.037 0-.037-.038-.037-.076.037-.114.187-.15.263-.265 0-.038 0-.076-.038-.076.302-.415.714-.642 1.094-.983v-.112c.112-.152.3-.226.376-.417a.674.674 0 01.378-.339c-.038-.038-.114-.038-.114-.114-.15 0-.302.076-.452-.038a.544.544 0 01.238-.134.138.138 0 01-.086-.055c-.038-.076.074-.16.188-.188.152-.038.34-.038.454-.153-.264-.036-.566.077-.83-.074.162-.485.502-.891.951-1.135.038 0 .114 0 .114.038a.373.373 0 01-.302.38c.31.038.613.114.904.226-.038.074-.112.038-.15.038.188.112.414.036.602.189-.112.112-.238 0-.338 0 1.167.338 2.41.603 3.39 1.359a10.28 10.28 0 01-2.598.794.815.815 0 01-.302-.038c0 .038 0 .114-.038.114a.609.609 0 00-.376.077.475.475 0 01-.502-.005v.005z"></path><path fill="#000" d="M2.163 44h2.982V33.542l3.276 5.418h2.1l3.276-5.418V44h2.982V29.3H13.02l-3.549 6.048L5.922 29.3H2.163V44zm18.719 0h2.982V29.3h-2.982V44zm7.09 0h2.982V33.437L37.529 44h3.822V29.3h-2.983v10.521L31.796 29.3h-3.823V44zm17.489 0h2.982V29.3H45.46V44zm5.767-2.037c1.303 1.554 2.983 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.114 0 2.08.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm11.845-9.954h4.536V44h2.982V32.009h4.536V29.3H63.073v2.709zm17.634-3.969h2.73l-2.373-2.835h-3.066l2.709 2.835zM77.746 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zm12.033 0h2.982v-5.943h1.533L98.2 44h3.57l-4.62-6.51c1.49-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.23-4.389H89.78V44zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM103.617 44h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V29.3h-8.568V44zM2.163 66h5.775c4.662 0 7.812-3.381 7.812-7.35S12.6 51.3 7.938 51.3H2.163V66zM7.98 54.009c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641H5.145v-9.282H7.98zM18.626 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zm17.586 0c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.7-1.533 1.114 0 2.08.714 2.94 1.827l2.185-1.953c-1.24-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM66.748 50.88c-4.641 0-7.812 3.57-7.812 7.77 0 4.2 3.171 7.77 7.812 7.77 4.62 0 7.791-3.57 7.791-7.77 0-4.2-3.171-7.77-7.791-7.77zm0 12.747c-2.772 0-4.746-2.163-4.746-4.977 0-2.814 1.974-4.977 4.746-4.977 2.751 0 4.725 2.163 4.725 4.977 0 2.814-1.974 4.977-4.725 4.977zM77.398 66h8.567v-2.709H80.38V51.3h-2.982V66zm11.192 0h2.981V51.3H88.59V66zm7.09 0h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35H95.68V66zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM109.967 66h3.171l1.407-3.822h5.88L121.832 66h3.171l-5.565-14.7h-3.906L109.967 66zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.273 66h2.982v-5.943h1.533L135.694 66h3.57l-4.62-6.51c1.491-.714 2.352-2.037 2.352-3.801 0-2.73-1.995-4.389-5.229-4.389h-4.494V66zm4.662-12.159c1.26 0 1.995.693 1.995 1.806 0 1.197-.735 1.869-1.995 1.869h-1.68v-3.675h1.68zM141.111 66h2.982V51.3h-2.982V66zm5.579-11.991h4.536V66h2.982V54.009h4.536V51.3H146.69v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM161.363 66h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V51.3h-8.568V66zm10.71-2.037c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM2.163 88h8.568v-2.541H5.145v-3.675h4.746v-2.541H5.145v-3.402h5.586V73.3H2.163V88zm10.829-11.991h4.536V88h2.982V76.009h4.536V73.3H12.992v2.709zM33.115 88h5.775c4.662 0 7.812-3.381 7.812-7.35s-3.15-7.35-7.812-7.35h-5.775V88zm5.817-11.991c2.73 0 4.704 2.016 4.704 4.641 0 2.604-1.974 4.641-4.704 4.641h-2.835v-9.282h2.835zM49.578 88h8.568v-2.541H52.56v-3.675h4.746v-2.541H52.56v-3.402h5.586V73.3h-8.568V88zm17.483 0h8.568v-2.709h-5.586V73.3h-2.982V88zm9.98 0h3.171l1.407-3.822h5.88L88.906 88h3.171l-5.565-14.7h-3.906L77.041 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zm15.931 4.326c1.302 1.554 2.982 2.457 5.46 2.457 2.688 0 4.83-1.68 4.872-4.41 0-4.977-6.72-4.368-6.72-6.993 0-.861.672-1.533 1.701-1.533 1.113 0 2.079.714 2.94 1.827l2.184-1.953c-1.239-1.491-2.94-2.478-5.145-2.478-2.793 0-4.704 1.932-4.704 4.263 0 4.893 6.72 4.305 6.72 6.93 0 1.071-.714 1.701-1.89 1.701-1.197 0-2.373-.672-3.255-1.806l-2.163 1.995zM110.003 88h3.171l1.407-3.822h5.88L121.868 88h3.171l-5.565-14.7h-3.906L110.003 88zm5.502-6.363l2.016-5.523 2.016 5.523h-4.032zM127.309 88h2.982V77.437L136.864 88h3.822V73.3h-2.982v10.521L131.131 73.3h-3.822V88zm15.976-11.991h4.536V88h2.982V76.009h4.536V73.3h-12.054v2.709zm20.28-3.969l2.73-2.835h-3.066l-2.373 2.835h2.709zM157.958 88h8.568v-2.541h-5.586v-3.675h4.746v-2.541h-4.746v-3.402h5.586V73.3h-8.568V88zM49.77 128.865c.4 0 .744.303.56 1.07l-1.859.432c.323-.863.86-1.502 1.29-1.502h.009zm1.013 2.991h-.365c-.465.55-.957.982-1.452.982s-.765-.301-.765-.982c.002-.276.03-.55.086-.82l2.982-.982c.58-1.382-.119-1.986-.93-1.986-1.41 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.129 1.436.808 0 1.647-.788 2.324-2.084l.011.007zm-.602-4.345l2.092-1.965v-.233H51.14l-1.29 2.191.33.007zm-6.434 1.38h.99l-1.553 4.308c-.14.366.056.734.433.734.892 0 2.335-.886 2.84-2.098h-.28c-.4.422-1.161.984-1.82 1.103l1.444-4.049h1.475l.184-.616H46.03l.548-1.552h-.57l-1.022 1.552-1.215.173-.023.445zm-1.337-.205a.444.444 0 00-.157-.555.43.43 0 00-.196-.07c-.862 0-1.884.776-2.293 1.865h.309c.279-.399.753-.841 1.194-.918l-1.659 4.305a.433.433 0 00.356.627c.818 0 1.775-.788 2.184-1.865h-.279c-.281.399-.755.842-1.194.916l1.736-4.305zm.303-2.159a.717.717 0 00.657-.438.711.711 0 00-.155-.777.709.709 0 00-1.213.504.703.703 0 00.437.661c.087.035.18.052.274.05zm-9.481 6.607c-.214.487 0 .799.485.799.29 0 .419-.077.537-.389l1.141-3.031c.527-.648 1.615-1.338 2.045-1.338.311 0 .27.259.065.648l-1.733 3.376a.498.498 0 00.43.734c.861 0 1.884-.778 2.293-1.865h-.281c-.28.399-.753.842-1.195.916l1.506-3.053c.175-.323.275-.68.293-1.047a.743.743 0 00-.797-.82c-.744 0-1.497.841-2.389 1.876v-.797c0-.574-.183-1.079-.697-1.079-.323 0-.635.279-.93.678v.109c.558-.032.807.809.41 1.695l-1.183 2.588zm-.021-3.756c.204-.699.097-1.317-.442-1.317-.634 0-.795.485-1.44 1.877v-.798c0-.573-.184-1.079-.698-1.079-.602 0-1.162.933-1.57 1.865h.278c.29-.422.56-.669.776-.669.258 0 .398.399 0 1.284l-1.162 2.59c-.213.487 0 .8.486.8.29 0 .419-.077.537-.39l1.141-3.03c.323-.398.613-.746.98-1.133h1.114zm-6.607-.52c.398 0 .744.303.56 1.07l-1.859.432c.323-.863.862-1.502 1.292-1.502h.007zm1.016 2.991h-.328c-.465.55-.957.982-1.452.982s-.762-.301-.762-.982c0-.276.028-.551.085-.82l2.98-.982c.58-1.382-.119-1.986-.93-1.986-1.408 0-3.02 2.364-3.02 4.429 0 .933.44 1.436 1.128 1.436.807 0 1.648-.788 2.324-2.084l-.025.007zm-7-2.951h.99l-1.57 4.301c-.14.366.053.734.43.734.894 0 2.323-.886 2.841-2.098h-.28c-.398.422-1.163.984-1.818 1.103l1.431-4.04h1.476l.181-.615h-1.424l.548-1.553h-.567l-1.022 1.553-1.215.172v.443zm-5.433 3.368c0-1.326 1.474-3.128 2.303-3.128.17-.002.34.02.505.063l-.86 2.301c-.495.604-1.26 1.338-1.627 1.338-.204 0-.332-.173-.332-.574h.011zm4.518-4.429l-.45-.032-.508.496h-.106c-2.454 0-4.574 2.765-4.574 4.772a.821.821 0 00.235.649.815.815 0 00.646.237c.637 0 1.26-.907 1.959-1.879l-.032.345c-.087.993.216 1.534.732 1.534.601 0 1.161-.933 1.57-1.865h-.279c-.278.406-.548.639-.764.639-.216 0-.386-.411 0-1.285l1.57-3.611zm-5.229 1.567c.205-.699.096-1.317-.441-1.317-.635 0-.797.485-1.443 1.876v-.797c0-.573-.181-1.079-.697-1.079-.602 0-1.162.932-1.571 1.865h.281c.29-.422.558-.669.774-.669.258 0 .397.398 0 1.284l-1.162 2.59c-.216.487 0 .799.483.799a.47.47 0 00.364-.084.487.487 0 00.194-.321l1.14-3.031c.324-.398.614-.745.98-1.132l1.098.016zm-8.23 4.319l.106-.333c-1.431-.27-1.626-.27-1.043-1.837l.581-1.608h1.583c.708 0 .72.291.61 1.07h.41l.948-2.602h-.41c-.355.616-.634 1.068-1.41 1.068H6.062l.827-2.278c.26-.722.41-.874 1.378-.874h.697c1 0 1.118.271 1.118 1.285h.397l.335-1.77H4.868l-.117.334c1.15.233 1.258.347.72 1.837l-1.282 3.538c-.537 1.48-.765 1.599-2.091 1.837l-.098.333h4.246zM35.362 115.373c.398 0 .744.303.56 1.068l-1.858.433c.322-.864.862-1.501 1.291-1.501h.008zm1.016 2.991h-.365c-.465.55-.96.981-1.454.981-.495 0-.763-.303-.763-.981.001-.276.03-.551.086-.821l2.98-.983c.58-1.38-.12-1.986-.93-1.986-1.408 0-3.021 2.363-3.021 4.429 0 .932.441 1.433 1.13 1.433.806 0 1.647-.788 2.323-2.081l.014.009zm-.606-4.35l2.09-1.965v-.233h-1.128l-1.293 2.191.33.007zm-6.435 1.383h.99l-1.571 4.307c-.14.366.053.732.43.732.895 0 2.335-.883 2.842-2.098h-.281c-.398.422-1.162.982-1.817 1.101l1.44-4.047h1.5l.183-.615H31.62l.549-1.555h-.572l-1.022 1.555-1.216.172-.023.448zm-1.334-.206a.443.443 0 00-.355-.627c-.86 0-1.883.779-2.292 1.865h.31c.28-.398.752-.841 1.194-.916l-1.66 4.308a.43.43 0 00.356.625c.818 0 1.775-.788 2.184-1.865h-.28c-.28.401-.754.844-1.195.918l1.738-4.308zm.302-2.158a.712.712 0 00.139-1.413.711.711 0 00-.796.973.716.716 0 00.385.386.708.708 0 00.272.054zm-5.705 6.464l3.003-7.891-.098-.119-1.882.217v.233l.367.28c.332.259.232.508-.077 1.308l-2.344 6.189a.493.493 0 00.43.732c.86 0 1.775-.777 2.184-1.865h-.281a2.407 2.407 0 01-1.302.918v-.002zm-5.702-.732c0-1.329 1.473-3.131 2.303-3.131.17-.002.341.02.506.066l-.862 2.298c-.495.606-1.26 1.338-1.613 1.338-.204 0-.334-.172-.334-.571zm4.529-4.429l-.451-.033-.507.481h-.107c-2.453 0-4.573 2.769-4.573 4.778a.821.821 0 00.236.649.807.807 0 00.647.235c.635 0 1.26-.907 1.96-1.877l-.033.345c-.086.993.214 1.532.73 1.532.604 0 1.161-.933 1.573-1.865h-.282c-.29.422-.56.669-.773.669-.214 0-.388-.41 0-1.285l1.58-3.629zm-10.954 7.159c0-.574.55-.933 1.336-1.243.377.173.765.321 1.162.443.818.27 1.129.378 1.129.627 0 .527-.892.933-2.11.933-1.02 0-1.518-.217-1.518-.756v-.004zm2.228-3.492c-.356 0-.495-.303-.495-.648 0-.961.516-2.376 1.325-2.376.353 0 .495.303.495.648 0 .961-.519 2.376-1.325 2.376zm2.324 2.958c0-.7-.614-.933-1.615-1.243-.86-.258-1.248-.333-1.248-.615 0-.233.183-.497.548-.699a2.509 2.509 0 001.622-.764 2.525 2.525 0 00.702-1.654 1.473 1.473 0 00-.118-.594h1.194l.181-.615h-1.88a1.447 1.447 0 00-.762-.217 2.49 2.49 0 00-1.705.702 2.506 2.506 0 00-.76 1.685 1.402 1.402 0 001.14 1.436c-.697.312-1.087.678-1.087 1.112a.684.684 0 00.29.582c-1.612.467-2.249 1.014-2.249 1.781 0 .767.98 1.084 2.143 1.084 1.968 0 3.615-1.07 3.615-1.965l-.011-.016zm-7.51-4.616c.71 0 .72.292.613 1.068h.409l.946-2.602h-.407c-.356.616-.637 1.07-1.41 1.07H6.103l.785-2.17c.26-.722.41-.865 1.378-.865h.697c1 0 1.118.271 1.118 1.276h.397l.335-1.772H4.868l-.117.336c1.15.233 1.258.345.72 1.834l-1.282 3.541c-.537 1.478-.765 1.597-2.091 1.835l-.098.335h6.611l1.185-1.879h-.453c-.753.714-1.699 1.399-3.02 1.399-1.755 0-1.593-.075-1.012-1.683l.623-1.716 1.58-.007zm.861-4.522l2.092-1.447v-.234H9.204l-1.162 1.674.334.007zM34.663 101.881c.397 0 .744.301.56 1.068l-1.859.431c.323-.862.862-1.499 1.292-1.499h.007zm1.016 2.989h-.368c-.464.552-.957.983-1.452.983s-.762-.303-.762-.983c0-.276.029-.551.086-.821l2.979-.981c.58-1.383-.119-1.986-.93-1.986-1.408 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.129 1.436.806 0 1.647-.788 2.335-2.084l.002.007zm-.595-4.345l2.091-1.966v-.233h-1.13l-1.291 2.192.33.007zm-6.165 1.389h.785l-1.57 4.305c-.14.369.053.735.43.735.892 0 2.323-.886 2.841-2.098h-.281c-.397.419-1.162.981-1.817 1.1l1.44-4.047h1.476l.181-.615h-1.431l.55-1.555h-.571l-1.023 1.555-1.01.172v.448zm-.774.485c.204-.7.095-1.317-.442-1.317-.636 0-.797.485-1.443 1.878v-.799c0-.571-.183-1.079-.697-1.079-.602 0-1.162.932-1.57 1.864h.278c.29-.419.558-.669.774-.669.258 0 .397.399 0 1.285l-1.162 2.59c-.216.487 0 .799.483.799a.483.483 0 00.54-.389l1.14-3.03c.321-.399.614-.744.979-1.133h1.12zm-6.609-.518c.4 0 .744.301.56 1.068l-1.859.431c.323-.862.86-1.499 1.29-1.499h.009zm1.013 2.989h-.346c-.465.552-.957.983-1.452.983s-.765-.303-.765-.983c.001-.276.03-.551.086-.821l2.981-.981c.581-1.383-.118-1.986-.93-1.986-1.41 0-3.02 2.363-3.02 4.429 0 .932.441 1.436 1.13 1.436.808 0 1.647-.788 2.323-2.084l-.007.007zm-7.299 1.202c-.29 0-.71-.27-.71-.508.076-.283.173-.56.29-.83l.485-1.284c.516-.615 1.302-1.275 1.743-1.275.27 0 .465.172.465.573 0 1.166-1.1 3.324-2.282 3.324h.01zm3.381-3.799c0-.874-.323-1.198-.93-1.198-.752 0-1.46.799-2.172 1.769l1.796-4.737-.072-.107-1.884.215v.233l.367.282c.332.258.232.529-.077 1.305l-1.936 5.009c-.13.296-.233.603-.31.917 0 .519.696 1.004 1.333 1.004 1.464 0 3.906-2.643 3.906-4.674l-.02-.018zm-5.832-.553a.443.443 0 00-.356-.627c-.862 0-1.884.777-2.291 1.865h.279c.279-.398.753-.841 1.194-.918l-1.647 4.298a.433.433 0 00.35.616c.818 0 1.776-.788 2.185-1.865h-.28c-.278.396-.743.837-1.189.916l1.755-4.285zm.3-2.16a.709.709 0 00.715-.723.721.721 0 00-.711-.713.706.706 0 00-.655.44.712.712 0 00-.054.273.702.702 0 00.436.66c.087.035.18.052.273.05l-.005.013zm-4.332-.712h-3.92l-.11.336c1.162.233 1.26.345.723 1.835l-1.271 3.55c-.537 1.478-.765 1.597-2.091 1.834l-.098.334h5.967l1.29-2.308h-.45c-.733.809-1.595 1.823-2.917 1.823-1.002 0-1.12-.173-.58-1.683l1.268-3.539c.527-1.48.764-1.599 2.091-1.834l.098-.347z"></path></svg></a>`
  
  
  
  
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
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/apropos](https://onvs.fabrique.social.gouv.fr/apropos)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/sitemap.xml](https://onvs.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/118-2c6fcc35aaf1fbc44b76.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/webpack-4c2c4d862f55dd171611.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/433-eda4e304ba9103060479.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js](https://onvs.fabrique.social.gouv.fr/_next/static/chunks/framework-f91890dc0c986fc2b27d.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=31536000`
  
  
  
  
* URL: [https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css](https://onvs.fabrique.social.gouv.fr/_next/static/css/09fe49654b0aae10345c.css)
  
  
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
