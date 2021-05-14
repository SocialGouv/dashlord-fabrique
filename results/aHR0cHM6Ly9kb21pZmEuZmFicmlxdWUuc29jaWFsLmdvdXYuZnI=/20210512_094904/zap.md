
# ZAP Scanning Report

Generated on Wed, 12 May 2021 09:44:06


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 3 |
| Low | 5 |
| Informational | 5 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| Content Security Policy (CSP) Header Not Set | Medium | 4 | 
| Source Code Disclosure - Java | Medium | 1 | 
| X-Frame-Options Header Not Set | Medium | 4 | 
| Dangerous JS Functions | Low | 3 | 
| Feature Policy Header Not Set | Low | 9 | 
| Incomplete or No Cache-control and Pragma HTTP Header Set | Low | 5 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| X-Content-Type-Options Header Missing | Low | 11 | 
| Base64 Disclosure | Informational | 1 | 
| Information Disclosure - Suspicious Comments | Informational | 4 | 
| Modern Web Application | Informational | 5 | 
| Storable and Cacheable Content | Informational | 11 | 
| Timestamp Disclosure - Unix | Informational | 169 | 

## Alert Detail


  
  
  
  
### Content Security Policy (CSP) Header Not Set
##### Medium (High)
  
  
  
  
#### Description
<p>Content Security Policy (CSP) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross Site Scripting (XSS) and data injection attacks. These attacks are used for everything from data theft to site defacement or distribution of malware. CSP provides a set of standard HTTP headers that allow website owners to declare approved sources of content that browsers should be allowed to load on that page — covered types are JavaScript, CSS, HTML frames, fonts, images and embeddable objects such as Java applets, ActiveX, audio and video files.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
Instances: 4
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `class a{constructor(e,t){this._parent=e,this._name=t?t.name||"unnamed":"<root>",this._properties=t&&t.properties||{},this._zoneDelegate=new l(this,this._parent&&this._parent._zoneDelegate,t)}static assertZonePatched(){if(e.Promise!==P.ZoneAwarePromise)throw new Error("Zone.js has detected that ZoneAwarePromise `(window|global).Promise` has been overwritten.\nMost likely cause is that a Promise polyfill has been loaded after Zone.js (Polyfilling Promise api is not necessary when zone.js is loaded. If you must load one, do so before loading zone.js.)")}static get root(){let e=a.current;for(;e.parent;)e=e.parent;return e}static get current(){return z.zone}static get currentTask(){return j}static __load_patch(t,r,s=!1){if(P.hasOwnProperty(t)){if(!s&&i)throw Error("Already loaded patch: "+t)}else if(!e["__Zone_disable_"+t]){const s="Zone:"+t;n(s),P[t]=r(e,a,C),o(s,s)}}get parent(){return this._parent}get name(){return this._name}get(e){const t=this.getZoneWith(e);if(t)return t._properties[e]}getZoneWith(e){let t=this;for(;t;){if(t._properties.hasOwnProperty(e))return t;t=t._parent}return null}fork(e){if(!e)throw new Error("ZoneSpec required!");return this._zoneDelegate.fork(this,e)}wrap(e,t){if("function"!=typeof e)throw new Error("Expecting function got: "+e);const n=this._zoneDelegate.intercept(this,e,t),o=this;return function(){return o.runGuarded(n,this,arguments,t)}}run(e,t,n,o){z={parent:z,zone:this};try{return this._zoneDelegate.invoke(this,e,t,n,o)}finally{z=z.parent}}runGuarded(e,t=null,n,o){z={parent:z,zone:this};try{try{return this._zoneDelegate.invoke(this,e,t,n,o)}catch(r){if(this._zoneDelegate.handleError(this,r))throw r}}finally{z=z.parent}}runTask(e,t,n){if(e.zone!=this)throw new Error("A task can only be run in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");if(e.state===v&&(e.type===O||e.type===D))return;const o=e.state!=w;o&&e._transitionTo(w,T),e.runCount++;const r=j;j=e,z={parent:z,zone:this};try{e.type==D&&e.data&&!e.data.isPeriodic&&(e.cancelFn=void 0);try{return this._zoneDelegate.invokeTask(this,e,t,n)}catch(s){if(this._zoneDelegate.handleError(this,s))throw s}}finally{e.state!==v&&e.state!==S&&(e.type==O||e.data&&e.data.isPeriodic?o&&e._transitionTo(T,w):(e.runCount=0,this._updateTaskCount(e,-1),o&&e._transitionTo(v,w,v))),z=z.parent,j=r}}scheduleTask(e){if(e.zone&&e.zone!==this){let t=this;for(;t;){if(t===e.zone)throw Error(`can not reschedule task to ${this.name} which is descendants of the original zone ${e.zone.name}`);t=t.parent}}e._transitionTo(b,v);const t=[];e._zoneDelegates=t,e._zone=this;try{e=this._zoneDelegate.scheduleTask(this,e)}catch(n){throw e._transitionTo(S,b,v),this._zoneDelegate.handleError(this,n),n}return e._zoneDelegates===t&&this._updateTaskCount(e,1),e.state==b&&e._transitionTo(T,b),e}scheduleMicroTask(e,t,n,o){return this.scheduleTask(new u(Z,e,t,n,o,void 0))}scheduleMacroTask(e,t,n,o,r){return this.scheduleTask(new u(D,e,t,n,o,r))}scheduleEventTask(e,t,n,o,r){return this.scheduleTask(new u(O,e,t,n,o,r))}cancelTask(e){if(e.zone!=this)throw new Error("A task can only be cancelled in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");e._transitionTo(E,T,w);try{this._zoneDelegate.cancelTask(this,e)}catch(t){throw e._transitionTo(S,E),this._zoneDelegate.handleError(this,t),t}return this._updateTaskCount(e,-1),e._transitionTo(v,E),e.runCount=0,e}_updateTaskCount(e,t){const n=e._zoneDelegates;-1==t&&(e._zoneDelegates=null);for(let o=0;o<n.length;o++)n[o]._updateTaskCount(e.type,t)}}a.__symbol__=s;const c={name:"",onHasTask:(e,t,n,o)=>e.hasTask(n,o),onScheduleTask:(e,t,n,o)=>e.scheduleTask(n,o),onInvokeTask:(e,t,n,o,r,s)=>e.invokeTask(n,o,r,s),onCancelTask:(e,t,n,o)=>e.cancelTask(n,o)};class l{constructor(e,t,n){this._taskCounts={microTask:0,macroTask:0,eventTask:0},this.zone=e,this._parentDelegate=t,this._forkZS=n&&(n&&n.onFork?n:t._forkZS),this._forkDlgt=n&&(n.onFork?t:t._forkDlgt),this._forkCurrZone=n&&(n.onFork?this.zone:t._forkCurrZone),this._interceptZS=n&&(n.onIntercept?n:t._interceptZS),this._interceptDlgt=n&&(n.onIntercept?t:t._interceptDlgt),this._interceptCurrZone=n&&(n.onIntercept?this.zone:t._interceptCurrZone),this._invokeZS=n&&(n.onInvoke?n:t._invokeZS),this._invokeDlgt=n&&(n.onInvoke?t:t._invokeDlgt),this._invokeCurrZone=n&&(n.onInvoke?this.zone:t._invokeCurrZone),this._handleErrorZS=n&&(n.onHandleError?n:t._handleErrorZS),this._handleErrorDlgt=n&&(n.onHandleError?t:t._handleErrorDlgt),this._handleErrorCurrZone=n&&(n.onHandleError?this.zone:t._handleErrorCurrZone),this._scheduleTaskZS=n&&(n.onScheduleTask?n:t._scheduleTaskZS),this._scheduleTaskDlgt=n&&(n.onScheduleTask?t:t._scheduleTaskDlgt),this._scheduleTaskCurrZone=n&&(n.onScheduleTask?this.zone:t._scheduleTaskCurrZone),this._invokeTaskZS=n&&(n.onInvokeTask?n:t._invokeTaskZS),this._invokeTaskDlgt=n&&(n.onInvokeTask?t:t._invokeTaskDlgt),this._invokeTaskCurrZone=n&&(n.onInvokeTask?this.zone:t._invokeTaskCurrZone),this._cancelTaskZS=n&&(n.onCancelTask?n:t._cancelTaskZS),this._cancelTaskDlgt=n&&(n.onCancelTask?t:t._cancelTaskDlgt),this._cancelTaskCurrZone=n&&(n.onCancelTask?this.zone:t._cancelTaskCurrZone),this._hasTaskZS=null,this._hasTaskDlgt=null,this._hasTaskDlgtOwner=null,this._hasTaskCurrZone=null;const o=n&&n.onHasTask;(o||t&&t._hasTaskZS)&&(this._hasTaskZS=o?n:c,this._hasTaskDlgt=t,this._hasTaskDlgtOwner=this,this._hasTaskCurrZone=e,n.onScheduleTask||(this._scheduleTaskZS=c,this._scheduleTaskDlgt=t,this._scheduleTaskCurrZone=this.zone),n.onInvokeTask||(this._invokeTaskZS=c,this._invokeTaskDlgt=t,this._invokeTaskCurrZone=this.zone),n.onCancelTask||(this._cancelTaskZS=c,this._cancelTaskDlgt=t,this._cancelTaskCurrZone=this.zone))}fork(e,t){return this._forkZS?this._forkZS.onFork(this._forkDlgt,this.zone,e,t):new a(e,t)}intercept(e,t,n){return this._interceptZS?this._interceptZS.onIntercept(this._interceptDlgt,this._interceptCurrZone,e,t,n):t}invoke(e,t,n,o,r){return this._invokeZS?this._invokeZS.onInvoke(this._invokeDlgt,this._invokeCurrZone,e,t,n,o,r):t.apply(n,o)}handleError(e,t){return!this._handleErrorZS||this._handleErrorZS.onHandleError(this._handleErrorDlgt,this._handleErrorCurrZone,e,t)}scheduleTask(e,t){let n=t;if(this._scheduleTaskZS)this._hasTaskZS&&n._zoneDelegates.push(this._hasTaskDlgtOwner),n=this._scheduleTaskZS.onScheduleTask(this._scheduleTaskDlgt,this._scheduleTaskCurrZone,e,t),n||(n=t);else if(t.scheduleFn)t.scheduleFn(t);else{if(t.type!=Z)throw new Error("Task is missing scheduleFn.");y(t)}return n}invokeTask(e,t,n,o){return this._invokeTaskZS?this._invokeTaskZS.onInvokeTask(this._invokeTaskDlgt,this._invokeTaskCurrZone,e,t,n,o):t.callback.apply(n,o)}cancelTask(e,t){let n;if(this._cancelTaskZS)n=this._cancelTaskZS.onCancelTask(this._cancelTaskDlgt,this._cancelTaskCurrZone,e,t);else{if(!t.cancelFn)throw Error("Task is not cancelable");n=t.cancelFn(t)}return n}hasTask(e,t){try{this._hasTaskZS&&this._hasTaskZS.onHasTask(this._hasTaskDlgt,this._hasTaskCurrZone,e,t)}catch(n){this.handleError(e,n)}}_updateTaskCount(e,t){const n=this._taskCounts,o=n[e],r=n[e]=o+t;if(r<0)throw new Error("More tasks executed then were scheduled.");0!=o&&0!=r||this.hasTask(this.zone,{microTask:n.microTask>0,macroTask:n.macroTask>0,eventTask:n.eventTask>0,change:e})}}class u{constructor(t,n,o,r,s,i){if(this._zone=null,this.runCount=0,this._zoneDelegates=null,this._state="notScheduled",this.type=t,this.source=n,this.data=r,this.scheduleFn=s,this.cancelFn=i,!o)throw new Error("callback is not defined");this.callback=o;const a=this;this.invoke=t===O&&r&&r.useG?u.invokeTask:function(){return u.invokeTask.call(e,a,this,arguments)}}static invokeTask(e,t,n){e||(e=this),I++;try{return e.runCount++,e.zone.runTask(e,t,n)}finally{1==I&&_(),I--}}get zone(){return this._zone}get state(){return this._state}cancelScheduleRequest(){this._transitionTo(v,b)}_transitionTo(e,t,n){if(this._state!==t&&this._state!==n)throw new Error(`${this.type} '${this.source}': can not transition to '${e}', expecting state '${t}'${n?" or '"+n+"'":""}, was '${this._state}'.`);this._state=e,e==v&&(this._zoneDelegates=null)}toString(){return this.data&&void 0!==this.data.handleId?this.data.handleId.toString():Object.prototype.toString.call(this)}toJSON(){return{type:this.type,state:this.state,source:this.source,zone:this.zone.name,runCount:this.runCount}}}const h=s("setTimeout"),p=s("Promise"),f=s("then");let d,g=[],m=!1;function y(t){if(0===I&&0===g.length)if(d||e[p]&&(d=e[p].resolve(0)),d){let e=d[f];e||(e=d.then),e.call(d,_)}else e[h](_,0);t&&g.push(t)}function _(){if(!m){for(m=!0;g.length;){const t=g;g=[];for(let n=0;n<t.length;n++){const o=t[n];try{o.zone.runTask(o,null,null)}catch(e){C.onUnhandledError(e)}}}C.microtaskDrainDone(),m=!1}}const k={name:"NO ZONE"},v="notScheduled",b="scheduling",T="scheduled",w="running",E="canceling",S="unknown",Z="microTask",D="macroTask",O="eventTask",P={},C={symbol:s,currentZoneFrame:()=>z,onUnhandledError:R,microtaskDrainDone:R,scheduleMicroTask:y,showUncaughtError:()=>!a[s("ignoreConsoleErrorUncaughtError")],patchEventTarget:()=>[],patchOnProperties:R,patchMethod:()=>R,bindArguments:()=>[],patchThen:()=>R,patchMacroTask:()=>R,patchEventPrototype:()=>R,isIEOrEdge:()=>!1,getGlobalObjects:()=>{},ObjectDefineProperty:()=>R,ObjectGetOwnPropertyDescriptor:()=>{},ObjectCreate:()=>{},ArraySlice:()=>[],patchClass:()=>R,wrapWithCurrentZone:()=>R,filterProperties:()=>[],attachOriginToPatched:()=>R,_redefineProperty:()=>R,patchCallbacks:()=>R};let z={parent:null,zone:new a(null,null)},j=null,I=0;function R(){}o("Zone","Zone"),e.Zone=a}("undefined"!=typeof window&&window||"undefined"!=typeof self&&self||global);const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=Object.getPrototypeOf,i=Object.create,a=Array.prototype.slice,c=Zone.__symbol__("addEventListener"),l=Zone.__symbol__("removeEventListener"),u=Zone.__symbol__("");function h(e,t){return Zone.current.wrap(e,t)}function p(e,t,n,o,r){return Zone.current.scheduleMacroTask(e,t,n,o,r)}const f=Zone.__symbol__,d="undefined"!=typeof window,g=d?window:void 0,m=d&&g||"object"==typeof self&&self||global,y=[null];function _(e,t){for(let n=e.length-1;n>=0;n--)"function"==typeof e[n]&&(e[n]=h(e[n],t+"_"+n));return e}function k(e){return!e||!1!==e.writable&&!("function"==typeof e.get&&void 0===e.set)}const v="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope,b=!("nw"in m)&&void 0!==m.process&&"[object process]"==={}.toString.call(m.process),T=!b&&!v&&!(!d||!g.HTMLElement),w=void 0!==m.process&&"[object process]"==={}.toString.call(m.process)&&!v&&!(!d||!g.HTMLElement),E={},S=function(e){if(!(e=e||m.event))return;let t=E[e.type];t||(t=E[e.type]=f("ON_PROPERTY"+e.type));const n=this||e.target||m,o=n[t];let r;if(T&&n===g&&"error"===e.type){const t=e;r=o&&o.call(this,t.message,t.filename,t.lineno,t.colno,t.error),!0===r&&e.preventDefault()}else r=o&&o.apply(this,arguments),null==r||r||e.preventDefault();return r};function Z(e,t,n){let s=o(e,t);if(!s&&n&&o(n,t)&&(s={enumerable:!0,configurable:!0}),!s||!s.configurable)return;const i=f("on"+t+"patched");if(e.hasOwnProperty(i)&&e[i])return;delete s.writable,delete s.value;const a=s.get,c=s.set,l=t.substr(2);let u=E[l];u||(u=E[l]=f("ON_PROPERTY"+l)),s.set=function(t){let n=this;n||e!==m||(n=m),n&&(n[u]&&n.removeEventListener(l,S),c&&c.apply(n,y),"function"==typeof t?(n[u]=t,n.addEventListener(l,S,!1)):n[u]=null)},s.get=function(){let n=this;if(n||e!==m||(n=m),!n)return null;const o=n[u];if(o)return o;if(a){let e=a&&a.call(this);if(e)return s.set.call(this,e),"function"==typeof n.removeAttribute&&n.removeAttribute(t),e}return null},r(e,t,s),e[i]=!0}function D(e,t,n){if(t)for(let o=0;o<t.length;o++)Z(e,"on"+t[o],n);else{const t=[];for(const n in e)"on"==n.substr(0,2)&&t.push(n);for(let o=0;o<t.length;o++)Z(e,t[o],n)}}const O=f("originalInstance");function P(e){const t=m[e];if(!t)return;m[f(e)]=t,m[e]=function(){const n=_(arguments,e);switch(n.length){case 0:this[O]=new t;break;case 1:this[O]=new t(n[0]);break;case 2:this[O]=new t(n[0],n[1]);break;case 3:this[O]=new t(n[0],n[1],n[2]);break;case 4:this[O]=new t(n[0],n[1],n[2],n[3]);break;default:throw new Error("Arg list too long.")}},j(m[e],t);const n=new t((function(){}));let o;for(o in n)"XMLHttpRequest"===e&&"responseBlob"===o||function(t){"function"==typeof n[t]?m[e].prototype[t]=function(){return this[O][t].apply(this[O],arguments)}:r(m[e].prototype,t,{set:function(n){"function"==typeof n?(this[O][t]=h(n,e+"."+t),j(this[O][t],n)):this[O][t]=n},get:function(){return this[O][t]}})}(o);for(o in t)"prototype"!==o&&t.hasOwnProperty(o)&&(m[e][o]=t[o])}function C(e,t,n){let r=e;for(;r&&!r.hasOwnProperty(t);)r=s(r);!r&&e[t]&&(r=e);const i=f(t);let a=null;if(r&&(!(a=r[i])||!r.hasOwnProperty(i))&&(a=r[i]=r[t],k(r&&o(r,t)))){const e=n(a,i,t);r[t]=function(){return e(this,arguments)},j(r[t],a)}return a}function z(e,t,n){let o=null;function r(e){const t=e.data;return t.args[t.cbIdx]=function(){e.invoke.apply(this,arguments)},o.apply(t.target,t.args),e}o=C(e,t,e=>function(t,o){const s=n(t,o);return s.cbIdx>=0&&"function"==typeof o[s.cbIdx]?p(s.name,o[s.cbIdx],s,r):e.apply(t,o)})}function j(e,t){e[f("OriginalDelegate")]=t}let I=!1,R=!1;function L(){try{const e=g.navigator.userAgent;if(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/"))return!0}catch(e){}return!1}function M(){if(I)return R;I=!0;try{const e=g.navigator.userAgent;-1===e.indexOf("MSIE ")&&-1===e.indexOf("Trident/")&&-1===e.indexOf("Edge/")||(R=!0)}catch(e){}return R}Zone.__load_patch("ZoneAwarePromise",(e,t,n)=>{const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=n.symbol,i=[],a=!0===e[s("DISABLE_WRAPPING_UNCAUGHT_PROMISE_REJECTION")],c=s("Promise"),l=s("then");n.onUnhandledError=e=>{if(n.showUncaughtError()){const t=e&&e.rejection;t?console.error("Unhandled Promise rejection:",t instanceof Error?t.message:t,"; Zone:",e.zone.name,"; Task:",e.task&&e.task.source,"; Value:",t,t instanceof Error?t.stack:void 0):console.error(e)}},n.microtaskDrainDone=()=>{for(;i.length;){const t=i.shift();try{t.zone.runGuarded(()=>{if(t.throwOriginal)throw t.rejection;throw t})}catch(e){h(e)}}};const u=s("unhandledPromiseRejectionHandler");function h(e){n.onUnhandledError(e);try{const n=t[u];"function"==typeof n&&n.call(this,e)}catch(o){}}function p(e){return e&&e.then}function f(e){return e}function d(e){return D.reject(e)}const g=s("state"),m=s("value"),y=s("finally"),_=s("parentPromiseValue"),k=s("parentPromiseState");function v(e,t){return n=>{try{T(e,t,n)}catch(o){T(e,!1,o)}}}const b=s("currentTaskTrace");function T(e,o,s){const c=function(){let e=!1;return function(t){return function(){e||(e=!0,t.apply(null,arguments))}}}();if(e===s)throw new TypeError("Promise resolved with itself");if(null===e[g]){let h=null;try{"object"!=typeof s&&"function"!=typeof s||(h=s&&s.then)}catch(u){return c(()=>{T(e,!1,u)})(),e}if(!1!==o&&s instanceof D&&s.hasOwnProperty(g)&&s.hasOwnProperty(m)&&null!==s[g])E(s),T(e,s[g],s[m]);else if(!1!==o&&"function"==typeof h)try{h.call(s,c(v(e,o)),c(v(e,!1)))}catch(u){c(()=>{T(e,!1,u)})()}else{e[g]=o;const c=e[m];if(e[m]=s,e[y]===y&&!0===o&&(e[g]=e[k],e[m]=e[_]),!1===o&&s instanceof Error){const e=t.currentTask&&t.currentTask.data&&t.currentTask.data.__creationTrace__;e&&r(s,b,{configurable:!0,enumerable:!1,writable:!0,value:e})}for(let t=0;t<c.length;)S(e,c[t++],c[t++],c[t++],c[t++]);if(0==c.length&&0==o){e[g]=0;let o=s;try{throw new Error("Uncaught (in promise): "+((l=s)&&l.toString===Object.prototype.toString?(l.constructor&&l.constructor.name||"")+": "+JSON.stringify(l):l?l.toString():Object.prototype.toString.call(l))+(s&&s.stack?"\n"+s.stack:""))}catch(u){o=u}a&&(o.throwOriginal=!0),o.rejection=s,o.promise=e,o.zone=t.current,o.task=t.currentTask,i.push(o),n.scheduleMicroTask()}}}var l;return e}const w=s("rejectionHandledHandler");function E(e){if(0===e[g]){try{const n=t[w];n&&"function"==typeof n&&n.call(this,{rejection:e[m],promise:e})}catch(n){}e[g]=!1;for(let t=0;t<i.length;t++)e===i[t].promise&&i.splice(t,1)}}function S(e,t,n,o,r){E(e);const s=e[g],i=s?"function"==typeof o?o:f:"function"==typeof r?r:d;t.scheduleMicroTask("Promise.then",()=>{try{const o=e[m],r=!!n&&y===n[y];r&&(n[_]=o,n[k]=s);const a=t.run(i,void 0,r&&i!==d&&i!==f?[]:[o]);T(n,!0,a)}catch(o){T(n,!1,o)}},n)}const Z=function(){};class D{static toString(){return"function ZoneAwarePromise() { [native code] }"}static resolve(e){return T(new this(null),!0,e)}static reject(e){return T(new this(null),!1,e)}static race(e){let t,n,o=new this((e,o)=>{t=e,n=o});function r(e){t(e)}function s(e){n(e)}for(let i of e)p(i)||(i=this.resolve(i)),i.then(r,s);return o}static all(e){return D.allWithCallback(e)}static allSettled(e){return(this&&this.prototype instanceof D?this:D).allWithCallback(e,{thenCallback:e=>({status:"fulfilled",value:e}),errorCallback:e=>({status:"rejected",reason:e})})}static allWithCallback(e,t){let n,o,r=new this((e,t)=>{n=e,o=t}),s=2,i=0;const a=[];for(let l of e){p(l)||(l=this.resolve(l));const e=i;try{l.then(o=>{a[e]=t?t.thenCallback(o):o,s--,0===s&&n(a)},r=>{t?(a[e]=t.errorCallback(r),s--,0===s&&n(a)):o(r)})}catch(c){o(c)}s++,i++}return s-=2,0===s&&n(a),r}constructor(e){const t=this;if(!(t instanceof D))throw new Error("Must be an instanceof Promise.");t[g]=null,t[m]=[];try{e&&e(v(t,!0),v(t,!1))}catch(n){T(t,!1,n)}}get[Symbol.toStringTag](){return"Promise"}get[Symbol.species](){return D}then(e,n){let o=this.constructor[Symbol.species];o&&"function"==typeof o||(o=this.constructor||D);const r=new o(Z),s=t.current;return null==this[g]?this[m].push(s,r,e,n):S(this,s,r,e,n),r}catch(e){return this.then(null,e)}finally(e){let n=this.constructor[Symbol.species];n&&"function"==typeof n||(n=D);const o=new n(Z);o[y]=y;const r=t.current;return null==this[g]?this[m].push(r,o,e,e):S(this,r,o,e,e),o}}D.resolve=D.resolve,D.reject=D.reject,D.race=D.race,D.all=D.all;const O=e[c]=e.Promise;e.Promise=D;const P=s("thenPatched");function z(e){const t=e.prototype,n=o(t,"then");if(n&&(!1===n.writable||!n.configurable))return;const r=t.then;t[l]=r,e.prototype.then=function(e,t){return new D((e,t)=>{r.call(this,e,t)}).then(e,t)},e[P]=!0}return n.patchThen=z,O&&(z(O),C(e,"fetch",e=>{return t=e,function(e,n){let o=t.apply(e,n);if(o instanceof D)return o;let r=o.constructor;return r[P]||z(r),o};var t})),Promise[t.__symbol__("uncaughtPromiseErrors")]=i,D}),Zone.__load_patch("toString",e=>{const t=Function.prototype.toString,n=f("OriginalDelegate"),o=f("Promise"),r=f("Error"),s=function(){if("function"==typeof this){const s=this[n];if(s)return"function"==typeof s?t.call(s):Object.prototype.toString.call(s);if(this===Promise){const n=e[o];if(n)return t.call(n)}if(this===Error){const n=e[r];if(n)return t.call(n)}}return t.call(this)};s[n]=t,Function.prototype.toString=s;const i=Object.prototype.toString;Object.prototype.toString=function(){return"function"==typeof Promise&&this instanceof Promise?"[object Promise]":i.call(this)}});let x=!1;if("undefined"!=typeof window)try{const e=Object.defineProperty({},"passive",{get:function(){x=!0}});window.addEventListener("test",e,e),window.removeEventListener("test",e,e)}catch(ue){x=!1}const N={useG:!0},A={},H={},F=new RegExp("^"+u+"(\\w+)(true|false)$"),B=f("propagationStopped");function X(e,t){const n=(t?t(e):e)+"false",o=(t?t(e):e)+"true",r=u+n,s=u+o;A[e]={},A[e].false=r,A[e].true=s}function G(e,t,n){const o=n&&n.add||"addEventListener",r=n&&n.rm||"removeEventListener",i=n&&n.listeners||"eventListeners",a=n&&n.rmAll||"removeAllListeners",c=f(o),l="."+o+":",h=function(e,t,n){if(e.isRemoved)return;const o=e.callback;"object"==typeof o&&o.handleEvent&&(e.callback=e=>o.handleEvent(e),e.originalDelegate=o),e.invoke(e,t,[n]);const s=e.options;s&&"object"==typeof s&&s.once&&t[r].call(t,n.type,e.originalDelegate?e.originalDelegate:e.callback,s)},p=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type].false];if(o)if(1===o.length)h(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)h(e[o],n,t)}},d=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type].true];if(o)if(1===o.length)h(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)h(e[o],n,t)}};function g(t,n){if(!t)return!1;let h=!0;n&&void 0!==n.useG&&(h=n.useG);const g=n&&n.vh;let m=!0;n&&void 0!==n.chkDup&&(m=n.chkDup);let y=!1;n&&void 0!==n.rt&&(y=n.rt);let _=t;for(;_&&!_.hasOwnProperty(o);)_=s(_);if(!_&&t[o]&&(_=t),!_)return!1;if(_[c])return!1;const k=n&&n.eventNameToString,v={},T=_[c]=_[o],w=_[f(r)]=_[r],E=_[f(i)]=_[i],S=_[f(a)]=_[a];let Z;function D(e,t){return!x&&"object"==typeof e&&e?!!e.capture:x&&t?"boolean"==typeof e?{capture:e,passive:!0}:e?"object"==typeof e&&!1!==e.passive?Object.assign(Object.assign({},e),{passive:!0}):e:{passive:!0}:e}n&&n.prepend&&(Z=_[f(n.prepend)]=_[n.prepend]);const O=h?function(e){if(!v.isExisting)return T.call(v.target,v.eventName,v.capture?d:p,v.options)}:function(e){return T.call(v.target,v.eventName,e.invoke,v.options)},P=h?function(e){if(!e.isRemoved){const t=A[e.eventName];let n;t&&(n=t[e.capture?"true":"false"]);const o=n&&e.target[n];if(o)for(let r=0;r<o.length;r++)if(o[r]===e){o.splice(r,1),e.isRemoved=!0,0===o.length&&(e.allRemoved=!0,e.target[n]=null);break}}if(e.allRemoved)return w.call(e.target,e.eventName,e.capture?d:p,e.options)}:function(e){return w.call(e.target,e.eventName,e.invoke,e.options)},C=n&&n.diff?n.diff:function(e,t){const n=typeof t;return"function"===n&&e.callback===t||"object"===n&&e.originalDelegate===t},z=Zone[f("UNPATCHED_EVENTS")],I=e[f("PASSIVE_EVENTS")],R=function(t,o,r,s,i=!1,a=!1){return function(){const c=this||e;let l=arguments[0];n&&n.transferEventName&&(l=n.transferEventName(l));let u=arguments[1];if(!u)return t.apply(this,arguments);if(b&&"uncaughtException"===l)return t.apply(this,arguments);let p=!1;if("function"!=typeof u){if(!u.handleEvent)return t.apply(this,arguments);p=!0}if(g&&!g(t,u,c,arguments))return;const f=x&&!!I&&-1!==I.indexOf(l),d=D(arguments[2],f);if(z)for(let e=0;e<z.length;e++)if(l===z[e])return f?t.call(c,l,u,d):t.apply(this,arguments);const y=!!d&&("boolean"==typeof d||d.capture),_=!(!d||"object"!=typeof d)&&d.once,T=Zone.current;let w=A[l];w||(X(l,k),w=A[l]);const E=w[y?"true":"false"];let S,Z=c[E],O=!1;if(Z){if(O=!0,m)for(let e=0;e<Z.length;e++)if(C(Z[e],u))return}else Z=c[E]=[];const P=c.constructor.name,j=H[P];j&&(S=j[l]),S||(S=P+o+(k?k(l):l)),v.options=d,_&&(v.options.once=!1),v.target=c,v.capture=y,v.eventName=l,v.isExisting=O;const R=h?N:void 0;R&&(R.taskData=v);const L=T.scheduleEventTask(S,u,R,r,s);return v.target=null,R&&(R.taskData=null),_&&(d.once=!0),(x||"boolean"!=typeof L.options)&&(L.options=d),L.target=c,L.capture=y,L.eventName=l,p&&(L.originalDelegate=u),a?Z.unshift(L):Z.push(L),i?c:void 0}};return _[o]=R(T,l,O,P,y),Z&&(_.prependListener=R(Z,".prependListener:",(function(e){return Z.call(v.target,v.eventName,e.invoke,v.options)}),P,y,!0)),_[r]=function(){const t=this||e;let o=arguments[0];n&&n.transferEventName&&(o=n.transferEventName(o));const r=arguments[2],s=!!r&&("boolean"==typeof r||r.capture),i=arguments[1];if(!i)return w.apply(this,arguments);if(g&&!g(w,i,t,arguments))return;const a=A[o];let c;a&&(c=a[s?"true":"false"]);const l=c&&t[c];if(l)for(let e=0;e<l.length;e++){const n=l[e];if(C(n,i))return l.splice(e,1),n.isRemoved=!0,0===l.length&&(n.allRemoved=!0,t[c]=null,"string"==typeof o)&&(t[u+"ON_PROPERTY"+o]=null),n.zone.cancelTask(n),y?t:void 0}return w.apply(this,arguments)},_[i]=function(){const t=this||e;let o=arguments[0];n&&n.transferEventName&&(o=n.transferEventName(o));const r=[],s=q(t,k?k(o):o);for(let e=0;e<s.length;e++){const t=s[e];r.push(t.originalDelegate?t.originalDelegate:t.callback)}return r},_[a]=function(){const t=this||e;let o=arguments[0];if(o){n&&n.transferEventName&&(o=n.transferEventName(o));const e=A[o];if(e){const n=t[e.false],s=t[e.true];if(n){const e=n.slice();for(let t=0;t<e.length;t++){const n=e[t];this[r].call(this,o,n.originalDelegate?n.originalDelegate:n.callback,n.options)}}if(s){const e=s.slice();for(let t=0;t<e.length;t++){const n=e[t];this[r].call(this,o,n.originalDelegate?n.originalDelegate:n.callback,n.options)}}}}else{const e=Object.keys(t);for(let t=0;t<e.length;t++){const n=F.exec(e[t]);let o=n&&n[1];o&&"removeListener"!==o&&this[a].call(this,o)}this[a].call(this,"removeListener")}if(y)return this},j(_[o],T),j(_[r],w),S&&j(_[a],S),E&&j(_[i],E),!0}let m=[];for(let s=0;s<t.length;s++)m[s]=g(t[s],n);return m}function q(e,t){if(!t){const n=[];for(let o in e){const r=F.exec(o);let s=r&&r[1];if(s&&(!t||s===t)){const t=e[o];if(t)for(let e=0;e<t.length;e++)n.push(t[e])}}return n}let n=A[t];n||(X(t),n=A[t]);const o=e[n.false],r=e[n.true];return o?r?o.concat(r):o.slice():r?r.slice():[]}function W(e,t){const n=e.Event;n&&n.prototype&&t.patchMethod(n.prototype,"stopImmediatePropagation",e=>function(t,n){t[B]=!0,e&&e.apply(t,n)})}function Y(e,t,n,o,r){const s=Zone.__symbol__(o);if(t[s])return;const i=t[s]=t[o];t[o]=function(s,a,c){return a&&a.prototype&&r.forEach((function(t){const r=`${n}.${o}::`+t,s=a.prototype;if(s.hasOwnProperty(t)){const n=e.ObjectGetOwnPropertyDescriptor(s,t);n&&n.value?(n.value=e.wrapWithCurrentZone(n.value,r),e._redefineProperty(a.prototype,t,n)):s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}else s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))})),i.call(t,s,a,c)},e.attachOriginToPatched(t[o],i)}const U=["absolutedeviceorientation","afterinput","afterprint","appinstalled","beforeinstallprompt","beforeprint","beforeunload","devicelight","devicemotion","deviceorientation","deviceorientationabsolute","deviceproximity","hashchange","languagechange","message","mozbeforepaint","offline","online","paint","pageshow","pagehide","popstate","rejectionhandled","storage","unhandledrejection","unload","userproximity","vrdisplayconnected","vrdisplaydisconnected","vrdisplaypresentchange"],V=["encrypted","waitingforkey","msneedkey","mozinterruptbegin","mozinterruptend"],$=["load"],J=["blur","error","focus","load","resize","scroll","messageerror"],K=["bounce","finish","start"],Q=["loadstart","progress","abort","error","load","progress","timeout","loadend","readystatechange"],ee=["upgradeneeded","complete","abort","success","error","blocked","versionchange","close"],te=["close","error","open","message"],ne=["error","message"],oe=["abort","animationcancel","animationend","animationiteration","auxclick","beforeinput","blur","cancel","canplay","canplaythrough","change","compositionstart","compositionupdate","compositionend","cuechange","click","close","contextmenu","curechange","dblclick","drag","dragend","dragenter","dragexit","dragleave","dragover","drop","durationchange","emptied","ended","error","focus","focusin","focusout","gotpointercapture","input","invalid","keydown","keypress","keyup","load","loadstart","loadeddata","loadedmetadata","lostpointercapture","mousedown","mouseenter","mouseleave","mousemove","mouseout","mouseover","mouseup","mousewheel","orientationchange","pause","play","playing","pointercancel","pointerdown","pointerenter","pointerleave","pointerlockchange","mozpointerlockchange","webkitpointerlockerchange","pointerlockerror","mozpointerlockerror","webkitpointerlockerror","pointermove","pointout","pointerover","pointerup","progress","ratechange","reset","resize","scroll","seeked","seeking","select","selectionchange","selectstart","show","sort","stalled","submit","suspend","timeupdate","volumechange","touchcancel","touchmove","touchstart","touchend","transitioncancel","transitionend","waiting","wheel"].concat(["webglcontextrestored","webglcontextlost","webglcontextcreationerror"],["autocomplete","autocompleteerror"],["toggle"],["afterscriptexecute","beforescriptexecute","DOMContentLoaded","freeze","fullscreenchange","mozfullscreenchange","webkitfullscreenchange","msfullscreenchange","fullscreenerror","mozfullscreenerror","webkitfullscreenerror","msfullscreenerror","readystatechange","visibilitychange","resume"],U,["beforecopy","beforecut","beforepaste","copy","cut","paste","dragstart","loadend","animationstart","search","transitionrun","transitionstart","webkitanimationend","webkitanimationiteration","webkitanimationstart","webkittransitionend"],["activate","afterupdate","ariarequest","beforeactivate","beforedeactivate","beforeeditfocus","beforeupdate","cellchange","controlselect","dataavailable","datasetchanged","datasetcomplete","errorupdate","filterchange","layoutcomplete","losecapture","move","moveend","movestart","propertychange","resizeend","resizestart","rowenter","rowexit","rowsdelete","rowsinserted","command","compassneedscalibration","deactivate","help","mscontentzoom","msmanipulationstatechanged","msgesturechange","msgesturedoubletap","msgestureend","msgesturehold","msgesturestart","msgesturetap","msgotpointercapture","msinertiastart","mslostpointercapture","mspointercancel","mspointerdown","mspointerenter","mspointerhover","mspointerleave","mspointermove","mspointerout","mspointerover","mspointerup","pointerout","mssitemodejumplistitemremoved","msthumbnailclick","stop","storagecommit"]);function re(e,t,n){if(!n||0===n.length)return t;const o=n.filter(t=>t.target===e);if(!o||0===o.length)return t;const r=o[0].ignoreProperties;return t.filter(e=>-1===r.indexOf(e))}function se(e,t,n,o){e&&D(e,re(e,t,n),o)}function ie(e,t){if(b&&!w)return;if(Zone[e.symbol("patchEvents")])return;const n="undefined"!=typeof WebSocket,o=t.__Zone_ignore_on_properties;if(T){const e=window,t=L()?[{target:e,ignoreProperties:["error"]}]:[];se(e,oe.concat(["messageerror"]),o?o.concat(t):o,s(e)),se(Document.prototype,oe,o),void 0!==e.SVGElement&&se(e.SVGElement.prototype,oe,o),se(Element.prototype,oe,o),se(HTMLElement.prototype,oe,o),se(HTMLMediaElement.prototype,V,o),se(HTMLFrameSetElement.prototype,U.concat(J),o),se(HTMLBodyElement.prototype,U.concat(J),o),se(HTMLFrameElement.prototype,$,o),se(HTMLIFrameElement.prototype,$,o);const n=e.HTMLMarqueeElement;n&&se(n.prototype,K,o);const r=e.Worker;r&&se(r.prototype,ne,o)}const r=t.XMLHttpRequest;r&&se(r.prototype,Q,o);const i=t.XMLHttpRequestEventTarget;i&&se(i&&i.prototype,Q,o),"undefined"!=typeof IDBIndex&&(se(IDBIndex.prototype,ee,o),se(IDBRequest.prototype,ee,o),se(IDBOpenDBRequest.prototype,ee,o),se(IDBDatabase.prototype,ee,o),se(IDBTransaction.prototype,ee,o),se(IDBCursor.prototype,ee,o)),n&&se(WebSocket.prototype,te,o)}Zone.__load_patch("util",(e,t,n)=>{n.patchOnProperties=D,n.patchMethod=C,n.bindArguments=_,n.patchMacroTask=z;const s=t.__symbol__("BLACK_LISTED_EVENTS"),c=t.__symbol__("UNPATCHED_EVENTS");e[c]&&(e[s]=e[c]),e[s]&&(t[s]=t[c]=e[s]),n.patchEventPrototype=W,n.patchEventTarget=G,n.isIEOrEdge=M,n.ObjectDefineProperty=r,n.ObjectGetOwnPropertyDescriptor=o,n.ObjectCreate=i,n.ArraySlice=a,n.patchClass=P,n.wrapWithCurrentZone=h,n.filterProperties=re,n.attachOriginToPatched=j,n._redefineProperty=Object.defineProperty,n.patchCallbacks=Y,n.getGlobalObjects=()=>({globalSources:H,zoneSymbolEventNames:A,eventNames:oe,isBrowser:T,isMix:w,isNode:b,TRUE_STR:"true",FALSE_STR:"false",ZONE_SYMBOL_PREFIX:u,ADD_EVENT_LISTENER_STR:"addEventListener",REMOVE_EVENT_LISTENER_STR:"removeEventListener"})});const ae=f("zoneTask");function ce(e,t,n,o){let r=null,s=null;n+=o;const i={};function a(t){const n=t.data;return n.args[0]=function(){return t.invoke.apply(this,arguments)},n.handleId=r.apply(e,n.args),t}function c(t){return s.call(e,t.data.handleId)}r=C(e,t+=o,n=>function(r,s){if("function"==typeof s[0]){const e={isPeriodic:"Interval"===o,delay:"Timeout"===o||"Interval"===o?s[1]||0:void 0,args:s},n=s[0];s[0]=function(){try{return n.apply(this,arguments)}finally{e.isPeriodic||("number"==typeof e.handleId?delete i[e.handleId]:e.handleId&&(e.handleId[ae]=null))}};const r=p(t,s[0],e,a,c);if(!r)return r;const l=r.data.handleId;return"number"==typeof l?i[l]=r:l&&(l[ae]=r),l&&l.ref&&l.unref&&"function"==typeof l.ref&&"function"==typeof l.unref&&(r.ref=l.ref.bind(l),r.unref=l.unref.bind(l)),"number"==typeof l||l?l:r}return n.apply(e,s)}),s=C(e,n,t=>function(n,o){const r=o[0];let s;"number"==typeof r?s=i[r]:(s=r&&r[ae],s||(s=r)),s&&"string"==typeof s.type?"notScheduled"!==s.state&&(s.cancelFn&&s.data.isPeriodic||0===s.runCount)&&("number"==typeof r?delete i[r]:r&&(r[ae]=null),s.zone.cancelTask(s)):t.apply(e,o)})}function le(e,t){if(Zone[t.symbol("patchEventTarget")])return;const{eventNames:n,zoneSymbolEventNames:o,TRUE_STR:r,FALSE_STR:s,ZONE_SYMBOL_PREFIX:i}=t.getGlobalObjects();for(let c=0;c<n.length;c++){const e=n[c],t=i+(e+s),a=i+(e+r);o[e]={},o[e][s]=t,o[e][r]=a}const a=e.EventTarget;return a&&a.prototype?(t.patchEventTarget(e,[a&&a.prototype]),!0):void 0}Zone.__load_patch("legacy",e=>{const t=e[Zone.__symbol__("legacyPatch")];t&&t()}),Zone.__load_patch("queueMicrotask",(e,t,n)=>{n.patchMethod(e,"queueMicrotask",e=>function(e,n){t.current.scheduleMicroTask("queueMicrotask",n[0])})}),Zone.__load_patch("timers",e=>{ce(e,"set","clear","Timeout"),ce(e,"set","clear","Interval"),ce(e,"set","clear","Immediate")}),Zone.__load_patch("requestAnimationFrame",e=>{ce(e,"request","cancel","AnimationFrame"),ce(e,"mozRequest","mozCancel","AnimationFrame"),ce(e,"webkitRequest","webkitCancel","AnimationFrame")}),Zone.__load_patch("blocking",(e,t)=>{const n=["alert","prompt","confirm"];for(let o=0;o<n.length;o++)C(e,n[o],(n,o,r)=>function(o,s){return t.current.run(n,e,s,r)})}),Zone.__load_patch("EventTarget",(e,t,n)=>{!function(e,t){t.patchEventPrototype(e,t)}(e,n),le(e,n);const o=e.XMLHttpRequestEventTarget;o&&o.prototype&&n.patchEventTarget(e,[o.prototype])}),Zone.__load_patch("MutationObserver",(e,t,n)=>{P("MutationObserver"),P("WebKitMutationObserver")}),Zone.__load_patch("IntersectionObserver",(e,t,n)=>{P("IntersectionObserver")}),Zone.__load_patch("FileReader",(e,t,n)=>{P("FileReader")}),Zone.__load_patch("on_property",(e,t,n)=>{ie(n,e)}),Zone.__load_patch("customElements",(e,t,n)=>{!function(e,t){const{isBrowser:n,isMix:o}=t.getGlobalObjects();(n||o)&&e.customElements&&"customElements"in e&&t.patchCallbacks(t,e.customElements,"customElements","define",["connectedCallback","disconnectedCallback","adoptedCallback","attributeChangedCallback"])}(e,n)}),Zone.__load_patch("XHR",(e,t)=>{!function(e){const u=e.XMLHttpRequest;if(!u)return;const h=u.prototype;let d=h[c],g=h[l];if(!d){const t=e.XMLHttpRequestEventTarget;if(t){const e=t.prototype;d=e[c],g=e[l]}}function m(e){const o=e.data,i=o.target;i[s]=!1,i[a]=!1;const u=i[r];d||(d=i[c],g=i[l]),u&&g.call(i,"readystatechange",u);const h=i[r]=()=>{if(i.readyState===i.DONE)if(!o.aborted&&i[s]&&"scheduled"===e.state){const n=i[t.__symbol__("loadfalse")];if(0!==i.status&&n&&n.length>0){const r=e.invoke;e.invoke=function(){const n=i[t.__symbol__("loadfalse")];for(let t=0;t<n.length;t++)n[t]===e&&n.splice(t,1);o.aborted||"scheduled"!==e.state||r.call(e)},n.push(e)}else e.invoke()}else o.aborted||!1!==i[s]||(i[a]=!0)};return d.call(i,"readystatechange",h),i[n]||(i[n]=e),T.apply(i,o.args),i[s]=!0,e}function y(){}function _(e){const t=e.data;return t.aborted=!0,w.apply(t.target,t.args)}const k=C(h,"open",()=>function(e,t){return e[o]=0==t[2],e[i]=t[1],k.apply(e,t)}),v=f("fetchTaskAborting"),b=f("fetchTaskScheduling"),T=C(h,"send",()=>function(e,n){if(!0===t.current[b])return T.apply(e,n);if(e[o])return T.apply(e,n);{const t={target:e,url:e[i],isPeriodic:!1,args:n,aborted:!1},o=p("XMLHttpRequest.send",y,t,m,_);e&&!0===e[a]&&!t.aborted&&"scheduled"===o.state&&o.invoke()}}),w=C(h,"abort",()=>function(e,o){const r=e[n];if(r&&"string"==typeof r.type){if(null==r.cancelFn||r.data&&r.data.aborted)return;r.zone.cancelTask(r)}else if(!0===t.current[v])return w.apply(e,o)})}(e);const n=f("xhrTask"),o=f("xhrSync"),r=f("xhrListener"),s=f("xhrScheduled"),i=f("xhrURL"),a=f("xhrErrorBeforeScheduled")}),Zone.__load_patch("geolocation",e=>{e.navigator&&e.navigator.geolocation&&function(e,t){const n=e.constructor.name;for(let r=0;r<t.length;r++){const s=t[r],i=e[s];if(i){if(!k(o(e,s)))continue;e[s]=(e=>{const t=function(){return e.apply(this,_(arguments,n+"."+s))};return j(t,e),t})(i)}}}(e.navigator.geolocation,["getCurrentPosition","watchPosition"])}),Zone.__load_patch("PromiseRejectionEvent",(e,t)=>{function n(t){return function(n){q(e,t).forEach(o=>{const r=e.PromiseRejectionEvent;if(r){const e=new r(t,{promise:n.promise,reason:n.rejection});o.invoke(e)}})}}e.PromiseRejectionEvent&&(t[f("unhandledPromiseRejectionHandler")]=n("unhandledrejection"),t[f("rejectionHandledHandler")]=n("rejectionhandled"))})}}`
  
  
  
  
Instances: 1
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p>class a{constructor(e,t){this._parent=e,this._name=t?t.name||"unnamed":"<root>",this._properties=t&&t.properties||{},this._zoneDelegate=new l(this,this._parent&&this._parent._zoneDelegate,t)}static assertZonePatched(){if(e.Promise!==P.ZoneAwarePromise)throw new Error("Zone.js has detected that ZoneAwarePromise `(window|global).Promise` has been overwritten.\nMost likely cause is that a Promise polyfill has been loaded after Zone.js (Polyfilling Promise api is not necessary when zone.js is loaded. If you must load one, do so before loading zone.js.)")}static get root(){let e=a.current;for(;e.parent;)e=e.parent;return e}static get current(){return z.zone}static get currentTask(){return j}static __load_patch(t,r,s=!1){if(P.hasOwnProperty(t)){if(!s&&i)throw Error("Already loaded patch: "+t)}else if(!e["__Zone_disable_"+t]){const s="Zone:"+t;n(s),P[t]=r(e,a,C),o(s,s)}}get parent(){return this._parent}get name(){return this._name}get(e){const t=this.getZoneWith(e);if(t)return t._properties[e]}getZoneWith(e){let t=this;for(;t;){if(t._properties.hasOwnProperty(e))return t;t=t._parent}return null}fork(e){if(!e)throw new Error("ZoneSpec required!");return this._zoneDelegate.fork(this,e)}wrap(e,t){if("function"!=typeof e)throw new Error("Expecting function got: "+e);const n=this._zoneDelegate.intercept(this,e,t),o=this;return function(){return o.runGuarded(n,this,arguments,t)}}run(e,t,n,o){z={parent:z,zone:this};try{return this._zoneDelegate.invoke(this,e,t,n,o)}finally{z=z.parent}}runGuarded(e,t=null,n,o){z={parent:z,zone:this};try{try{return this._zoneDelegate.invoke(this,e,t,n,o)}catch(r){if(this._zoneDelegate.handleError(this,r))throw r}}finally{z=z.parent}}runTask(e,t,n){if(e.zone!=this)throw new Error("A task can only be run in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");if(e.state===v&&(e.type===O||e.type===D))return;const o=e.state!=w;o&&e._transitionTo(w,T),e.runCount++;const r=j;j=e,z={parent:z,zone:this};try{e.type==D&&e.data&&!e.data.isPeriodic&&(e.cancelFn=void 0);try{return this._zoneDelegate.invokeTask(this,e,t,n)}catch(s){if(this._zoneDelegate.handleError(this,s))throw s}}finally{e.state!==v&&e.state!==S&&(e.type==O||e.data&&e.data.isPeriodic?o&&e._transitionTo(T,w):(e.runCount=0,this._updateTaskCount(e,-1),o&&e._transitionTo(v,w,v))),z=z.parent,j=r}}scheduleTask(e){if(e.zone&&e.zone!==this){let t=this;for(;t;){if(t===e.zone)throw Error(`can not reschedule task to ${this.name} which is descendants of the original zone ${e.zone.name}`);t=t.parent}}e._transitionTo(b,v);const t=[];e._zoneDelegates=t,e._zone=this;try{e=this._zoneDelegate.scheduleTask(this,e)}catch(n){throw e._transitionTo(S,b,v),this._zoneDelegate.handleError(this,n),n}return e._zoneDelegates===t&&this._updateTaskCount(e,1),e.state==b&&e._transitionTo(T,b),e}scheduleMicroTask(e,t,n,o){return this.scheduleTask(new u(Z,e,t,n,o,void 0))}scheduleMacroTask(e,t,n,o,r){return this.scheduleTask(new u(D,e,t,n,o,r))}scheduleEventTask(e,t,n,o,r){return this.scheduleTask(new u(O,e,t,n,o,r))}cancelTask(e){if(e.zone!=this)throw new Error("A task can only be cancelled in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");e._transitionTo(E,T,w);try{this._zoneDelegate.cancelTask(this,e)}catch(t){throw e._transitionTo(S,E),this._zoneDelegate.handleError(this,t),t}return this._updateTaskCount(e,-1),e._transitionTo(v,E),e.runCount=0,e}_updateTaskCount(e,t){const n=e._zoneDelegates;-1==t&&(e._zoneDelegates=null);for(let o=0;o<n.length;o++)n[o]._updateTaskCount(e.type,t)}}a.__symbol__=s;const c={name:"",onHasTask:(e,t,n,o)=>e.hasTask(n,o),onScheduleTask:(e,t,n,o)=>e.scheduleTask(n,o),onInvokeTask:(e,t,n,o,r,s)=>e.invokeTask(n,o,r,s),onCancelTask:(e,t,n,o)=>e.cancelTask(n,o)};class l{constructor(e,t,n){this._taskCounts={microTask:0,macroTask:0,eventTask:0},this.zone=e,this._parentDelegate=t,this._forkZS=n&&(n&&n.onFork?n:t._forkZS),this._forkDlgt=n&&(n.onFork?t:t._forkDlgt),this._forkCurrZone=n&&(n.onFork?this.zone:t._forkCurrZone),this._interceptZS=n&&(n.onIntercept?n:t._interceptZS),this._interceptDlgt=n&&(n.onIntercept?t:t._interceptDlgt),this._interceptCurrZone=n&&(n.onIntercept?this.zone:t._interceptCurrZone),this._invokeZS=n&&(n.onInvoke?n:t._invokeZS),this._invokeDlgt=n&&(n.onInvoke?t:t._invokeDlgt),this._invokeCurrZone=n&&(n.onInvoke?this.zone:t._invokeCurrZone),this._handleErrorZS=n&&(n.onHandleError?n:t._handleErrorZS),this._handleErrorDlgt=n&&(n.onHandleError?t:t._handleErrorDlgt),this._handleErrorCurrZone=n&&(n.onHandleError?this.zone:t._handleErrorCurrZone),this._scheduleTaskZS=n&&(n.onScheduleTask?n:t._scheduleTaskZS),this._scheduleTaskDlgt=n&&(n.onScheduleTask?t:t._scheduleTaskDlgt),this._scheduleTaskCurrZone=n&&(n.onScheduleTask?this.zone:t._scheduleTaskCurrZone),this._invokeTaskZS=n&&(n.onInvokeTask?n:t._invokeTaskZS),this._invokeTaskDlgt=n&&(n.onInvokeTask?t:t._invokeTaskDlgt),this._invokeTaskCurrZone=n&&(n.onInvokeTask?this.zone:t._invokeTaskCurrZone),this._cancelTaskZS=n&&(n.onCancelTask?n:t._cancelTaskZS),this._cancelTaskDlgt=n&&(n.onCancelTask?t:t._cancelTaskDlgt),this._cancelTaskCurrZone=n&&(n.onCancelTask?this.zone:t._cancelTaskCurrZone),this._hasTaskZS=null,this._hasTaskDlgt=null,this._hasTaskDlgtOwner=null,this._hasTaskCurrZone=null;const o=n&&n.onHasTask;(o||t&&t._hasTaskZS)&&(this._hasTaskZS=o?n:c,this._hasTaskDlgt=t,this._hasTaskDlgtOwner=this,this._hasTaskCurrZone=e,n.onScheduleTask||(this._scheduleTaskZS=c,this._scheduleTaskDlgt=t,this._scheduleTaskCurrZone=this.zone),n.onInvokeTask||(this._invokeTaskZS=c,this._invokeTaskDlgt=t,this._invokeTaskCurrZone=this.zone),n.onCancelTask||(this._cancelTaskZS=c,this._cancelTaskDlgt=t,this._cancelTaskCurrZone=this.zone))}fork(e,t){return this._forkZS?this._forkZS.onFork(this._forkDlgt,this.zone,e,t):new a(e,t)}intercept(e,t,n){return this._interceptZS?this._interceptZS.onIntercept(this._interceptDlgt,this._interceptCurrZone,e,t,n):t}invoke(e,t,n,o,r){return this._invokeZS?this._invokeZS.onInvoke(this._invokeDlgt,this._invokeCurrZone,e,t,n,o,r):t.apply(n,o)}handleError(e,t){return!this._handleErrorZS||this._handleErrorZS.onHandleError(this._handleErrorDlgt,this._handleErrorCurrZone,e,t)}scheduleTask(e,t){let n=t;if(this._scheduleTaskZS)this._hasTaskZS&&n._zoneDelegates.push(this._hasTaskDlgtOwner),n=this._scheduleTaskZS.onScheduleTask(this._scheduleTaskDlgt,this._scheduleTaskCurrZone,e,t),n||(n=t);else if(t.scheduleFn)t.scheduleFn(t);else{if(t.type!=Z)throw new Error("Task is missing scheduleFn.");y(t)}return n}invokeTask(e,t,n,o){return this._invokeTaskZS?this._invokeTaskZS.onInvokeTask(this._invokeTaskDlgt,this._invokeTaskCurrZone,e,t,n,o):t.callback.apply(n,o)}cancelTask(e,t){let n;if(this._cancelTaskZS)n=this._cancelTaskZS.onCancelTask(this._cancelTaskDlgt,this._cancelTaskCurrZone,e,t);else{if(!t.cancelFn)throw Error("Task is not cancelable");n=t.cancelFn(t)}return n}hasTask(e,t){try{this._hasTaskZS&&this._hasTaskZS.onHasTask(this._hasTaskDlgt,this._hasTaskCurrZone,e,t)}catch(n){this.handleError(e,n)}}_updateTaskCount(e,t){const n=this._taskCounts,o=n[e],r=n[e]=o+t;if(r<0)throw new Error("More tasks executed then were scheduled.");0!=o&&0!=r||this.hasTask(this.zone,{microTask:n.microTask>0,macroTask:n.macroTask>0,eventTask:n.eventTask>0,change:e})}}class u{constructor(t,n,o,r,s,i){if(this._zone=null,this.runCount=0,this._zoneDelegates=null,this._state="notScheduled",this.type=t,this.source=n,this.data=r,this.scheduleFn=s,this.cancelFn=i,!o)throw new Error("callback is not defined");this.callback=o;const a=this;this.invoke=t===O&&r&&r.useG?u.invokeTask:function(){return u.invokeTask.call(e,a,this,arguments)}}static invokeTask(e,t,n){e||(e=this),I++;try{return e.runCount++,e.zone.runTask(e,t,n)}finally{1==I&&_(),I--}}get zone(){return this._zone}get state(){return this._state}cancelScheduleRequest(){this._transitionTo(v,b)}_transitionTo(e,t,n){if(this._state!==t&&this._state!==n)throw new Error(`${this.type} '${this.source}': can not transition to '${e}', expecting state '${t}'${n?" or '"+n+"'":""}, was '${this._state}'.`);this._state=e,e==v&&(this._zoneDelegates=null)}toString(){return this.data&&void 0!==this.data.handleId?this.data.handleId.toString():Object.prototype.toString.call(this)}toJSON(){return{type:this.type,state:this.state,source:this.source,zone:this.zone.name,runCount:this.runCount}}}const h=s("setTimeout"),p=s("Promise"),f=s("then");let d,g=[],m=!1;function y(t){if(0===I&&0===g.length)if(d||e[p]&&(d=e[p].resolve(0)),d){let e=d[f];e||(e=d.then),e.call(d,_)}else e[h](_,0);t&&g.push(t)}function _(){if(!m){for(m=!0;g.length;){const t=g;g=[];for(let n=0;n<t.length;n++){const o=t[n];try{o.zone.runTask(o,null,null)}catch(e){C.onUnhandledError(e)}}}C.microtaskDrainDone(),m=!1}}const k={name:"NO ZONE"},v="notScheduled",b="scheduling",T="scheduled",w="running",E="canceling",S="unknown",Z="microTask",D="macroTask",O="eventTask",P={},C={symbol:s,currentZoneFrame:()=>z,onUnhandledError:R,microtaskDrainDone:R,scheduleMicroTask:y,showUncaughtError:()=>!a[s("ignoreConsoleErrorUncaughtError")],patchEventTarget:()=>[],patchOnProperties:R,patchMethod:()=>R,bindArguments:()=>[],patchThen:()=>R,patchMacroTask:()=>R,patchEventPrototype:()=>R,isIEOrEdge:()=>!1,getGlobalObjects:()=>{},ObjectDefineProperty:()=>R,ObjectGetOwnPropertyDescriptor:()=>{},ObjectCreate:()=>{},ArraySlice:()=>[],patchClass:()=>R,wrapWithCurrentZone:()=>R,filterProperties:()=>[],attachOriginToPatched:()=>R,_redefineProperty:()=>R,patchCallbacks:()=>R};let z={parent:null,zone:new a(null,null)},j=null,I=0;function R(){}o("Zone","Zone"),e.Zone=a}("undefined"!=typeof window&&window||"undefined"!=typeof self&&self||global);const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=Object.getPrototypeOf,i=Object.create,a=Array.prototype.slice,c=Zone.__symbol__("addEventListener"),l=Zone.__symbol__("removeEventListener"),u=Zone.__symbol__("");function h(e,t){return Zone.current.wrap(e,t)}function p(e,t,n,o,r){return Zone.current.scheduleMacroTask(e,t,n,o,r)}const f=Zone.__symbol__,d="undefined"!=typeof window,g=d?window:void 0,m=d&&g||"object"==typeof self&&self||global,y=[null];function _(e,t){for(let n=e.length-1;n>=0;n--)"function"==typeof e[n]&&(e[n]=h(e[n],t+"_"+n));return e}function k(e){return!e||!1!==e.writable&&!("function"==typeof e.get&&void 0===e.set)}const v="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope,b=!("nw"in m)&&void 0!==m.process&&"[object process]"==={}.toString.call(m.process),T=!b&&!v&&!(!d||!g.HTMLElement),w=void 0!==m.process&&"[object process]"==={}.toString.call(m.process)&&!v&&!(!d||!g.HTMLElement),E={},S=function(e){if(!(e=e||m.event))return;let t=E[e.type];t||(t=E[e.type]=f("ON_PROPERTY"+e.type));const n=this||e.target||m,o=n[t];let r;if(T&&n===g&&"error"===e.type){const t=e;r=o&&o.call(this,t.message,t.filename,t.lineno,t.colno,t.error),!0===r&&e.preventDefault()}else r=o&&o.apply(this,arguments),null==r||r||e.preventDefault();return r};function Z(e,t,n){let s=o(e,t);if(!s&&n&&o(n,t)&&(s={enumerable:!0,configurable:!0}),!s||!s.configurable)return;const i=f("on"+t+"patched");if(e.hasOwnProperty(i)&&e[i])return;delete s.writable,delete s.value;const a=s.get,c=s.set,l=t.substr(2);let u=E[l];u||(u=E[l]=f("ON_PROPERTY"+l)),s.set=function(t){let n=this;n||e!==m||(n=m),n&&(n[u]&&n.removeEventListener(l,S),c&&c.apply(n,y),"function"==typeof t?(n[u]=t,n.addEventListener(l,S,!1)):n[u]=null)},s.get=function(){let n=this;if(n||e!==m||(n=m),!n)return null;const o=n[u];if(o)return o;if(a){let e=a&&a.call(this);if(e)return s.set.call(this,e),"function"==typeof n.removeAttribute&&n.removeAttribute(t),e}return null},r(e,t,s),e[i]=!0}function D(e,t,n){if(t)for(let o=0;o<t.length;o++)Z(e,"on"+t[o],n);else{const t=[];for(const n in e)"on"==n.substr(0,2)&&t.push(n);for(let o=0;o<t.length;o++)Z(e,t[o],n)}}const O=f("originalInstance");function P(e){const t=m[e];if(!t)return;m[f(e)]=t,m[e]=function(){const n=_(arguments,e);switch(n.length){case 0:this[O]=new t;break;case 1:this[O]=new t(n[0]);break;case 2:this[O]=new t(n[0],n[1]);break;case 3:this[O]=new t(n[0],n[1],n[2]);break;case 4:this[O]=new t(n[0],n[1],n[2],n[3]);break;default:throw new Error("Arg list too long.")}},j(m[e],t);const n=new t((function(){}));let o;for(o in n)"XMLHttpRequest"===e&&"responseBlob"===o||function(t){"function"==typeof n[t]?m[e].prototype[t]=function(){return this[O][t].apply(this[O],arguments)}:r(m[e].prototype,t,{set:function(n){"function"==typeof n?(this[O][t]=h(n,e+"."+t),j(this[O][t],n)):this[O][t]=n},get:function(){return this[O][t]}})}(o);for(o in t)"prototype"!==o&&t.hasOwnProperty(o)&&(m[e][o]=t[o])}function C(e,t,n){let r=e;for(;r&&!r.hasOwnProperty(t);)r=s(r);!r&&e[t]&&(r=e);const i=f(t);let a=null;if(r&&(!(a=r[i])||!r.hasOwnProperty(i))&&(a=r[i]=r[t],k(r&&o(r,t)))){const e=n(a,i,t);r[t]=function(){return e(this,arguments)},j(r[t],a)}return a}function z(e,t,n){let o=null;function r(e){const t=e.data;return t.args[t.cbIdx]=function(){e.invoke.apply(this,arguments)},o.apply(t.target,t.args),e}o=C(e,t,e=>function(t,o){const s=n(t,o);return s.cbIdx>=0&&"function"==typeof o[s.cbIdx]?p(s.name,o[s.cbIdx],s,r):e.apply(t,o)})}function j(e,t){e[f("OriginalDelegate")]=t}let I=!1,R=!1;function L(){try{const e=g.navigator.userAgent;if(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/"))return!0}catch(e){}return!1}function M(){if(I)return R;I=!0;try{const e=g.navigator.userAgent;-1===e.indexOf("MSIE ")&&-1===e.indexOf("Trident/")&&-1===e.indexOf("Edge/")||(R=!0)}catch(e){}return R}Zone.__load_patch("ZoneAwarePromise",(e,t,n)=>{const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=n.symbol,i=[],a=!0===e[s("DISABLE_WRAPPING_UNCAUGHT_PROMISE_REJECTION")],c=s("Promise"),l=s("then");n.onUnhandledError=e=>{if(n.showUncaughtError()){const t=e&&e.rejection;t?console.error("Unhandled Promise rejection:",t instanceof Error?t.message:t,"; Zone:",e.zone.name,"; Task:",e.task&&e.task.source,"; Value:",t,t instanceof Error?t.stack:void 0):console.error(e)}},n.microtaskDrainDone=()=>{for(;i.length;){const t=i.shift();try{t.zone.runGuarded(()=>{if(t.throwOriginal)throw t.rejection;throw t})}catch(e){h(e)}}};const u=s("unhandledPromiseRejectionHandler");function h(e){n.onUnhandledError(e);try{const n=t[u];"function"==typeof n&&n.call(this,e)}catch(o){}}function p(e){return e&&e.then}function f(e){return e}function d(e){return D.reject(e)}const g=s("state"),m=s("value"),y=s("finally"),_=s("parentPromiseValue"),k=s("parentPromiseState");function v(e,t){return n=>{try{T(e,t,n)}catch(o){T(e,!1,o)}}}const b=s("currentTaskTrace");function T(e,o,s){const c=function(){let e=!1;return function(t){return function(){e||(e=!0,t.apply(null,arguments))}}}();if(e===s)throw new TypeError("Promise resolved with itself");if(null===e[g]){let h=null;try{"object"!=typeof s&&"function"!=typeof s||(h=s&&s.then)}catch(u){return c(()=>{T(e,!1,u)})(),e}if(!1!==o&&s instanceof D&&s.hasOwnProperty(g)&&s.hasOwnProperty(m)&&null!==s[g])E(s),T(e,s[g],s[m]);else if(!1!==o&&"function"==typeof h)try{h.call(s,c(v(e,o)),c(v(e,!1)))}catch(u){c(()=>{T(e,!1,u)})()}else{e[g]=o;const c=e[m];if(e[m]=s,e[y]===y&&!0===o&&(e[g]=e[k],e[m]=e[_]),!1===o&&s instanceof Error){const e=t.currentTask&&t.currentTask.data&&t.currentTask.data.__creationTrace__;e&&r(s,b,{configurable:!0,enumerable:!1,writable:!0,value:e})}for(let t=0;t<c.length;)S(e,c[t++],c[t++],c[t++],c[t++]);if(0==c.length&&0==o){e[g]=0;let o=s;try{throw new Error("Uncaught (in promise): "+((l=s)&&l.toString===Object.prototype.toString?(l.constructor&&l.constructor.name||"")+": "+JSON.stringify(l):l?l.toString():Object.prototype.toString.call(l))+(s&&s.stack?"\n"+s.stack:""))}catch(u){o=u}a&&(o.throwOriginal=!0),o.rejection=s,o.promise=e,o.zone=t.current,o.task=t.currentTask,i.push(o),n.scheduleMicroTask()}}}var l;return e}const w=s("rejectionHandledHandler");function E(e){if(0===e[g]){try{const n=t[w];n&&"function"==typeof n&&n.call(this,{rejection:e[m],promise:e})}catch(n){}e[g]=!1;for(let t=0;t<i.length;t++)e===i[t].promise&&i.splice(t,1)}}function S(e,t,n,o,r){E(e);const s=e[g],i=s?"function"==typeof o?o:f:"function"==typeof r?r:d;t.scheduleMicroTask("Promise.then",()=>{try{const o=e[m],r=!!n&&y===n[y];r&&(n[_]=o,n[k]=s);const a=t.run(i,void 0,r&&i!==d&&i!==f?[]:[o]);T(n,!0,a)}catch(o){T(n,!1,o)}},n)}const Z=function(){};class D{static toString(){return"function ZoneAwarePromise() { [native code] }"}static resolve(e){return T(new this(null),!0,e)}static reject(e){return T(new this(null),!1,e)}static race(e){let t,n,o=new this((e,o)=>{t=e,n=o});function r(e){t(e)}function s(e){n(e)}for(let i of e)p(i)||(i=this.resolve(i)),i.then(r,s);return o}static all(e){return D.allWithCallback(e)}static allSettled(e){return(this&&this.prototype instanceof D?this:D).allWithCallback(e,{thenCallback:e=>({status:"fulfilled",value:e}),errorCallback:e=>({status:"rejected",reason:e})})}static allWithCallback(e,t){let n,o,r=new this((e,t)=>{n=e,o=t}),s=2,i=0;const a=[];for(let l of e){p(l)||(l=this.resolve(l));const e=i;try{l.then(o=>{a[e]=t?t.thenCallback(o):o,s--,0===s&&n(a)},r=>{t?(a[e]=t.errorCallback(r),s--,0===s&&n(a)):o(r)})}catch(c){o(c)}s++,i++}return s-=2,0===s&&n(a),r}constructor(e){const t=this;if(!(t instanceof D))throw new Error("Must be an instanceof Promise.");t[g]=null,t[m]=[];try{e&&e(v(t,!0),v(t,!1))}catch(n){T(t,!1,n)}}get[Symbol.toStringTag](){return"Promise"}get[Symbol.species](){return D}then(e,n){let o=this.constructor[Symbol.species];o&&"function"==typeof o||(o=this.constructor||D);const r=new o(Z),s=t.current;return null==this[g]?this[m].push(s,r,e,n):S(this,s,r,e,n),r}catch(e){return this.then(null,e)}finally(e){let n=this.constructor[Symbol.species];n&&"function"==typeof n||(n=D);const o=new n(Z);o[y]=y;const r=t.current;return null==this[g]?this[m].push(r,o,e,e):S(this,r,o,e,e),o}}D.resolve=D.resolve,D.reject=D.reject,D.race=D.race,D.all=D.all;const O=e[c]=e.Promise;e.Promise=D;const P=s("thenPatched");function z(e){const t=e.prototype,n=o(t,"then");if(n&&(!1===n.writable||!n.configurable))return;const r=t.then;t[l]=r,e.prototype.then=function(e,t){return new D((e,t)=>{r.call(this,e,t)}).then(e,t)},e[P]=!0}return n.patchThen=z,O&&(z(O),C(e,"fetch",e=>{return t=e,function(e,n){let o=t.apply(e,n);if(o instanceof D)return o;let r=o.constructor;return r[P]||z(r),o};var t})),Promise[t.__symbol__("uncaughtPromiseErrors")]=i,D}),Zone.__load_patch("toString",e=>{const t=Function.prototype.toString,n=f("OriginalDelegate"),o=f("Promise"),r=f("Error"),s=function(){if("function"==typeof this){const s=this[n];if(s)return"function"==typeof s?t.call(s):Object.prototype.toString.call(s);if(this===Promise){const n=e[o];if(n)return t.call(n)}if(this===Error){const n=e[r];if(n)return t.call(n)}}return t.call(this)};s[n]=t,Function.prototype.toString=s;const i=Object.prototype.toString;Object.prototype.toString=function(){return"function"==typeof Promise&&this instanceof Promise?"[object Promise]":i.call(this)}});let x=!1;if("undefined"!=typeof window)try{const e=Object.defineProperty({},"passive",{get:function(){x=!0}});window.addEventListener("test",e,e),window.removeEventListener("test",e,e)}catch(ue){x=!1}const N={useG:!0},A={},H={},F=new RegExp("^"+u+"(\\w+)(true|false)$"),B=f("propagationStopped");function X(e,t){const n=(t?t(e):e)+"false",o=(t?t(e):e)+"true",r=u+n,s=u+o;A[e]={},A[e].false=r,A[e].true=s}function G(e,t,n){const o=n&&n.add||"addEventListener",r=n&&n.rm||"removeEventListener",i=n&&n.listeners||"eventListeners",a=n&&n.rmAll||"removeAllListeners",c=f(o),l="."+o+":",h=function(e,t,n){if(e.isRemoved)return;const o=e.callback;"object"==typeof o&&o.handleEvent&&(e.callback=e=>o.handleEvent(e),e.originalDelegate=o),e.invoke(e,t,[n]);const s=e.options;s&&"object"==typeof s&&s.once&&t[r].call(t,n.type,e.originalDelegate?e.originalDelegate:e.callback,s)},p=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type].false];if(o)if(1===o.length)h(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)h(e[o],n,t)}},d=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type].true];if(o)if(1===o.length)h(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)h(e[o],n,t)}};function g(t,n){if(!t)return!1;let h=!0;n&&void 0!==n.useG&&(h=n.useG);const g=n&&n.vh;let m=!0;n&&void 0!==n.chkDup&&(m=n.chkDup);let y=!1;n&&void 0!==n.rt&&(y=n.rt);let _=t;for(;_&&!_.hasOwnProperty(o);)_=s(_);if(!_&&t[o]&&(_=t),!_)return!1;if(_[c])return!1;const k=n&&n.eventNameToString,v={},T=_[c]=_[o],w=_[f(r)]=_[r],E=_[f(i)]=_[i],S=_[f(a)]=_[a];let Z;function D(e,t){return!x&&"object"==typeof e&&e?!!e.capture:x&&t?"boolean"==typeof e?{capture:e,passive:!0}:e?"object"==typeof e&&!1!==e.passive?Object.assign(Object.assign({},e),{passive:!0}):e:{passive:!0}:e}n&&n.prepend&&(Z=_[f(n.prepend)]=_[n.prepend]);const O=h?function(e){if(!v.isExisting)return T.call(v.target,v.eventName,v.capture?d:p,v.options)}:function(e){return T.call(v.target,v.eventName,e.invoke,v.options)},P=h?function(e){if(!e.isRemoved){const t=A[e.eventName];let n;t&&(n=t[e.capture?"true":"false"]);const o=n&&e.target[n];if(o)for(let r=0;r<o.length;r++)if(o[r]===e){o.splice(r,1),e.isRemoved=!0,0===o.length&&(e.allRemoved=!0,e.target[n]=null);break}}if(e.allRemoved)return w.call(e.target,e.eventName,e.capture?d:p,e.options)}:function(e){return w.call(e.target,e.eventName,e.invoke,e.options)},C=n&&n.diff?n.diff:function(e,t){const n=typeof t;return"function"===n&&e.callback===t||"object"===n&&e.originalDelegate===t},z=Zone[f("UNPATCHED_EVENTS")],I=e[f("PASSIVE_EVENTS")],R=function(t,o,r,s,i=!1,a=!1){return function(){const c=this||e;let l=arguments[0];n&&n.transferEventName&&(l=n.transferEventName(l));let u=arguments[1];if(!u)return t.apply(this,arguments);if(b&&"uncaughtException"===l)return t.apply(this,arguments);let p=!1;if("function"!=typeof u){if(!u.handleEvent)return t.apply(this,arguments);p=!0}if(g&&!g(t,u,c,arguments))return;const f=x&&!!I&&-1!==I.indexOf(l),d=D(arguments[2],f);if(z)for(let e=0;e<z.length;e++)if(l===z[e])return f?t.call(c,l,u,d):t.apply(this,arguments);const y=!!d&&("boolean"==typeof d||d.capture),_=!(!d||"object"!=typeof d)&&d.once,T=Zone.current;let w=A[l];w||(X(l,k),w=A[l]);const E=w[y?"true":"false"];let S,Z=c[E],O=!1;if(Z){if(O=!0,m)for(let e=0;e<Z.length;e++)if(C(Z[e],u))return}else Z=c[E]=[];const P=c.constructor.name,j=H[P];j&&(S=j[l]),S||(S=P+o+(k?k(l):l)),v.options=d,_&&(v.options.once=!1),v.target=c,v.capture=y,v.eventName=l,v.isExisting=O;const R=h?N:void 0;R&&(R.taskData=v);const L=T.scheduleEventTask(S,u,R,r,s);return v.target=null,R&&(R.taskData=null),_&&(d.once=!0),(x||"boolean"!=typeof L.options)&&(L.options=d),L.target=c,L.capture=y,L.eventName=l,p&&(L.originalDelegate=u),a?Z.unshift(L):Z.push(L),i?c:void 0}};return _[o]=R(T,l,O,P,y),Z&&(_.prependListener=R(Z,".prependListener:",(function(e){return Z.call(v.target,v.eventName,e.invoke,v.options)}),P,y,!0)),_[r]=function(){const t=this||e;let o=arguments[0];n&&n.transferEventName&&(o=n.transferEventName(o));const r=arguments[2],s=!!r&&("boolean"==typeof r||r.capture),i=arguments[1];if(!i)return w.apply(this,arguments);if(g&&!g(w,i,t,arguments))return;const a=A[o];let c;a&&(c=a[s?"true":"false"]);const l=c&&t[c];if(l)for(let e=0;e<l.length;e++){const n=l[e];if(C(n,i))return l.splice(e,1),n.isRemoved=!0,0===l.length&&(n.allRemoved=!0,t[c]=null,"string"==typeof o)&&(t[u+"ON_PROPERTY"+o]=null),n.zone.cancelTask(n),y?t:void 0}return w.apply(this,arguments)},_[i]=function(){const t=this||e;let o=arguments[0];n&&n.transferEventName&&(o=n.transferEventName(o));const r=[],s=q(t,k?k(o):o);for(let e=0;e<s.length;e++){const t=s[e];r.push(t.originalDelegate?t.originalDelegate:t.callback)}return r},_[a]=function(){const t=this||e;let o=arguments[0];if(o){n&&n.transferEventName&&(o=n.transferEventName(o));const e=A[o];if(e){const n=t[e.false],s=t[e.true];if(n){const e=n.slice();for(let t=0;t<e.length;t++){const n=e[t];this[r].call(this,o,n.originalDelegate?n.originalDelegate:n.callback,n.options)}}if(s){const e=s.slice();for(let t=0;t<e.length;t++){const n=e[t];this[r].call(this,o,n.originalDelegate?n.originalDelegate:n.callback,n.options)}}}}else{const e=Object.keys(t);for(let t=0;t<e.length;t++){const n=F.exec(e[t]);let o=n&&n[1];o&&"removeListener"!==o&&this[a].call(this,o)}this[a].call(this,"removeListener")}if(y)return this},j(_[o],T),j(_[r],w),S&&j(_[a],S),E&&j(_[i],E),!0}let m=[];for(let s=0;s<t.length;s++)m[s]=g(t[s],n);return m}function q(e,t){if(!t){const n=[];for(let o in e){const r=F.exec(o);let s=r&&r[1];if(s&&(!t||s===t)){const t=e[o];if(t)for(let e=0;e<t.length;e++)n.push(t[e])}}return n}let n=A[t];n||(X(t),n=A[t]);const o=e[n.false],r=e[n.true];return o?r?o.concat(r):o.slice():r?r.slice():[]}function W(e,t){const n=e.Event;n&&n.prototype&&t.patchMethod(n.prototype,"stopImmediatePropagation",e=>function(t,n){t[B]=!0,e&&e.apply(t,n)})}function Y(e,t,n,o,r){const s=Zone.__symbol__(o);if(t[s])return;const i=t[s]=t[o];t[o]=function(s,a,c){return a&&a.prototype&&r.forEach((function(t){const r=`${n}.${o}::`+t,s=a.prototype;if(s.hasOwnProperty(t)){const n=e.ObjectGetOwnPropertyDescriptor(s,t);n&&n.value?(n.value=e.wrapWithCurrentZone(n.value,r),e._redefineProperty(a.prototype,t,n)):s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}else s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))})),i.call(t,s,a,c)},e.attachOriginToPatched(t[o],i)}const U=["absolutedeviceorientation","afterinput","afterprint","appinstalled","beforeinstallprompt","beforeprint","beforeunload","devicelight","devicemotion","deviceorientation","deviceorientationabsolute","deviceproximity","hashchange","languagechange","message","mozbeforepaint","offline","online","paint","pageshow","pagehide","popstate","rejectionhandled","storage","unhandledrejection","unload","userproximity","vrdisplayconnected","vrdisplaydisconnected","vrdisplaypresentchange"],V=["encrypted","waitingforkey","msneedkey","mozinterruptbegin","mozinterruptend"],$=["load"],J=["blur","error","focus","load","resize","scroll","messageerror"],K=["bounce","finish","start"],Q=["loadstart","progress","abort","error","load","progress","timeout","loadend","readystatechange"],ee=["upgradeneeded","complete","abort","success","error","blocked","versionchange","close"],te=["close","error","open","message"],ne=["error","message"],oe=["abort","animationcancel","animationend","animationiteration","auxclick","beforeinput","blur","cancel","canplay","canplaythrough","change","compositionstart","compositionupdate","compositionend","cuechange","click","close","contextmenu","curechange","dblclick","drag","dragend","dragenter","dragexit","dragleave","dragover","drop","durationchange","emptied","ended","error","focus","focusin","focusout","gotpointercapture","input","invalid","keydown","keypress","keyup","load","loadstart","loadeddata","loadedmetadata","lostpointercapture","mousedown","mouseenter","mouseleave","mousemove","mouseout","mouseover","mouseup","mousewheel","orientationchange","pause","play","playing","pointercancel","pointerdown","pointerenter","pointerleave","pointerlockchange","mozpointerlockchange","webkitpointerlockerchange","pointerlockerror","mozpointerlockerror","webkitpointerlockerror","pointermove","pointout","pointerover","pointerup","progress","ratechange","reset","resize","scroll","seeked","seeking","select","selectionchange","selectstart","show","sort","stalled","submit","suspend","timeupdate","volumechange","touchcancel","touchmove","touchstart","touchend","transitioncancel","transitionend","waiting","wheel"].concat(["webglcontextrestored","webglcontextlost","webglcontextcreationerror"],["autocomplete","autocompleteerror"],["toggle"],["afterscriptexecute","beforescriptexecute","DOMContentLoaded","freeze","fullscreenchange","mozfullscreenchange","webkitfullscreenchange","msfullscreenchange","fullscreenerror","mozfullscreenerror","webkitfullscreenerror","msfullscreenerror","readystatechange","visibilitychange","resume"],U,["beforecopy","beforecut","beforepaste","copy","cut","paste","dragstart","loadend","animationstart","search","transitionrun","transitionstart","webkitanimationend","webkitanimationiteration","webkitanimationstart","webkittransitionend"],["activate","afterupdate","ariarequest","beforeactivate","beforedeactivate","beforeeditfocus","beforeupdate","cellchange","controlselect","dataavailable","datasetchanged","datasetcomplete","errorupdate","filterchange","layoutcomplete","losecapture","move","moveend","movestart","propertychange","resizeend","resizestart","rowenter","rowexit","rowsdelete","rowsinserted","command","compassneedscalibration","deactivate","help","mscontentzoom","msmanipulationstatechanged","msgesturechange","msgesturedoubletap","msgestureend","msgesturehold","msgesturestart","msgesturetap","msgotpointercapture","msinertiastart","mslostpointercapture","mspointercancel","mspointerdown","mspointerenter","mspointerhover","mspointerleave","mspointermove","mspointerout","mspointerover","mspointerup","pointerout","mssitemodejumplistitemremoved","msthumbnailclick","stop","storagecommit"]);function re(e,t,n){if(!n||0===n.length)return t;const o=n.filter(t=>t.target===e);if(!o||0===o.length)return t;const r=o[0].ignoreProperties;return t.filter(e=>-1===r.indexOf(e))}function se(e,t,n,o){e&&D(e,re(e,t,n),o)}function ie(e,t){if(b&&!w)return;if(Zone[e.symbol("patchEvents")])return;const n="undefined"!=typeof WebSocket,o=t.__Zone_ignore_on_properties;if(T){const e=window,t=L()?[{target:e,ignoreProperties:["error"]}]:[];se(e,oe.concat(["messageerror"]),o?o.concat(t):o,s(e)),se(Document.prototype,oe,o),void 0!==e.SVGElement&&se(e.SVGElement.prototype,oe,o),se(Element.prototype,oe,o),se(HTMLElement.prototype,oe,o),se(HTMLMediaElement.prototype,V,o),se(HTMLFrameSetElement.prototype,U.concat(J),o),se(HTMLBodyElement.prototype,U.concat(J),o),se(HTMLFrameElement.prototype,$,o),se(HTMLIFrameElement.prototype,$,o);const n=e.HTMLMarqueeElement;n&&se(n.prototype,K,o);const r=e.Worker;r&&se(r.prototype,ne,o)}const r=t.XMLHttpRequest;r&&se(r.prototype,Q,o);const i=t.XMLHttpRequestEventTarget;i&&se(i&&i.prototype,Q,o),"undefined"!=typeof IDBIndex&&(se(IDBIndex.prototype,ee,o),se(IDBRequest.prototype,ee,o),se(IDBOpenDBRequest.prototype,ee,o),se(IDBDatabase.prototype,ee,o),se(IDBTransaction.prototype,ee,o),se(IDBCursor.prototype,ee,o)),n&&se(WebSocket.prototype,te,o)}Zone.__load_patch("util",(e,t,n)=>{n.patchOnProperties=D,n.patchMethod=C,n.bindArguments=_,n.patchMacroTask=z;const s=t.__symbol__("BLACK_LISTED_EVENTS"),c=t.__symbol__("UNPATCHED_EVENTS");e[c]&&(e[s]=e[c]),e[s]&&(t[s]=t[c]=e[s]),n.patchEventPrototype=W,n.patchEventTarget=G,n.isIEOrEdge=M,n.ObjectDefineProperty=r,n.ObjectGetOwnPropertyDescriptor=o,n.ObjectCreate=i,n.ArraySlice=a,n.patchClass=P,n.wrapWithCurrentZone=h,n.filterProperties=re,n.attachOriginToPatched=j,n._redefineProperty=Object.defineProperty,n.patchCallbacks=Y,n.getGlobalObjects=()=>({globalSources:H,zoneSymbolEventNames:A,eventNames:oe,isBrowser:T,isMix:w,isNode:b,TRUE_STR:"true",FALSE_STR:"false",ZONE_SYMBOL_PREFIX:u,ADD_EVENT_LISTENER_STR:"addEventListener",REMOVE_EVENT_LISTENER_STR:"removeEventListener"})});const ae=f("zoneTask");function ce(e,t,n,o){let r=null,s=null;n+=o;const i={};function a(t){const n=t.data;return n.args[0]=function(){return t.invoke.apply(this,arguments)},n.handleId=r.apply(e,n.args),t}function c(t){return s.call(e,t.data.handleId)}r=C(e,t+=o,n=>function(r,s){if("function"==typeof s[0]){const e={isPeriodic:"Interval"===o,delay:"Timeout"===o||"Interval"===o?s[1]||0:void 0,args:s},n=s[0];s[0]=function(){try{return n.apply(this,arguments)}finally{e.isPeriodic||("number"==typeof e.handleId?delete i[e.handleId]:e.handleId&&(e.handleId[ae]=null))}};const r=p(t,s[0],e,a,c);if(!r)return r;const l=r.data.handleId;return"number"==typeof l?i[l]=r:l&&(l[ae]=r),l&&l.ref&&l.unref&&"function"==typeof l.ref&&"function"==typeof l.unref&&(r.ref=l.ref.bind(l),r.unref=l.unref.bind(l)),"number"==typeof l||l?l:r}return n.apply(e,s)}),s=C(e,n,t=>function(n,o){const r=o[0];let s;"number"==typeof r?s=i[r]:(s=r&&r[ae],s||(s=r)),s&&"string"==typeof s.type?"notScheduled"!==s.state&&(s.cancelFn&&s.data.isPeriodic||0===s.runCount)&&("number"==typeof r?delete i[r]:r&&(r[ae]=null),s.zone.cancelTask(s)):t.apply(e,o)})}function le(e,t){if(Zone[t.symbol("patchEventTarget")])return;const{eventNames:n,zoneSymbolEventNames:o,TRUE_STR:r,FALSE_STR:s,ZONE_SYMBOL_PREFIX:i}=t.getGlobalObjects();for(let c=0;c<n.length;c++){const e=n[c],t=i+(e+s),a=i+(e+r);o[e]={},o[e][s]=t,o[e][r]=a}const a=e.EventTarget;return a&&a.prototype?(t.patchEventTarget(e,[a&&a.prototype]),!0):void 0}Zone.__load_patch("legacy",e=>{const t=e[Zone.__symbol__("legacyPatch")];t&&t()}),Zone.__load_patch("queueMicrotask",(e,t,n)=>{n.patchMethod(e,"queueMicrotask",e=>function(e,n){t.current.scheduleMicroTask("queueMicrotask",n[0])})}),Zone.__load_patch("timers",e=>{ce(e,"set","clear","Timeout"),ce(e,"set","clear","Interval"),ce(e,"set","clear","Immediate")}),Zone.__load_patch("requestAnimationFrame",e=>{ce(e,"request","cancel","AnimationFrame"),ce(e,"mozRequest","mozCancel","AnimationFrame"),ce(e,"webkitRequest","webkitCancel","AnimationFrame")}),Zone.__load_patch("blocking",(e,t)=>{const n=["alert","prompt","confirm"];for(let o=0;o<n.length;o++)C(e,n[o],(n,o,r)=>function(o,s){return t.current.run(n,e,s,r)})}),Zone.__load_patch("EventTarget",(e,t,n)=>{!function(e,t){t.patchEventPrototype(e,t)}(e,n),le(e,n);const o=e.XMLHttpRequestEventTarget;o&&o.prototype&&n.patchEventTarget(e,[o.prototype])}),Zone.__load_patch("MutationObserver",(e,t,n)=>{P("MutationObserver"),P("WebKitMutationObserver")}),Zone.__load_patch("IntersectionObserver",(e,t,n)=>{P("IntersectionObserver")}),Zone.__load_patch("FileReader",(e,t,n)=>{P("FileReader")}),Zone.__load_patch("on_property",(e,t,n)=>{ie(n,e)}),Zone.__load_patch("customElements",(e,t,n)=>{!function(e,t){const{isBrowser:n,isMix:o}=t.getGlobalObjects();(n||o)&&e.customElements&&"customElements"in e&&t.patchCallbacks(t,e.customElements,"customElements","define",["connectedCallback","disconnectedCallback","adoptedCallback","attributeChangedCallback"])}(e,n)}),Zone.__load_patch("XHR",(e,t)=>{!function(e){const u=e.XMLHttpRequest;if(!u)return;const h=u.prototype;let d=h[c],g=h[l];if(!d){const t=e.XMLHttpRequestEventTarget;if(t){const e=t.prototype;d=e[c],g=e[l]}}function m(e){const o=e.data,i=o.target;i[s]=!1,i[a]=!1;const u=i[r];d||(d=i[c],g=i[l]),u&&g.call(i,"readystatechange",u);const h=i[r]=()=>{if(i.readyState===i.DONE)if(!o.aborted&&i[s]&&"scheduled"===e.state){const n=i[t.__symbol__("loadfalse")];if(0!==i.status&&n&&n.length>0){const r=e.invoke;e.invoke=function(){const n=i[t.__symbol__("loadfalse")];for(let t=0;t<n.length;t++)n[t]===e&&n.splice(t,1);o.aborted||"scheduled"!==e.state||r.call(e)},n.push(e)}else e.invoke()}else o.aborted||!1!==i[s]||(i[a]=!0)};return d.call(i,"readystatechange",h),i[n]||(i[n]=e),T.apply(i,o.args),i[s]=!0,e}function y(){}function _(e){const t=e.data;return t.aborted=!0,w.apply(t.target,t.args)}const k=C(h,"open",()=>function(e,t){return e[o]=0==t[2],e[i]=t[1],k.apply(e,t)}),v=f("fetchTaskAborting"),b=f("fetchTaskScheduling"),T=C(h,"send",()=>function(e,n){if(!0===t.current[b])return T.apply(e,n);if(e[o])return T.apply(e,n);{const t={target:e,url:e[i],isPeriodic:!1,args:n,aborted:!1},o=p("XMLHttpRequest.send",y,t,m,_);e&&!0===e[a]&&!t.aborted&&"scheduled"===o.state&&o.invoke()}}),w=C(h,"abort",()=>function(e,o){const r=e[n];if(r&&"string"==typeof r.type){if(null==r.cancelFn||r.data&&r.data.aborted)return;r.zone.cancelTask(r)}else if(!0===t.current[v])return w.apply(e,o)})}(e);const n=f("xhrTask"),o=f("xhrSync"),r=f("xhrListener"),s=f("xhrScheduled"),i=f("xhrURL"),a=f("xhrErrorBeforeScheduled")}),Zone.__load_patch("geolocation",e=>{e.navigator&&e.navigator.geolocation&&function(e,t){const n=e.constructor.name;for(let r=0;r<t.length;r++){const s=t[r],i=e[s];if(i){if(!k(o(e,s)))continue;e[s]=(e=>{const t=function(){return e.apply(this,_(arguments,n+"."+s))};return j(t,e),t})(i)}}}(e.navigator.geolocation,["getCurrentPosition","watchPosition"])}),Zone.__load_patch("PromiseRejectionEvent",(e,t)=>{function n(t){return function(n){q(e,t).forEach(o=>{const r=e.PromiseRejectionEvent;if(r){const e=new r(t,{promise:n.promise,reason:n.rejection});o.invoke(e)}})}}e.PromiseRejectionEvent&&(t[f("unhandledPromiseRejectionHandler")]=n("unhandledrejection"),t[f("rejectionHandledHandler")]=n("rejectionhandled"))})}}</p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### X-Frame-Options Header Not Set
##### Medium (Medium)
  
  
  
  
#### Description
<p>X-Frame-Options header is not included in the HTTP response to protect against 'ClickJacking' attacks.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Frame-Options`
  
  
  
  
Instances: 4
  
### Solution
<p>Most modern Web browsers support the X-Frame-Options HTTP header. Ensure it's set on all web pages returned by your site (if you expect the page to be framed only by pages on your server (e.g. it's part of a FRAMESET) then you'll want to use SAMEORIGIN, otherwise if you never expect the page to be framed, you should use DENY. Alternatively consider implementing Content Security Policy's "frame-ancestors" directive. </p>
  
### Reference
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options

  
#### CWE Id : 16
  
#### WASC Id : 15
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bypassSecurityTrustHtml`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `eVal`
  
  
  
  
Instances: 3
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  
  
Instances: 9
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css](https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 5
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/favicon.ico](https://domifa.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css](https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css](https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/favicon.ico](https://domifa.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `org/officeDocument/2006/docPropsVTypes`
  
  
  
  
Instances: 1
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>��?���q��r鞞���N�v�\x000f��lU<�z</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `TODO`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es2015.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `TODO`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `Select`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
Instances: 4
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bTODO\b and was detected in the element starting with: "function _defineProperty2(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.0dae8cbc97194c7caed4.js" type="module"></script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.0dae8cbc97194c7caed4.js" type="module"></script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.0dae8cbc97194c7caed4.js" type="module"></script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.0dae8cbc97194c7caed4.js" type="module"></script>`
  
  
  
  
Instances: 5
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.465b4a755f3f4e8d0ddd.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/favicon.ico](https://domifa.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js](https://domifa.fabrique.social.gouv.fr/runtime-es5.0dae8cbc97194c7caed4.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.a6a30791bfaa14d26c01.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css](https://domifa.fabrique.social.gouv.fr/styles.f2cec9f87d4eb8b42949.css)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `536870912`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1852507879`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1373503546`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16763904`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16744576`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `268435455`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1231636301`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `13408767`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `879679996`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1759359992`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `10079487`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `16776960`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `984961486`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `162941995`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1281953886`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1591671054`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `654459306`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `397917763`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `83908371`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js](https://domifa.fabrique.social.gouv.fr/main-es5.c304885847bb399b0b8a.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `1303535960`
  
  
  
  
Instances: 169
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>536870912, which evaluates to: 1987-01-05 18:48:32</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
