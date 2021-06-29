
# ZAP Scanning Report

Generated on Tue, 29 Jun 2021 22:47:46


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 4 |
| Low | 7 |
| Informational | 7 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: style-src unsafe-inline | Medium | 5 | 
| CSP: Wildcard Directive | Medium | 5 | 
| Reverse Tabnabbing | Medium | 6 | 
| Source Code Disclosure - Java | Medium | 1 | 
| Cookie without SameSite Attribute | Low | 8 | 
| Cookie Without Secure Flag | Low | 8 | 
| Dangerous JS Functions | Low | 1 | 
| Incomplete or No Cache-control Header Set | Low | 8 | 
| Permissions Policy Header Not Set | Low | 11 | 
| Server Leaks Information via "X-Powered-By" HTTP Response Header Field(s) | Low | 11 | 
| X-Content-Type-Options Header Missing | Low | 11 | 
| Base64 Disclosure | Informational | 11 | 
| Information Disclosure - Suspicious Comments | Informational | 10 | 
| Modern Web Application | Informational | 1 | 
| Non-Storable Content | Informational | 3 | 
| Storable and Cacheable Content | Informational | 6 | 
| Storable but Non-Cacheable Content | Informational | 2 | 
| Timestamp Disclosure - Unix | Informational | 505 | 

## Alert Detail


  
  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
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
<p>The following directives either allow wildcard sources (or ancestors), are not defined, or are overly broadly defined: </p><p>style-src, font-src, form-action</p><p></p><p>The directive(s): form-action are among the directives that do not fallback to default-src, missing/excluding them is the same as allowing anything.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data: https://*.fls.doubleclick.net/;object-src 'none';script-src 'self' https://stats.data.gouv.fr/ https://www.googletagmanager.com;script-src-attr 'unsafe-inline';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests;frame-src 'self' https://stats.data.gouv.fr/ https://*.fls.doubleclick.net/`
  
  
  
  
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

  
  
  
  
### Reverse Tabnabbing
##### Medium (Medium)
  
  
  
  
#### Description
<p>At least one link on this page is vulnerable to Reverse tabnabbing as it uses a target attribute without using both of the "noopener" and "noreferrer" keywords in the "rel" attribute, which allows the target page to take control of this page.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a target="_blank" rel="noopener"
                   href="https://filsantejeunes.com/mal-etre">filsantejeunes.com/mal-etre</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a title="Voir le code source"
                       href="https://github.com/betagouv/psy-enfant-ado"
                       target="_blank"
                       rel="noopener"
                    >Voir le code source</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a target="_blank" rel="noopener"
                   href="https://filsantejeunes.com/mal-etre">filsantejeunes.com/mal-etre</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a title="Voir le code source"
                       href="https://github.com/betagouv/psy-enfant-ado"
                       target="_blank"
                       rel="noopener"
                    >Voir le code source</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a href="https://santepsy.etudiant.gouv.fr" target="_blank">santepsy.etudiant.gouv.fr</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a target="_blank" rel="noopener" href="https://policies.google.com/technologies/cookies?hl=fr">https://policies.google.com/technologies/cookies?hl=fr</a>`
  
  
  
  
Instances: 6
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `class r{constructor(){this.closures=[],this.nexts=[],this.rendering=this.render.bind(this),this.render()}add(t){this.closures.push(t);return()=>{const e=this.closures.indexOf(t);-1!==e&&this.closures.splice(e,1)}}next(t,e){e=void 0===e?0:e-1,void 0===this.nexts[e]&&(this.nexts[e]=[]),this.nexts[e].push(t)}render(){window.requestAnimationFrame(this.rendering);for(const t of this.closures)t.call();const t=this.nexts.shift();if(t)for(const e of t)e.call()}}const o=new class{constructor(){this.renderer=new r}register(t,e){}start(){}stop(){}};class h{constructor(t,e){this.selector=t,this.builders=e,this.instances=[],"loading"!==document.readyState?window.requestAnimationFrame(this.start.bind(this)):document.addEventListener("DOMContentLoaded",this.start.bind(this))}start(){if(!(this.instances.length>0)&&document.querySelectorAll(this.selector).length>0)for(let t=0;t<this.builders.length;t++)this.instances.push(this.builders[t]())}}const l={},c={};let a=0;const d=t=>{for(const e in c)if(c[e]===t)return e;a++;const e=a;return c[e]=t,e};class u{constructor(t,e,s){const i=d(t);l[i]||(l[i]=[]),l[i].push(this),this.element=t,this.id=t.id,this._isRendering=!1,this._isResizing=!1,this.listeners={},this.isResizing=e,this.isRendering=s}dispatch(t,e){const s=new CustomEvent(t,e);this.element.dispatchEvent(s)}listen(t,e){this.listeners[t]||(this.listeners[t]=[]),this.listeners[t].indexOf(e)>-1||(this.listeners[t].push(e),this.element.addEventListener(t,e))}unlisten(t,e){if(t)if(e){if(!this.listeners[t])return;const s=this.listeners[t].indexOf(e);s>-1&&this.listeners[t].splice(s,1),this.element.removeEventListener(e)}else{if(!this.listeners[t])return;for(const e of this.listeners[t])this.element.removeEventListener(e);this.listeners[t].length=0}else for(const t in this.listeners)this.unlisten(t)}get isRendering(){return this._isRendering}set isRendering(t){this._isRendering!==t&&(this._isRendering=t)}render(){}get isResizing(){return this._isResizing}set isResizing(t){this._isResizing!==t&&(this._isResizing=t)}resize(){}destroy(){}static getInstances(t,e){const s=d(t);return l[s]?e?l[s].filter((t=>t instanceof e)):l[s]:null}}const m=e.attr("group"),p=[];class g{constructor(t,e){this.id=t,this.element=e,this.members=[],this._index=-1,this._current=null,p.push(this)}static getGroupById(t){for(const e of p)if(e.constructor===this&&e.id===t)return e;return new this(t)}static getGroupByElement(t){for(const e of p)if(e.element===t)return e;return new this(!1,t)}static groupById(t,e){const s=t.element.getAttribute(m);if(null===s)return;e.getGroupById(s).add(t)}static groupByParent(t,e,s){if(void 0===s&&(s=e.selector),""===s)return;let i=t.element.parentElement;for(;i;){if(i.classList.contains(t.constructor.selector))return;if(i.classList.contains(s)){return void e.getGroupByElement(i).add(t)}i=i.parentElement}}static get selector(){return""}add(t){if(-1===this.members.indexOf(t))switch(this.members.push(t),t.setGroup(this),!0){case null!==this.current:case!t.disclosed&&!t.primal:t.disclosed=!1;break;default:this._current=t,this._index=this.members.indexOf(t),t.disclosed=!0}}get length(){return this.members.length}get index(){return this._index}set index(t){t<-1||t>=this.length||this._index===t||(null!==this.current&&this.current.conceal(!0,!0),this._index=t,this._current=this._index>-1?this.members[this._index]:null,null!==this.current&&this.current.disclose(!0),this.apply())}get current(){return this._current}set current(t){this.index=this.members.indexOf(t)}get hasFocus(){return void 0===this.current?null:this.current.hasFocus}apply(){}}class b{constructor(t,e){this.element=t,this.disclosure=e,this.hasAttribute=this.element.hasAttribute(this.disclosure.attributeName),this.element.addEventListener("click",this.click.bind(this)),this.observer=new MutationObserver(this.mutate.bind(this)),this.observe()}observe(){this.observer.observe(this.element,{attributes:!0})}click(t){this.disclosure.change(this.hasAttribute)}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.disclosure.attributeName&&this.disclosure.change(this.disclosed)}))}apply(t){this.hasAttribute&&(this.observer&&this.observer.disconnect(),this.element.setAttribute(this.disclosure.attributeName,t),this.observer&&this.observe())}get disclosed(){return"true"===this.element.getAttribute(this.disclosure.attributeName)}get hasFocus(){return this.element===document.activeElement}}const f=e.event("DISCLOSE"),y=e.event("CONCEAL"),v=[];class w extends u{constructor(t){super(t),this.buttons=[],this._selector=this.constructor.selector,this.modifier=this._selector+"--"+this.type.id,this.attributeName=this.type.ariaState?"aria-"+this.type.id:e.attr(this.type.id),this.pristine=!0;const s=document.querySelectorAll(this.type.ariaControls?`[aria-controls="${this.id}"]`:e.attr.selector("controls",this.id));if(s.length>0)for(let t=0;t<s.length;t++)this.addButton(s[t]);this.disclosed=!0===this.primal,this.gather()}gather(){this.group||(g.groupById(this,this.GroupConstructor),g.groupByParent(this,this.GroupConstructor))}static build(t){const e=Array.prototype.slice.call(t.querySelectorAll(`.${this.selector}`));for(const t of e)v.push(new this(t))}get type(){return this.constructor.type}static get type(){return null}static get selector(){return""}addButton(t){const e=this.buttonFactory(t);e.hasAttribute&&(void 0===this.primal?this.primal=e.disclosed:e.apply(this.primal)),this.buttons.push(e)}get GroupConstructor(){return g}buttonFactory(t){return new b(t,this)}disclose(t){return!this.disclosed&&(this.pristine=!1,this.disclosed=!0,t||void 0===this.group||(this.group.current=this),!0)}conceal(t,e){if(!this.disclosed)return!1;this.pristine=!1,this.disclosed=!1,e||this.focus(),t||void 0===this.group||(this.group.current=null);for(const t of v)t!==this&&this.element.contains(t.element)&&t.reset();return!0}get disclosed(){return this._disclosed}set disclosed(t){if(this._disclosed!==t){this.dispatch(t?f:y,this.type),this._disclosed=t,t?i(this.element,this.modifier):n(this.element,this.modifier);for(let e=0;e<this.buttons.length;e++)this.buttons[e].apply(t)}}reset(){}change(t){if(this.constructor.type.canConceal)switch(!0){case!t:case this.disclosed:this.conceal();break;default:this.disclose()}else this.disclose()}setGroup(t){this.group=t}get buttonHasFocus(){return!!this.buttons.some((t=>t.hasFocus))}get hasFocus(){return this.element===document.activeElement||(this.element.querySelectorAll(":focus").length>0||this.buttonHasFocus)}focus(){for(let t=0;t<this.buttons.length;t++){const e=this.buttons[t];if(e.hasAttribute)return void e.element.focus()}}}w.DISCLOSE_EVENT=f,w.CONCEAL_EVENT=y;const E={expand:{id:"expanded",ariaState:!0,ariaControls:!0,canConceal:!0},select:{id:"selected",ariaState:!0,ariaControls:!0,canConceal:!1},opened:{id:"opened",ariaState:!1,ariaControls:!0,canConceal:!0}};class x{constructor(t){this.element=t,this.collections={}}_add(t,e){void 0===this.collections[t]&&(this.collections[t]=new L(t,this.element)),this.collections[t].add(e)}down(t,e,s,i){this._add("down",new S(t,e,s,i))}up(t,e,s,i){this._add("up",new S(t,e,s,i))}dispose(){for(const t of this.collections)t.dispose();this.types=null}}class L{constructor(t,e){this.type=t,this.element=e,this.actions=[],this.binding=this.handle.bind(this),this.element.addEventListener("key"+t,this.binding)}add(t){this.actions.push(t)}handle(t){for(const e of this.actions)e.handle(t)}dispose(){this.element.removeEventListener("key"+this.type,this.binding),this.actions=null}}class S{constructor(t,e,s,i){this.key=t,this.closure=e,this.preventDefault=!0===s,this.stopPropagation=!0===i}handle(t){t.keyCode===this.key&&(this.closure(t),this.preventDefault&&t.preventDefault(),this.stopPropagation&&t.stopPropagation())}}x.TAB=9,x.ESCAPE=27,x.END=35,x.HOME=36,x.LEFT=37,x.UP=38,x.RIGHT=39,x.DOWN=40;const A=e("collapse"),C=[],_={};class k extends w{constructor(t){super(t),C.push(this),this.requesting=this.request.bind(this),t.addEventListener("transitionend",this.transitionend.bind(this)),this.disclosed&&this.unbound()}gatherByAscendants(){if(!this.group)for(const t in _){let e=this.element.parentElement;for(;e;){if(e.classList.contains(t))return void("string"==typeof _[t]?g.groupByParent(this,g,_[t]):g.groupByParent(this,_[t]));e=e.parentElement}}}gather(){this.gatherByAscendants(),super.gather()}static get type(){return E.expand}static get selector(){return A}static register(t,e){_[t]=e;for(const t of C)t.gatherByAscendants()}transitionend(t){this.disclosed||(this.element.style.maxHeight="")}unbound(){this.element.style.maxHeight="none"}disclose(t){this.disclosed||(this.unbound(),this.adjust(),this.requested=()=>{super.disclose(t)},window.requestAnimationFrame(this.requesting))}conceal(t,e){this.disclosed&&(this.adjust(),this.requested=()=>{super.conceal(t,e)},window.requestAnimationFrame(this.requesting))}request(){this.requested&&this.requested(),this.requested=null}adjust(){this.element.style.setProperty("--collapser","none");const t=this.element.offsetHeight;this.element.style.setProperty("--collapse",-t+"px"),this.element.style.setProperty("--collapser","")}reset(){this.pristine||(this.disclosed=!1)}}t.core.ns=e,t.core.addClass=i,t.core.removeClass=n,t.core.engine=o,t.core.Instance=u,t.core.Initializer=h,t.core.Disclosure=w,t.core.DisclosureButton=b,t.core.DisclosuresGroup=g,t.core.DISCLOSURE_TYPES=E,t.KeyListener=x,t.Collapse=k,t.Equisized=class{constructor(t,e){this.selector=t,this.group=e,this.elements=this.group.querySelectorAll(this.selector),this.maxWidth=0,this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),window.addEventListener("load",this.changing)}change(){this.reset();for(let t=0;t<this.elements.length;t++){const e=this._getWidth(this.elements[t]);e>this.maxWidth&&(this.maxWidth=e)}this.apply()}apply(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width=this.maxWidth+1+"px"}reset(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width="auto";this.maxWidth=0}_getWidth(t){let e=t.offsetWidth;const s=getComputedStyle(t);return e+=parseInt(s.marginLeft)+parseInt(s.marginRight),e}};new h(`.${A}`,[()=>{k.build(document)}]);const q=t.core.ns("accordions-group"),I=t.core.ns("accordion");class z extends t.core.DisclosuresGroup{static get selector(){return q}}t.AccordionsGroup=z,t.Collapse.register(I,z);const D=`${t.core.ns.selector("breadcrumb")} ${t.core.ns.selector("collapse")}`;class H extends t.core.Instance{constructor(e){super(e),this.collapse=t.core.Instance.getInstances(e,t.Collapse)[0],this.links=[...this.element.querySelectorAll("a[href]")],this.count=0,this.links.length&&(this.listen(t.core.Disclosure.DISCLOSE_EVENT,this.focus.bind(this)),this.resizing=this.resize.bind(this),window.addEventListener("resize",this.resizing))}focus(){this.links[0].focus(),t.core.engine.renderer.next((()=>{this.verify()}))}verify(){this.count++,this.count>100||document.activeElement!==this.links[0]&&this.focus()}resize(){window.matchMedia("(min-width: 48em)").matches?this.collapse.buttons[0]===document.activeElement&&this.links.focus():this.links.indexOf(document.activeElement)>-1&&this.collapse.focus()}}new t.core.Initializer(D,[()=>{const t=[],e=document.querySelectorAll(D);for(let s=0;s<e.length;s++)t.push(new H(e[s]))}]);const P=t.core.ns.selector("btn"),O=t.core.ns.selector("btns-group"),T=t.core.ns.selector("btns-group--equisized");new t.core.Initializer(O,[()=>{const e=document.querySelectorAll(T),s=[];for(let i=0;i<e.length;i++)s.push(new t.Equisized(P,e[i]))}]);const B=t.core.ns.selector("modal"),N=t.core.ns("modal"),G=t.core.ns("no-scroll"),R=t.core.ns("scroll-shadow"),$=t.core.ns.selector("modal__body"),F=['[tabindex="0"]',"a[href]","button:not([disabled])","input:not([disabled])","select:not([disabled])","textarea:not([disabled])","audio[controls]","video[controls]",'[contenteditable]:not([contenteditable="false" i])',"details>summary:first-of-type","details"].join(),W=['[tabindex]:not([tabindex="-1"]):not([tabindex="0"])'].join(),M=(t,e)=>{if("hidden"===window.getComputedStyle(t).visibility)return!1;for(void 0===e&&(e=t);e.contains(t);){if("none"===window.getComputedStyle(t).display)return!1;t=t.parentElement}return!0};class K{constructor(t,e){this.element=null,this.activeElement=null,this.onTrap=t,this.onUntrap=e,this.waiting=this.wait.bind(this),this.handling=this.handle.bind(this),this.current=null}get trapped(){return null!==this.element}trap(t){this.trapped&&this.untrap(),this.element=t,this.isTrapping=!0,this.wait(),this.onTrap&&this.onTrap()}wait(){M(this.element)?this.trapping():t.core.engine.renderer.next(this.waiting)}trapping(){if(!this.isTrapping)return;this.isTrapping=!1;const t=this.focusables;t.length&&t[0].focus(),this.element.setAttribute("aria-modal",!0),this.element.addEventListener("keydown",this.handling),this.stunneds=[]}stun(t){for(const e of t.children)e!==this.element&&(e.contains(this.element)?this.stun(e):this.stunneds.push(new V(e)))}handle(t){if(9!==t.keyCode)return;const e=this.focusables;if(0===e.length)return;const s=e[0],i=e[e.length-1],n=e.indexOf(document.activeElement);t.shiftKey?!this.element.contains(document.activeElement)||n<1?(t.preventDefault(),i.focus()):(document.activeElement.tabIndex>0||e[n-1].tabIndex>0)&&(t.preventDefault(),e[n-1].focus()):this.element.contains(document.activeElement)&&n!==e.length-1&&-1!==n?document.activeElement.tabIndex>0&&(t.preventDefault(),e[n+1].focus()):(t.preventDefault(),s.focus())}get focusables(){let t=[...this.element.querySelectorAll(F)];const e=[...document.documentElement.querySelectorAll('input[type="radio"]')];if(e.length){const s={};for(const t of e){const e=t.getAttribute("name");void 0===s[e]&&(s[e]=new U(e)),s[e].push(t)}t=t.filter((t=>{if("input"!==t.tagName.toLowerCase()||"radio"!==t.getAttribute("type").toLowerCase())return!0;const e=t.getAttribute("name");return s[e].keep(t)}))}const s=[...this.element.querySelectorAll(W)];s.sort(((t,e)=>t.tabIndex-e.tabIndex));const i=t.filter((t=>-1===s.indexOf(t)));return s.concat(i).filter((t=>"-1"!==t.tabIndex&&M(t,this.element)))}untrap(){this.trapped&&(this.isTrapping=!1,this.element.removeAttribute("aria-modal"),this.element.removeEventListener("keydown",this.handling),this.element=null,this.onUntrap&&this.onUntrap())}}class V{constructor(t){this.element=t,this.hidden=t.getAttribute("aria-hidden"),this.inert=t.getAttribute("inert"),this.element.setAttribute("aria-hidden",!0),this.element.setAttribute("inert","")}unstun(){null===this.hidden?this.element.removeAttribute("aria-hidden"):this.element.setAttribute("aria-hidden",this.hidden),null===this.inert?this.element.removeAttribute("inert"):this.element.setAttribute("inert",this.inert)}}class U{constructor(t){this.name=t,this.buttons=[]}push(t){this.buttons.push(t),(t===document.activeElement||t.checked||void 0===this.selected)&&(this.selected=t)}keep(t){return this.selected===t}}class j extends t.core.DisclosuresGroup{constructor(){super(),this.trap=new K}apply(t,e){super.apply(t,e),null===this.current?this.trap.untrap():this.trap.trap(this.current.element)}}const Y=new j;class J extends t.core.Disclosure{constructor(t){super(t),this.body=this.element.querySelector($),this.scrollDistance=0,this.scrolling=this.resize.bind(this,!1),this.resizing=this.resize.bind(this,!0),this.init(),this.resize(!0)}init(){this.element.addEventListener("click",this.click.bind(this)),this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.ESCAPE,this.conceal.bind(this),!0,!0),this.body&&(this.body.addEventListener("scroll",this.scrolling),window.addEventListener("resize",this.resizing))}click(t){this.body&&this.body!==t.target&&!this.body.contains(t.target)&&this.conceal()}gather(){Y.add(this)}disclose(t){return!!super.disclose(t)&&(this.resize(!0),this.handleScroll(!1),!0)}conceal(t,e){return!!super.conceal(t,e)&&(this.handleScroll(!0),!0)}handleScroll(e){e?(t.core.removeClass(document.documentElement,G),document.body.style.top="",window.scroll(0,this.scrollDistance)):(document.documentElement.classList.contains(G)||(this.scrollDistance=window.scrollY),document.body.style.top=-1*this.scrollDistance+"px",t.core.addClass(document.documentElement,G))}resize(e,s){this.body&&(this.body.scrollHeight>this.body.clientHeight?this.body.offsetHeight+this.body.scrollTop>=this.body.scrollHeight?t.core.removeClass(this.body,R):t.core.addClass(this.body,R):t.core.removeClass(this.body,R),e&&(this.body.style.maxHeight=window.innerHeight-32+"px",t.core.engine.renderer.next((()=>{this.body.style.maxHeight=window.innerHeight-32+"px"}))))}static get type(){return t.core.DISCLOSURE_TYPES.opened}static get selector(){return N}get GroupConstructor(){return j}}t.Modal=J,t.ModalsGroup=j,t.FocusTrap=K;new t.core.Initializer(B,[()=>{J.build(document)}]);const Q=t.core.ns("nav"),X=t.core.ns("nav__list"),Z=t.core.ns("nav__item"),tt=t.core.ns("nav__item--align-right"),et=t.core.ns("menu");class st extends t.core.DisclosuresGroup{constructor(t,e){super(t,e),this.menus=[],this.navList=e.querySelector(`.${X}`),document.addEventListener("focusout",this.focusOut.bind(this)),window.addEventListener("resize",this.resize.bind(this)),window.addEventListener("orientationchange",this.resize.bind(this)),this.resize()}static get selector(){return Q}add(t){super.add(t),t.element.classList.contains(et)&&this.menus.push(new it(t,this.navList.getBoundingClientRect().right))}focusOut(t){requestAnimationFrame((()=>{null===this.current||this.current.hasFocus||(this.index=-1)}))}get index(){return super.index}set index(t){-1===t&&null!==this.current&&this.current.hasFocus&&this.current.focus(),super.index=t}resize(){const t=this.navList.getBoundingClientRect().right;for(const e of this.menus)e.place(t)}}class it{constructor(t,e){this.initialize(t),this.place(e)}initialize(t){this.element=t.element;for(const e of t.buttons)if(e.hasAttribute){this.button=e.element;break}let e=this.element.parentElement;for(;e;){if(e.classList.contains(Z)){this.item=e;break}e=e.parentElement}}place(e){const s=getComputedStyle(this.element),i=parseFloat(s.width);this.button.getBoundingClientRect().left+i>e?t.core.addClass(this.item,tt):t.core.removeClass(this.item,tt)}}t.Navigation=st,t.Collapse.register(Q,st);const nt=t.core.ns.attr("theme"),rt=t.core.ns.attr("transition");class ot{constructor(){this.init()}init(){if(this.root=document.documentElement,this.scheme=localStorage.getItem("scheme")?localStorage.getItem("scheme"):null,null===this.scheme){const t=this.root.getAttribute(nt);"dark"===t||"light"===t?this.scheme=t:window.matchMedia("(prefers-color-scheme: dark)").matches?(this.scheme="dark",localStorage.setItem("scheme","dark")):this.scheme="light"}"dark"===this.scheme?this.root.hasAttribute(rt)?(this.root.removeAttribute(rt),this.root.setAttribute(nt,"dark"),setTimeout((()=>{this.root.setAttribute(rt,"")}),300)):this.root.setAttribute(nt,"dark"):this.root.setAttribute(nt,"light"),this.observer=new MutationObserver(this.mutate.bind(this)),this.observer.observe(this.root,{attributes:!0})}mutate(t){t.forEach((t=>{if("attributes"===t.type&&t.attributeName===nt){const t=this.root.getAttribute(nt);"dark"===t?localStorage.setItem("scheme","dark"):"light"===t&&localStorage.setItem("scheme","light")}}))}}t.Scheme=ot;const ht=`input[name="${t.core.ns.selector("radios-theme","")}"]`,lt=t.core.ns.selector("switch-theme","#"),ct=t.core.ns.attr("theme");class at{constructor(){this.attributeName=ct,this.theme=null,this.radios=document.querySelectorAll(ht);for(var t=0;t<this.radios.length;t++)this.radios[t].addEventListener("change",this.change.bind(this));this.observer=new MutationObserver(this.mutate.bind(this)),this.observe(),this.apply()}observe(){this.observer.observe(document.documentElement,{attributes:!0})}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.attributeName&&this.apply()}))}apply(){const t=document.documentElement.getAttribute(this.attributeName);this.isApplying=!0;for(var e=0;e<this.radios.length;e++)this.radios[e].checked=this.radios[e].value===t;this.isApplying=!1}change(){this.isApplying||(this.observer&&this.observer.disconnect(),this.theme=document.querySelector(ht+":checked"),this.theme?document.documentElement.setAttribute(this.attributeName,this.theme.value):document.documentElement.removeAttribute(this.attributeName),this.observer&&this.observe())}}new t.core.Initializer(`:root[${nt}]`,[()=>{new ot}]),new t.core.Initializer(`${lt}`,[()=>{new at}]);const dt=t.core.ns("sidemenu"),ut=t.core.ns("sidemenu__list");t.Collapse.register(dt,ut);const mt=t.core.ns.selector("table"),pt=`${t.core.ns.selector("table")}:not(${t.core.ns.selector("table--no-scroll")})`,gt=t.core.ns("table--shadow"),bt=t.core.ns("table--shadow-left"),ft=t.core.ns("table--shadow-right"),yt=t.core.ns("table__wrapper"),vt=t.core.ns("table--caption-bottom");class wt{constructor(t){this.init(t)}init(t){this.table=t,this.tableElem=this.table.querySelector("table"),this.tableContent=this.tableElem.querySelector("tbody"),this.isScrollable=this.tableContent.offsetWidth>this.tableElem.offsetWidth,this.caption=this.tableElem.querySelector("caption"),this.captionHeight=0,this.wrap();const e=this.change.bind(this);this.tableElem.addEventListener("scroll",e),this.change()}change(){const t=this.tableContent.offsetWidth>this.tableElem.offsetWidth;let e=this.tableElem.offsetWidth>this.table.offsetWidth;t||e?(this.scroll(),this.handleCaption()):t!==this.isScrollable&&this.delete(),this.isScrollable=t,e=!1}delete(){t.core.removeClass(this.table,ft),t.core.removeClass(this.table,bt),t.core.removeClass(this.table,gt),this.caption&&(this.tableElem.style.marginTop="",this.caption.style.top="",this.tableElem.style.marginBottom="",this.caption.style.bottom="")}scroll(){t.core.addClass(this.table,gt),this.setShadowPosition()}wrap(){const t=document.createElement("div");t.className=yt,this.table.insertBefore(t,this.tableElem),t.appendChild(this.tableElem),this.tableInnerWrapper=t}setShadowPosition(){const t=this.getScrollPosition("left"),e=this.getScrollPosition("right");"rtl"===document.documentElement.getAttribute("dir")?(this.setShadowVisibility("right",t),this.setShadowVisibility("left",e)):(this.setShadowVisibility("left",t),this.setShadowVisibility("right",e))}getScrollPosition(t){let e=1;switch("rtl"===document.documentElement.getAttribute("dir")&&(e=-1),t){case"left":return this.tableElem.scrollLeft*e;case"right":return this.tableContent.offsetWidth-this.tableElem.offsetWidth-this.tableElem.scrollLeft*e;default:return!1}}handleCaption(){if(this.caption){const t=getComputedStyle(this.caption),e=this.caption.offsetHeight+parseInt(t.marginTop)+parseInt(t.marginBottom);this.captionHeight=e,this.table.classList.contains(vt)?(this.tableElem.style.marginBottom=this.captionHeight+"px",this.caption.style.bottom=-this.captionHeight+"px"):(this.tableElem.style.marginTop=this.captionHeight+"px",this.caption.style.top=-this.captionHeight+"px")}}setShadowVisibility(e,s){s<=1?"left"===e?t.core.removeClass(this.table,bt):"right"===e&&t.core.removeClass(this.table,ft):"left"===e?t.core.addClass(this.table,bt):"right"===e&&t.core.addClass(this.table,ft)}}t.Table=wt;const Et=[],xt=()=>{for(let t=0;t<Et.length;t++)Et[t].change()};new t.core.Initializer(mt,[()=>{const t=document.querySelectorAll(pt);for(let e=0;e<t.length;e++)Et.push(new wt(t[e]));window.addEventListener("resize",xt),window.addEventListener("orientationchange",xt),xt()}]);class Lt extends t.core.DisclosureButton{apply(t){super.apply(t),this.hasAttribute&&this.element.setAttribute("tabindex",t?"0":"-1")}}const St=t.core.ns.selector("tabs"),At=t.core.ns("tabs"),Ct=t.core.ns("tabs__tab"),_t=t.core.ns("tabs__panel"),kt=t.core.ns("tabs__list");class qt extends t.core.DisclosuresGroup{constructor(e,s){super(e,s),this.list=s.querySelector(`.${kt}`),s.addEventListener("transitionend",this.transitionend.bind(this)),this.init(),t.core.engine.renderer.add(this.render.bind(this))}static get selector(){return At}transitionend(t){this.element.style.transition="none"}init(){this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.RIGHT,this.arrowRightPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.LEFT,this.arrowLeftPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.HOME,this.homePress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.END,this.endPress.bind(this),!0,!0)}arrowRightPress(){document.activeElement.classList.contains(Ct)&&(this.index<this.length-1?this.index++:this.index=0,this.focus())}arrowLeftPress(){document.activeElement.classList.contains(Ct)&&(this.index>0?this.index--:this.index=this.length-1,this.focus())}homePress(){document.activeElement.classList.contains(Ct)&&(this.index=0,this.focus())}endPress(){document.activeElement.classList.contains(Ct)&&(this.index=this.length-1,this.focus())}focus(){this.current&&this.current.focus()}apply(){for(let t=0;t<this._index;t++)this.members[t].translate(-1);this.current.element.style.transform="";for(let t=this._index+1;t<this.length;t++)this.members[t].translate(1);this.element.style.transition=""}add(t){if(super.add(t),1===this.length||t.disclosed)this.current=t;else{const e=this.members.indexOf(t);this._index>-1&&this._index!==e&&t.translate(e<this._index?-1:1,!0)}}render(){if(null===this.current)return;const t=Math.round(this.current.element.offsetHeight);this.panelHeight!==t&&(this.panelHeight=t,this.element.style.height=this.panelHeight+this.list.offsetHeight+"px")}}class It extends t.core.Disclosure{static get type(){return t.core.DISCLOSURE_TYPES.select}static get selector(){return _t}get GroupConstructor(){return qt}buttonFactory(t){return new Lt(t,this)}translate(t,e){e&&(this.element.style.transition="none"),this.element.style.transform=`translate(${100*t}%)`,e&&(this.element.style.transition="")}reset(){this.group.index=0}}t.Tab=It,t.TabButton=Lt,t.TabsGroup=qt;new t.core.Initializer(St,[()=>{It.build(document)}]);const zt=t.core.ns.selector("header"),Dt=t.core.ns.selector("header__search"),Ht=t.core.ns.selector("header__menu"),Pt=t.core.ns.selector("header__tools-links"),Ot=t.core.ns.selector("header__menu-links"),Tt=`${Pt} ${t.core.ns.selector("links-group")}`;class Bt{constructor(t){this.header=t||document.querySelector(zt),this.modals=[],this.init()}getModal(e){const s=this.header.querySelector(e);if(!s)return;const i=t.core.Instance.getInstances(s,t.Modal);i&&i.length&&this.modals.push(i[0])}init(){this.getModal(Dt),this.getModal(Ht),this.linksGroup=this.header.querySelector(Tt),this.toolsLinks=this.header.querySelector(Pt),this.menuLinks=this.header.querySelector(Ot),this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),this.change()}change(){if(this.isLarge=window.matchMedia("(min-width: 62em)").matches,this.isLarge)for(let t=0;t<this.modals.length;t++)this.modals[t].conceal(),this.modals[t].element.removeAttribute("role");else for(let t=0;t<this.modals.length;t++)this.modals[t].element.setAttribute("role","dialog");null!==this.linksGroup&&(this.isLarge?this.toolsLinks.appendChild(this.linksGroup):this.menuLinks.appendChild(this.linksGroup))}}t.Header=Bt;new t.core.Initializer(zt,[()=>{const t=Array.prototype.slice.call(document.querySelectorAll(zt)),e=[];for(const s of t)e.push(new Bt(s))}`
  
  
  
  
Instances: 1
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p>class r{constructor(){this.closures=[],this.nexts=[],this.rendering=this.render.bind(this),this.render()}add(t){this.closures.push(t);return()=>{const e=this.closures.indexOf(t);-1!==e&&this.closures.splice(e,1)}}next(t,e){e=void 0===e?0:e-1,void 0===this.nexts[e]&&(this.nexts[e]=[]),this.nexts[e].push(t)}render(){window.requestAnimationFrame(this.rendering);for(const t of this.closures)t.call();const t=this.nexts.shift();if(t)for(const e of t)e.call()}}const o=new class{constructor(){this.renderer=new r}register(t,e){}start(){}stop(){}};class h{constructor(t,e){this.selector=t,this.builders=e,this.instances=[],"loading"!==document.readyState?window.requestAnimationFrame(this.start.bind(this)):document.addEventListener("DOMContentLoaded",this.start.bind(this))}start(){if(!(this.instances.length>0)&&document.querySelectorAll(this.selector).length>0)for(let t=0;t<this.builders.length;t++)this.instances.push(this.builders[t]())}}const l={},c={};let a=0;const d=t=>{for(const e in c)if(c[e]===t)return e;a++;const e=a;return c[e]=t,e};class u{constructor(t,e,s){const i=d(t);l[i]||(l[i]=[]),l[i].push(this),this.element=t,this.id=t.id,this._isRendering=!1,this._isResizing=!1,this.listeners={},this.isResizing=e,this.isRendering=s}dispatch(t,e){const s=new CustomEvent(t,e);this.element.dispatchEvent(s)}listen(t,e){this.listeners[t]||(this.listeners[t]=[]),this.listeners[t].indexOf(e)>-1||(this.listeners[t].push(e),this.element.addEventListener(t,e))}unlisten(t,e){if(t)if(e){if(!this.listeners[t])return;const s=this.listeners[t].indexOf(e);s>-1&&this.listeners[t].splice(s,1),this.element.removeEventListener(e)}else{if(!this.listeners[t])return;for(const e of this.listeners[t])this.element.removeEventListener(e);this.listeners[t].length=0}else for(const t in this.listeners)this.unlisten(t)}get isRendering(){return this._isRendering}set isRendering(t){this._isRendering!==t&&(this._isRendering=t)}render(){}get isResizing(){return this._isResizing}set isResizing(t){this._isResizing!==t&&(this._isResizing=t)}resize(){}destroy(){}static getInstances(t,e){const s=d(t);return l[s]?e?l[s].filter((t=>t instanceof e)):l[s]:null}}const m=e.attr("group"),p=[];class g{constructor(t,e){this.id=t,this.element=e,this.members=[],this._index=-1,this._current=null,p.push(this)}static getGroupById(t){for(const e of p)if(e.constructor===this&&e.id===t)return e;return new this(t)}static getGroupByElement(t){for(const e of p)if(e.element===t)return e;return new this(!1,t)}static groupById(t,e){const s=t.element.getAttribute(m);if(null===s)return;e.getGroupById(s).add(t)}static groupByParent(t,e,s){if(void 0===s&&(s=e.selector),""===s)return;let i=t.element.parentElement;for(;i;){if(i.classList.contains(t.constructor.selector))return;if(i.classList.contains(s)){return void e.getGroupByElement(i).add(t)}i=i.parentElement}}static get selector(){return""}add(t){if(-1===this.members.indexOf(t))switch(this.members.push(t),t.setGroup(this),!0){case null!==this.current:case!t.disclosed&&!t.primal:t.disclosed=!1;break;default:this._current=t,this._index=this.members.indexOf(t),t.disclosed=!0}}get length(){return this.members.length}get index(){return this._index}set index(t){t<-1||t>=this.length||this._index===t||(null!==this.current&&this.current.conceal(!0,!0),this._index=t,this._current=this._index>-1?this.members[this._index]:null,null!==this.current&&this.current.disclose(!0),this.apply())}get current(){return this._current}set current(t){this.index=this.members.indexOf(t)}get hasFocus(){return void 0===this.current?null:this.current.hasFocus}apply(){}}class b{constructor(t,e){this.element=t,this.disclosure=e,this.hasAttribute=this.element.hasAttribute(this.disclosure.attributeName),this.element.addEventListener("click",this.click.bind(this)),this.observer=new MutationObserver(this.mutate.bind(this)),this.observe()}observe(){this.observer.observe(this.element,{attributes:!0})}click(t){this.disclosure.change(this.hasAttribute)}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.disclosure.attributeName&&this.disclosure.change(this.disclosed)}))}apply(t){this.hasAttribute&&(this.observer&&this.observer.disconnect(),this.element.setAttribute(this.disclosure.attributeName,t),this.observer&&this.observe())}get disclosed(){return"true"===this.element.getAttribute(this.disclosure.attributeName)}get hasFocus(){return this.element===document.activeElement}}const f=e.event("DISCLOSE"),y=e.event("CONCEAL"),v=[];class w extends u{constructor(t){super(t),this.buttons=[],this._selector=this.constructor.selector,this.modifier=this._selector+"--"+this.type.id,this.attributeName=this.type.ariaState?"aria-"+this.type.id:e.attr(this.type.id),this.pristine=!0;const s=document.querySelectorAll(this.type.ariaControls?`[aria-controls="${this.id}"]`:e.attr.selector("controls",this.id));if(s.length>0)for(let t=0;t<s.length;t++)this.addButton(s[t]);this.disclosed=!0===this.primal,this.gather()}gather(){this.group||(g.groupById(this,this.GroupConstructor),g.groupByParent(this,this.GroupConstructor))}static build(t){const e=Array.prototype.slice.call(t.querySelectorAll(`.${this.selector}`));for(const t of e)v.push(new this(t))}get type(){return this.constructor.type}static get type(){return null}static get selector(){return""}addButton(t){const e=this.buttonFactory(t);e.hasAttribute&&(void 0===this.primal?this.primal=e.disclosed:e.apply(this.primal)),this.buttons.push(e)}get GroupConstructor(){return g}buttonFactory(t){return new b(t,this)}disclose(t){return!this.disclosed&&(this.pristine=!1,this.disclosed=!0,t||void 0===this.group||(this.group.current=this),!0)}conceal(t,e){if(!this.disclosed)return!1;this.pristine=!1,this.disclosed=!1,e||this.focus(),t||void 0===this.group||(this.group.current=null);for(const t of v)t!==this&&this.element.contains(t.element)&&t.reset();return!0}get disclosed(){return this._disclosed}set disclosed(t){if(this._disclosed!==t){this.dispatch(t?f:y,this.type),this._disclosed=t,t?i(this.element,this.modifier):n(this.element,this.modifier);for(let e=0;e<this.buttons.length;e++)this.buttons[e].apply(t)}}reset(){}change(t){if(this.constructor.type.canConceal)switch(!0){case!t:case this.disclosed:this.conceal();break;default:this.disclose()}else this.disclose()}setGroup(t){this.group=t}get buttonHasFocus(){return!!this.buttons.some((t=>t.hasFocus))}get hasFocus(){return this.element===document.activeElement||(this.element.querySelectorAll(":focus").length>0||this.buttonHasFocus)}focus(){for(let t=0;t<this.buttons.length;t++){const e=this.buttons[t];if(e.hasAttribute)return void e.element.focus()}}}w.DISCLOSE_EVENT=f,w.CONCEAL_EVENT=y;const E={expand:{id:"expanded",ariaState:!0,ariaControls:!0,canConceal:!0},select:{id:"selected",ariaState:!0,ariaControls:!0,canConceal:!1},opened:{id:"opened",ariaState:!1,ariaControls:!0,canConceal:!0}};class x{constructor(t){this.element=t,this.collections={}}_add(t,e){void 0===this.collections[t]&&(this.collections[t]=new L(t,this.element)),this.collections[t].add(e)}down(t,e,s,i){this._add("down",new S(t,e,s,i))}up(t,e,s,i){this._add("up",new S(t,e,s,i))}dispose(){for(const t of this.collections)t.dispose();this.types=null}}class L{constructor(t,e){this.type=t,this.element=e,this.actions=[],this.binding=this.handle.bind(this),this.element.addEventListener("key"+t,this.binding)}add(t){this.actions.push(t)}handle(t){for(const e of this.actions)e.handle(t)}dispose(){this.element.removeEventListener("key"+this.type,this.binding),this.actions=null}}class S{constructor(t,e,s,i){this.key=t,this.closure=e,this.preventDefault=!0===s,this.stopPropagation=!0===i}handle(t){t.keyCode===this.key&&(this.closure(t),this.preventDefault&&t.preventDefault(),this.stopPropagation&&t.stopPropagation())}}x.TAB=9,x.ESCAPE=27,x.END=35,x.HOME=36,x.LEFT=37,x.UP=38,x.RIGHT=39,x.DOWN=40;const A=e("collapse"),C=[],_={};class k extends w{constructor(t){super(t),C.push(this),this.requesting=this.request.bind(this),t.addEventListener("transitionend",this.transitionend.bind(this)),this.disclosed&&this.unbound()}gatherByAscendants(){if(!this.group)for(const t in _){let e=this.element.parentElement;for(;e;){if(e.classList.contains(t))return void("string"==typeof _[t]?g.groupByParent(this,g,_[t]):g.groupByParent(this,_[t]));e=e.parentElement}}}gather(){this.gatherByAscendants(),super.gather()}static get type(){return E.expand}static get selector(){return A}static register(t,e){_[t]=e;for(const t of C)t.gatherByAscendants()}transitionend(t){this.disclosed||(this.element.style.maxHeight="")}unbound(){this.element.style.maxHeight="none"}disclose(t){this.disclosed||(this.unbound(),this.adjust(),this.requested=()=>{super.disclose(t)},window.requestAnimationFrame(this.requesting))}conceal(t,e){this.disclosed&&(this.adjust(),this.requested=()=>{super.conceal(t,e)},window.requestAnimationFrame(this.requesting))}request(){this.requested&&this.requested(),this.requested=null}adjust(){this.element.style.setProperty("--collapser","none");const t=this.element.offsetHeight;this.element.style.setProperty("--collapse",-t+"px"),this.element.style.setProperty("--collapser","")}reset(){this.pristine||(this.disclosed=!1)}}t.core.ns=e,t.core.addClass=i,t.core.removeClass=n,t.core.engine=o,t.core.Instance=u,t.core.Initializer=h,t.core.Disclosure=w,t.core.DisclosureButton=b,t.core.DisclosuresGroup=g,t.core.DISCLOSURE_TYPES=E,t.KeyListener=x,t.Collapse=k,t.Equisized=class{constructor(t,e){this.selector=t,this.group=e,this.elements=this.group.querySelectorAll(this.selector),this.maxWidth=0,this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),window.addEventListener("load",this.changing)}change(){this.reset();for(let t=0;t<this.elements.length;t++){const e=this._getWidth(this.elements[t]);e>this.maxWidth&&(this.maxWidth=e)}this.apply()}apply(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width=this.maxWidth+1+"px"}reset(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width="auto";this.maxWidth=0}_getWidth(t){let e=t.offsetWidth;const s=getComputedStyle(t);return e+=parseInt(s.marginLeft)+parseInt(s.marginRight),e}};new h(`.${A}`,[()=>{k.build(document)}]);const q=t.core.ns("accordions-group"),I=t.core.ns("accordion");class z extends t.core.DisclosuresGroup{static get selector(){return q}}t.AccordionsGroup=z,t.Collapse.register(I,z);const D=`${t.core.ns.selector("breadcrumb")} ${t.core.ns.selector("collapse")}`;class H extends t.core.Instance{constructor(e){super(e),this.collapse=t.core.Instance.getInstances(e,t.Collapse)[0],this.links=[...this.element.querySelectorAll("a[href]")],this.count=0,this.links.length&&(this.listen(t.core.Disclosure.DISCLOSE_EVENT,this.focus.bind(this)),this.resizing=this.resize.bind(this),window.addEventListener("resize",this.resizing))}focus(){this.links[0].focus(),t.core.engine.renderer.next((()=>{this.verify()}))}verify(){this.count++,this.count>100||document.activeElement!==this.links[0]&&this.focus()}resize(){window.matchMedia("(min-width: 48em)").matches?this.collapse.buttons[0]===document.activeElement&&this.links.focus():this.links.indexOf(document.activeElement)>-1&&this.collapse.focus()}}new t.core.Initializer(D,[()=>{const t=[],e=document.querySelectorAll(D);for(let s=0;s<e.length;s++)t.push(new H(e[s]))}]);const P=t.core.ns.selector("btn"),O=t.core.ns.selector("btns-group"),T=t.core.ns.selector("btns-group--equisized");new t.core.Initializer(O,[()=>{const e=document.querySelectorAll(T),s=[];for(let i=0;i<e.length;i++)s.push(new t.Equisized(P,e[i]))}]);const B=t.core.ns.selector("modal"),N=t.core.ns("modal"),G=t.core.ns("no-scroll"),R=t.core.ns("scroll-shadow"),$=t.core.ns.selector("modal__body"),F=['[tabindex="0"]',"a[href]","button:not([disabled])","input:not([disabled])","select:not([disabled])","textarea:not([disabled])","audio[controls]","video[controls]",'[contenteditable]:not([contenteditable="false" i])',"details>summary:first-of-type","details"].join(),W=['[tabindex]:not([tabindex="-1"]):not([tabindex="0"])'].join(),M=(t,e)=>{if("hidden"===window.getComputedStyle(t).visibility)return!1;for(void 0===e&&(e=t);e.contains(t);){if("none"===window.getComputedStyle(t).display)return!1;t=t.parentElement}return!0};class K{constructor(t,e){this.element=null,this.activeElement=null,this.onTrap=t,this.onUntrap=e,this.waiting=this.wait.bind(this),this.handling=this.handle.bind(this),this.current=null}get trapped(){return null!==this.element}trap(t){this.trapped&&this.untrap(),this.element=t,this.isTrapping=!0,this.wait(),this.onTrap&&this.onTrap()}wait(){M(this.element)?this.trapping():t.core.engine.renderer.next(this.waiting)}trapping(){if(!this.isTrapping)return;this.isTrapping=!1;const t=this.focusables;t.length&&t[0].focus(),this.element.setAttribute("aria-modal",!0),this.element.addEventListener("keydown",this.handling),this.stunneds=[]}stun(t){for(const e of t.children)e!==this.element&&(e.contains(this.element)?this.stun(e):this.stunneds.push(new V(e)))}handle(t){if(9!==t.keyCode)return;const e=this.focusables;if(0===e.length)return;const s=e[0],i=e[e.length-1],n=e.indexOf(document.activeElement);t.shiftKey?!this.element.contains(document.activeElement)||n<1?(t.preventDefault(),i.focus()):(document.activeElement.tabIndex>0||e[n-1].tabIndex>0)&&(t.preventDefault(),e[n-1].focus()):this.element.contains(document.activeElement)&&n!==e.length-1&&-1!==n?document.activeElement.tabIndex>0&&(t.preventDefault(),e[n+1].focus()):(t.preventDefault(),s.focus())}get focusables(){let t=[...this.element.querySelectorAll(F)];const e=[...document.documentElement.querySelectorAll('input[type="radio"]')];if(e.length){const s={};for(const t of e){const e=t.getAttribute("name");void 0===s[e]&&(s[e]=new U(e)),s[e].push(t)}t=t.filter((t=>{if("input"!==t.tagName.toLowerCase()||"radio"!==t.getAttribute("type").toLowerCase())return!0;const e=t.getAttribute("name");return s[e].keep(t)}))}const s=[...this.element.querySelectorAll(W)];s.sort(((t,e)=>t.tabIndex-e.tabIndex));const i=t.filter((t=>-1===s.indexOf(t)));return s.concat(i).filter((t=>"-1"!==t.tabIndex&&M(t,this.element)))}untrap(){this.trapped&&(this.isTrapping=!1,this.element.removeAttribute("aria-modal"),this.element.removeEventListener("keydown",this.handling),this.element=null,this.onUntrap&&this.onUntrap())}}class V{constructor(t){this.element=t,this.hidden=t.getAttribute("aria-hidden"),this.inert=t.getAttribute("inert"),this.element.setAttribute("aria-hidden",!0),this.element.setAttribute("inert","")}unstun(){null===this.hidden?this.element.removeAttribute("aria-hidden"):this.element.setAttribute("aria-hidden",this.hidden),null===this.inert?this.element.removeAttribute("inert"):this.element.setAttribute("inert",this.inert)}}class U{constructor(t){this.name=t,this.buttons=[]}push(t){this.buttons.push(t),(t===document.activeElement||t.checked||void 0===this.selected)&&(this.selected=t)}keep(t){return this.selected===t}}class j extends t.core.DisclosuresGroup{constructor(){super(),this.trap=new K}apply(t,e){super.apply(t,e),null===this.current?this.trap.untrap():this.trap.trap(this.current.element)}}const Y=new j;class J extends t.core.Disclosure{constructor(t){super(t),this.body=this.element.querySelector($),this.scrollDistance=0,this.scrolling=this.resize.bind(this,!1),this.resizing=this.resize.bind(this,!0),this.init(),this.resize(!0)}init(){this.element.addEventListener("click",this.click.bind(this)),this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.ESCAPE,this.conceal.bind(this),!0,!0),this.body&&(this.body.addEventListener("scroll",this.scrolling),window.addEventListener("resize",this.resizing))}click(t){this.body&&this.body!==t.target&&!this.body.contains(t.target)&&this.conceal()}gather(){Y.add(this)}disclose(t){return!!super.disclose(t)&&(this.resize(!0),this.handleScroll(!1),!0)}conceal(t,e){return!!super.conceal(t,e)&&(this.handleScroll(!0),!0)}handleScroll(e){e?(t.core.removeClass(document.documentElement,G),document.body.style.top="",window.scroll(0,this.scrollDistance)):(document.documentElement.classList.contains(G)||(this.scrollDistance=window.scrollY),document.body.style.top=-1*this.scrollDistance+"px",t.core.addClass(document.documentElement,G))}resize(e,s){this.body&&(this.body.scrollHeight>this.body.clientHeight?this.body.offsetHeight+this.body.scrollTop>=this.body.scrollHeight?t.core.removeClass(this.body,R):t.core.addClass(this.body,R):t.core.removeClass(this.body,R),e&&(this.body.style.maxHeight=window.innerHeight-32+"px",t.core.engine.renderer.next((()=>{this.body.style.maxHeight=window.innerHeight-32+"px"}))))}static get type(){return t.core.DISCLOSURE_TYPES.opened}static get selector(){return N}get GroupConstructor(){return j}}t.Modal=J,t.ModalsGroup=j,t.FocusTrap=K;new t.core.Initializer(B,[()=>{J.build(document)}]);const Q=t.core.ns("nav"),X=t.core.ns("nav__list"),Z=t.core.ns("nav__item"),tt=t.core.ns("nav__item--align-right"),et=t.core.ns("menu");class st extends t.core.DisclosuresGroup{constructor(t,e){super(t,e),this.menus=[],this.navList=e.querySelector(`.${X}`),document.addEventListener("focusout",this.focusOut.bind(this)),window.addEventListener("resize",this.resize.bind(this)),window.addEventListener("orientationchange",this.resize.bind(this)),this.resize()}static get selector(){return Q}add(t){super.add(t),t.element.classList.contains(et)&&this.menus.push(new it(t,this.navList.getBoundingClientRect().right))}focusOut(t){requestAnimationFrame((()=>{null===this.current||this.current.hasFocus||(this.index=-1)}))}get index(){return super.index}set index(t){-1===t&&null!==this.current&&this.current.hasFocus&&this.current.focus(),super.index=t}resize(){const t=this.navList.getBoundingClientRect().right;for(const e of this.menus)e.place(t)}}class it{constructor(t,e){this.initialize(t),this.place(e)}initialize(t){this.element=t.element;for(const e of t.buttons)if(e.hasAttribute){this.button=e.element;break}let e=this.element.parentElement;for(;e;){if(e.classList.contains(Z)){this.item=e;break}e=e.parentElement}}place(e){const s=getComputedStyle(this.element),i=parseFloat(s.width);this.button.getBoundingClientRect().left+i>e?t.core.addClass(this.item,tt):t.core.removeClass(this.item,tt)}}t.Navigation=st,t.Collapse.register(Q,st);const nt=t.core.ns.attr("theme"),rt=t.core.ns.attr("transition");class ot{constructor(){this.init()}init(){if(this.root=document.documentElement,this.scheme=localStorage.getItem("scheme")?localStorage.getItem("scheme"):null,null===this.scheme){const t=this.root.getAttribute(nt);"dark"===t||"light"===t?this.scheme=t:window.matchMedia("(prefers-color-scheme: dark)").matches?(this.scheme="dark",localStorage.setItem("scheme","dark")):this.scheme="light"}"dark"===this.scheme?this.root.hasAttribute(rt)?(this.root.removeAttribute(rt),this.root.setAttribute(nt,"dark"),setTimeout((()=>{this.root.setAttribute(rt,"")}),300)):this.root.setAttribute(nt,"dark"):this.root.setAttribute(nt,"light"),this.observer=new MutationObserver(this.mutate.bind(this)),this.observer.observe(this.root,{attributes:!0})}mutate(t){t.forEach((t=>{if("attributes"===t.type&&t.attributeName===nt){const t=this.root.getAttribute(nt);"dark"===t?localStorage.setItem("scheme","dark"):"light"===t&&localStorage.setItem("scheme","light")}}))}}t.Scheme=ot;const ht=`input[name="${t.core.ns.selector("radios-theme","")}"]`,lt=t.core.ns.selector("switch-theme","#"),ct=t.core.ns.attr("theme");class at{constructor(){this.attributeName=ct,this.theme=null,this.radios=document.querySelectorAll(ht);for(var t=0;t<this.radios.length;t++)this.radios[t].addEventListener("change",this.change.bind(this));this.observer=new MutationObserver(this.mutate.bind(this)),this.observe(),this.apply()}observe(){this.observer.observe(document.documentElement,{attributes:!0})}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.attributeName&&this.apply()}))}apply(){const t=document.documentElement.getAttribute(this.attributeName);this.isApplying=!0;for(var e=0;e<this.radios.length;e++)this.radios[e].checked=this.radios[e].value===t;this.isApplying=!1}change(){this.isApplying||(this.observer&&this.observer.disconnect(),this.theme=document.querySelector(ht+":checked"),this.theme?document.documentElement.setAttribute(this.attributeName,this.theme.value):document.documentElement.removeAttribute(this.attributeName),this.observer&&this.observe())}}new t.core.Initializer(`:root[${nt}]`,[()=>{new ot}]),new t.core.Initializer(`${lt}`,[()=>{new at}]);const dt=t.core.ns("sidemenu"),ut=t.core.ns("sidemenu__list");t.Collapse.register(dt,ut);const mt=t.core.ns.selector("table"),pt=`${t.core.ns.selector("table")}:not(${t.core.ns.selector("table--no-scroll")})`,gt=t.core.ns("table--shadow"),bt=t.core.ns("table--shadow-left"),ft=t.core.ns("table--shadow-right"),yt=t.core.ns("table__wrapper"),vt=t.core.ns("table--caption-bottom");class wt{constructor(t){this.init(t)}init(t){this.table=t,this.tableElem=this.table.querySelector("table"),this.tableContent=this.tableElem.querySelector("tbody"),this.isScrollable=this.tableContent.offsetWidth>this.tableElem.offsetWidth,this.caption=this.tableElem.querySelector("caption"),this.captionHeight=0,this.wrap();const e=this.change.bind(this);this.tableElem.addEventListener("scroll",e),this.change()}change(){const t=this.tableContent.offsetWidth>this.tableElem.offsetWidth;let e=this.tableElem.offsetWidth>this.table.offsetWidth;t||e?(this.scroll(),this.handleCaption()):t!==this.isScrollable&&this.delete(),this.isScrollable=t,e=!1}delete(){t.core.removeClass(this.table,ft),t.core.removeClass(this.table,bt),t.core.removeClass(this.table,gt),this.caption&&(this.tableElem.style.marginTop="",this.caption.style.top="",this.tableElem.style.marginBottom="",this.caption.style.bottom="")}scroll(){t.core.addClass(this.table,gt),this.setShadowPosition()}wrap(){const t=document.createElement("div");t.className=yt,this.table.insertBefore(t,this.tableElem),t.appendChild(this.tableElem),this.tableInnerWrapper=t}setShadowPosition(){const t=this.getScrollPosition("left"),e=this.getScrollPosition("right");"rtl"===document.documentElement.getAttribute("dir")?(this.setShadowVisibility("right",t),this.setShadowVisibility("left",e)):(this.setShadowVisibility("left",t),this.setShadowVisibility("right",e))}getScrollPosition(t){let e=1;switch("rtl"===document.documentElement.getAttribute("dir")&&(e=-1),t){case"left":return this.tableElem.scrollLeft*e;case"right":return this.tableContent.offsetWidth-this.tableElem.offsetWidth-this.tableElem.scrollLeft*e;default:return!1}}handleCaption(){if(this.caption){const t=getComputedStyle(this.caption),e=this.caption.offsetHeight+parseInt(t.marginTop)+parseInt(t.marginBottom);this.captionHeight=e,this.table.classList.contains(vt)?(this.tableElem.style.marginBottom=this.captionHeight+"px",this.caption.style.bottom=-this.captionHeight+"px"):(this.tableElem.style.marginTop=this.captionHeight+"px",this.caption.style.top=-this.captionHeight+"px")}}setShadowVisibility(e,s){s<=1?"left"===e?t.core.removeClass(this.table,bt):"right"===e&&t.core.removeClass(this.table,ft):"left"===e?t.core.addClass(this.table,bt):"right"===e&&t.core.addClass(this.table,ft)}}t.Table=wt;const Et=[],xt=()=>{for(let t=0;t<Et.length;t++)Et[t].change()};new t.core.Initializer(mt,[()=>{const t=document.querySelectorAll(pt);for(let e=0;e<t.length;e++)Et.push(new wt(t[e]));window.addEventListener("resize",xt),window.addEventListener("orientationchange",xt),xt()}]);class Lt extends t.core.DisclosureButton{apply(t){super.apply(t),this.hasAttribute&&this.element.setAttribute("tabindex",t?"0":"-1")}}const St=t.core.ns.selector("tabs"),At=t.core.ns("tabs"),Ct=t.core.ns("tabs__tab"),_t=t.core.ns("tabs__panel"),kt=t.core.ns("tabs__list");class qt extends t.core.DisclosuresGroup{constructor(e,s){super(e,s),this.list=s.querySelector(`.${kt}`),s.addEventListener("transitionend",this.transitionend.bind(this)),this.init(),t.core.engine.renderer.add(this.render.bind(this))}static get selector(){return At}transitionend(t){this.element.style.transition="none"}init(){this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.RIGHT,this.arrowRightPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.LEFT,this.arrowLeftPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.HOME,this.homePress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.END,this.endPress.bind(this),!0,!0)}arrowRightPress(){document.activeElement.classList.contains(Ct)&&(this.index<this.length-1?this.index++:this.index=0,this.focus())}arrowLeftPress(){document.activeElement.classList.contains(Ct)&&(this.index>0?this.index--:this.index=this.length-1,this.focus())}homePress(){document.activeElement.classList.contains(Ct)&&(this.index=0,this.focus())}endPress(){document.activeElement.classList.contains(Ct)&&(this.index=this.length-1,this.focus())}focus(){this.current&&this.current.focus()}apply(){for(let t=0;t<this._index;t++)this.members[t].translate(-1);this.current.element.style.transform="";for(let t=this._index+1;t<this.length;t++)this.members[t].translate(1);this.element.style.transition=""}add(t){if(super.add(t),1===this.length||t.disclosed)this.current=t;else{const e=this.members.indexOf(t);this._index>-1&&this._index!==e&&t.translate(e<this._index?-1:1,!0)}}render(){if(null===this.current)return;const t=Math.round(this.current.element.offsetHeight);this.panelHeight!==t&&(this.panelHeight=t,this.element.style.height=this.panelHeight+this.list.offsetHeight+"px")}}class It extends t.core.Disclosure{static get type(){return t.core.DISCLOSURE_TYPES.select}static get selector(){return _t}get GroupConstructor(){return qt}buttonFactory(t){return new Lt(t,this)}translate(t,e){e&&(this.element.style.transition="none"),this.element.style.transform=`translate(${100*t}%)`,e&&(this.element.style.transition="")}reset(){this.group.index=0}}t.Tab=It,t.TabButton=Lt,t.TabsGroup=qt;new t.core.Initializer(St,[()=>{It.build(document)}]);const zt=t.core.ns.selector("header"),Dt=t.core.ns.selector("header__search"),Ht=t.core.ns.selector("header__menu"),Pt=t.core.ns.selector("header__tools-links"),Ot=t.core.ns.selector("header__menu-links"),Tt=`${Pt} ${t.core.ns.selector("links-group")}`;class Bt{constructor(t){this.header=t||document.querySelector(zt),this.modals=[],this.init()}getModal(e){const s=this.header.querySelector(e);if(!s)return;const i=t.core.Instance.getInstances(s,t.Modal);i&&i.length&&this.modals.push(i[0])}init(){this.getModal(Dt),this.getModal(Ht),this.linksGroup=this.header.querySelector(Tt),this.toolsLinks=this.header.querySelector(Pt),this.menuLinks=this.header.querySelector(Ot),this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),this.change()}change(){if(this.isLarge=window.matchMedia("(min-width: 62em)").matches,this.isLarge)for(let t=0;t<this.modals.length;t++)this.modals[t].conceal(),this.modals[t].element.removeAttribute("role");else for(let t=0;t<this.modals.length;t++)this.modals[t].element.setAttribute("role","dialog");null!==this.linksGroup&&(this.isLarge?this.toolsLinks.appendChild(this.linksGroup):this.menuLinks.appendChild(this.linksGroup))}}t.Header=Bt;new t.core.Initializer(zt,[()=>{const t=Array.prototype.slice.call(document.querySelectorAll(zt)),e=[];for(const s of t)e.push(new Bt(s))}</p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Cookie without SameSite Attribute
##### Low (Medium)
  
  
  
  
#### Description
<p>A cookie has been set without the SameSite attribute, which means that the cookie can be sent as a result of a 'cross-site' request. The SameSite attribute is an effective counter measure to cross-site request forgery, cross-site script inclusion, and timing attacks.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/](https://www.psyenfantado.sante.gouv.fr/static/)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/sitemap.xml](https://www.psyenfantado.sante.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
Instances: 8
  
### Solution
<p>Ensure that the SameSite attribute is set to either 'lax' or ideally 'strict' for all cookies.</p>
  
### Reference
* https://tools.ietf.org/html/draft-ietf-httpbis-cookie-same-site

  
#### CWE Id : 1275
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Cookie Without Secure Flag
##### Low (Medium)
  
  
  
  
#### Description
<p>A cookie has been set without the secure flag, which means that the cookie can be accessed via unencrypted connections.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/](https://www.psyenfantado.sante.gouv.fr/static/)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/sitemap.xml](https://www.psyenfantado.sante.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
Instances: 8
  
### Solution
<p>Whenever a cookie contains sensitive information or is a session token, then it should always be passed using an encrypted channel. Ensure that the secure flag is set for cookies containing such sensitive information.</p>
  
### Reference
* https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/06-Session_Management_Testing/02-Testing_for_Cookies_Attributes.html

  
#### CWE Id : 614
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Dangerous JS Functions
##### Low (Low)
  
  
  
  
#### Description
<p>A dangerous JS function seems to be in use that would leave the site vulnerable.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/robots.txt](https://www.psyenfantado.sante.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  * Evidence: `public, max-age=0`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/favicons/manifest.webmanifest](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/favicons/manifest.webmanifest)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  * Evidence: `public, max-age=0`
  
  
  
  
Instances: 8
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/matomo.js](https://www.psyenfantado.sante.gouv.fr/static/js/matomo.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/tarteaucitron.service.js](https://www.psyenfantado.sante.gouv.fr/static/js/tarteaucitron.service.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.nomodule.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.nomodule.min.js)
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/css/custom.css](https://www.psyenfantado.sante.gouv.fr/static/css/custom.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/documents/](https://www.psyenfantado.sante.gouv.fr/static/documents/)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/](https://www.psyenfantado.sante.gouv.fr/static/)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/robots.txt](https://www.psyenfantado.sante.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/sitemap.xml](https://www.psyenfantado.sante.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `X-Powered-By: Express`
  
  
  
  
Instances: 11
  
### Solution
<p>Ensure that your web server, application server, load balancer, etc. is configured to suppress "X-Powered-By" headers.</p>
  
### Reference
* http://blogs.msdn.com/b/varunm/archive/2013/04/23/remove-unwanted-http-response-headers.aspx
* http://www.troyhunt.com/2012/02/shhh-dont-let-your-response-headers.html

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### X-Content-Type-Options Header Missing
##### Low (Medium)
  
  
  
  
#### Description
<p>The Anti-MIME-Sniffing header X-Content-Type-Options was not set to 'nosniff'. This allows older versions of Internet Explorer and Chrome to perform MIME-sniffing on the response body, potentially causing the response body to be interpreted and displayed as a content type other than the declared content type. Current (early 2014) and legacy versions of Firefox will use the declared content type (if one is set), rather than performing MIME-sniffing.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/robots.txt](https://www.psyenfantado.sante.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/css/dsfr.min.css](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/css/dsfr.min.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/favicons/favicon.svg](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/favicons/favicon.svg)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/css/custom.css](https://www.psyenfantado.sante.gouv.fr/static/css/custom.css)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/favicons/apple-touch-icon.png](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/favicons/apple-touch-icon.png)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/css/dsfr.min.css](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/css/dsfr.min.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `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`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/documents/Guide-PsyEnfantAdo-Patients.pdf](https://www.psyenfantado.sante.gouv.fr/static/documents/Guide-PsyEnfantAdo-Patients.pdf)
  
  
  * Method: `GET`
  
  
  * Evidence: `160/Type/FontDescriptor/XHeight`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `36ae-m8GTi5A5SrYIUmV9Plu8bsh7iRc`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `3Anh1O6ynAVhs1QjEe8MrlubsYZXRVuAp_`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/](https://www.psyenfantado.sante.gouv.fr/static/)
  
  
  * Method: `GET`
  
  
  * Evidence: `3AfY36EJGtQ9vjCgSLRHiV3MhmGh6NY-6J`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `3Am84HXCK44xe1GoiYeIWHtIx_65snURKg`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `28be-wuHZK7vLqIJoCgONalNw6w5T0Dc`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `36ae-m8GTi5A5SrYIUmV9Plu8bsh7iRc`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Evidence: `2d48-IUivgQhCHdpi26jZz5CJ2u5EvWA`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `iVBORw0KGgoAAAANSUhEUgAAAHcAAAAeCAYAAAAWwoEYAAADl0lEQVRoge1Y0W3bQAx9CjKARlC+9GVUmqDJBHEmiDyB6wkcTxBngtgTxJ0gzgQW4C/9aYOmE6g4lTQo+k6y3Rb94QOERNQd+cjj8XiGwWAwGAwGg8FgMBgMBoPB8F8RNRXe+whEKe7c36ZCAeCRxC9Rig2PUd8kPgAsoxSfQ3YAzAA8D/HwYYCb05kBKKO0teFkmbC1jlKsAnq/Abjn+QBqAIsoRS30ttwG/HNz1wH/XIxWTicLdvtW7xTAGEAMtP685CNsBTe2d/BLydfXAG57SEnMAST0zgYZSUCPk02bCvkJduIzuJzDLfPolbY+tLKmar+/8+IRePy4qdpE03qHuH8fipFb4N2+XdA3AJ/0vaQxt7s9FvkIS2XvtqnwM0rxpOQfbnE5G2LhTCmUO2fHIngOmcv+KG3HafDchB6ntwjYqenR2PqC7sOZ3E7FXHB0vqxoFyUyLh7OEH7LOGouvhhN3eIBeKXv0n5MsufdHqXcwYR5U2EbpV35lSspVPJmQj4TcgRK7jTg5IzmPUhhwM5a2WHUFCx+NgiDucmgh7idikLovHFlL0pxQ9xzX+IIP9Y6FrJsqhjlQpZRAkFVDCjZfcCHt6bqJDmuh5ylCWx0RVnk3oumaknqTH5sqrY0fBWyULaHUIgAgxb46MxV3DbieAhxOxUxjSuljig9lMQ/Bcfoi9BTEv9aLORSndVxYOH525sUDC6u2gWxcNzBNRxPanyh3ktKinOgy3WoxPbtUM0t6RkbQnzBnFPgi9GCOEubY9UffIryz9iKRe8s/FUfEWosJJGxagp85bpUO3VywQ46lOtAWfNxKwa4JXQ+628+bpxYGXXMzp5rXH401VEyXwIdowXFaKWSMFHvMTVmGnc+P3oXV2QOiBCfgex8QtcQCbcQE/H+eoHzrkFo1KM7zVO4jVVj5s6lRiWF7zyXyfRMc97J3tzj87mYqZ7E2YjzUct9GUi4tjHLR8dVkBLjQcuHFleWvQfRNEhFR7uX7pkctOwvZXsft7sAtyldEUIN2UTeLxnEfxKYswzdi88BdbZ8hifUoSMftQvP+muRwN6+Q3DeqqRExP9QmTtcheiHh0Ot1x2i2km1bP9pbufw5zZdyWsOrh7vQae5OZWbsMv30pi7cd/CKj3coPEVaCP4Zhx4eQWhOZ1Y9MTXGyP8/iGjEyfa1T4fO/4Lea9vBoPBYDAYDAaDwWAwGAwGwz8GgF8siXCCbrSRhgAAAABJRU5ErkJggg==`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/sitemap.xml](https://www.psyenfantado.sante.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `3APaX60NOTS-MrA5aymKU-G0cFP58WtUzT`
  
  
  
  
Instances: 11
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>wOFF\x0000\x0001\x0000\x0000\x0000\x0000\x0018�\x0000\x000b\x0000\x0000\x0000\x00002\x0014\x0000\x0001\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000GSUB\x0000\x0000\x0001\x0008\x0000\x0000\x0000;\x0000\x0000\x0000T �%zOS/2\x0000\x0000\x0001D\x0000\x0000\x0000A\x0000\x0000\x0000VI�N�cmap\x0000\x0000\x0001�\x0000\x0000\x0001�\x0000\x0000\x0005�4��\x000cglyf\x0000\x0000\x0003\x0010\x0000\x0000\x0011\x0011\x0000\x0000!ܳ��\x0013head\x0000\x0000\x0014$\x0000\x0000\x00001\x0000\x0000\x00006\x001c��hhea\x0000\x0000\x0014X\x0000\x0000\x0000\x001c\x0000\x0000\x0000$\x0008r\x0004\x000ehmtx\x0000\x0000\x0014t\x0000\x0000\x0000\x0011\x0000\x0000\x00014d@\x0000\x0000loca\x0000\x0000\x0014�\x0000\x0000\x0000�\x0000\x0000\x0000�\x001dU&<maxp\x0000\x0000\x0015$\x0000\x0000\x0000\x001d\x0000\x0000\x0000 \x0001a\x0000`name\x0000\x0000\x0015D\x0000\x0000\x0001\x001d\x0000\x0000\x0001�\x0014���post\x0000\x0000\x0016d\x0000\x0000\x00020\x0000\x0000\x0005\x0003{vxlx�c`d``�b0`�c`rq�	a��I,�c�b`a�\x0000�<2�1'3=��\x0003�\x0003ʱ�i\x000e f��\x0002\x0000&;\x0005H\x0000x�c`dY�8��������\x0003H���L\x000e\x000cV��@����\x0001+\x0008HsMap���ч��\x0001�\x001c�\x0003\x000c\x001f� 9\x0000z\x0005\x000b\x0014\x0000\x0000\x0000x���Wn�@\x0000\x0006�%w���{�w[��1r�<�'p8�s�\x0010�v�\x0005\x001b�K�\x0015���K5������r�Ҝ��՜��yM�����S�\x0015���\x001c[�kk�\x0013�h����n���K\x001f�\x000c0�\x0010Ì0�\x0018�L0�\x0014��0�\x001c�,��\x0012ˬ��\x001a�l��V��\x001dv�c�\x0003\x000e9�\x0013N9�\x000b.��\x001bn��\x0007\x001ey�\x0017^y�\x000f>��Q~X\x001b���C���Yõ��j�\x0004�\x001a\x0016�o�\x001a-���\x0008lg`�Tt\x0007�\x001e~]�\x0013����\x0005�?�\x0003�\x001d\x000c�P`�\x0003;\x0012����\x0005v<�\x0013��\x000c�T`�\x0003;\x0013����\x0005v>�\x000b�]\x000c�R`�\x0003�\x0012����\x0005v=�\x001b��\x000c�V`�ÿ��	�n`�\x0002�\x001f؃�\x001e\x0006�(�ǁ=	�i`�\x0002{\x001e؋�^\x0006�*�ׁ�	�m`�\x0002{\x001f؇�>\x0006�)�ρ}	�k`�\x0002�\x001e؏�~\x0006�+����\x00174#��\x0000\x0000\x0000x��Y\x000bpSgv��^��O�B��\x0018[����z�l���\x0001����\x000b�\x0003��qBB!��@B3Ŕ!@Ɇj3l6�8�5\x001d6�n�nôԙ�jw���!L��\x001d�;��t6�N�\x001b\x001c�u����J����b�կ�����s�s�/�c��\x000f\x0018z�!���`j\x0019\x0006|�M�\x0015\x001by#_!y%oq8\x0014\x000eq8��A\x001d���/\x0002\x0001\x001c���\x0001���\x0003�:��:�\x001dP�\x001a�7��p}ú\x0015�/��˿�ꮬ��'7np�kPLF�\x001d\x001b�\x001b\x001a�\x001fjno\x001f�_�\x001b�3K�\x0010���2L�+-QEZJ\x000f\x000e�h&0J\x0011�&�S�\x000e$�\x0011'x|�㪃@\x0004|\x000e(1��\x000b\x0005�.�Ė!�&\x0008\x0015������\x0019��ƞ���������RX�Z�����;/T,5�۠=4\x0018</p><p>
>Nn�������3s�P
�m)��lm�\x0015lk��s\x0015��ѯ�\x0018\x001c>i�����>�CY��:\x0015�)�L\x000b�03�Q�z\x0007q?�~�/�\x0005w�\x001d�f�_"\x001b\x0013</p><p>�'.�<a�J<��\x0013Yt<����`8\x001c�:t'5���帒��M\x0013eֻt�b1D���?��\x000cX�\x0016�സ-� r�\x001a���ނ��A�B�z�0�u2\x0016F`J\x0019&\x000fl�\x001dn'ٜ0���8�\x001f$\x0017{\x0002>�Mb�tO��"#|b\x0014�\x0016\x000f(��-��EA��d��\x0017pM\x0005&Sr���p"AD1d�/a\x00163��8�\x00138��\x0005�lLԍ\���O��k�#v<�\x0007\x0005&\x0012T��?����br\x0019�\x0003b\x001e��\x0002�i(��GգQ(T�O��`LV��n'�i���\x001e��\x0010&k؁�n�=uB��{Qu\x0002"Q��}�~Nh\x0003\x001a\x0015�y �)v{�\x0012��4ᢢNFa\x000cƢ\x000cK�\x001ea/����N�\x001e�F�\x0008p^a���\x0014Rf/$O�Ǣ��d��׵5��7Q\x0016�{"a�P$�}'!�7�CVoi�	\x0018M�Ё#��ޔ\x0013i]\x0004�5�\x000b]�:t\x0015`��\x000cm\x0010�����@\x0002g��R'e\x0018#v*J��N2c��l'f�A�BuD�*�d��\x0003�����\x001d���\x0008'\x000f��WDz����\x0003\x0018�#�dMB�L�S��Cױ/\x0010F�\x0004�3%�\x00138H�Md��\x0010e��</p><p>�?</p><p>W�1����n�1\x0006���3~Bv\x0006��F�tz�ئ�+�\x000e�\x000fQb\x000e9�#
T\x000e#}y@7'��\x0002i����q��Be\x000ccuZJxtso\x0010�>�\x001d�</p><p>�Z\x0008l8�~���.L\x001f\x0013��\x0017q�>��.�1<\x0015��F\x0004�]���B"!���u�y
��\x001c#2nFB\x0019���"n��jt\x00128�\x0011�8��8�F��\x000c0�\x0018W\x0011S\x0012�w�</p><p>n9>�K\x0019VPfq��W����1��\x001eK���\x0002\x0003�W�~4�9
��<U��ϓ\x000b�baX</p><p>����>\x000b\x0016�ܒ�A��\x0015ӳ a�V�,��̑/� �Y�$`%�D\x0004]��O��Ϟ���|�|n����s�9\�\x000bq��o�G�/����� ӗS�W��/���N�S8��S2�s?�9��q ��r\x0011w�\x001ft��%\B�\x000b�.��\x0004L�{q��)%���\x0001�\x0005��eu/�'��ߙt�$�9���E�Ӓ㷸�x�0L����\x00015B�</p><p>9(\x0019<�]썘�&\x00157K�\x0007�\x00142L\x0018�5/��1���1��\x0006Y\x001dP��@����)���-�~��i�\x000f��mL>cBou\x0007!�[�Y�H���[l���t�l��=��J����T�a�I�v����\x0019+�w	\x0004q\x000e��𧨚��,�4��]"�\x0006Y�i�	i���\x0015���i9��`\x0001\x0008$\x0007�3b��A�!\x001f�M&\x0010��b���Wԧd8�){\x0001�*�ޢ&;-��\��'�L^=D�W�:�T�\x000e\x0010IqUA�\x0008�CV��aoڱ�6\x001ay�+�Yu���}?\x0010�\x001f�;���G\x0007�F����\x0014ŕ�ۆ�mf8\x001ay����c�\x0016q5�\M]��-om����\x000f�[S��wkk�mصkú�ڙ���R�)�R���r\x0013�u�)b\x001c�\x00075kŘ�
�BR\x0018�\x0014�\x000e6\x0014�LP�\x001f��;�p���&g�B\x000eV䍀\x001fF�\x0003�������+_�r�\x0019��|��m\x0016O����H����΂��/���U.8��</p><p>O���ֵO~��y�m��԰����\x0012����-/��\x0014�vE����\x000fw�^�\\x0010\x0018)/p��>R���UA�i_�g������u�Ňy��G�\x0017��k[��k�0�T�\x0017�\x0007B	�'\x001a��\x0006�a�\x001b���7�-dӂ\x0014�t�Y\x0011�y���-���ګ�E��\x000e\x001e�\x0019^A�D+�O\x001d}|�\x0015���\x0019\x001a��9���5|^�l=3��Q�>��
e(C\x0011� V\x0006�n\x00084Y���D*\x0017��\x0012�ǹ�\x0004	at�\x0013�]-���X\x0019dx�U��~��\x000f�Øn,n\x000f\x0012t"y�F�=��b�(��x�
�い��F��(�8}\x0017g\x0004;r*1��\x00023\x0013˃��\x0002ɡ�P��L�;	�\x000e\x000b1�A</p><p>�4�ݵ\x0015�\x0013���5Z�3�\x0004�\x0006->Sz\x000f��\x0018�Vpf�M\x001a�\x0016��z5:Hq8��`\x001bR�H,&�w�����Q.bC�Yz�\x0015� �\x0006�\x0015ss	_
�\x0006=O[�\x0010� 6&U�,�&�h��XXC:
\x0003՟�U\x001e"��\x0011�xf�k��U8i���Y��m=\x0010�S6\x0017)�X��5A.\x00119�\x0015�đ\x0013�d\x0018�Am��+i��5Wr�B$�\x000edˈ�(�5�^�o�i=c���k��\x0007�ʤ��<��A�O�,�\x0018k@�����}�;
L\x001b#3\x000fQ|E��D��)��h���y���8tKo \x001c\x0008G�p�\x001f\x00125,�\£���P���\x001a��\x0003;�9��#}\x0012�\x0002���7"W۽\x0013�&�w������\x0000<~\x000f�W��l�������gL&t:x+*%�<[2z{��\x0015��j�{\x000f�L\x000bͥ��\x001aB�\x000e͏[�g\x0011���
���[�\x00018]<\x0006��O#\x0016�����1.�T\Qo5��9\x0014;��vx����/+jk;���'O��$S&Ie���T^��kQ���Z��\x0008���\x0017��\x00167VvL�u����p\x00156x˦�2���c˼��$�bǪ�:k]\x001c .��k\x000cji�\x000e"�h��Rqo\x0017|
u����]]�B�����vA-�ы8�{�<#/=������i�hȐ��V��6)rh�$�!-�<��\x0012�\x0014gPCE�W ZF)q8�\x0012L�=z�60�\x0018:K�<ҺJ1\x0002>:��\x001d��Jx\x0016����\x0011�k��W�\x0019���=H\x001f��\x0019�V��jN\x001eX�yl&Y�\x0011���8W1��#p`6�[�\x000fAI�\x0004U�	����a	�d\x001cc$u�\x0015k��\x001f-\x0002ف�\x001b�sJI�߂֤��k\x000e�|�M\x0018�*��\x001fF�f^�;M@�\i��a\x001c���\x000bŸ*Zb/\x0018会�z��p�5\x001f�{iT��v@)�</p><p>�A��\x001b</p><p>�'��\x001b�
��P}��gy~�\x0017��=c�\x0003��h+1\x0003��-�ph�}Y%�7����\x0013Q\x0017l��q��3��l\x001e\x000f�T\x0003&#�~E�\x001a��h�8\x000f�En�\x001eH\x0005\x0007\x0010�q���\x001ba^\x001eHv)��Ob"�#!��z\x000f:iB\x000bp-�a\x0012���]��\x0004l�r�|��OA�	3\x0013"�\x000c�P��\x0014�T���g\x001b�~��c\x0015�X��E@�&FX�4���\x000c�(�w�Z+��\x0013��k��L!��F��S��\x0017��%\x000f�b0�̭'\x001a��0��\x0006\x0011��ò^��\x0003�{�����\x0014\x0018�m�\x0005�=��\x0004rw�46{
�\x000e\x0014#뎢\x0010Ja�ڍ]U�{eU�ݕ[�Zi\x0017�d�A�\x0007:�@Ӆ\x00057-�#P\x0007<9�v\x0010\x0005\x001e�*�\x000b�j����ߑ\x001bX�������j���P�W�\x0011앭��.{I��e\U�ƵM�̜:�����,��sF\x0011;%�m��:6�ǎ������h$,<��뽍M�<�\x001akll&\x001fg�ɬB�����e[J\x000b�?kW�\x001bXB?��T_�\x0018�p��\x001e0@�\x0019;#\x001bJ��\x0003u\x001c�qd\x0007�o\x0006(��]��Ba�\x000c\x001f9x��ϖ/7���b�{���\x0017����#�\x000e~���UfsOz�\x001b���K_;��Gw�c���"lӊ�Hy���:�\x001e\x001bQ������\x0014����9\x0007C�t:�E\x001aL�<�D�
E�����$.�\x0012��RZ�4�\x0008�z�$�r\x0019\x001b�\x0004c\x0014�a��p�̮�F!B�r6������\x0011�P�O\x0000��?���*���@\x0005�\x0008Rt��r�a\x0010�w1�\x0016�\x0012�\x0018��\x0019eF	ϝ�-�n;��ԣ#�mm�#�N���Y�m𧿓�S���{�Ѭ�\x0006��\x0008\x0004�D\x0003�$ad\x0016��z\x001f�\x000b
�t=C�������s\x0004�;/6\x001e�J�4�}����u�H�J�;�h�.�Hry>�\lx����rvC�x)\x0013 �\x0008�O</p><p>�\x0004�\V�	ȅ�K\x000eJaF�� 'Ź߂E:�܃��G���eG�ӷ�7���'�\x000c��N��*;���յ�ի{�\x001a�\x001f�(-���I����o�E\�]���\x0017�\x0006G�B�et��\x001c\x0017��-�~>�+�&�B�\x0006 &\x000f�F�;����\x000b�����
��K��\x0007�~�'\x0014\x000c\x0004C��M����H����������r_�������A�ݹ�o\x001e�\x0019������VWy#��ܒ�e\x001eS@�|��rg��`9�r��[�\x000b�:�C�6��!�ۺq��c���T�\x001e�>�����\x00181�A`�ǔ\x0010\x0013�Ө��������~558�F�'`b�\x0013:H�\x0019�'25��fqt�xcv�ηfDQ��|YF\x000ePs�P�3?&fȷA�\x001e�\x001b�I���n��蟰/0#\x0002x2����8L�&�J�\x001c���W</p><p>�\x0014</p><p>\x000b7&H�O@\x001eo*��-2��\x0014�o�S��i_"�\x001c���\x0006�/̝�4��g
�v��?T\x001f�Z�S}����Y���;\x0007+\�\x0017\x0019�e\x0016�\x0005���~�?}�_�Y\x0010v�s�礅H���*��k>;�B��=,��~���k�k��ߖ�]�f�B<�\x0014�3i\x001b\�mP��6��r\x001e\x0003�\x0012b~\x000b̖D���\x0007��z�g�cd��x�gݖ�����z5�-N�ю���z�#���#�w�*���!-��3�\x000f�5s�׆�\x0008=�9�Er�����W��h]��_</p><p>���D?�@ ��\x0010�7HA����C~\x0002\x0010Xn@-\x0018������\x0018����2������Cѝ�e�<\x0013ϥ�on\�O'�4?\x001f�z�m�@�?Z�	�\x0017��\x0014�<+�7��\x001e	\x001f�5\x001a8����G��\x0001��*�\x0000\x0000\x0000x�c`d``\x0000b��\x0007����|e�f�\x0000\x0014a�3�*/��/����\x0000����\x0004\x0012\x0005\x0000ce\x000c#\x0000\x0000\x0000x�c`d``>�_���e\x0003\x0003\x0003�dd@\x0005�\x0000V�\x0003�x�c````�0�I�\x0000�%5q\x0000\x0000\x0000\x0000\x0000\x0000\x0000\x0000L\x0000�\x0001\x001c\x00014\x0001d\x0001�\x0001�\x0001�\x0001�\x0001�\x0002\x001a\x0002.\x0002H\x0002b\x0002�\x0002�\x0002�\x0002�\x0002�\x0003\x0006\x0003@\x0003T\x0003�\x0003�\x0004\x0018\x0004D\x0004v\x0004�\x0004�\x0004�\x0005\x0010\x0005|\x0005�\x0006&\x0006L\x0006|\x0006�\x0006�\x0006�\x0007:\x0007n\x0007�\x0008:\x0008�\x0008�	\x001e	H	x	�	�	�</p><p>2</p><p>n</p><p>�\x000b</p><p>\x000bb\x000b�\x000c\x001e\x000cr\x000c�\x000c�
\x000e
8
�
�
�\x000eN\x000e�\x000e�\x000f\x001e\x000fd\x000f�\x000f�\x00108\x0010�\x0010�x�c`d``�e\x0008a�b\x0000\x0001& �\x0002����\x000c\x0000\x0019�\x0001�\x0000\x0000\x0000x�]��N�0\x0014�O��h\x0010\x0002!1��\x000bR�3�\x0001ڙ\x000e���I[%q丕*13�\x0014�<\x0005�ŉ{%*l��;�\x001e_\x001b�\x0003~\x0010�[\x0001��v��\x001b�\x000b�Iw�\x0003��\x0010!��GT/�c�b"\x001c�	o�\x0010\x000cn錑	�p�Z�O�]x@�\x0010\x001er�������\x00181��CL��>5u��űL�g_bm۽��<�y�ֵ��әڞU{*\x0016��*��R+S;]�F5�\x001ctꢝs�r:�ŏRSa�\x0014�n��F�#J$�W�\x001f�LX�tZa�\x0008������g\x00128�\x00193[�Y[�8{A�!�Ι1�H+�K�܆N�{\x0007:)�\x0008;��\x0012S��_>�W�0�Sb\x0000\x0000\x0000x�mS�Z�@\x0010Ԑf\x001b\x001bcC\x0002���\x0014�{���w8K'��ӝs�0~��v%[\x000e臾��m7+y\x000b\x001e?m��g\x0007\x000b8��8��8�\x0006�ha\x0011mt��.��C\x001f+X�i��\x001aֱ��8�󸀋��˸����븁���۸�������\x0000\x000f�\x0008���'x�gx�\x0017x�Wx�7x�wx�\x000f��O��-l�\x000b��\x001b��\x0007~�\x0017~c\x0007��\x0008\x0002��̏b��D�ZvE\x0018�Al\x0003%�7\x001cw�%���PB\x000e�֌�Ќ5�^���\x0008%#�X��(gS���t�\x0014U�J�\x000e�Y���p�&\x000bE�(kn��ϊ�\x000f��ԥ|DZ���u��3:Aa�\x000e�%Wf��</p><p>�2�+�\x001c\x001c�\x0003v(P&�u�[�8�\x0018J%3I�*L%���\x0008^ES�1o����� �V\x000b�\x0018�m�	g�\x001d0QDd5\x0012�\x001c\x0018�W������M���/Iԗ\x0010MFh\x0014F���ўb\x001d\x0019��,6���\x0004\x0017�\x0014�4\x0013�V$t�s�\x0017WҾs�\x001a)S�8C4F"b�\x001a!2.�:�7K�a�7\x0012����</p><p>U\x001b)1�<Bd��ƺ�����u��2��g�(����t�Y\x0015�\x001e��/�#D\x0013�R؀�+L\x001d�|�Y\x0011�Z[�P&����qV
�,nQGd��Qy�;c��B="��olN���B��\x001a�\x001bNL��\x0003���w>��</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `user`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js](https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `user`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `from`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js](https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tabulator-tables/js/tabulator.min.js](https://www.psyenfantado.sante.gouv.fr/static/tabulator-tables/js/tabulator.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/tarteaucitron.service.js](https://www.psyenfantado.sante.gouv.fr/static/js/tarteaucitron.service.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `user`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js](https://www.psyenfantado.sante.gouv.fr/static/tarteaucitron/tarteaucitron.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `TODO`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.nomodule.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.nomodule.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
Instances: 10
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bUSER\b and was detected 2 times, the first in the element starting with: "    "user": {},", see evidence field for the suspicious comment/snippet.</p>
  
### Reference
* 

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Modern Web Application
##### Informational (Medium)
  
  
  
  
#### Description
<p>The application appears to be a modern web application. If you need to explore it automatically then the Ajax Spider may well be more effective than the standard one.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a class="fr-sidemenu__link" href="#enfant" target="_self">J’ai moins de 18 ans</a>`
  
  
  
  
Instances: 1
  
### Solution
<p>This is an informational alert and so no changes are required.</p>
  
### Other information
<p>Links have been found with a target of '_self' - this is often used by modern frameworks to force a full page reload.</p>
  
### Reference
* 

  
#### Source ID : 3

  
  
  
  
### Non-Storable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are not storable by caching components such as proxy servers. If the response does not contain sensitive, personal or user-specific information, it may benefit from being stored and cached, to improve performance.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/](https://www.psyenfantado.sante.gouv.fr/static/)
  
  
  * Method: `GET`
  
  
  * Evidence: `302`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/documents/](https://www.psyenfantado.sante.gouv.fr/static/documents/)
  
  
  * Method: `GET`
  
  
  * Evidence: `302`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/sitemap.xml](https://www.psyenfantado.sante.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `302`
  
  
  
  
Instances: 3
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
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

  
  
  
  
### Storable but Non-Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, but will not be retrieved directly from the cache, without validating the request upstream, in response to similar requests from other users. </p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/css/custom.css](https://www.psyenfantado.sante.gouv.fr/static/css/custom.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=0`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/robots.txt](https://www.psyenfantado.sante.gouv.fr/robots.txt)
  
  
  * Method: `GET`
  
  
  * Evidence: `max-age=0`
  
  
  
  
Instances: 2
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `259306819`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `819302944`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `679314773`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `319309043`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `159301845`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0608734981`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `359300415`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `789305968`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0674968545`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0649655927`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0687857865`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0643342227`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `339305849`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `669304032`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0685090191`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `449312966`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `0632245943`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `920014362`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `319323648`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `319316675`
  
  
  
  
Instances: 505
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>259306819, which evaluates to: 1978-03-21 05:40:19</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3
