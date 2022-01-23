
# ZAP Scanning Report

Generated on Mon, 6 Sep 2021 15:53:05


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 4 |
| Low | 4 |
| Informational | 5 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: script-src unsafe-inline | Medium | 4 | 
| CSP: style-src unsafe-inline | Medium | 4 | 
| CSP: Wildcard Directive | Medium | 4 | 
| Source Code Disclosure - Java | Medium | 2 | 
| Dangerous JS Functions | Low | 2 | 
| Incomplete or No Cache-control Header Set | Low | 4 | 
| Permissions Policy Header Not Set | Low | 10 | 
| Server Leaks Version Information via "Server" HTTP Response Header Field | Low | 11 | 
| Base64 Disclosure | Informational | 2 | 
| Information Disclosure - Suspicious Comments | Informational | 4 | 
| Modern Web Application | Informational | 5 | 
| Storable and Cacheable Content | Informational | 11 | 
| Timestamp Disclosure - Unix | Informational | 7 | 

## Alert Detail


  
  
  
  
### CSP: script-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>script-src includes unsafe-inline.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
Instances: 4
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
Instances: 4
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self' https://*.fabrique.social.gouv.fr; connect-src 'self' https://*.fabrique.social.gouv.fr; font-src 'self'; img-src 'self'; script-src 'self' 'unsafe-eval' 'unsafe-inline' https://matomo.fabrique.social.gouv.fr/piwik.js; style-src 'self' 'unsafe-inline'`
  
  
  
  
Instances: 4
  
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

  
  
  
  
### Source Code Disclosure - Java
##### Medium (Medium)
  
  
  
  
#### Description
<p>Application Source Code was disclosed by the web server - Java</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `class t{constructor(e,t){this._parent=e,this._name=t?t.name||"unnamed":"<root>",this._properties=t&&t.properties||{},this._zoneDelegate=new l(this,this._parent&&this._parent._zoneDelegate,t)}static assertZonePatched(){if(e.Promise!==P.ZoneAwarePromise)throw new Error("Zone.js has detected that ZoneAwarePromise `(window|global).Promise` has been overwritten.\nMost likely cause is that a Promise polyfill has been loaded after Zone.js (Polyfilling Promise api is not necessary when zone.js is loaded. If you must load one, do so before loading zone.js.)")}static get root(){let e=t.current;for(;e.parent;)e=e.parent;return e}static get current(){return z.zone}static get currentTask(){return j}static __load_patch(r,s,a=!1){if(P.hasOwnProperty(r)){if(!a&&i)throw Error("Already loaded patch: "+r)}else if(!e["__Zone_disable_"+r]){const i="Zone:"+r;n(i),P[r]=s(e,t,C),o(i,i)}}get parent(){return this._parent}get name(){return this._name}get(e){const t=this.getZoneWith(e);if(t)return t._properties[e]}getZoneWith(e){let t=this;for(;t;){if(t._properties.hasOwnProperty(e))return t;t=t._parent}return null}fork(e){if(!e)throw new Error("ZoneSpec required!");return this._zoneDelegate.fork(this,e)}wrap(e,t){if("function"!=typeof e)throw new Error("Expecting function got: "+e);const n=this._zoneDelegate.intercept(this,e,t),o=this;return function(){return o.runGuarded(n,this,arguments,t)}}run(e,t,n,o){z={parent:z,zone:this};try{return this._zoneDelegate.invoke(this,e,t,n,o)}finally{z=z.parent}}runGuarded(e,t=null,n,o){z={parent:z,zone:this};try{try{return this._zoneDelegate.invoke(this,e,t,n,o)}catch(r){if(this._zoneDelegate.handleError(this,r))throw r}}finally{z=z.parent}}runTask(e,t,n){if(e.zone!=this)throw new Error("A task can only be run in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");if(e.state===v&&(e.type===O||e.type===D))return;const o=e.state!=w;o&&e._transitionTo(w,T),e.runCount++;const r=j;j=e,z={parent:z,zone:this};try{e.type==D&&e.data&&!e.data.isPeriodic&&(e.cancelFn=void 0);try{return this._zoneDelegate.invokeTask(this,e,t,n)}catch(s){if(this._zoneDelegate.handleError(this,s))throw s}}finally{e.state!==v&&e.state!==S&&(e.type==O||e.data&&e.data.isPeriodic?o&&e._transitionTo(T,w):(e.runCount=0,this._updateTaskCount(e,-1),o&&e._transitionTo(v,w,v))),z=z.parent,j=r}}scheduleTask(e){if(e.zone&&e.zone!==this){let t=this;for(;t;){if(t===e.zone)throw Error(`can not reschedule task to ${this.name} which is descendants of the original zone ${e.zone.name}`);t=t.parent}}e._transitionTo(b,v);const t=[];e._zoneDelegates=t,e._zone=this;try{e=this._zoneDelegate.scheduleTask(this,e)}catch(n){throw e._transitionTo(S,b,v),this._zoneDelegate.handleError(this,n),n}return e._zoneDelegates===t&&this._updateTaskCount(e,1),e.state==b&&e._transitionTo(T,b),e}scheduleMicroTask(e,t,n,o){return this.scheduleTask(new u(Z,e,t,n,o,void 0))}scheduleMacroTask(e,t,n,o,r){return this.scheduleTask(new u(D,e,t,n,o,r))}scheduleEventTask(e,t,n,o,r){return this.scheduleTask(new u(O,e,t,n,o,r))}cancelTask(e){if(e.zone!=this)throw new Error("A task can only be cancelled in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");e._transitionTo(E,T,w);try{this._zoneDelegate.cancelTask(this,e)}catch(t){throw e._transitionTo(S,E),this._zoneDelegate.handleError(this,t),t}return this._updateTaskCount(e,-1),e._transitionTo(v,E),e.runCount=0,e}_updateTaskCount(e,t){const n=e._zoneDelegates;-1==t&&(e._zoneDelegates=null);for(let o=0;o<n.length;o++)n[o]._updateTaskCount(e.type,t)}}return t.__symbol__=s,t})();const c={name:"",onHasTask:(e,t,n,o)=>e.hasTask(n,o),onScheduleTask:(e,t,n,o)=>e.scheduleTask(n,o),onInvokeTask:(e,t,n,o,r,s)=>e.invokeTask(n,o,r,s),onCancelTask:(e,t,n,o)=>e.cancelTask(n,o)};class l{constructor(e,t,n){this._taskCounts={microTask:0,macroTask:0,eventTask:0},this.zone=e,this._parentDelegate=t,this._forkZS=n&&(n&&n.onFork?n:t._forkZS),this._forkDlgt=n&&(n.onFork?t:t._forkDlgt),this._forkCurrZone=n&&(n.onFork?this.zone:t._forkCurrZone),this._interceptZS=n&&(n.onIntercept?n:t._interceptZS),this._interceptDlgt=n&&(n.onIntercept?t:t._interceptDlgt),this._interceptCurrZone=n&&(n.onIntercept?this.zone:t._interceptCurrZone),this._invokeZS=n&&(n.onInvoke?n:t._invokeZS),this._invokeDlgt=n&&(n.onInvoke?t:t._invokeDlgt),this._invokeCurrZone=n&&(n.onInvoke?this.zone:t._invokeCurrZone),this._handleErrorZS=n&&(n.onHandleError?n:t._handleErrorZS),this._handleErrorDlgt=n&&(n.onHandleError?t:t._handleErrorDlgt),this._handleErrorCurrZone=n&&(n.onHandleError?this.zone:t._handleErrorCurrZone),this._scheduleTaskZS=n&&(n.onScheduleTask?n:t._scheduleTaskZS),this._scheduleTaskDlgt=n&&(n.onScheduleTask?t:t._scheduleTaskDlgt),this._scheduleTaskCurrZone=n&&(n.onScheduleTask?this.zone:t._scheduleTaskCurrZone),this._invokeTaskZS=n&&(n.onInvokeTask?n:t._invokeTaskZS),this._invokeTaskDlgt=n&&(n.onInvokeTask?t:t._invokeTaskDlgt),this._invokeTaskCurrZone=n&&(n.onInvokeTask?this.zone:t._invokeTaskCurrZone),this._cancelTaskZS=n&&(n.onCancelTask?n:t._cancelTaskZS),this._cancelTaskDlgt=n&&(n.onCancelTask?t:t._cancelTaskDlgt),this._cancelTaskCurrZone=n&&(n.onCancelTask?this.zone:t._cancelTaskCurrZone),this._hasTaskZS=null,this._hasTaskDlgt=null,this._hasTaskDlgtOwner=null,this._hasTaskCurrZone=null;const o=n&&n.onHasTask;(o||t&&t._hasTaskZS)&&(this._hasTaskZS=o?n:c,this._hasTaskDlgt=t,this._hasTaskDlgtOwner=this,this._hasTaskCurrZone=e,n.onScheduleTask||(this._scheduleTaskZS=c,this._scheduleTaskDlgt=t,this._scheduleTaskCurrZone=this.zone),n.onInvokeTask||(this._invokeTaskZS=c,this._invokeTaskDlgt=t,this._invokeTaskCurrZone=this.zone),n.onCancelTask||(this._cancelTaskZS=c,this._cancelTaskDlgt=t,this._cancelTaskCurrZone=this.zone))}fork(e,t){return this._forkZS?this._forkZS.onFork(this._forkDlgt,this.zone,e,t):new a(e,t)}intercept(e,t,n){return this._interceptZS?this._interceptZS.onIntercept(this._interceptDlgt,this._interceptCurrZone,e,t,n):t}invoke(e,t,n,o,r){return this._invokeZS?this._invokeZS.onInvoke(this._invokeDlgt,this._invokeCurrZone,e,t,n,o,r):t.apply(n,o)}handleError(e,t){return!this._handleErrorZS||this._handleErrorZS.onHandleError(this._handleErrorDlgt,this._handleErrorCurrZone,e,t)}scheduleTask(e,t){let n=t;if(this._scheduleTaskZS)this._hasTaskZS&&n._zoneDelegates.push(this._hasTaskDlgtOwner),n=this._scheduleTaskZS.onScheduleTask(this._scheduleTaskDlgt,this._scheduleTaskCurrZone,e,t),n||(n=t);else if(t.scheduleFn)t.scheduleFn(t);else{if(t.type!=Z)throw new Error("Task is missing scheduleFn.");_(t)}return n}invokeTask(e,t,n,o){return this._invokeTaskZS?this._invokeTaskZS.onInvokeTask(this._invokeTaskDlgt,this._invokeTaskCurrZone,e,t,n,o):t.callback.apply(n,o)}cancelTask(e,t){let n;if(this._cancelTaskZS)n=this._cancelTaskZS.onCancelTask(this._cancelTaskDlgt,this._cancelTaskCurrZone,e,t);else{if(!t.cancelFn)throw Error("Task is not cancelable");n=t.cancelFn(t)}return n}hasTask(e,t){try{this._hasTaskZS&&this._hasTaskZS.onHasTask(this._hasTaskDlgt,this._hasTaskCurrZone,e,t)}catch(n){this.handleError(e,n)}}_updateTaskCount(e,t){const n=this._taskCounts,o=n[e],r=n[e]=o+t;if(r<0)throw new Error("More tasks executed then were scheduled.");0!=o&&0!=r||this.hasTask(this.zone,{microTask:n.microTask>0,macroTask:n.macroTask>0,eventTask:n.eventTask>0,change:e})}}class u{constructor(t,n,o,r,s,i){if(this._zone=null,this.runCount=0,this._zoneDelegates=null,this._state="notScheduled",this.type=t,this.source=n,this.data=r,this.scheduleFn=s,this.cancelFn=i,!o)throw new Error("callback is not defined");this.callback=o;const a=this;this.invoke=t===O&&r&&r.useG?u.invokeTask:function(){return u.invokeTask.call(e,a,this,arguments)}}static invokeTask(e,t,n){e||(e=this),I++;try{return e.runCount++,e.zone.runTask(e,t,n)}finally{1==I&&y(),I--}}get zone(){return this._zone}get state(){return this._state}cancelScheduleRequest(){this._transitionTo(v,b)}_transitionTo(e,t,n){if(this._state!==t&&this._state!==n)throw new Error(`${this.type} '${this.source}': can not transition to '${e}', expecting state '${t}'${n?" or '"+n+"'":""}, was '${this._state}'.`);this._state=e,e==v&&(this._zoneDelegates=null)}toString(){return this.data&&void 0!==this.data.handleId?this.data.handleId.toString():Object.prototype.toString.call(this)}toJSON(){return{type:this.type,state:this.state,source:this.source,zone:this.zone.name,runCount:this.runCount}}}const h=s("setTimeout"),p=s("Promise"),f=s("then");let d,g=[],m=!1;function _(t){if(0===I&&0===g.length)if(d||e[p]&&(d=e[p].resolve(0)),d){let e=d[f];e||(e=d.then),e.call(d,y)}else e[h](y,0);t&&g.push(t)}function y(){if(!m){for(m=!0;g.length;){const t=g;g=[];for(let n=0;n<t.length;n++){const o=t[n];try{o.zone.runTask(o,null,null)}catch(e){C.onUnhandledError(e)}}}C.microtaskDrainDone(),m=!1}}const k={name:"NO ZONE"},v="notScheduled",b="scheduling",T="scheduled",w="running",E="canceling",S="unknown",Z="microTask",D="macroTask",O="eventTask",P={},C={symbol:s,currentZoneFrame:()=>z,onUnhandledError:R,microtaskDrainDone:R,scheduleMicroTask:_,showUncaughtError:()=>!a[s("ignoreConsoleErrorUncaughtError")],patchEventTarget:()=>[],patchOnProperties:R,patchMethod:()=>R,bindArguments:()=>[],patchThen:()=>R,patchMacroTask:()=>R,patchEventPrototype:()=>R,isIEOrEdge:()=>!1,getGlobalObjects:()=>{},ObjectDefineProperty:()=>R,ObjectGetOwnPropertyDescriptor:()=>{},ObjectCreate:()=>{},ArraySlice:()=>[],patchClass:()=>R,wrapWithCurrentZone:()=>R,filterProperties:()=>[],attachOriginToPatched:()=>R,_redefineProperty:()=>R,patchCallbacks:()=>R};let z={parent:null,zone:new a(null,null)},j=null,I=0;function R(){}o("Zone","Zone"),e.Zone=a}("undefined"!=typeof window&&window||"undefined"!=typeof self&&self||global);const e=Object.getOwnPropertyDescriptor,t=Object.defineProperty,n=Object.getPrototypeOf,o=Object.create,r=Array.prototype.slice,s="addEventListener",i="removeEventListener",a=Zone.__symbol__(s),c=Zone.__symbol__(i),l="true",u="false",h=Zone.__symbol__("");function p(e,t){return Zone.current.wrap(e,t)}function f(e,t,n,o,r){return Zone.current.scheduleMacroTask(e,t,n,o,r)}const d=Zone.__symbol__,g="undefined"!=typeof window,m=g?window:void 0,_=g&&m||"object"==typeof self&&self||global,y=[null];function k(e,t){for(let n=e.length-1;n>=0;n--)"function"==typeof e[n]&&(e[n]=p(e[n],t+"_"+n));return e}function v(e){return!e||!1!==e.writable&&!("function"==typeof e.get&&void 0===e.set)}const b="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope,T=!("nw"in _)&&void 0!==_.process&&"[object process]"==={}.toString.call(_.process),w=!T&&!b&&!(!g||!m.HTMLElement),E=void 0!==_.process&&"[object process]"==={}.toString.call(_.process)&&!b&&!(!g||!m.HTMLElement),S={},Z=function(e){if(!(e=e||_.event))return;let t=S[e.type];t||(t=S[e.type]=d("ON_PROPERTY"+e.type));const n=this||e.target||_,o=n[t];let r;if(w&&n===m&&"error"===e.type){const t=e;r=o&&o.call(this,t.message,t.filename,t.lineno,t.colno,t.error),!0===r&&e.preventDefault()}else r=o&&o.apply(this,arguments),null!=r&&!r&&e.preventDefault();return r};function D(n,o,r){let s=e(n,o);if(!s&&r&&e(r,o)&&(s={enumerable:!0,configurable:!0}),!s||!s.configurable)return;const i=d("on"+o+"patched");if(n.hasOwnProperty(i)&&n[i])return;delete s.writable,delete s.value;const a=s.get,c=s.set,l=o.substr(2);let u=S[l];u||(u=S[l]=d("ON_PROPERTY"+l)),s.set=function(e){let t=this;!t&&n===_&&(t=_),t&&(t[u]&&t.removeEventListener(l,Z),c&&c.apply(t,y),"function"==typeof e?(t[u]=e,t.addEventListener(l,Z,!1)):t[u]=null)},s.get=function(){let e=this;if(!e&&n===_&&(e=_),!e)return null;const t=e[u];if(t)return t;if(a){let t=a&&a.call(this);if(t)return s.set.call(this,t),"function"==typeof e.removeAttribute&&e.removeAttribute(o),t}return null},t(n,o,s),n[i]=!0}function O(e,t,n){if(t)for(let o=0;o<t.length;o++)D(e,"on"+t[o],n);else{const t=[];for(const n in e)"on"==n.substr(0,2)&&t.push(n);for(let o=0;o<t.length;o++)D(e,t[o],n)}}const P=d("originalInstance");function C(e){const n=_[e];if(!n)return;_[d(e)]=n,_[e]=function(){const t=k(arguments,e);switch(t.length){case 0:this[P]=new n;break;case 1:this[P]=new n(t[0]);break;case 2:this[P]=new n(t[0],t[1]);break;case 3:this[P]=new n(t[0],t[1],t[2]);break;case 4:this[P]=new n(t[0],t[1],t[2],t[3]);break;default:throw new Error("Arg list too long.")}},I(_[e],n);const o=new n(function(){});let r;for(r in o)"XMLHttpRequest"===e&&"responseBlob"===r||function(n){"function"==typeof o[n]?_[e].prototype[n]=function(){return this[P][n].apply(this[P],arguments)}:t(_[e].prototype,n,{set:function(t){"function"==typeof t?(this[P][n]=p(t,e+"."+n),I(this[P][n],t)):this[P][n]=t},get:function(){return this[P][n]}})}(r);for(r in n)"prototype"!==r&&n.hasOwnProperty(r)&&(_[e][r]=n[r])}function z(t,o,r){let s=t;for(;s&&!s.hasOwnProperty(o);)s=n(s);!s&&t[o]&&(s=t);const i=d(o);let a=null;if(s&&(!(a=s[i])||!s.hasOwnProperty(i))&&(a=s[i]=s[o],v(s&&e(s,o)))){const e=r(a,i,o);s[o]=function(){return e(this,arguments)},I(s[o],a)}return a}function j(e,t,n){let o=null;function r(e){const t=e.data;return t.args[t.cbIdx]=function(){e.invoke.apply(this,arguments)},o.apply(t.target,t.args),e}o=z(e,t,e=>function(t,o){const s=n(t,o);return s.cbIdx>=0&&"function"==typeof o[s.cbIdx]?f(s.name,o[s.cbIdx],s,r):e.apply(t,o)})}function I(e,t){e[d("OriginalDelegate")]=t}let R=!1,M=!1;function x(){if(R)return M;R=!0;try{const e=m.navigator.userAgent;(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/")||-1!==e.indexOf("Edge/"))&&(M=!0)}catch(e){}return M}Zone.__load_patch("ZoneAwarePromise",(e,t,n)=>{const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=n.symbol,i=[],a=!0===e[s("DISABLE_WRAPPING_UNCAUGHT_PROMISE_REJECTION")],c=s("Promise"),l=s("then");n.onUnhandledError=e=>{if(n.showUncaughtError()){const t=e&&e.rejection;t?console.error("Unhandled Promise rejection:",t instanceof Error?t.message:t,"; Zone:",e.zone.name,"; Task:",e.task&&e.task.source,"; Value:",t,t instanceof Error?t.stack:void 0):console.error(e)}},n.microtaskDrainDone=()=>{for(;i.length;){const t=i.shift();try{t.zone.runGuarded(()=>{throw t.throwOriginal?t.rejection:t})}catch(e){h(e)}}};const u=s("unhandledPromiseRejectionHandler");function h(e){n.onUnhandledError(e);try{const n=t[u];"function"==typeof n&&n.call(this,e)}catch(o){}}function p(e){return e&&e.then}function f(e){return e}function d(e){return C.reject(e)}const g=s("state"),m=s("value"),_=s("finally"),y=s("parentPromiseValue"),k=s("parentPromiseState"),v=null,b=!0,T=!1;function w(e,t){return n=>{try{S(e,t,n)}catch(o){S(e,!1,o)}}}const E=s("currentTaskTrace");function S(e,o,s){const c=function(){let e=!1;return function(t){return function(){e||(e=!0,t.apply(null,arguments))}}}();if(e===s)throw new TypeError("Promise resolved with itself");if(e[g]===v){let h=null;try{("object"==typeof s||"function"==typeof s)&&(h=s&&s.then)}catch(l){return c(()=>{S(e,!1,l)})(),e}if(o!==T&&s instanceof C&&s.hasOwnProperty(g)&&s.hasOwnProperty(m)&&s[g]!==v)D(s),S(e,s[g],s[m]);else if(o!==T&&"function"==typeof h)try{h.call(s,c(w(e,o)),c(w(e,!1)))}catch(l){c(()=>{S(e,!1,l)})()}else{e[g]=o;const c=e[m];if(e[m]=s,e[_]===_&&o===b&&(e[g]=e[k],e[m]=e[y]),o===T&&s instanceof Error){const e=t.currentTask&&t.currentTask.data&&t.currentTask.data.__creationTrace__;e&&r(s,E,{configurable:!0,enumerable:!1,writable:!0,value:e})}for(let t=0;t<c.length;)O(e,c[t++],c[t++],c[t++],c[t++]);if(0==c.length&&o==T){e[g]=0;let o=s;try{throw new Error("Uncaught (in promise): "+function(e){return e&&e.toString===Object.prototype.toString?(e.constructor&&e.constructor.name||"")+": "+JSON.stringify(e):e?e.toString():Object.prototype.toString.call(e)}(s)+(s&&s.stack?"\n"+s.stack:""))}catch(u){o=u}a&&(o.throwOriginal=!0),o.rejection=s,o.promise=e,o.zone=t.current,o.task=t.currentTask,i.push(o),n.scheduleMicroTask()}}}return e}const Z=s("rejectionHandledHandler");function D(e){if(0===e[g]){try{const n=t[Z];n&&"function"==typeof n&&n.call(this,{rejection:e[m],promise:e})}catch(n){}e[g]=T;for(let t=0;t<i.length;t++)e===i[t].promise&&i.splice(t,1)}}function O(e,t,n,o,r){D(e);const s=e[g],i=s?"function"==typeof o?o:f:"function"==typeof r?r:d;t.scheduleMicroTask("Promise.then",()=>{try{const o=e[m],r=!!n&&_===n[_];r&&(n[y]=o,n[k]=s);const a=t.run(i,void 0,r&&i!==d&&i!==f?[]:[o]);S(n,!0,a)}catch(o){S(n,!1,o)}},n)}const P=function(){};class C{static toString(){return"function ZoneAwarePromise() { [native code] }"}static resolve(e){return S(new this(null),b,e)}static reject(e){return S(new this(null),T,e)}static race(e){let t,n,o=new this((e,o)=>{t=e,n=o});function r(e){t(e)}function s(e){n(e)}for(let i of e)p(i)||(i=this.resolve(i)),i.then(r,s);return o}static all(e){return C.allWithCallback(e)}static allSettled(e){return(this&&this.prototype instanceof C?this:C).allWithCallback(e,{thenCallback:e=>({status:"fulfilled",value:e}),errorCallback:e=>({status:"rejected",reason:e})})}static allWithCallback(e,t){let n,o,r=new this((e,t)=>{n=e,o=t}),s=2,i=0;const a=[];for(let l of e){p(l)||(l=this.resolve(l));const e=i;try{l.then(o=>{a[e]=t?t.thenCallback(o):o,s--,0===s&&n(a)},r=>{t?(a[e]=t.errorCallback(r),s--,0===s&&n(a)):o(r)})}catch(c){o(c)}s++,i++}return s-=2,0===s&&n(a),r}constructor(e){const t=this;if(!(t instanceof C))throw new Error("Must be an instanceof Promise.");t[g]=v,t[m]=[];try{e&&e(w(t,b),w(t,T))}catch(n){S(t,!1,n)}}get[Symbol.toStringTag](){return"Promise"}get[Symbol.species](){return C}then(e,n){let o=this.constructor[Symbol.species];(!o||"function"!=typeof o)&&(o=this.constructor||C);const r=new o(P),s=t.current;return this[g]==v?this[m].push(s,r,e,n):O(this,s,r,e,n),r}catch(e){return this.then(null,e)}finally(e){let n=this.constructor[Symbol.species];(!n||"function"!=typeof n)&&(n=C);const o=new n(P);o[_]=_;const r=t.current;return this[g]==v?this[m].push(r,o,e,e):O(this,r,o,e,e),o}}C.resolve=C.resolve,C.reject=C.reject,C.race=C.race,C.all=C.all;const j=e[c]=e.Promise;e.Promise=C;const I=s("thenPatched");function R(e){const t=e.prototype,n=o(t,"then");if(n&&(!1===n.writable||!n.configurable))return;const r=t.then;t[l]=r,e.prototype.then=function(e,t){return new C((e,t)=>{r.call(this,e,t)}).then(e,t)},e[I]=!0}return n.patchThen=R,j&&(R(j),z(e,"fetch",e=>function(e){return function(t,n){let o=e.apply(t,n);if(o instanceof C)return o;let r=o.constructor;return r[I]||R(r),o}}(e))),Promise[t.__symbol__("uncaughtPromiseErrors")]=i,C}),Zone.__load_patch("toString",e=>{const t=Function.prototype.toString,n=d("OriginalDelegate"),o=d("Promise"),r=d("Error"),s=function(){if("function"==typeof this){const s=this[n];if(s)return"function"==typeof s?t.call(s):Object.prototype.toString.call(s);if(this===Promise){const n=e[o];if(n)return t.call(n)}if(this===Error){const n=e[r];if(n)return t.call(n)}}return t.call(this)};s[n]=t,Function.prototype.toString=s;const i=Object.prototype.toString;Object.prototype.toString=function(){return"function"==typeof Promise&&this instanceof Promise?"[object Promise]":i.call(this)}});let L=!1;if("undefined"!=typeof window)try{const e=Object.defineProperty({},"passive",{get:function(){L=!0}});window.addEventListener("test",e,e),window.removeEventListener("test",e,e)}catch(ce){L=!1}const N={useG:!0},A={},H={},F=new RegExp("^"+h+"(\\w+)(true|false)$"),B=d("propagationStopped");function X(e,t){const n=(t?t(e):e)+u,o=(t?t(e):e)+l,r=h+n,s=h+o;A[e]={},A[e][u]=r,A[e][l]=s}function G(e,t,o){const r=o&&o.add||s,a=o&&o.rm||i,c=o&&o.listeners||"eventListeners",p=o&&o.rmAll||"removeAllListeners",f=d(r),g="."+r+":",m=function(e,t,n){if(e.isRemoved)return;const o=e.callback;"object"==typeof o&&o.handleEvent&&(e.callback=e=>o.handleEvent(e),e.originalDelegate=o),e.invoke(e,t,[n]);const r=e.options;r&&"object"==typeof r&&r.once&&t[a].call(t,n.type,e.originalDelegate?e.originalDelegate:e.callback,r)},_=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type][u]];if(o)if(1===o.length)m(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)m(e[o],n,t)}},y=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type][l]];if(o)if(1===o.length)m(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)m(e[o],n,t)}};function k(t,o){if(!t)return!1;let s=!0;o&&void 0!==o.useG&&(s=o.useG);const i=o&&o.vh;let m=!0;o&&void 0!==o.chkDup&&(m=o.chkDup);let k=!1;o&&void 0!==o.rt&&(k=o.rt);let v=t;for(;v&&!v.hasOwnProperty(r);)v=n(v);if(!v&&t[r]&&(v=t),!v||v[f])return!1;const b=o&&o.eventNameToString,w={},E=v[f]=v[r],S=v[d(a)]=v[a],Z=v[d(c)]=v[c],D=v[d(p)]=v[p];let O;function P(e,t){return!L&&"object"==typeof e&&e?!!e.capture:L&&t?"boolean"==typeof e?{capture:e,passive:!0}:e?"object"==typeof e&&!1!==e.passive?Object.assign(Object.assign({},e),{passive:!0}):e:{passive:!0}:e}o&&o.prepend&&(O=v[d(o.prepend)]=v[o.prepend]);const C=s?function(e){if(!w.isExisting)return E.call(w.target,w.eventName,w.capture?y:_,w.options)}:function(e){return E.call(w.target,w.eventName,e.invoke,w.options)},z=s?function(e){if(!e.isRemoved){const t=A[e.eventName];let n;t&&(n=t[e.capture?l:u]);const o=n&&e.target[n];if(o)for(let r=0;r<o.length;r++)if(o[r]===e){o.splice(r,1),e.isRemoved=!0,0===o.length&&(e.allRemoved=!0,e.target[n]=null);break}}if(e.allRemoved)return S.call(e.target,e.eventName,e.capture?y:_,e.options)}:function(e){return S.call(e.target,e.eventName,e.invoke,e.options)},j=o&&o.diff?o.diff:function(e,t){const n=typeof t;return"function"===n&&e.callback===t||"object"===n&&e.originalDelegate===t},R=Zone[d("UNPATCHED_EVENTS")],M=e[d("PASSIVE_EVENTS")],x=function(t,n,r,a,c=!1,h=!1){return function(){const p=this||e;let f=arguments[0];o&&o.transferEventName&&(f=o.transferEventName(f));let d=arguments[1];if(!d)return t.apply(this,arguments);if(T&&"uncaughtException"===f)return t.apply(this,arguments);let g=!1;if("function"!=typeof d){if(!d.handleEvent)return t.apply(this,arguments);g=!0}if(i&&!i(t,d,p,arguments))return;const _=L&&!!M&&-1!==M.indexOf(f),y=P(arguments[2],_);if(R)for(let e=0;e<R.length;e++)if(f===R[e])return _?t.call(p,f,d,y):t.apply(this,arguments);const k=!!y&&("boolean"==typeof y||y.capture),v=!(!y||"object"!=typeof y)&&y.once,E=Zone.current;let S=A[f];S||(X(f,b),S=A[f]);const Z=S[k?l:u];let D,O=p[Z],C=!1;if(O){if(C=!0,m)for(let e=0;e<O.length;e++)if(j(O[e],d))return}else O=p[Z]=[];const z=p.constructor.name,I=H[z];I&&(D=I[f]),D||(D=z+n+(b?b(f):f)),w.options=y,v&&(w.options.once=!1),w.target=p,w.capture=k,w.eventName=f,w.isExisting=C;const x=s?N:void 0;x&&(x.taskData=w);const F=E.scheduleEventTask(D,d,x,r,a);return w.target=null,x&&(x.taskData=null),v&&(y.once=!0),!L&&"boolean"==typeof F.options||(F.options=y),F.target=p,F.capture=k,F.eventName=f,g&&(F.originalDelegate=d),h?O.unshift(F):O.push(F),c?p:void 0}};return v[r]=x(E,g,C,z,k),O&&(v.prependListener=x(O,".prependListener:",function(e){return O.call(w.target,w.eventName,e.invoke,w.options)},z,k,!0)),v[a]=function(){const t=this||e;let n=arguments[0];o&&o.transferEventName&&(n=o.transferEventName(n));const r=arguments[2],s=!!r&&("boolean"==typeof r||r.capture),a=arguments[1];if(!a)return S.apply(this,arguments);if(i&&!i(S,a,t,arguments))return;const c=A[n];let p;c&&(p=c[s?l:u]);const f=p&&t[p];if(f)for(let e=0;e<f.length;e++){const o=f[e];if(j(o,a))return f.splice(e,1),o.isRemoved=!0,0===f.length&&(o.allRemoved=!0,t[p]=null,"string"==typeof n)&&(t[h+"ON_PROPERTY"+n]=null),o.zone.cancelTask(o),k?t:void 0}return S.apply(this,arguments)},v[c]=function(){const t=this||e;let n=arguments[0];o&&o.transferEventName&&(n=o.transferEventName(n));const r=[],s=q(t,b?b(n):n);for(let e=0;e<s.length;e++){const t=s[e];r.push(t.originalDelegate?t.originalDelegate:t.callback)}return r},v[p]=function(){const t=this||e;let n=arguments[0];if(n){o&&o.transferEventName&&(n=o.transferEventName(n));const e=A[n];if(e){const o=t[e[u]],r=t[e[l]];if(o){const e=o.slice();for(let t=0;t<e.length;t++){const o=e[t];this[a].call(this,n,o.originalDelegate?o.originalDelegate:o.callback,o.options)}}if(r){const e=r.slice();for(let t=0;t<e.length;t++){const o=e[t];this[a].call(this,n,o.originalDelegate?o.originalDelegate:o.callback,o.options)}}}}else{const e=Object.keys(t);for(let t=0;t<e.length;t++){const n=F.exec(e[t]);let o=n&&n[1];o&&"removeListener"!==o&&this[p].call(this,o)}this[p].call(this,"removeListener")}if(k)return this},I(v[r],E),I(v[a],S),D&&I(v[p],D),Z&&I(v[c],Z),!0}let v=[];for(let n=0;n<t.length;n++)v[n]=k(t[n],o);return v}function q(e,t){if(!t){const n=[];for(let o in e){const r=F.exec(o);let s=r&&r[1];if(s&&(!t||s===t)){const t=e[o];if(t)for(let e=0;e<t.length;e++)n.push(t[e])}}return n}let n=A[t];n||(X(t),n=A[t]);const o=e[n[u]],r=e[n[l]];return o?r?o.concat(r):o.slice():r?r.slice():[]}function W(e,t){const n=e.Event;n&&n.prototype&&t.patchMethod(n.prototype,"stopImmediatePropagation",e=>function(t,n){t[B]=!0,e&&e.apply(t,n)})}function Y(e,t,n,o,r){const s=Zone.__symbol__(o);if(t[s])return;const i=t[s]=t[o];t[o]=function(s,a,c){return a&&a.prototype&&r.forEach(function(t){const r=`${n}.${o}::`+t,s=a.prototype;if(s.hasOwnProperty(t)){const n=e.ObjectGetOwnPropertyDescriptor(s,t);n&&n.value?(n.value=e.wrapWithCurrentZone(n.value,r),e._redefineProperty(a.prototype,t,n)):s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}else s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}),i.call(t,s,a,c)},e.attachOriginToPatched(t[o],i)}const U=["absolutedeviceorientation","afterinput","afterprint","appinstalled","beforeinstallprompt","beforeprint","beforeunload","devicelight","devicemotion","deviceorientation","deviceorientationabsolute","deviceproximity","hashchange","languagechange","message","mozbeforepaint","offline","online","paint","pageshow","pagehide","popstate","rejectionhandled","storage","unhandledrejection","unload","userproximity","vrdisplayconnected","vrdisplaydisconnected","vrdisplaypresentchange"],V=["encrypted","waitingforkey","msneedkey","mozinterruptbegin","mozinterruptend"],$=["load"],J=["blur","error","focus","load","resize","scroll","messageerror"],K=["bounce","finish","start"],Q=["loadstart","progress","abort","error","load","progress","timeout","loadend","readystatechange"],ee=["upgradeneeded","complete","abort","success","error","blocked","versionchange","close"],te=["close","error","open","message"],ne=["error","message"],oe=["abort","animationcancel","animationend","animationiteration","auxclick","beforeinput","blur","cancel","canplay","canplaythrough","change","compositionstart","compositionupdate","compositionend","cuechange","click","close","contextmenu","curechange","dblclick","drag","dragend","dragenter","dragexit","dragleave","dragover","drop","durationchange","emptied","ended","error","focus","focusin","focusout","gotpointercapture","input","invalid","keydown","keypress","keyup","load","loadstart","loadeddata","loadedmetadata","lostpointercapture","mousedown","mouseenter","mouseleave","mousemove","mouseout","mouseover","mouseup","mousewheel","orientationchange","pause","play","playing","pointercancel","pointerdown","pointerenter","pointerleave","pointerlockchange","mozpointerlockchange","webkitpointerlockerchange","pointerlockerror","mozpointerlockerror","webkitpointerlockerror","pointermove","pointout","pointerover","pointerup","progress","ratechange","reset","resize","scroll","seeked","seeking","select","selectionchange","selectstart","show","sort","stalled","submit","suspend","timeupdate","volumechange","touchcancel","touchmove","touchstart","touchend","transitioncancel","transitionend","waiting","wheel"].concat(["webglcontextrestored","webglcontextlost","webglcontextcreationerror"],["autocomplete","autocompleteerror"],["toggle"],["afterscriptexecute","beforescriptexecute","DOMContentLoaded","freeze","fullscreenchange","mozfullscreenchange","webkitfullscreenchange","msfullscreenchange","fullscreenerror","mozfullscreenerror","webkitfullscreenerror","msfullscreenerror","readystatechange","visibilitychange","resume"],U,["beforecopy","beforecut","beforepaste","copy","cut","paste","dragstart","loadend","animationstart","search","transitionrun","transitionstart","webkitanimationend","webkitanimationiteration","webkitanimationstart","webkittransitionend"],["activate","afterupdate","ariarequest","beforeactivate","beforedeactivate","beforeeditfocus","beforeupdate","cellchange","controlselect","dataavailable","datasetchanged","datasetcomplete","errorupdate","filterchange","layoutcomplete","losecapture","move","moveend","movestart","propertychange","resizeend","resizestart","rowenter","rowexit","rowsdelete","rowsinserted","command","compassneedscalibration","deactivate","help","mscontentzoom","msmanipulationstatechanged","msgesturechange","msgesturedoubletap","msgestureend","msgesturehold","msgesturestart","msgesturetap","msgotpointercapture","msinertiastart","mslostpointercapture","mspointercancel","mspointerdown","mspointerenter","mspointerhover","mspointerleave","mspointermove","mspointerout","mspointerover","mspointerup","pointerout","mssitemodejumplistitemremoved","msthumbnailclick","stop","storagecommit"]);function re(e,t,n){if(!n||0===n.length)return t;const o=n.filter(t=>t.target===e);if(!o||0===o.length)return t;const r=o[0].ignoreProperties;return t.filter(e=>-1===r.indexOf(e))}function se(e,t,n,o){e&&O(e,re(e,t,n),o)}Zone.__load_patch("util",(n,a,c)=>{c.patchOnProperties=O,c.patchMethod=z,c.bindArguments=k,c.patchMacroTask=j;const f=a.__symbol__("BLACK_LISTED_EVENTS"),d=a.__symbol__("UNPATCHED_EVENTS");n[d]&&(n[f]=n[d]),n[f]&&(a[f]=a[d]=n[f]),c.patchEventPrototype=W,c.patchEventTarget=G,c.isIEOrEdge=x,c.ObjectDefineProperty=t,c.ObjectGetOwnPropertyDescriptor=e,c.ObjectCreate=o,c.ArraySlice=r,c.patchClass=C,c.wrapWithCurrentZone=p,c.filterProperties=re,c.attachOriginToPatched=I,c._redefineProperty=Object.defineProperty,c.patchCallbacks=Y,c.getGlobalObjects=()=>({globalSources:H,zoneSymbolEventNames:A,eventNames:oe,isBrowser:w,isMix:E,isNode:T,TRUE_STR:l,FALSE_STR:u,ZONE_SYMBOL_PREFIX:h,ADD_EVENT_LISTENER_STR:s,REMOVE_EVENT_LISTENER_STR:i})});const ie=d("zoneTask");function ae(e,t,n,o){let r=null,s=null;n+=o;const i={};function a(t){const n=t.data;return n.args[0]=function(){return t.invoke.apply(this,arguments)},n.handleId=r.apply(e,n.args),t}function c(t){return s.call(e,t.data.handleId)}r=z(e,t+=o,n=>function(r,s){if("function"==typeof s[0]){const e={isPeriodic:"Interval"===o,delay:"Timeout"===o||"Interval"===o?s[1]||0:void 0,args:s},n=s[0];s[0]=function(){try{return n.apply(this,arguments)}finally{e.isPeriodic||("number"==typeof e.handleId?delete i[e.handleId]:e.handleId&&(e.handleId[ie]=null))}};const r=f(t,s[0],e,a,c);if(!r)return r;const l=r.data.handleId;return"number"==typeof l?i[l]=r:l&&(l[ie]=r),l&&l.ref&&l.unref&&"function"==typeof l.ref&&"function"==typeof l.unref&&(r.ref=l.ref.bind(l),r.unref=l.unref.bind(l)),"number"==typeof l||l?l:r}return n.apply(e,s)}),s=z(e,n,t=>function(n,o){const r=o[0];let s;"number"==typeof r?s=i[r]:(s=r&&r[ie],s||(s=r)),s&&"string"==typeof s.type?"notScheduled"!==s.state&&(s.cancelFn&&s.data.isPeriodic||0===s.runCount)&&("number"==typeof r?delete i[r]:r&&(r[ie]=null),s.zone.cancelTask(s)):t.apply(e,o)})}Zone.__load_patch("legacy",e=>{const t=e[Zone.__symbol__("legacyPatch")];t&&t()}),Zone.__load_patch("queueMicrotask",(e,t,n)=>{n.patchMethod(e,"queueMicrotask",e=>function(e,n){t.current.scheduleMicroTask("queueMicrotask",n[0])})}),Zone.__load_patch("timers",e=>{const t="set",n="clear";ae(e,t,n,"Timeout"),ae(e,t,n,"Interval"),ae(e,t,n,"Immediate")}),Zone.__load_patch("requestAnimationFrame",e=>{ae(e,"request","cancel","AnimationFrame"),ae(e,"mozRequest","mozCancel","AnimationFrame"),ae(e,"webkitRequest","webkitCancel","AnimationFrame")}),Zone.__load_patch("blocking",(e,t)=>{const n=["alert","prompt","confirm"];for(let o=0;o<n.length;o++)z(e,n[o],(n,o,r)=>function(o,s){return t.current.run(n,e,s,r)})}),Zone.__load_patch("EventTarget",(e,t,n)=>{(function(e,t){t.patchEventPrototype(e,t)})(e,n),function(e,t){if(Zone[t.symbol("patchEventTarget")])return;const{eventNames:n,zoneSymbolEventNames:o,TRUE_STR:r,FALSE_STR:s,ZONE_SYMBOL_PREFIX:i}=t.getGlobalObjects();for(let c=0;c<n.length;c++){const e=n[c],t=i+(e+s),a=i+(e+r);o[e]={},o[e][s]=t,o[e][r]=a}const a=e.EventTarget;a&&a.prototype&&t.patchEventTarget(e,[a&&a.prototype])}(e,n);const o=e.XMLHttpRequestEventTarget;o&&o.prototype&&n.patchEventTarget(e,[o.prototype])}),Zone.__load_patch("MutationObserver",(e,t,n)=>{C("MutationObserver"),C("WebKitMutationObserver")}),Zone.__load_patch("IntersectionObserver",(e,t,n)=>{C("IntersectionObserver")}),Zone.__load_patch("FileReader",(e,t,n)=>{C("FileReader")}),Zone.__load_patch("on_property",(e,t,o)=>{!function(e,t){if(T&&!E||Zone[e.symbol("patchEvents")])return;const o="undefined"!=typeof WebSocket,r=t.__Zone_ignore_on_properties;if(w){const t=window,o=function(){try{const e=m.navigator.userAgent;if(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/"))return!0}catch(e){}return!1}()?[{target:t,ignoreProperties:["error"]}]:[];se(t,oe.concat(["messageerror"]),r&&r.concat(o),n(t)),se(Document.prototype,oe,r),void 0!==t.SVGElement&&se(t.SVGElement.prototype,oe,r),se(Element.prototype,oe,r),se(HTMLElement.prototype,oe,r),se(HTMLMediaElement.prototype,V,r),se(HTMLFrameSetElement.prototype,U.concat(J),r),se(HTMLBodyElement.prototype,U.concat(J),r),se(HTMLFrameElement.prototype,$,r),se(HTMLIFrameElement.prototype,$,r);const s=t.HTMLMarqueeElement;s&&se(s.prototype,K,r);const i=t.Worker;i&&se(i.prototype,ne,r)}const s=t.XMLHttpRequest;s&&se(s.prototype,Q,r);const i=t.XMLHttpRequestEventTarget;i&&se(i&&i.prototype,Q,r),"undefined"!=typeof IDBIndex&&(se(IDBIndex.prototype,ee,r),se(IDBRequest.prototype,ee,r),se(IDBOpenDBRequest.prototype,ee,r),se(IDBDatabase.prototype,ee,r),se(IDBTransaction.prototype,ee,r),se(IDBCursor.prototype,ee,r)),o&&se(WebSocket.prototype,te,r)}(o,e)}),Zone.__load_patch("customElements",(e,t,n)=>{!function(e,t){const{isBrowser:n,isMix:o}=t.getGlobalObjects();(n||o)&&e.customElements&&"customElements"in e&&t.patchCallbacks(t,e.customElements,"customElements","define",["connectedCallback","disconnectedCallback","adoptedCallback","attributeChangedCallback"])}(e,n)}),Zone.__load_patch("XHR",(e,t)=>{!function(e){const u=e.XMLHttpRequest;if(!u)return;const h=u.prototype;let p=h[a],g=h[c];if(!p){const t=e.XMLHttpRequestEventTarget;if(t){const e=t.prototype;p=e[a],g=e[c]}}const m="readystatechange",_="scheduled";function y(e){const o=e.data,i=o.target;i[s]=!1,i[l]=!1;const u=i[r];p||(p=i[a],g=i[c]),u&&g.call(i,m,u);const h=i[r]=()=>{if(i.readyState===i.DONE)if(!o.aborted&&i[s]&&e.state===_){const n=i[t.__symbol__("loadfalse")];if(0!==i.status&&n&&n.length>0){const r=e.invoke;e.invoke=function(){const n=i[t.__symbol__("loadfalse")];for(let t=0;t<n.length;t++)n[t]===e&&n.splice(t,1);!o.aborted&&e.state===_&&r.call(e)},n.push(e)}else e.invoke()}else!o.aborted&&!1===i[s]&&(i[l]=!0)};return p.call(i,m,h),i[n]||(i[n]=e),E.apply(i,o.args),i[s]=!0,e}function k(){}function v(e){const t=e.data;return t.aborted=!0,S.apply(t.target,t.args)}const b=z(h,"open",()=>function(e,t){return e[o]=0==t[2],e[i]=t[1],b.apply(e,t)}),T=d("fetchTaskAborting"),w=d("fetchTaskScheduling"),E=z(h,"send",()=>function(e,n){if(!0===t.current[w]||e[o])return E.apply(e,n);{const t={target:e,url:e[i],isPeriodic:!1,args:n,aborted:!1},o=f("XMLHttpRequest.send",k,t,y,v);e&&!0===e[l]&&!t.aborted&&o.state===_&&o.invoke()}}),S=z(h,"abort",()=>function(e,o){const r=function(e){return e[n]}(e);if(r&&"string"==typeof r.type){if(null==r.cancelFn||r.data&&r.data.aborted)return;r.zone.cancelTask(r)}else if(!0===t.current[T])return S.apply(e,o)})}(e);const n=d("xhrTask"),o=d("xhrSync"),r=d("xhrListener"),s=d("xhrScheduled"),i=d("xhrURL"),l=d("xhrErrorBeforeScheduled")}),Zone.__load_patch("geolocation",t=>{t.navigator&&t.navigator.geolocation&&function(t,n){const o=t.constructor.name;for(let r=0;r<n.length;r++){const s=n[r],i=t[s];if(i){if(!v(e(t,s)))continue;t[s]=(e=>{const t=function(){return e.apply(this,k(arguments,o+"."+s))};return I(t,e),t})(i)}}}(t.navigator.geolocation,["getCurrentPosition","watchPosition"])}),Zone.__load_patch("PromiseRejectionEvent",(e,t)=>{function n(t){return function(n){q(e,t).forEach(o=>{const r=e.PromiseRejectionEvent;if(r){const e=new r(t,{promise:n.promise,reason:n.rejection});o.invoke(e)}})}}e.PromiseRejectionEvent&&(t[d("unhandledPromiseRejectionHandler")]=n("unhandledrejection"),t[d("rejectionHandledHandler")]=n("rejectionhandled"))})},7834:function(e,t,n){"use strict";const o="undefined"!=typeof globalThis&&globalThis,r="undefined"!=typeof window&&window,s="undefined"!=typeof self&&"undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope&&self,i="undefined"!=typeof global&&global,a=function(e,...t){if(a.translate){const n=a.translate(e,t);e=n[0],t=n[1]}let n=c(e[0],e.raw[0]);for(let o=1;o<e.length;o++)n+=t[o-1]+c(e[o],e.raw[o]);return n};function c(e,t){return":"===t.charAt(0)?e.substring(function(e,t){for(let n=1,o=1;n<e.length;n++,o++)if("\\"===t[o])o++;else if(":"===e[n])return n;throw new Error(`Unterminated $localize metadata block in "${t}".`)}(e,t)+1):e}(o||i||r||s).$localize=a,n(7277);var l=n(9141);n.n(l)().polyfill()}},function(e){e(e.s=7834)}`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  
  
  
  
Instances: 2
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p>class t{constructor(e,t){this._parent=e,this._name=t?t.name||"unnamed":"<root>",this._properties=t&&t.properties||{},this._zoneDelegate=new l(this,this._parent&&this._parent._zoneDelegate,t)}static assertZonePatched(){if(e.Promise!==P.ZoneAwarePromise)throw new Error("Zone.js has detected that ZoneAwarePromise `(window|global).Promise` has been overwritten.\nMost likely cause is that a Promise polyfill has been loaded after Zone.js (Polyfilling Promise api is not necessary when zone.js is loaded. If you must load one, do so before loading zone.js.)")}static get root(){let e=t.current;for(;e.parent;)e=e.parent;return e}static get current(){return z.zone}static get currentTask(){return j}static __load_patch(r,s,a=!1){if(P.hasOwnProperty(r)){if(!a&&i)throw Error("Already loaded patch: "+r)}else if(!e["__Zone_disable_"+r]){const i="Zone:"+r;n(i),P[r]=s(e,t,C),o(i,i)}}get parent(){return this._parent}get name(){return this._name}get(e){const t=this.getZoneWith(e);if(t)return t._properties[e]}getZoneWith(e){let t=this;for(;t;){if(t._properties.hasOwnProperty(e))return t;t=t._parent}return null}fork(e){if(!e)throw new Error("ZoneSpec required!");return this._zoneDelegate.fork(this,e)}wrap(e,t){if("function"!=typeof e)throw new Error("Expecting function got: "+e);const n=this._zoneDelegate.intercept(this,e,t),o=this;return function(){return o.runGuarded(n,this,arguments,t)}}run(e,t,n,o){z={parent:z,zone:this};try{return this._zoneDelegate.invoke(this,e,t,n,o)}finally{z=z.parent}}runGuarded(e,t=null,n,o){z={parent:z,zone:this};try{try{return this._zoneDelegate.invoke(this,e,t,n,o)}catch(r){if(this._zoneDelegate.handleError(this,r))throw r}}finally{z=z.parent}}runTask(e,t,n){if(e.zone!=this)throw new Error("A task can only be run in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");if(e.state===v&&(e.type===O||e.type===D))return;const o=e.state!=w;o&&e._transitionTo(w,T),e.runCount++;const r=j;j=e,z={parent:z,zone:this};try{e.type==D&&e.data&&!e.data.isPeriodic&&(e.cancelFn=void 0);try{return this._zoneDelegate.invokeTask(this,e,t,n)}catch(s){if(this._zoneDelegate.handleError(this,s))throw s}}finally{e.state!==v&&e.state!==S&&(e.type==O||e.data&&e.data.isPeriodic?o&&e._transitionTo(T,w):(e.runCount=0,this._updateTaskCount(e,-1),o&&e._transitionTo(v,w,v))),z=z.parent,j=r}}scheduleTask(e){if(e.zone&&e.zone!==this){let t=this;for(;t;){if(t===e.zone)throw Error(`can not reschedule task to ${this.name} which is descendants of the original zone ${e.zone.name}`);t=t.parent}}e._transitionTo(b,v);const t=[];e._zoneDelegates=t,e._zone=this;try{e=this._zoneDelegate.scheduleTask(this,e)}catch(n){throw e._transitionTo(S,b,v),this._zoneDelegate.handleError(this,n),n}return e._zoneDelegates===t&&this._updateTaskCount(e,1),e.state==b&&e._transitionTo(T,b),e}scheduleMicroTask(e,t,n,o){return this.scheduleTask(new u(Z,e,t,n,o,void 0))}scheduleMacroTask(e,t,n,o,r){return this.scheduleTask(new u(D,e,t,n,o,r))}scheduleEventTask(e,t,n,o,r){return this.scheduleTask(new u(O,e,t,n,o,r))}cancelTask(e){if(e.zone!=this)throw new Error("A task can only be cancelled in the zone of creation! (Creation: "+(e.zone||k).name+"; Execution: "+this.name+")");e._transitionTo(E,T,w);try{this._zoneDelegate.cancelTask(this,e)}catch(t){throw e._transitionTo(S,E),this._zoneDelegate.handleError(this,t),t}return this._updateTaskCount(e,-1),e._transitionTo(v,E),e.runCount=0,e}_updateTaskCount(e,t){const n=e._zoneDelegates;-1==t&&(e._zoneDelegates=null);for(let o=0;o<n.length;o++)n[o]._updateTaskCount(e.type,t)}}return t.__symbol__=s,t})();const c={name:"",onHasTask:(e,t,n,o)=>e.hasTask(n,o),onScheduleTask:(e,t,n,o)=>e.scheduleTask(n,o),onInvokeTask:(e,t,n,o,r,s)=>e.invokeTask(n,o,r,s),onCancelTask:(e,t,n,o)=>e.cancelTask(n,o)};class l{constructor(e,t,n){this._taskCounts={microTask:0,macroTask:0,eventTask:0},this.zone=e,this._parentDelegate=t,this._forkZS=n&&(n&&n.onFork?n:t._forkZS),this._forkDlgt=n&&(n.onFork?t:t._forkDlgt),this._forkCurrZone=n&&(n.onFork?this.zone:t._forkCurrZone),this._interceptZS=n&&(n.onIntercept?n:t._interceptZS),this._interceptDlgt=n&&(n.onIntercept?t:t._interceptDlgt),this._interceptCurrZone=n&&(n.onIntercept?this.zone:t._interceptCurrZone),this._invokeZS=n&&(n.onInvoke?n:t._invokeZS),this._invokeDlgt=n&&(n.onInvoke?t:t._invokeDlgt),this._invokeCurrZone=n&&(n.onInvoke?this.zone:t._invokeCurrZone),this._handleErrorZS=n&&(n.onHandleError?n:t._handleErrorZS),this._handleErrorDlgt=n&&(n.onHandleError?t:t._handleErrorDlgt),this._handleErrorCurrZone=n&&(n.onHandleError?this.zone:t._handleErrorCurrZone),this._scheduleTaskZS=n&&(n.onScheduleTask?n:t._scheduleTaskZS),this._scheduleTaskDlgt=n&&(n.onScheduleTask?t:t._scheduleTaskDlgt),this._scheduleTaskCurrZone=n&&(n.onScheduleTask?this.zone:t._scheduleTaskCurrZone),this._invokeTaskZS=n&&(n.onInvokeTask?n:t._invokeTaskZS),this._invokeTaskDlgt=n&&(n.onInvokeTask?t:t._invokeTaskDlgt),this._invokeTaskCurrZone=n&&(n.onInvokeTask?this.zone:t._invokeTaskCurrZone),this._cancelTaskZS=n&&(n.onCancelTask?n:t._cancelTaskZS),this._cancelTaskDlgt=n&&(n.onCancelTask?t:t._cancelTaskDlgt),this._cancelTaskCurrZone=n&&(n.onCancelTask?this.zone:t._cancelTaskCurrZone),this._hasTaskZS=null,this._hasTaskDlgt=null,this._hasTaskDlgtOwner=null,this._hasTaskCurrZone=null;const o=n&&n.onHasTask;(o||t&&t._hasTaskZS)&&(this._hasTaskZS=o?n:c,this._hasTaskDlgt=t,this._hasTaskDlgtOwner=this,this._hasTaskCurrZone=e,n.onScheduleTask||(this._scheduleTaskZS=c,this._scheduleTaskDlgt=t,this._scheduleTaskCurrZone=this.zone),n.onInvokeTask||(this._invokeTaskZS=c,this._invokeTaskDlgt=t,this._invokeTaskCurrZone=this.zone),n.onCancelTask||(this._cancelTaskZS=c,this._cancelTaskDlgt=t,this._cancelTaskCurrZone=this.zone))}fork(e,t){return this._forkZS?this._forkZS.onFork(this._forkDlgt,this.zone,e,t):new a(e,t)}intercept(e,t,n){return this._interceptZS?this._interceptZS.onIntercept(this._interceptDlgt,this._interceptCurrZone,e,t,n):t}invoke(e,t,n,o,r){return this._invokeZS?this._invokeZS.onInvoke(this._invokeDlgt,this._invokeCurrZone,e,t,n,o,r):t.apply(n,o)}handleError(e,t){return!this._handleErrorZS||this._handleErrorZS.onHandleError(this._handleErrorDlgt,this._handleErrorCurrZone,e,t)}scheduleTask(e,t){let n=t;if(this._scheduleTaskZS)this._hasTaskZS&&n._zoneDelegates.push(this._hasTaskDlgtOwner),n=this._scheduleTaskZS.onScheduleTask(this._scheduleTaskDlgt,this._scheduleTaskCurrZone,e,t),n||(n=t);else if(t.scheduleFn)t.scheduleFn(t);else{if(t.type!=Z)throw new Error("Task is missing scheduleFn.");_(t)}return n}invokeTask(e,t,n,o){return this._invokeTaskZS?this._invokeTaskZS.onInvokeTask(this._invokeTaskDlgt,this._invokeTaskCurrZone,e,t,n,o):t.callback.apply(n,o)}cancelTask(e,t){let n;if(this._cancelTaskZS)n=this._cancelTaskZS.onCancelTask(this._cancelTaskDlgt,this._cancelTaskCurrZone,e,t);else{if(!t.cancelFn)throw Error("Task is not cancelable");n=t.cancelFn(t)}return n}hasTask(e,t){try{this._hasTaskZS&&this._hasTaskZS.onHasTask(this._hasTaskDlgt,this._hasTaskCurrZone,e,t)}catch(n){this.handleError(e,n)}}_updateTaskCount(e,t){const n=this._taskCounts,o=n[e],r=n[e]=o+t;if(r<0)throw new Error("More tasks executed then were scheduled.");0!=o&&0!=r||this.hasTask(this.zone,{microTask:n.microTask>0,macroTask:n.macroTask>0,eventTask:n.eventTask>0,change:e})}}class u{constructor(t,n,o,r,s,i){if(this._zone=null,this.runCount=0,this._zoneDelegates=null,this._state="notScheduled",this.type=t,this.source=n,this.data=r,this.scheduleFn=s,this.cancelFn=i,!o)throw new Error("callback is not defined");this.callback=o;const a=this;this.invoke=t===O&&r&&r.useG?u.invokeTask:function(){return u.invokeTask.call(e,a,this,arguments)}}static invokeTask(e,t,n){e||(e=this),I++;try{return e.runCount++,e.zone.runTask(e,t,n)}finally{1==I&&y(),I--}}get zone(){return this._zone}get state(){return this._state}cancelScheduleRequest(){this._transitionTo(v,b)}_transitionTo(e,t,n){if(this._state!==t&&this._state!==n)throw new Error(`${this.type} '${this.source}': can not transition to '${e}', expecting state '${t}'${n?" or '"+n+"'":""}, was '${this._state}'.`);this._state=e,e==v&&(this._zoneDelegates=null)}toString(){return this.data&&void 0!==this.data.handleId?this.data.handleId.toString():Object.prototype.toString.call(this)}toJSON(){return{type:this.type,state:this.state,source:this.source,zone:this.zone.name,runCount:this.runCount}}}const h=s("setTimeout"),p=s("Promise"),f=s("then");let d,g=[],m=!1;function _(t){if(0===I&&0===g.length)if(d||e[p]&&(d=e[p].resolve(0)),d){let e=d[f];e||(e=d.then),e.call(d,y)}else e[h](y,0);t&&g.push(t)}function y(){if(!m){for(m=!0;g.length;){const t=g;g=[];for(let n=0;n<t.length;n++){const o=t[n];try{o.zone.runTask(o,null,null)}catch(e){C.onUnhandledError(e)}}}C.microtaskDrainDone(),m=!1}}const k={name:"NO ZONE"},v="notScheduled",b="scheduling",T="scheduled",w="running",E="canceling",S="unknown",Z="microTask",D="macroTask",O="eventTask",P={},C={symbol:s,currentZoneFrame:()=>z,onUnhandledError:R,microtaskDrainDone:R,scheduleMicroTask:_,showUncaughtError:()=>!a[s("ignoreConsoleErrorUncaughtError")],patchEventTarget:()=>[],patchOnProperties:R,patchMethod:()=>R,bindArguments:()=>[],patchThen:()=>R,patchMacroTask:()=>R,patchEventPrototype:()=>R,isIEOrEdge:()=>!1,getGlobalObjects:()=>{},ObjectDefineProperty:()=>R,ObjectGetOwnPropertyDescriptor:()=>{},ObjectCreate:()=>{},ArraySlice:()=>[],patchClass:()=>R,wrapWithCurrentZone:()=>R,filterProperties:()=>[],attachOriginToPatched:()=>R,_redefineProperty:()=>R,patchCallbacks:()=>R};let z={parent:null,zone:new a(null,null)},j=null,I=0;function R(){}o("Zone","Zone"),e.Zone=a}("undefined"!=typeof window&&window||"undefined"!=typeof self&&self||global);const e=Object.getOwnPropertyDescriptor,t=Object.defineProperty,n=Object.getPrototypeOf,o=Object.create,r=Array.prototype.slice,s="addEventListener",i="removeEventListener",a=Zone.__symbol__(s),c=Zone.__symbol__(i),l="true",u="false",h=Zone.__symbol__("");function p(e,t){return Zone.current.wrap(e,t)}function f(e,t,n,o,r){return Zone.current.scheduleMacroTask(e,t,n,o,r)}const d=Zone.__symbol__,g="undefined"!=typeof window,m=g?window:void 0,_=g&&m||"object"==typeof self&&self||global,y=[null];function k(e,t){for(let n=e.length-1;n>=0;n--)"function"==typeof e[n]&&(e[n]=p(e[n],t+"_"+n));return e}function v(e){return!e||!1!==e.writable&&!("function"==typeof e.get&&void 0===e.set)}const b="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope,T=!("nw"in _)&&void 0!==_.process&&"[object process]"==={}.toString.call(_.process),w=!T&&!b&&!(!g||!m.HTMLElement),E=void 0!==_.process&&"[object process]"==={}.toString.call(_.process)&&!b&&!(!g||!m.HTMLElement),S={},Z=function(e){if(!(e=e||_.event))return;let t=S[e.type];t||(t=S[e.type]=d("ON_PROPERTY"+e.type));const n=this||e.target||_,o=n[t];let r;if(w&&n===m&&"error"===e.type){const t=e;r=o&&o.call(this,t.message,t.filename,t.lineno,t.colno,t.error),!0===r&&e.preventDefault()}else r=o&&o.apply(this,arguments),null!=r&&!r&&e.preventDefault();return r};function D(n,o,r){let s=e(n,o);if(!s&&r&&e(r,o)&&(s={enumerable:!0,configurable:!0}),!s||!s.configurable)return;const i=d("on"+o+"patched");if(n.hasOwnProperty(i)&&n[i])return;delete s.writable,delete s.value;const a=s.get,c=s.set,l=o.substr(2);let u=S[l];u||(u=S[l]=d("ON_PROPERTY"+l)),s.set=function(e){let t=this;!t&&n===_&&(t=_),t&&(t[u]&&t.removeEventListener(l,Z),c&&c.apply(t,y),"function"==typeof e?(t[u]=e,t.addEventListener(l,Z,!1)):t[u]=null)},s.get=function(){let e=this;if(!e&&n===_&&(e=_),!e)return null;const t=e[u];if(t)return t;if(a){let t=a&&a.call(this);if(t)return s.set.call(this,t),"function"==typeof e.removeAttribute&&e.removeAttribute(o),t}return null},t(n,o,s),n[i]=!0}function O(e,t,n){if(t)for(let o=0;o<t.length;o++)D(e,"on"+t[o],n);else{const t=[];for(const n in e)"on"==n.substr(0,2)&&t.push(n);for(let o=0;o<t.length;o++)D(e,t[o],n)}}const P=d("originalInstance");function C(e){const n=_[e];if(!n)return;_[d(e)]=n,_[e]=function(){const t=k(arguments,e);switch(t.length){case 0:this[P]=new n;break;case 1:this[P]=new n(t[0]);break;case 2:this[P]=new n(t[0],t[1]);break;case 3:this[P]=new n(t[0],t[1],t[2]);break;case 4:this[P]=new n(t[0],t[1],t[2],t[3]);break;default:throw new Error("Arg list too long.")}},I(_[e],n);const o=new n(function(){});let r;for(r in o)"XMLHttpRequest"===e&&"responseBlob"===r||function(n){"function"==typeof o[n]?_[e].prototype[n]=function(){return this[P][n].apply(this[P],arguments)}:t(_[e].prototype,n,{set:function(t){"function"==typeof t?(this[P][n]=p(t,e+"."+n),I(this[P][n],t)):this[P][n]=t},get:function(){return this[P][n]}})}(r);for(r in n)"prototype"!==r&&n.hasOwnProperty(r)&&(_[e][r]=n[r])}function z(t,o,r){let s=t;for(;s&&!s.hasOwnProperty(o);)s=n(s);!s&&t[o]&&(s=t);const i=d(o);let a=null;if(s&&(!(a=s[i])||!s.hasOwnProperty(i))&&(a=s[i]=s[o],v(s&&e(s,o)))){const e=r(a,i,o);s[o]=function(){return e(this,arguments)},I(s[o],a)}return a}function j(e,t,n){let o=null;function r(e){const t=e.data;return t.args[t.cbIdx]=function(){e.invoke.apply(this,arguments)},o.apply(t.target,t.args),e}o=z(e,t,e=>function(t,o){const s=n(t,o);return s.cbIdx>=0&&"function"==typeof o[s.cbIdx]?f(s.name,o[s.cbIdx],s,r):e.apply(t,o)})}function I(e,t){e[d("OriginalDelegate")]=t}let R=!1,M=!1;function x(){if(R)return M;R=!0;try{const e=m.navigator.userAgent;(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/")||-1!==e.indexOf("Edge/"))&&(M=!0)}catch(e){}return M}Zone.__load_patch("ZoneAwarePromise",(e,t,n)=>{const o=Object.getOwnPropertyDescriptor,r=Object.defineProperty,s=n.symbol,i=[],a=!0===e[s("DISABLE_WRAPPING_UNCAUGHT_PROMISE_REJECTION")],c=s("Promise"),l=s("then");n.onUnhandledError=e=>{if(n.showUncaughtError()){const t=e&&e.rejection;t?console.error("Unhandled Promise rejection:",t instanceof Error?t.message:t,"; Zone:",e.zone.name,"; Task:",e.task&&e.task.source,"; Value:",t,t instanceof Error?t.stack:void 0):console.error(e)}},n.microtaskDrainDone=()=>{for(;i.length;){const t=i.shift();try{t.zone.runGuarded(()=>{throw t.throwOriginal?t.rejection:t})}catch(e){h(e)}}};const u=s("unhandledPromiseRejectionHandler");function h(e){n.onUnhandledError(e);try{const n=t[u];"function"==typeof n&&n.call(this,e)}catch(o){}}function p(e){return e&&e.then}function f(e){return e}function d(e){return C.reject(e)}const g=s("state"),m=s("value"),_=s("finally"),y=s("parentPromiseValue"),k=s("parentPromiseState"),v=null,b=!0,T=!1;function w(e,t){return n=>{try{S(e,t,n)}catch(o){S(e,!1,o)}}}const E=s("currentTaskTrace");function S(e,o,s){const c=function(){let e=!1;return function(t){return function(){e||(e=!0,t.apply(null,arguments))}}}();if(e===s)throw new TypeError("Promise resolved with itself");if(e[g]===v){let h=null;try{("object"==typeof s||"function"==typeof s)&&(h=s&&s.then)}catch(l){return c(()=>{S(e,!1,l)})(),e}if(o!==T&&s instanceof C&&s.hasOwnProperty(g)&&s.hasOwnProperty(m)&&s[g]!==v)D(s),S(e,s[g],s[m]);else if(o!==T&&"function"==typeof h)try{h.call(s,c(w(e,o)),c(w(e,!1)))}catch(l){c(()=>{S(e,!1,l)})()}else{e[g]=o;const c=e[m];if(e[m]=s,e[_]===_&&o===b&&(e[g]=e[k],e[m]=e[y]),o===T&&s instanceof Error){const e=t.currentTask&&t.currentTask.data&&t.currentTask.data.__creationTrace__;e&&r(s,E,{configurable:!0,enumerable:!1,writable:!0,value:e})}for(let t=0;t<c.length;)O(e,c[t++],c[t++],c[t++],c[t++]);if(0==c.length&&o==T){e[g]=0;let o=s;try{throw new Error("Uncaught (in promise): "+function(e){return e&&e.toString===Object.prototype.toString?(e.constructor&&e.constructor.name||"")+": "+JSON.stringify(e):e?e.toString():Object.prototype.toString.call(e)}(s)+(s&&s.stack?"\n"+s.stack:""))}catch(u){o=u}a&&(o.throwOriginal=!0),o.rejection=s,o.promise=e,o.zone=t.current,o.task=t.currentTask,i.push(o),n.scheduleMicroTask()}}}return e}const Z=s("rejectionHandledHandler");function D(e){if(0===e[g]){try{const n=t[Z];n&&"function"==typeof n&&n.call(this,{rejection:e[m],promise:e})}catch(n){}e[g]=T;for(let t=0;t<i.length;t++)e===i[t].promise&&i.splice(t,1)}}function O(e,t,n,o,r){D(e);const s=e[g],i=s?"function"==typeof o?o:f:"function"==typeof r?r:d;t.scheduleMicroTask("Promise.then",()=>{try{const o=e[m],r=!!n&&_===n[_];r&&(n[y]=o,n[k]=s);const a=t.run(i,void 0,r&&i!==d&&i!==f?[]:[o]);S(n,!0,a)}catch(o){S(n,!1,o)}},n)}const P=function(){};class C{static toString(){return"function ZoneAwarePromise() { [native code] }"}static resolve(e){return S(new this(null),b,e)}static reject(e){return S(new this(null),T,e)}static race(e){let t,n,o=new this((e,o)=>{t=e,n=o});function r(e){t(e)}function s(e){n(e)}for(let i of e)p(i)||(i=this.resolve(i)),i.then(r,s);return o}static all(e){return C.allWithCallback(e)}static allSettled(e){return(this&&this.prototype instanceof C?this:C).allWithCallback(e,{thenCallback:e=>({status:"fulfilled",value:e}),errorCallback:e=>({status:"rejected",reason:e})})}static allWithCallback(e,t){let n,o,r=new this((e,t)=>{n=e,o=t}),s=2,i=0;const a=[];for(let l of e){p(l)||(l=this.resolve(l));const e=i;try{l.then(o=>{a[e]=t?t.thenCallback(o):o,s--,0===s&&n(a)},r=>{t?(a[e]=t.errorCallback(r),s--,0===s&&n(a)):o(r)})}catch(c){o(c)}s++,i++}return s-=2,0===s&&n(a),r}constructor(e){const t=this;if(!(t instanceof C))throw new Error("Must be an instanceof Promise.");t[g]=v,t[m]=[];try{e&&e(w(t,b),w(t,T))}catch(n){S(t,!1,n)}}get[Symbol.toStringTag](){return"Promise"}get[Symbol.species](){return C}then(e,n){let o=this.constructor[Symbol.species];(!o||"function"!=typeof o)&&(o=this.constructor||C);const r=new o(P),s=t.current;return this[g]==v?this[m].push(s,r,e,n):O(this,s,r,e,n),r}catch(e){return this.then(null,e)}finally(e){let n=this.constructor[Symbol.species];(!n||"function"!=typeof n)&&(n=C);const o=new n(P);o[_]=_;const r=t.current;return this[g]==v?this[m].push(r,o,e,e):O(this,r,o,e,e),o}}C.resolve=C.resolve,C.reject=C.reject,C.race=C.race,C.all=C.all;const j=e[c]=e.Promise;e.Promise=C;const I=s("thenPatched");function R(e){const t=e.prototype,n=o(t,"then");if(n&&(!1===n.writable||!n.configurable))return;const r=t.then;t[l]=r,e.prototype.then=function(e,t){return new C((e,t)=>{r.call(this,e,t)}).then(e,t)},e[I]=!0}return n.patchThen=R,j&&(R(j),z(e,"fetch",e=>function(e){return function(t,n){let o=e.apply(t,n);if(o instanceof C)return o;let r=o.constructor;return r[I]||R(r),o}}(e))),Promise[t.__symbol__("uncaughtPromiseErrors")]=i,C}),Zone.__load_patch("toString",e=>{const t=Function.prototype.toString,n=d("OriginalDelegate"),o=d("Promise"),r=d("Error"),s=function(){if("function"==typeof this){const s=this[n];if(s)return"function"==typeof s?t.call(s):Object.prototype.toString.call(s);if(this===Promise){const n=e[o];if(n)return t.call(n)}if(this===Error){const n=e[r];if(n)return t.call(n)}}return t.call(this)};s[n]=t,Function.prototype.toString=s;const i=Object.prototype.toString;Object.prototype.toString=function(){return"function"==typeof Promise&&this instanceof Promise?"[object Promise]":i.call(this)}});let L=!1;if("undefined"!=typeof window)try{const e=Object.defineProperty({},"passive",{get:function(){L=!0}});window.addEventListener("test",e,e),window.removeEventListener("test",e,e)}catch(ce){L=!1}const N={useG:!0},A={},H={},F=new RegExp("^"+h+"(\\w+)(true|false)$"),B=d("propagationStopped");function X(e,t){const n=(t?t(e):e)+u,o=(t?t(e):e)+l,r=h+n,s=h+o;A[e]={},A[e][u]=r,A[e][l]=s}function G(e,t,o){const r=o&&o.add||s,a=o&&o.rm||i,c=o&&o.listeners||"eventListeners",p=o&&o.rmAll||"removeAllListeners",f=d(r),g="."+r+":",m=function(e,t,n){if(e.isRemoved)return;const o=e.callback;"object"==typeof o&&o.handleEvent&&(e.callback=e=>o.handleEvent(e),e.originalDelegate=o),e.invoke(e,t,[n]);const r=e.options;r&&"object"==typeof r&&r.once&&t[a].call(t,n.type,e.originalDelegate?e.originalDelegate:e.callback,r)},_=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type][u]];if(o)if(1===o.length)m(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)m(e[o],n,t)}},y=function(t){if(!(t=t||e.event))return;const n=this||t.target||e,o=n[A[t.type][l]];if(o)if(1===o.length)m(o[0],n,t);else{const e=o.slice();for(let o=0;o<e.length&&(!t||!0!==t[B]);o++)m(e[o],n,t)}};function k(t,o){if(!t)return!1;let s=!0;o&&void 0!==o.useG&&(s=o.useG);const i=o&&o.vh;let m=!0;o&&void 0!==o.chkDup&&(m=o.chkDup);let k=!1;o&&void 0!==o.rt&&(k=o.rt);let v=t;for(;v&&!v.hasOwnProperty(r);)v=n(v);if(!v&&t[r]&&(v=t),!v||v[f])return!1;const b=o&&o.eventNameToString,w={},E=v[f]=v[r],S=v[d(a)]=v[a],Z=v[d(c)]=v[c],D=v[d(p)]=v[p];let O;function P(e,t){return!L&&"object"==typeof e&&e?!!e.capture:L&&t?"boolean"==typeof e?{capture:e,passive:!0}:e?"object"==typeof e&&!1!==e.passive?Object.assign(Object.assign({},e),{passive:!0}):e:{passive:!0}:e}o&&o.prepend&&(O=v[d(o.prepend)]=v[o.prepend]);const C=s?function(e){if(!w.isExisting)return E.call(w.target,w.eventName,w.capture?y:_,w.options)}:function(e){return E.call(w.target,w.eventName,e.invoke,w.options)},z=s?function(e){if(!e.isRemoved){const t=A[e.eventName];let n;t&&(n=t[e.capture?l:u]);const o=n&&e.target[n];if(o)for(let r=0;r<o.length;r++)if(o[r]===e){o.splice(r,1),e.isRemoved=!0,0===o.length&&(e.allRemoved=!0,e.target[n]=null);break}}if(e.allRemoved)return S.call(e.target,e.eventName,e.capture?y:_,e.options)}:function(e){return S.call(e.target,e.eventName,e.invoke,e.options)},j=o&&o.diff?o.diff:function(e,t){const n=typeof t;return"function"===n&&e.callback===t||"object"===n&&e.originalDelegate===t},R=Zone[d("UNPATCHED_EVENTS")],M=e[d("PASSIVE_EVENTS")],x=function(t,n,r,a,c=!1,h=!1){return function(){const p=this||e;let f=arguments[0];o&&o.transferEventName&&(f=o.transferEventName(f));let d=arguments[1];if(!d)return t.apply(this,arguments);if(T&&"uncaughtException"===f)return t.apply(this,arguments);let g=!1;if("function"!=typeof d){if(!d.handleEvent)return t.apply(this,arguments);g=!0}if(i&&!i(t,d,p,arguments))return;const _=L&&!!M&&-1!==M.indexOf(f),y=P(arguments[2],_);if(R)for(let e=0;e<R.length;e++)if(f===R[e])return _?t.call(p,f,d,y):t.apply(this,arguments);const k=!!y&&("boolean"==typeof y||y.capture),v=!(!y||"object"!=typeof y)&&y.once,E=Zone.current;let S=A[f];S||(X(f,b),S=A[f]);const Z=S[k?l:u];let D,O=p[Z],C=!1;if(O){if(C=!0,m)for(let e=0;e<O.length;e++)if(j(O[e],d))return}else O=p[Z]=[];const z=p.constructor.name,I=H[z];I&&(D=I[f]),D||(D=z+n+(b?b(f):f)),w.options=y,v&&(w.options.once=!1),w.target=p,w.capture=k,w.eventName=f,w.isExisting=C;const x=s?N:void 0;x&&(x.taskData=w);const F=E.scheduleEventTask(D,d,x,r,a);return w.target=null,x&&(x.taskData=null),v&&(y.once=!0),!L&&"boolean"==typeof F.options||(F.options=y),F.target=p,F.capture=k,F.eventName=f,g&&(F.originalDelegate=d),h?O.unshift(F):O.push(F),c?p:void 0}};return v[r]=x(E,g,C,z,k),O&&(v.prependListener=x(O,".prependListener:",function(e){return O.call(w.target,w.eventName,e.invoke,w.options)},z,k,!0)),v[a]=function(){const t=this||e;let n=arguments[0];o&&o.transferEventName&&(n=o.transferEventName(n));const r=arguments[2],s=!!r&&("boolean"==typeof r||r.capture),a=arguments[1];if(!a)return S.apply(this,arguments);if(i&&!i(S,a,t,arguments))return;const c=A[n];let p;c&&(p=c[s?l:u]);const f=p&&t[p];if(f)for(let e=0;e<f.length;e++){const o=f[e];if(j(o,a))return f.splice(e,1),o.isRemoved=!0,0===f.length&&(o.allRemoved=!0,t[p]=null,"string"==typeof n)&&(t[h+"ON_PROPERTY"+n]=null),o.zone.cancelTask(o),k?t:void 0}return S.apply(this,arguments)},v[c]=function(){const t=this||e;let n=arguments[0];o&&o.transferEventName&&(n=o.transferEventName(n));const r=[],s=q(t,b?b(n):n);for(let e=0;e<s.length;e++){const t=s[e];r.push(t.originalDelegate?t.originalDelegate:t.callback)}return r},v[p]=function(){const t=this||e;let n=arguments[0];if(n){o&&o.transferEventName&&(n=o.transferEventName(n));const e=A[n];if(e){const o=t[e[u]],r=t[e[l]];if(o){const e=o.slice();for(let t=0;t<e.length;t++){const o=e[t];this[a].call(this,n,o.originalDelegate?o.originalDelegate:o.callback,o.options)}}if(r){const e=r.slice();for(let t=0;t<e.length;t++){const o=e[t];this[a].call(this,n,o.originalDelegate?o.originalDelegate:o.callback,o.options)}}}}else{const e=Object.keys(t);for(let t=0;t<e.length;t++){const n=F.exec(e[t]);let o=n&&n[1];o&&"removeListener"!==o&&this[p].call(this,o)}this[p].call(this,"removeListener")}if(k)return this},I(v[r],E),I(v[a],S),D&&I(v[p],D),Z&&I(v[c],Z),!0}let v=[];for(let n=0;n<t.length;n++)v[n]=k(t[n],o);return v}function q(e,t){if(!t){const n=[];for(let o in e){const r=F.exec(o);let s=r&&r[1];if(s&&(!t||s===t)){const t=e[o];if(t)for(let e=0;e<t.length;e++)n.push(t[e])}}return n}let n=A[t];n||(X(t),n=A[t]);const o=e[n[u]],r=e[n[l]];return o?r?o.concat(r):o.slice():r?r.slice():[]}function W(e,t){const n=e.Event;n&&n.prototype&&t.patchMethod(n.prototype,"stopImmediatePropagation",e=>function(t,n){t[B]=!0,e&&e.apply(t,n)})}function Y(e,t,n,o,r){const s=Zone.__symbol__(o);if(t[s])return;const i=t[s]=t[o];t[o]=function(s,a,c){return a&&a.prototype&&r.forEach(function(t){const r=`${n}.${o}::`+t,s=a.prototype;if(s.hasOwnProperty(t)){const n=e.ObjectGetOwnPropertyDescriptor(s,t);n&&n.value?(n.value=e.wrapWithCurrentZone(n.value,r),e._redefineProperty(a.prototype,t,n)):s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}else s[t]&&(s[t]=e.wrapWithCurrentZone(s[t],r))}),i.call(t,s,a,c)},e.attachOriginToPatched(t[o],i)}const U=["absolutedeviceorientation","afterinput","afterprint","appinstalled","beforeinstallprompt","beforeprint","beforeunload","devicelight","devicemotion","deviceorientation","deviceorientationabsolute","deviceproximity","hashchange","languagechange","message","mozbeforepaint","offline","online","paint","pageshow","pagehide","popstate","rejectionhandled","storage","unhandledrejection","unload","userproximity","vrdisplayconnected","vrdisplaydisconnected","vrdisplaypresentchange"],V=["encrypted","waitingforkey","msneedkey","mozinterruptbegin","mozinterruptend"],$=["load"],J=["blur","error","focus","load","resize","scroll","messageerror"],K=["bounce","finish","start"],Q=["loadstart","progress","abort","error","load","progress","timeout","loadend","readystatechange"],ee=["upgradeneeded","complete","abort","success","error","blocked","versionchange","close"],te=["close","error","open","message"],ne=["error","message"],oe=["abort","animationcancel","animationend","animationiteration","auxclick","beforeinput","blur","cancel","canplay","canplaythrough","change","compositionstart","compositionupdate","compositionend","cuechange","click","close","contextmenu","curechange","dblclick","drag","dragend","dragenter","dragexit","dragleave","dragover","drop","durationchange","emptied","ended","error","focus","focusin","focusout","gotpointercapture","input","invalid","keydown","keypress","keyup","load","loadstart","loadeddata","loadedmetadata","lostpointercapture","mousedown","mouseenter","mouseleave","mousemove","mouseout","mouseover","mouseup","mousewheel","orientationchange","pause","play","playing","pointercancel","pointerdown","pointerenter","pointerleave","pointerlockchange","mozpointerlockchange","webkitpointerlockerchange","pointerlockerror","mozpointerlockerror","webkitpointerlockerror","pointermove","pointout","pointerover","pointerup","progress","ratechange","reset","resize","scroll","seeked","seeking","select","selectionchange","selectstart","show","sort","stalled","submit","suspend","timeupdate","volumechange","touchcancel","touchmove","touchstart","touchend","transitioncancel","transitionend","waiting","wheel"].concat(["webglcontextrestored","webglcontextlost","webglcontextcreationerror"],["autocomplete","autocompleteerror"],["toggle"],["afterscriptexecute","beforescriptexecute","DOMContentLoaded","freeze","fullscreenchange","mozfullscreenchange","webkitfullscreenchange","msfullscreenchange","fullscreenerror","mozfullscreenerror","webkitfullscreenerror","msfullscreenerror","readystatechange","visibilitychange","resume"],U,["beforecopy","beforecut","beforepaste","copy","cut","paste","dragstart","loadend","animationstart","search","transitionrun","transitionstart","webkitanimationend","webkitanimationiteration","webkitanimationstart","webkittransitionend"],["activate","afterupdate","ariarequest","beforeactivate","beforedeactivate","beforeeditfocus","beforeupdate","cellchange","controlselect","dataavailable","datasetchanged","datasetcomplete","errorupdate","filterchange","layoutcomplete","losecapture","move","moveend","movestart","propertychange","resizeend","resizestart","rowenter","rowexit","rowsdelete","rowsinserted","command","compassneedscalibration","deactivate","help","mscontentzoom","msmanipulationstatechanged","msgesturechange","msgesturedoubletap","msgestureend","msgesturehold","msgesturestart","msgesturetap","msgotpointercapture","msinertiastart","mslostpointercapture","mspointercancel","mspointerdown","mspointerenter","mspointerhover","mspointerleave","mspointermove","mspointerout","mspointerover","mspointerup","pointerout","mssitemodejumplistitemremoved","msthumbnailclick","stop","storagecommit"]);function re(e,t,n){if(!n||0===n.length)return t;const o=n.filter(t=>t.target===e);if(!o||0===o.length)return t;const r=o[0].ignoreProperties;return t.filter(e=>-1===r.indexOf(e))}function se(e,t,n,o){e&&O(e,re(e,t,n),o)}Zone.__load_patch("util",(n,a,c)=>{c.patchOnProperties=O,c.patchMethod=z,c.bindArguments=k,c.patchMacroTask=j;const f=a.__symbol__("BLACK_LISTED_EVENTS"),d=a.__symbol__("UNPATCHED_EVENTS");n[d]&&(n[f]=n[d]),n[f]&&(a[f]=a[d]=n[f]),c.patchEventPrototype=W,c.patchEventTarget=G,c.isIEOrEdge=x,c.ObjectDefineProperty=t,c.ObjectGetOwnPropertyDescriptor=e,c.ObjectCreate=o,c.ArraySlice=r,c.patchClass=C,c.wrapWithCurrentZone=p,c.filterProperties=re,c.attachOriginToPatched=I,c._redefineProperty=Object.defineProperty,c.patchCallbacks=Y,c.getGlobalObjects=()=>({globalSources:H,zoneSymbolEventNames:A,eventNames:oe,isBrowser:w,isMix:E,isNode:T,TRUE_STR:l,FALSE_STR:u,ZONE_SYMBOL_PREFIX:h,ADD_EVENT_LISTENER_STR:s,REMOVE_EVENT_LISTENER_STR:i})});const ie=d("zoneTask");function ae(e,t,n,o){let r=null,s=null;n+=o;const i={};function a(t){const n=t.data;return n.args[0]=function(){return t.invoke.apply(this,arguments)},n.handleId=r.apply(e,n.args),t}function c(t){return s.call(e,t.data.handleId)}r=z(e,t+=o,n=>function(r,s){if("function"==typeof s[0]){const e={isPeriodic:"Interval"===o,delay:"Timeout"===o||"Interval"===o?s[1]||0:void 0,args:s},n=s[0];s[0]=function(){try{return n.apply(this,arguments)}finally{e.isPeriodic||("number"==typeof e.handleId?delete i[e.handleId]:e.handleId&&(e.handleId[ie]=null))}};const r=f(t,s[0],e,a,c);if(!r)return r;const l=r.data.handleId;return"number"==typeof l?i[l]=r:l&&(l[ie]=r),l&&l.ref&&l.unref&&"function"==typeof l.ref&&"function"==typeof l.unref&&(r.ref=l.ref.bind(l),r.unref=l.unref.bind(l)),"number"==typeof l||l?l:r}return n.apply(e,s)}),s=z(e,n,t=>function(n,o){const r=o[0];let s;"number"==typeof r?s=i[r]:(s=r&&r[ie],s||(s=r)),s&&"string"==typeof s.type?"notScheduled"!==s.state&&(s.cancelFn&&s.data.isPeriodic||0===s.runCount)&&("number"==typeof r?delete i[r]:r&&(r[ie]=null),s.zone.cancelTask(s)):t.apply(e,o)})}Zone.__load_patch("legacy",e=>{const t=e[Zone.__symbol__("legacyPatch")];t&&t()}),Zone.__load_patch("queueMicrotask",(e,t,n)=>{n.patchMethod(e,"queueMicrotask",e=>function(e,n){t.current.scheduleMicroTask("queueMicrotask",n[0])})}),Zone.__load_patch("timers",e=>{const t="set",n="clear";ae(e,t,n,"Timeout"),ae(e,t,n,"Interval"),ae(e,t,n,"Immediate")}),Zone.__load_patch("requestAnimationFrame",e=>{ae(e,"request","cancel","AnimationFrame"),ae(e,"mozRequest","mozCancel","AnimationFrame"),ae(e,"webkitRequest","webkitCancel","AnimationFrame")}),Zone.__load_patch("blocking",(e,t)=>{const n=["alert","prompt","confirm"];for(let o=0;o<n.length;o++)z(e,n[o],(n,o,r)=>function(o,s){return t.current.run(n,e,s,r)})}),Zone.__load_patch("EventTarget",(e,t,n)=>{(function(e,t){t.patchEventPrototype(e,t)})(e,n),function(e,t){if(Zone[t.symbol("patchEventTarget")])return;const{eventNames:n,zoneSymbolEventNames:o,TRUE_STR:r,FALSE_STR:s,ZONE_SYMBOL_PREFIX:i}=t.getGlobalObjects();for(let c=0;c<n.length;c++){const e=n[c],t=i+(e+s),a=i+(e+r);o[e]={},o[e][s]=t,o[e][r]=a}const a=e.EventTarget;a&&a.prototype&&t.patchEventTarget(e,[a&&a.prototype])}(e,n);const o=e.XMLHttpRequestEventTarget;o&&o.prototype&&n.patchEventTarget(e,[o.prototype])}),Zone.__load_patch("MutationObserver",(e,t,n)=>{C("MutationObserver"),C("WebKitMutationObserver")}),Zone.__load_patch("IntersectionObserver",(e,t,n)=>{C("IntersectionObserver")}),Zone.__load_patch("FileReader",(e,t,n)=>{C("FileReader")}),Zone.__load_patch("on_property",(e,t,o)=>{!function(e,t){if(T&&!E||Zone[e.symbol("patchEvents")])return;const o="undefined"!=typeof WebSocket,r=t.__Zone_ignore_on_properties;if(w){const t=window,o=function(){try{const e=m.navigator.userAgent;if(-1!==e.indexOf("MSIE ")||-1!==e.indexOf("Trident/"))return!0}catch(e){}return!1}()?[{target:t,ignoreProperties:["error"]}]:[];se(t,oe.concat(["messageerror"]),r&&r.concat(o),n(t)),se(Document.prototype,oe,r),void 0!==t.SVGElement&&se(t.SVGElement.prototype,oe,r),se(Element.prototype,oe,r),se(HTMLElement.prototype,oe,r),se(HTMLMediaElement.prototype,V,r),se(HTMLFrameSetElement.prototype,U.concat(J),r),se(HTMLBodyElement.prototype,U.concat(J),r),se(HTMLFrameElement.prototype,$,r),se(HTMLIFrameElement.prototype,$,r);const s=t.HTMLMarqueeElement;s&&se(s.prototype,K,r);const i=t.Worker;i&&se(i.prototype,ne,r)}const s=t.XMLHttpRequest;s&&se(s.prototype,Q,r);const i=t.XMLHttpRequestEventTarget;i&&se(i&&i.prototype,Q,r),"undefined"!=typeof IDBIndex&&(se(IDBIndex.prototype,ee,r),se(IDBRequest.prototype,ee,r),se(IDBOpenDBRequest.prototype,ee,r),se(IDBDatabase.prototype,ee,r),se(IDBTransaction.prototype,ee,r),se(IDBCursor.prototype,ee,r)),o&&se(WebSocket.prototype,te,r)}(o,e)}),Zone.__load_patch("customElements",(e,t,n)=>{!function(e,t){const{isBrowser:n,isMix:o}=t.getGlobalObjects();(n||o)&&e.customElements&&"customElements"in e&&t.patchCallbacks(t,e.customElements,"customElements","define",["connectedCallback","disconnectedCallback","adoptedCallback","attributeChangedCallback"])}(e,n)}),Zone.__load_patch("XHR",(e,t)=>{!function(e){const u=e.XMLHttpRequest;if(!u)return;const h=u.prototype;let p=h[a],g=h[c];if(!p){const t=e.XMLHttpRequestEventTarget;if(t){const e=t.prototype;p=e[a],g=e[c]}}const m="readystatechange",_="scheduled";function y(e){const o=e.data,i=o.target;i[s]=!1,i[l]=!1;const u=i[r];p||(p=i[a],g=i[c]),u&&g.call(i,m,u);const h=i[r]=()=>{if(i.readyState===i.DONE)if(!o.aborted&&i[s]&&e.state===_){const n=i[t.__symbol__("loadfalse")];if(0!==i.status&&n&&n.length>0){const r=e.invoke;e.invoke=function(){const n=i[t.__symbol__("loadfalse")];for(let t=0;t<n.length;t++)n[t]===e&&n.splice(t,1);!o.aborted&&e.state===_&&r.call(e)},n.push(e)}else e.invoke()}else!o.aborted&&!1===i[s]&&(i[l]=!0)};return p.call(i,m,h),i[n]||(i[n]=e),E.apply(i,o.args),i[s]=!0,e}function k(){}function v(e){const t=e.data;return t.aborted=!0,S.apply(t.target,t.args)}const b=z(h,"open",()=>function(e,t){return e[o]=0==t[2],e[i]=t[1],b.apply(e,t)}),T=d("fetchTaskAborting"),w=d("fetchTaskScheduling"),E=z(h,"send",()=>function(e,n){if(!0===t.current[w]||e[o])return E.apply(e,n);{const t={target:e,url:e[i],isPeriodic:!1,args:n,aborted:!1},o=f("XMLHttpRequest.send",k,t,y,v);e&&!0===e[l]&&!t.aborted&&o.state===_&&o.invoke()}}),S=z(h,"abort",()=>function(e,o){const r=function(e){return e[n]}(e);if(r&&"string"==typeof r.type){if(null==r.cancelFn||r.data&&r.data.aborted)return;r.zone.cancelTask(r)}else if(!0===t.current[T])return S.apply(e,o)})}(e);const n=d("xhrTask"),o=d("xhrSync"),r=d("xhrListener"),s=d("xhrScheduled"),i=d("xhrURL"),l=d("xhrErrorBeforeScheduled")}),Zone.__load_patch("geolocation",t=>{t.navigator&&t.navigator.geolocation&&function(t,n){const o=t.constructor.name;for(let r=0;r<n.length;r++){const s=n[r],i=t[s];if(i){if(!v(e(t,s)))continue;t[s]=(e=>{const t=function(){return e.apply(this,k(arguments,o+"."+s))};return I(t,e),t})(i)}}}(t.navigator.geolocation,["getCurrentPosition","watchPosition"])}),Zone.__load_patch("PromiseRejectionEvent",(e,t)=>{function n(t){return function(n){q(e,t).forEach(o=>{const r=e.PromiseRejectionEvent;if(r){const e=new r(t,{promise:n.promise,reason:n.rejection});o.invoke(e)}})}}e.PromiseRejectionEvent&&(t[d("unhandledPromiseRejectionHandler")]=n("unhandledrejection"),t[d("rejectionHandledHandler")]=n("rejectionhandled"))})},7834:function(e,t,n){"use strict";const o="undefined"!=typeof globalThis&&globalThis,r="undefined"!=typeof window&&window,s="undefined"!=typeof self&&"undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope&&self,i="undefined"!=typeof global&&global,a=function(e,...t){if(a.translate){const n=a.translate(e,t);e=n[0],t=n[1]}let n=c(e[0],e.raw[0]);for(let o=1;o<e.length;o++)n+=t[o-1]+c(e[o],e.raw[o]);return n};function c(e,t){return":"===t.charAt(0)?e.substring(function(e,t){for(let n=1,o=1;n<e.length;n++,o++)if("\\"===t[o])o++;else if(":"===e[n])return n;throw new Error(`Unterminated $localize metadata block in "${t}".`)}(e,t)+1):e}(o||i||r||s).$localize=a,n(7277);var l=n(9141);n.n(l)().polyfill()}},function(e){e(e.s=7834)}</p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bypassSecurityTrustHtml`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bypassSecurityTrustHtml`
  
  
  
  
Instances: 2
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 4
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.694645034e9b56b81dad.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.694645034e9b56b81dad.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es5.694645034e9b56b81dad.js](https://domifa.fabrique.social.gouv.fr/runtime-es5.694645034e9b56b81dad.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
Instances: 10
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.694645034e9b56b81dad.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.694645034e9b56b81dad.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/favicon.ico](https://domifa.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.ce21530f25edc04622cb.css](https://domifa.fabrique.social.gouv.fr/styles.ce21530f25edc04622cb.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `nginx/1.17.8`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`
  
  
  
  
Instances: 2
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>�]�㞻�֛qן�\x0018��Y�����ۯ�\x001c�\x0000\x0010�\x0010Q� ��0ӏA\x0014�QU�a</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bug`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `bug`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `Select`
  
  
  
  
Instances: 4
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bSELECT\b and was detected in the element starting with: "(self.webpackChunk_domifa_frontend=self.webpackChunk_domifa_frontend||[]).push([[429],{9141:function(e){!function(){"use strict"", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.694645034e9b56b81dad.js" type="module"></script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.694645034e9b56b81dad.js" type="module"></script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.694645034e9b56b81dad.js" type="module"></script>`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<script src="runtime-es2015.694645034e9b56b81dad.js" type="module"></script>`
  
  
  
  
Instances: 5
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.ce21530f25edc04622cb.css](https://domifa.fabrique.social.gouv.fr/styles.ce21530f25edc04622cb.css)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/runtime-es2015.694645034e9b56b81dad.js](https://domifa.fabrique.social.gouv.fr/runtime-es2015.694645034e9b56b81dad.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr](https://domifa.fabrique.social.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/sitemap.xml](https://domifa.fabrique.social.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/favicon.ico](https://domifa.fabrique.social.gouv.fr/favicon.ico)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/robots.txt](https://domifa.fabrique.social.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/](https://domifa.fabrique.social.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js](https://domifa.fabrique.social.gouv.fr/polyfills-es2015.d66cb3c8a0917e0702a1.js)
  
  
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
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `94906265`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `01010133`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `01010133`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es2015.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `0606060606`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js](https://domifa.fabrique.social.gouv.fr/main-es5.d4c462093296e2b1f301.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `0606060606`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js](https://domifa.fabrique.social.gouv.fr/polyfills-es5.74519c331871e579e362.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `62425156`
  
  
  
  
* URL: [https://domifa.fabrique.social.gouv.fr/styles.ce21530f25edc04622cb.css](https://domifa.fabrique.social.gouv.fr/styles.ce21530f25edc04622cb.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `23333333`
  
  
  
  
Instances: 7
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>94906265, which evaluates to: 1973-01-03 10:51:05</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3