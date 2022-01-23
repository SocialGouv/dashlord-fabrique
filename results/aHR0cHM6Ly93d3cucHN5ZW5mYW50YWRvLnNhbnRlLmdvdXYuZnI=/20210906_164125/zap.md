
# ZAP Scanning Report

Generated on Mon, 6 Sep 2021 16:31:22


## Summary of Alerts

| Risk Level | Number of Alerts |
| --- | --- |
| High | 0 |
| Medium | 4 |
| Low | 6 |
| Informational | 7 |

## Alerts

| Name | Risk Level | Number of Instances |
| --- | --- | --- | 
| CSP: style-src unsafe-inline | Medium | 5 | 
| CSP: Wildcard Directive | Medium | 5 | 
| Reverse Tabnabbing | Medium | 8 | 
| Source Code Disclosure - Java | Medium | 1 | 
| Cookie without SameSite Attribute | Low | 8 | 
| Cookie Without Secure Flag | Low | 8 | 
| Incomplete or No Cache-control Header Set | Low | 10 | 
| Permissions Policy Header Not Set | Low | 11 | 
| Server Leaks Information via "X-Powered-By" HTTP Response Header Field(s) | Low | 11 | 
| X-Content-Type-Options Header Missing | Low | 11 | 
| Base64 Disclosure | Informational | 11 | 
| Information Disclosure - Suspicious Comments | Informational | 5 | 
| Modern Web Application | Informational | 1 | 
| Non-Storable Content | Informational | 3 | 
| Storable and Cacheable Content | Informational | 7 | 
| Storable but Non-Cacheable Content | Informational | 1 | 
| Timestamp Disclosure - Unix | Informational | 482 | 

## Alert Detail


  
  
  
  
### CSP: style-src unsafe-inline
##### Medium (Medium)
  
  
  
  
#### Description
<p>style-src includes unsafe-inline.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `default-src 'self';base-uri 'self';block-all-mixed-content;font-src 'self' https: data:;frame-ancestors 'self';img-src 'self' https://stats.data.gouv.fr/ data:;object-src 'none';script-src 'self' https://stats.data.gouv.fr/;script-src-attr 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests`
  
  
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a title="Voir le code source"
                       href="https://github.com/betagouv/psy-enfant-ado"
                       target="_blank"
                       rel="noopener"
                    >Voir le code source</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a title="Voir le code source"
                       href="https://github.com/betagouv/psy-enfant-ado"
                       target="_blank"
                       rel="noopener"
                    >Voir le code source</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a target="_blank" rel="noopener" href="https://www.data.gouv.fr/fr/suivi">https://www.data.gouv.fr/fr/suivi</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a title="Voir le code source"
                       href="https://github.com/betagouv/psy-enfant-ado"
                       target="_blank"
                       rel="noopener"
                    >Voir le code source</a>`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a title="Voir le code source"
                       href="https://github.com/betagouv/psy-enfant-ado"
                       target="_blank"
                       rel="noopener"
                    >Voir le code source</a>`
  
  
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `<a target="_blank" rel="noopener"
                   href="https://filsantejeunes.com/mal-etre">filsantejeunes.com/mal-etre</a>`
  
  
  
  
Instances: 8
  
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
  
  
  * Evidence: `class r{constructor(){this.closures=[],this.nexts=[],this.rendering=this.render.bind(this),this.render()}add(t){this.closures.push(t);return()=>{const e=this.closures.indexOf(t);-1!==e&&this.closures.splice(e,1)}}next(t,e){e=void 0===e?0:e-1,void 0===this.nexts[e]&&(this.nexts[e]=[]),this.nexts[e].push(t)}render(){window.requestAnimationFrame(this.rendering);for(const t of this.closures)t.call();const t=this.nexts.shift();if(t)for(const e of t)e.call()}}const o=new class{constructor(){this.renderer=new r}register(t,e){}start(){}stop(){}};class h{constructor(t,e){this.selector=t,this.builders=e,this.instances=[],"loading"!==document.readyState?window.requestAnimationFrame(this.start.bind(this)):document.addEventListener("DOMContentLoaded",this.start.bind(this))}start(){if(!(this.instances.length>0)&&document.querySelectorAll(this.selector).length>0)for(let t=0;t<this.builders.length;t++)this.instances.push(this.builders[t]())}}const l={},c={};let a=0;const d=t=>{for(const e in c)if(c[e]===t)return e;a++;const e=a;return c[e]=t,e};class u{constructor(t,e,s){const i=d(t);l[i]||(l[i]=[]),l[i].push(this),this.element=t,this.id=t.id,this._isRendering=!1,this._isResizing=!1,this.listeners={},this.isResizing=e,this.isRendering=s}dispatch(t,e){const s=new CustomEvent(t,e);this.element.dispatchEvent(s)}listen(t,e){this.listeners[t]||(this.listeners[t]=[]),this.listeners[t].indexOf(e)>-1||(this.listeners[t].push(e),this.element.addEventListener(t,e))}unlisten(t,e){if(t)if(e){if(!this.listeners[t])return;const s=this.listeners[t].indexOf(e);s>-1&&this.listeners[t].splice(s,1),this.element.removeEventListener(e)}else{if(!this.listeners[t])return;for(const e of this.listeners[t])this.element.removeEventListener(e);this.listeners[t].length=0}else for(const t in this.listeners)this.unlisten(t)}get isRendering(){return this._isRendering}set isRendering(t){this._isRendering!==t&&(this._isRendering=t)}render(){}get isResizing(){return this._isResizing}set isResizing(t){this._isResizing!==t&&(this._isResizing=t)}resize(){}destroy(){}static getInstances(t,e){const s=d(t);return l[s]?e?l[s].filter((t=>t instanceof e)):l[s]:null}}const m=e.attr("group"),p=[];class b{constructor(t,e){this.id=t,this.element=e,this.members=[],this._index=-1,this._current=null,p.push(this)}static getGroupById(t){for(const e of p)if(e.constructor===this&&e.id===t)return e;return new this(t)}static getGroupByElement(t){for(const e of p)if(e.element===t)return e;return new this(!1,t)}static groupById(t,e){const s=t.element.getAttribute(m);if(null===s)return;e.getGroupById(s).add(t)}static groupByParent(t,e,s){if(void 0===s&&(s=e.selector),""===s)return;let i=t.element.parentElement;for(;i;){if(i.classList.contains(t.constructor.selector))return;if(i.classList.contains(s)){return void e.getGroupByElement(i).add(t)}i=i.parentElement}}static get selector(){return""}add(t){if(-1===this.members.indexOf(t))switch(this.members.push(t),t.setGroup(this),!0){case null!==this.current:case!(t.disclosed||t.primary&&t.primary.disclosed):t.disclosed=!1;break;default:this._current=t,this._index=this.members.indexOf(t),t.disclosed=!0}}get length(){return this.members.length}get index(){return this._index}set index(t){t<-1||t>=this.length||this._index===t||(null!==this.current&&this.current.conceal(!0,!0),this._index=t,this._current=this._index>-1?this.members[this._index]:null,null!==this.current&&this.current.disclose(!0),this.apply())}get current(){return this._current}set current(t){this.index=this.members.indexOf(t)}get hasFocus(){return void 0===this.current?null:this.current.hasFocus}apply(){}}class g{constructor(t,e){this.element=t,this.disclosure=e,this.hasAttribute=this.element.hasAttribute(this.disclosure.attributeName),this.element.addEventListener("click",this.click.bind(this)),this.observer=new MutationObserver(this.mutate.bind(this)),this.observe()}observe(){this.observer.observe(this.element,{attributes:!0})}click(t){this.disclosure.change(this.hasAttribute)}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.disclosure.attributeName&&this.disclosure.change(this.disclosed)}))}apply(t){this.hasAttribute&&(this.observer&&this.observer.disconnect(),this.element.setAttribute(this.disclosure.attributeName,t),this.observer&&this.observe())}get disclosed(){return"true"===this.element.getAttribute(this.disclosure.attributeName)}get hasFocus(){return this.element===document.activeElement}}const f=e.event("DISCLOSE"),y=e.event("CONCEAL"),w=[];class v extends u{constructor(t){super(t),this.buttons=[],this._selector=this.constructor.selector,this.modifier=this._selector+"--"+this.type.id,this.attributeName=this.type.ariaState?"aria-"+this.type.id:e.attr(this.type.id),this.pristine=!0;const s=document.querySelectorAll(this.type.ariaControls?`[aria-controls="${this.id}"]`:e.attr.selector("controls",this.id));if(s.length>0)for(let t=0;t<s.length;t++)this.addButton(s[t]);this.disclosed=this.primary&&this.primary.disclosed,this.gather()}gather(){this.group||(b.groupById(this,this.GroupConstructor),b.groupByParent(this,this.GroupConstructor))}static build(t){const e=Array.prototype.slice.call(t.querySelectorAll(`.${this.selector}`));for(const t of e)w.push(new this(t))}get type(){return this.constructor.type}static get type(){return null}static get selector(){return""}addButton(t){const e=this.buttonFactory(t);e.hasAttribute&&(void 0===this.primary?this.primary=e:e.apply(this.primary.disclosed)),this.buttons.push(e)}get GroupConstructor(){return b}buttonFactory(t){return new g(t,this)}disclose(t){return!this.disclosed&&(this.pristine=!1,this.disclosed=!0,t||void 0===this.group||(this.group.current=this),!0)}conceal(t,e){if(!this.disclosed)return!1;this.pristine=!1,this.disclosed=!1,e||this.focus(),t||void 0===this.group||(this.group.current=null);for(const t of w)t!==this&&this.element.contains(t.element)&&t.reset();return!0}get disclosed(){return this._disclosed}set disclosed(t){if(this._disclosed!==t){this.dispatch(t?f:y,this.type),this._disclosed=t,t?i(this.element,this.modifier):n(this.element,this.modifier);for(let e=0;e<this.buttons.length;e++)this.buttons[e].apply(t)}}reset(){}change(t){if(this.constructor.type.canConceal)switch(!0){case!t:case this.disclosed:this.conceal();break;default:this.disclose()}else this.disclose()}setGroup(t){this.group=t}get buttonHasFocus(){return!!this.buttons.some((t=>t.hasFocus))}get hasFocus(){return this.element===document.activeElement||(this.element.querySelectorAll(":focus").length>0||this.buttonHasFocus)}focus(){for(let t=0;t<this.buttons.length;t++){const e=this.buttons[t];if(e.hasAttribute)return void e.element.focus()}}}v.DISCLOSE_EVENT=f,v.CONCEAL_EVENT=y;const E={expand:{id:"expanded",ariaState:!0,ariaControls:!0,canConceal:!0},select:{id:"selected",ariaState:!0,ariaControls:!0,canConceal:!1},opened:{id:"opened",ariaState:!1,ariaControls:!0,canConceal:!0}};class x{constructor(t){this.element=t,this.collections={}}_add(t,e){void 0===this.collections[t]&&(this.collections[t]=new L(t,this.element)),this.collections[t].add(e)}down(t,e,s,i){this._add("down",new A(t,e,s,i))}up(t,e,s,i){this._add("up",new A(t,e,s,i))}dispose(){for(const t of this.collections)t.dispose();this.types=null}}class L{constructor(t,e){this.type=t,this.element=e,this.actions=[],this.binding=this.handle.bind(this),this.element.addEventListener("key"+t,this.binding)}add(t){this.actions.push(t)}handle(t){for(const e of this.actions)e.handle(t)}dispose(){this.element.removeEventListener("key"+this.type,this.binding),this.actions=null}}class A{constructor(t,e,s,i){this.key=t,this.closure=e,this.preventDefault=!0===s,this.stopPropagation=!0===i}handle(t){t.keyCode===this.key&&(this.closure(t),this.preventDefault&&t.preventDefault(),this.stopPropagation&&t.stopPropagation())}}x.TAB=9,x.ESCAPE=27,x.END=35,x.HOME=36,x.LEFT=37,x.UP=38,x.RIGHT=39,x.DOWN=40;const S=e("collapse"),C=[],_={};class k extends v{constructor(t){super(t),C.push(this),this.requesting=this.request.bind(this),t.addEventListener("transitionend",this.transitionend.bind(this)),this.disclosed&&this.unbound()}gatherByAscendants(){if(!this.group)for(const t in _){let e=this.element.parentElement;for(;e;){if(e.classList.contains(t))return void("string"==typeof _[t]?b.groupByParent(this,b,_[t]):b.groupByParent(this,_[t]));e=e.parentElement}}}gather(){this.gatherByAscendants(),super.gather()}static get type(){return E.expand}static get selector(){return S}static register(t,e){_[t]=e;for(const t of C)t.gatherByAscendants()}transitionend(t){this.disclosed||(this.element.style.maxHeight="")}unbound(){this.element.style.maxHeight="none"}disclose(t){this.disclosed||(this.unbound(),this.adjust(),this.requested=()=>{super.disclose(t)},window.requestAnimationFrame(this.requesting))}conceal(t,e){this.disclosed&&(this.adjust(),this.requested=()=>{super.conceal(t,e)},window.requestAnimationFrame(this.requesting))}request(){this.requested&&this.requested(),this.requested=null}adjust(){this.element.style.setProperty("--collapser","none");const t=this.element.offsetHeight;this.element.style.setProperty("--collapse",-t+"px"),this.element.style.setProperty("--collapser","")}reset(){this.pristine||(this.disclosed=!1)}}t.core.ns=e,t.core.addClass=i,t.core.removeClass=n,t.core.engine=o,t.core.Instance=u,t.core.Initializer=h,t.core.Disclosure=v,t.core.DisclosureButton=g,t.core.DisclosuresGroup=b,t.core.DISCLOSURE_TYPES=E,t.KeyListener=x,t.Collapse=k,t.Equisized=class{constructor(t,e){this.selector=t,this.group=e,this.elements=this.group.querySelectorAll(this.selector),this.maxWidth=0,this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),window.addEventListener("load",this.changing)}change(){this.reset();for(let t=0;t<this.elements.length;t++){const e=this._getWidth(this.elements[t]);e>this.maxWidth&&(this.maxWidth=e)}this.apply()}apply(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width=this.maxWidth+1+"px"}reset(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width="auto";this.maxWidth=0}_getWidth(t){let e=t.offsetWidth;const s=getComputedStyle(t);return e+=parseInt(s.marginLeft)+parseInt(s.marginRight),e}};new h(`.${S}`,[()=>{k.build(document)}]);const q=t.core.ns("accordions-group"),I=t.core.ns("accordion");class z extends t.core.DisclosuresGroup{static get selector(){return q}}t.AccordionsGroup=z,t.Collapse.register(I,z);const D=`${t.core.ns.selector("breadcrumb")} ${t.core.ns.selector("collapse")}`;class H extends t.core.Instance{constructor(e){super(e),this.collapse=t.core.Instance.getInstances(e,t.Collapse)[0],this.links=[...this.element.querySelectorAll("a[href]")],this.count=0,this.links.length&&(this.listen(t.core.Disclosure.DISCLOSE_EVENT,this.focus.bind(this)),this.resizing=this.resize.bind(this),window.addEventListener("resize",this.resizing))}focus(){this.links[0].focus(),t.core.engine.renderer.next((()=>{this.verify()}))}verify(){this.count++,this.count>100||document.activeElement!==this.links[0]&&this.focus()}resize(){window.matchMedia("(min-width: 48em)").matches?this.collapse.buttons[0]===document.activeElement&&this.links.focus():this.links.indexOf(document.activeElement)>-1&&this.collapse.focus()}}new t.core.Initializer(D,[()=>{const t=[],e=document.querySelectorAll(D);for(let s=0;s<e.length;s++)t.push(new H(e[s]))}]);const P=t.core.ns.selector("btn"),O=t.core.ns.selector("btns-group"),T=t.core.ns.selector("btns-group--equisized");new t.core.Initializer(O,[()=>{const e=document.querySelectorAll(T),s=[];for(let i=0;i<e.length;i++)s.push(new t.Equisized(P,e[i]))}]);const B=t.core.ns.selector("modal"),N=t.core.ns("modal"),G=t.core.ns("no-scroll"),R=t.core.ns("scroll-shadow"),$=t.core.ns.selector("modal__body"),F=['[tabindex="0"]',"a[href]","button:not([disabled])","input:not([disabled])","select:not([disabled])","textarea:not([disabled])","audio[controls]","video[controls]",'[contenteditable]:not([contenteditable="false" i])',"details>summary:first-of-type","details"].join(),M=['[tabindex]:not([tabindex="-1"]):not([tabindex="0"])'].join(),W=(t,e)=>{if("hidden"===window.getComputedStyle(t).visibility)return!1;for(void 0===e&&(e=t);e.contains(t);){if("none"===window.getComputedStyle(t).display)return!1;t=t.parentElement}return!0};class K{constructor(t,e){this.element=null,this.activeElement=null,this.onTrap=t,this.onUntrap=e,this.waiting=this.wait.bind(this),this.handling=this.handle.bind(this),this.current=null}get trapped(){return null!==this.element}trap(t){this.trapped&&this.untrap(),this.element=t,this.isTrapping=!0,this.wait(),this.onTrap&&this.onTrap()}wait(){W(this.element)?this.trapping():t.core.engine.renderer.next(this.waiting)}trapping(){if(!this.isTrapping)return;this.isTrapping=!1;const t=this.focusables;t.length&&t[0].focus(),this.element.setAttribute("aria-modal",!0),window.addEventListener("keydown",this.handling),this.stunneds=[]}stun(t){for(const e of t.children)e!==this.element&&(e.contains(this.element)?this.stun(e):this.stunneds.push(new V(e)))}handle(t){if(9!==t.keyCode)return;const e=this.focusables;if(0===e.length)return;const s=e[0],i=e[e.length-1],n=e.indexOf(document.activeElement);t.shiftKey?!this.element.contains(document.activeElement)||n<1?(t.preventDefault(),i.focus()):(document.activeElement.tabIndex>0||e[n-1].tabIndex>0)&&(t.preventDefault(),e[n-1].focus()):this.element.contains(document.activeElement)&&n!==e.length-1&&-1!==n?document.activeElement.tabIndex>0&&(t.preventDefault(),e[n+1].focus()):(t.preventDefault(),s.focus())}get focusables(){let t=[...this.element.querySelectorAll(F)];const e=[...document.documentElement.querySelectorAll('input[type="radio"]')];if(e.length){const s={};for(const t of e){const e=t.getAttribute("name");void 0===s[e]&&(s[e]=new U(e)),s[e].push(t)}t=t.filter((t=>{if("input"!==t.tagName.toLowerCase()||"radio"!==t.getAttribute("type").toLowerCase())return!0;const e=t.getAttribute("name");return s[e].keep(t)}))}const s=[...this.element.querySelectorAll(M)];s.sort(((t,e)=>t.tabIndex-e.tabIndex));const i=t.filter((t=>-1===s.indexOf(t)));return s.concat(i).filter((t=>"-1"!==t.tabIndex&&W(t,this.element)))}untrap(){this.trapped&&(this.isTrapping=!1,this.element.removeAttribute("aria-modal"),window.removeEventListener("keydown",this.handling),this.element=null,this.onUntrap&&this.onUntrap())}}class V{constructor(t){this.element=t,this.hidden=t.getAttribute("aria-hidden"),this.inert=t.getAttribute("inert"),this.element.setAttribute("aria-hidden",!0),this.element.setAttribute("inert","")}unstun(){null===this.hidden?this.element.removeAttribute("aria-hidden"):this.element.setAttribute("aria-hidden",this.hidden),null===this.inert?this.element.removeAttribute("inert"):this.element.setAttribute("inert",this.inert)}}class U{constructor(t){this.name=t,this.buttons=[]}push(t){this.buttons.push(t),(t===document.activeElement||t.checked||void 0===this.selected)&&(this.selected=t)}keep(t){return this.selected===t}}class j extends t.core.DisclosuresGroup{constructor(){super(),this.trap=new K}apply(t,e){super.apply(t,e),null===this.current?this.trap.untrap():this.trap.trap(this.current.element)}}const Y=new j;class J extends t.core.Disclosure{constructor(t){super(t),this.body=this.element.querySelector($),this.scrollDistance=0,this.scrolling=this.resize.bind(this,!1),this.resizing=this.resize.bind(this,!0),this.init(),this.resize(!0)}init(){this.element.addEventListener("click",this.click.bind(this)),this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.ESCAPE,this.conceal.bind(this),!0,!0),this.body&&(this.body.addEventListener("scroll",this.scrolling),window.addEventListener("resize",this.resizing))}click(t){this.body&&this.body!==t.target&&!this.body.contains(t.target)&&this.conceal()}gather(){Y.add(this)}disclose(t){return!!super.disclose(t)&&(this.resize(!0),this.handleScroll(!1),!0)}conceal(t,e){return!!super.conceal(t,e)&&(this.handleScroll(!0),!0)}handleScroll(e){e?(t.core.removeClass(document.documentElement,G),document.body.style.top="",window.scroll(0,this.scrollDistance)):(document.documentElement.classList.contains(G)||(this.scrollDistance=window.scrollY),document.body.style.top=-1*this.scrollDistance+"px",t.core.addClass(document.documentElement,G))}resize(e,s){this.body&&(this.body.scrollHeight>this.body.clientHeight?this.body.offsetHeight+this.body.scrollTop>=this.body.scrollHeight?t.core.removeClass(this.body,R):t.core.addClass(this.body,R):t.core.removeClass(this.body,R),this.isMedium=window.matchMedia("(min-width: 48em)").matches,e&&(this.isMedium?this.body.style.removeProperty("max-height"):(this.body.style.maxHeight=window.innerHeight-32+"px",t.core.engine.renderer.next((()=>{this.body.style.maxHeight=window.innerHeight-32+"px"})))))}static get type(){return t.core.DISCLOSURE_TYPES.opened}static get selector(){return N}get GroupConstructor(){return j}}t.Modal=J,t.ModalsGroup=j,t.FocusTrap=K;new t.core.Initializer(B,[()=>{J.build(document)}]);const Q=t.core.ns("nav"),X=t.core.ns("nav__list"),Z=t.core.ns("nav__item"),tt=t.core.ns("nav__item--align-right"),et=t.core.ns("menu");class st extends t.core.DisclosuresGroup{constructor(t,e){super(t,e),this.menus=[],this.navList=e.querySelector(`.${X}`),document.addEventListener("focusout",this.focusOut.bind(this)),window.addEventListener("resize",this.resize.bind(this)),window.addEventListener("orientationchange",this.resize.bind(this)),this.resize()}static get selector(){return Q}add(t){super.add(t),t.element.classList.contains(et)&&this.menus.push(new it(t,this.navList.getBoundingClientRect().right))}focusOut(t){requestAnimationFrame((()=>{null===this.current||this.current.hasFocus||(this.index=-1)}))}get index(){return super.index}set index(t){-1===t&&null!==this.current&&this.current.hasFocus&&this.current.focus(),super.index=t}resize(){const t=this.navList.getBoundingClientRect().right;for(const e of this.menus)e.place(t)}}class it{constructor(t,e){this.initialize(t),this.place(e)}initialize(t){this.element=t.element;for(const e of t.buttons)if(e.hasAttribute){this.button=e.element;break}let e=this.element.parentElement;for(;e;){if(e.classList.contains(Z)){this.item=e;break}e=e.parentElement}}place(e){const s=getComputedStyle(this.element),i=parseFloat(s.width);this.button.getBoundingClientRect().left+i>e?t.core.addClass(this.item,tt):t.core.removeClass(this.item,tt)}}t.Navigation=st,t.Collapse.register(Q,st);const nt=t.core.ns.attr("theme"),rt=t.core.ns.attr("transition");class ot{constructor(){this.init()}init(){if(this.root=document.documentElement,this.scheme=localStorage.getItem("scheme")?localStorage.getItem("scheme"):null,null===this.scheme){const t=this.root.getAttribute(nt);"dark"===t||"light"===t?this.scheme=t:window.matchMedia("(prefers-color-scheme: dark)").matches?(this.scheme="dark",localStorage.setItem("scheme","dark")):this.scheme="light"}"dark"===this.scheme?this.root.hasAttribute(rt)?(this.root.removeAttribute(rt),this.root.setAttribute(nt,"dark"),setTimeout((()=>{this.root.setAttribute(rt,"")}),300)):this.root.setAttribute(nt,"dark"):this.root.setAttribute(nt,"light"),this.observer=new MutationObserver(this.mutate.bind(this)),this.observer.observe(this.root,{attributes:!0})}mutate(t){t.forEach((t=>{if("attributes"===t.type&&t.attributeName===nt){const t=this.root.getAttribute(nt);"dark"===t?localStorage.setItem("scheme","dark"):"light"===t&&localStorage.setItem("scheme","light")}}))}}t.Scheme=ot;const ht=`input[name="${t.core.ns.selector("radios-theme","")}"]`,lt=t.core.ns.selector("switch-theme","#"),ct=t.core.ns.attr("theme");class at{constructor(){this.attributeName=ct,this.theme=null,this.radios=document.querySelectorAll(ht);for(var t=0;t<this.radios.length;t++)this.radios[t].addEventListener("change",this.change.bind(this));this.observer=new MutationObserver(this.mutate.bind(this)),this.observe(),this.apply()}observe(){this.observer.observe(document.documentElement,{attributes:!0})}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.attributeName&&this.apply()}))}apply(){const t=document.documentElement.getAttribute(this.attributeName);this.isApplying=!0;for(var e=0;e<this.radios.length;e++)this.radios[e].checked=this.radios[e].value===t;this.isApplying=!1}change(){this.isApplying||(this.observer&&this.observer.disconnect(),this.theme=document.querySelector(ht+":checked"),this.theme?document.documentElement.setAttribute(this.attributeName,this.theme.value):document.documentElement.removeAttribute(this.attributeName),this.observer&&this.observe())}}new t.core.Initializer(`:root[${nt}]`,[()=>{new ot}]),new t.core.Initializer(`${lt}`,[()=>{new at}]);const dt=t.core.ns("sidemenu"),ut=t.core.ns("sidemenu__list");t.Collapse.register(dt,ut);const mt=t.core.ns.selector("table"),pt=`${t.core.ns.selector("table")}:not(${t.core.ns.selector("table--no-scroll")})`,bt=t.core.ns("table--shadow"),gt=t.core.ns("table--shadow-left"),ft=t.core.ns("table--shadow-right"),yt=t.core.ns("table__wrapper"),wt=t.core.ns("table--caption-bottom");class vt{constructor(t){this.init(t)}init(t){this.table=t,this.tableElem=this.table.querySelector("table"),this.tableContent=this.tableElem.querySelector("tbody"),this.isScrollable=this.tableContent.offsetWidth>this.tableElem.offsetWidth,this.caption=this.tableElem.querySelector("caption"),this.captionHeight=0,this.wrap();const e=this.change.bind(this);this.tableElem.addEventListener("scroll",e),this.change()}change(){const t=this.tableContent.offsetWidth>this.tableElem.offsetWidth;let e=this.tableElem.offsetWidth>this.table.offsetWidth;t||e?(this.scroll(),this.handleCaption()):t!==this.isScrollable&&this.delete(),this.isScrollable=t,e=!1}delete(){t.core.removeClass(this.table,ft),t.core.removeClass(this.table,gt),t.core.removeClass(this.table,bt),this.caption&&(this.tableElem.style.marginTop="",this.caption.style.top="",this.tableElem.style.marginBottom="",this.caption.style.bottom="")}scroll(){t.core.addClass(this.table,bt),this.setShadowPosition()}wrap(){const t=document.createElement("div");t.className=yt,this.table.insertBefore(t,this.tableElem),t.appendChild(this.tableElem),this.tableInnerWrapper=t}setShadowPosition(){const t=this.getScrollPosition("left"),e=this.getScrollPosition("right");"rtl"===document.documentElement.getAttribute("dir")?(this.setShadowVisibility("right",t),this.setShadowVisibility("left",e)):(this.setShadowVisibility("left",t),this.setShadowVisibility("right",e))}getScrollPosition(t){let e=1;switch("rtl"===document.documentElement.getAttribute("dir")&&(e=-1),t){case"left":return this.tableElem.scrollLeft*e;case"right":return this.tableContent.offsetWidth-this.tableElem.offsetWidth-this.tableElem.scrollLeft*e;default:return!1}}handleCaption(){if(this.caption){const t=getComputedStyle(this.caption),e=this.caption.offsetHeight+parseInt(t.marginTop)+parseInt(t.marginBottom);this.captionHeight=e,this.table.classList.contains(wt)?(this.tableElem.style.marginBottom=this.captionHeight+"px",this.caption.style.bottom=-this.captionHeight+"px"):(this.tableElem.style.marginTop=this.captionHeight+"px",this.caption.style.top=-this.captionHeight+"px")}}setShadowVisibility(e,s){s<=1?"left"===e?t.core.removeClass(this.table,gt):"right"===e&&t.core.removeClass(this.table,ft):"left"===e?t.core.addClass(this.table,gt):"right"===e&&t.core.addClass(this.table,ft)}}t.Table=vt;const Et=[],xt=()=>{for(let t=0;t<Et.length;t++)Et[t].change()};new t.core.Initializer(mt,[()=>{const t=document.querySelectorAll(pt);for(let e=0;e<t.length;e++)Et.push(new vt(t[e]));window.addEventListener("resize",xt),window.addEventListener("orientationchange",xt),xt()}]);class Lt extends t.core.DisclosureButton{apply(t){super.apply(t),this.hasAttribute&&this.element.setAttribute("tabindex",t?"0":"-1")}}const At=t.core.ns.selector("tabs"),St=t.core.ns("tabs"),Ct=t.core.ns("tabs__tab"),_t=t.core.ns("tabs__panel"),kt=t.core.ns("tabs__list");class qt extends t.core.DisclosuresGroup{constructor(e,s){super(e,s),this.list=s.querySelector(`.${kt}`),s.addEventListener("transitionend",this.transitionend.bind(this)),this.init(),t.core.engine.renderer.add(this.render.bind(this))}static get selector(){return St}transitionend(t){this.element.style.transition="none"}init(){this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.RIGHT,this.arrowRightPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.LEFT,this.arrowLeftPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.HOME,this.homePress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.END,this.endPress.bind(this),!0,!0)}arrowRightPress(){document.activeElement.classList.contains(Ct)&&(this.index<this.length-1?this.index++:this.index=0,this.focus())}arrowLeftPress(){document.activeElement.classList.contains(Ct)&&(this.index>0?this.index--:this.index=this.length-1,this.focus())}homePress(){document.activeElement.classList.contains(Ct)&&(this.index=0,this.focus())}endPress(){document.activeElement.classList.contains(Ct)&&(this.index=this.length-1,this.focus())}focus(){this.current&&this.current.focus()}apply(){for(let t=0;t<this._index;t++)this.members[t].translate(-1);this.current.element.style.transition="",this.current.element.style.transform="";for(let t=this._index+1;t<this.length;t++)this.members[t].translate(1);this.element.style.transition=""}add(t){if(super.add(t),1===this.length||t.disclosed)this.current=t;else{const e=this.members.indexOf(t);this._index>-1&&this._index!==e&&t.translate(e<this._index?-1:1,!0)}}render(){if(null===this.current)return;const t=Math.round(this.current.element.offsetHeight);this.panelHeight!==t&&(this.panelHeight=t,this.element.style.height=this.panelHeight+this.list.offsetHeight+"px")}}class It extends t.core.Disclosure{static get type(){return t.core.DISCLOSURE_TYPES.select}static get selector(){return _t}get GroupConstructor(){return qt}buttonFactory(t){return new Lt(t,this)}translate(t,e){this.element.style.transition=e?"none":"",this.element.style.transform=`translate(${100*t}%)`}reset(){this.group.index=0}}t.Tab=It,t.TabButton=Lt,t.TabsGroup=qt;new t.core.Initializer(At,[()=>{It.build(document)}]);const zt=t.core.ns.selector("header"),Dt=t.core.ns.selector("header__search"),Ht=t.core.ns.selector("header__menu"),Pt=t.core.ns.selector("header__tools-links"),Ot=t.core.ns.selector("header__menu-links"),Tt=`${Pt} ${t.core.ns.selector("links-group")}`;class Bt{constructor(t){this.header=t||document.querySelector(zt),this.modals=[],this.init()}getModal(e){const s=this.header.querySelector(e);if(!s)return;const i=t.core.Instance.getInstances(s,t.Modal);i&&i.length&&this.modals.push(new Nt(i[0]))}init(){this.getModal(Dt),this.getModal(Ht),this.linksGroup=this.header.querySelector(Tt),this.toolsLinks=this.header.querySelector(Pt),this.menuLinks=this.header.querySelector(Ot),this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),this.change()}change(){this.isLarge=window.matchMedia("(min-width: 62em)").matches,this.isLarge?this.modals.forEach((t=>t.disable())):this.modals.forEach((t=>t.enable())),null!==this.linksGroup&&(this.isLarge?this.toolsLinks.appendChild(this.linksGroup):this.menuLinks.appendChild(this.linksGroup))}}class Nt{constructor(t){this.modal=t}enable(){this.modal.element.setAttribute("role","dialog"),this.modal.element.setAttribute("aria-labelledby",this.modal.primary.element.id)}disable(){this.modal.conceal(),this.modal.element.removeAttribute("role"),this.modal.element.removeAttribute("aria-labelledby")}}t.Header=Bt;new t.core.Initializer(zt,[()=>{const t=Array.prototype.slice.call(document.querySelectorAll(zt)),e=[];for(const s of t)e.push(new Bt(s))}`
  
  
  
  
Instances: 1
  
### Solution
<p>Ensure that application Source Code is not available with alternative extensions, and ensure that source code is not present within other files or data deployed to the web server, or served by the web server. </p>
  
### Other information
<p>class r{constructor(){this.closures=[],this.nexts=[],this.rendering=this.render.bind(this),this.render()}add(t){this.closures.push(t);return()=>{const e=this.closures.indexOf(t);-1!==e&&this.closures.splice(e,1)}}next(t,e){e=void 0===e?0:e-1,void 0===this.nexts[e]&&(this.nexts[e]=[]),this.nexts[e].push(t)}render(){window.requestAnimationFrame(this.rendering);for(const t of this.closures)t.call();const t=this.nexts.shift();if(t)for(const e of t)e.call()}}const o=new class{constructor(){this.renderer=new r}register(t,e){}start(){}stop(){}};class h{constructor(t,e){this.selector=t,this.builders=e,this.instances=[],"loading"!==document.readyState?window.requestAnimationFrame(this.start.bind(this)):document.addEventListener("DOMContentLoaded",this.start.bind(this))}start(){if(!(this.instances.length>0)&&document.querySelectorAll(this.selector).length>0)for(let t=0;t<this.builders.length;t++)this.instances.push(this.builders[t]())}}const l={},c={};let a=0;const d=t=>{for(const e in c)if(c[e]===t)return e;a++;const e=a;return c[e]=t,e};class u{constructor(t,e,s){const i=d(t);l[i]||(l[i]=[]),l[i].push(this),this.element=t,this.id=t.id,this._isRendering=!1,this._isResizing=!1,this.listeners={},this.isResizing=e,this.isRendering=s}dispatch(t,e){const s=new CustomEvent(t,e);this.element.dispatchEvent(s)}listen(t,e){this.listeners[t]||(this.listeners[t]=[]),this.listeners[t].indexOf(e)>-1||(this.listeners[t].push(e),this.element.addEventListener(t,e))}unlisten(t,e){if(t)if(e){if(!this.listeners[t])return;const s=this.listeners[t].indexOf(e);s>-1&&this.listeners[t].splice(s,1),this.element.removeEventListener(e)}else{if(!this.listeners[t])return;for(const e of this.listeners[t])this.element.removeEventListener(e);this.listeners[t].length=0}else for(const t in this.listeners)this.unlisten(t)}get isRendering(){return this._isRendering}set isRendering(t){this._isRendering!==t&&(this._isRendering=t)}render(){}get isResizing(){return this._isResizing}set isResizing(t){this._isResizing!==t&&(this._isResizing=t)}resize(){}destroy(){}static getInstances(t,e){const s=d(t);return l[s]?e?l[s].filter((t=>t instanceof e)):l[s]:null}}const m=e.attr("group"),p=[];class b{constructor(t,e){this.id=t,this.element=e,this.members=[],this._index=-1,this._current=null,p.push(this)}static getGroupById(t){for(const e of p)if(e.constructor===this&&e.id===t)return e;return new this(t)}static getGroupByElement(t){for(const e of p)if(e.element===t)return e;return new this(!1,t)}static groupById(t,e){const s=t.element.getAttribute(m);if(null===s)return;e.getGroupById(s).add(t)}static groupByParent(t,e,s){if(void 0===s&&(s=e.selector),""===s)return;let i=t.element.parentElement;for(;i;){if(i.classList.contains(t.constructor.selector))return;if(i.classList.contains(s)){return void e.getGroupByElement(i).add(t)}i=i.parentElement}}static get selector(){return""}add(t){if(-1===this.members.indexOf(t))switch(this.members.push(t),t.setGroup(this),!0){case null!==this.current:case!(t.disclosed||t.primary&&t.primary.disclosed):t.disclosed=!1;break;default:this._current=t,this._index=this.members.indexOf(t),t.disclosed=!0}}get length(){return this.members.length}get index(){return this._index}set index(t){t<-1||t>=this.length||this._index===t||(null!==this.current&&this.current.conceal(!0,!0),this._index=t,this._current=this._index>-1?this.members[this._index]:null,null!==this.current&&this.current.disclose(!0),this.apply())}get current(){return this._current}set current(t){this.index=this.members.indexOf(t)}get hasFocus(){return void 0===this.current?null:this.current.hasFocus}apply(){}}class g{constructor(t,e){this.element=t,this.disclosure=e,this.hasAttribute=this.element.hasAttribute(this.disclosure.attributeName),this.element.addEventListener("click",this.click.bind(this)),this.observer=new MutationObserver(this.mutate.bind(this)),this.observe()}observe(){this.observer.observe(this.element,{attributes:!0})}click(t){this.disclosure.change(this.hasAttribute)}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.disclosure.attributeName&&this.disclosure.change(this.disclosed)}))}apply(t){this.hasAttribute&&(this.observer&&this.observer.disconnect(),this.element.setAttribute(this.disclosure.attributeName,t),this.observer&&this.observe())}get disclosed(){return"true"===this.element.getAttribute(this.disclosure.attributeName)}get hasFocus(){return this.element===document.activeElement}}const f=e.event("DISCLOSE"),y=e.event("CONCEAL"),w=[];class v extends u{constructor(t){super(t),this.buttons=[],this._selector=this.constructor.selector,this.modifier=this._selector+"--"+this.type.id,this.attributeName=this.type.ariaState?"aria-"+this.type.id:e.attr(this.type.id),this.pristine=!0;const s=document.querySelectorAll(this.type.ariaControls?`[aria-controls="${this.id}"]`:e.attr.selector("controls",this.id));if(s.length>0)for(let t=0;t<s.length;t++)this.addButton(s[t]);this.disclosed=this.primary&&this.primary.disclosed,this.gather()}gather(){this.group||(b.groupById(this,this.GroupConstructor),b.groupByParent(this,this.GroupConstructor))}static build(t){const e=Array.prototype.slice.call(t.querySelectorAll(`.${this.selector}`));for(const t of e)w.push(new this(t))}get type(){return this.constructor.type}static get type(){return null}static get selector(){return""}addButton(t){const e=this.buttonFactory(t);e.hasAttribute&&(void 0===this.primary?this.primary=e:e.apply(this.primary.disclosed)),this.buttons.push(e)}get GroupConstructor(){return b}buttonFactory(t){return new g(t,this)}disclose(t){return!this.disclosed&&(this.pristine=!1,this.disclosed=!0,t||void 0===this.group||(this.group.current=this),!0)}conceal(t,e){if(!this.disclosed)return!1;this.pristine=!1,this.disclosed=!1,e||this.focus(),t||void 0===this.group||(this.group.current=null);for(const t of w)t!==this&&this.element.contains(t.element)&&t.reset();return!0}get disclosed(){return this._disclosed}set disclosed(t){if(this._disclosed!==t){this.dispatch(t?f:y,this.type),this._disclosed=t,t?i(this.element,this.modifier):n(this.element,this.modifier);for(let e=0;e<this.buttons.length;e++)this.buttons[e].apply(t)}}reset(){}change(t){if(this.constructor.type.canConceal)switch(!0){case!t:case this.disclosed:this.conceal();break;default:this.disclose()}else this.disclose()}setGroup(t){this.group=t}get buttonHasFocus(){return!!this.buttons.some((t=>t.hasFocus))}get hasFocus(){return this.element===document.activeElement||(this.element.querySelectorAll(":focus").length>0||this.buttonHasFocus)}focus(){for(let t=0;t<this.buttons.length;t++){const e=this.buttons[t];if(e.hasAttribute)return void e.element.focus()}}}v.DISCLOSE_EVENT=f,v.CONCEAL_EVENT=y;const E={expand:{id:"expanded",ariaState:!0,ariaControls:!0,canConceal:!0},select:{id:"selected",ariaState:!0,ariaControls:!0,canConceal:!1},opened:{id:"opened",ariaState:!1,ariaControls:!0,canConceal:!0}};class x{constructor(t){this.element=t,this.collections={}}_add(t,e){void 0===this.collections[t]&&(this.collections[t]=new L(t,this.element)),this.collections[t].add(e)}down(t,e,s,i){this._add("down",new A(t,e,s,i))}up(t,e,s,i){this._add("up",new A(t,e,s,i))}dispose(){for(const t of this.collections)t.dispose();this.types=null}}class L{constructor(t,e){this.type=t,this.element=e,this.actions=[],this.binding=this.handle.bind(this),this.element.addEventListener("key"+t,this.binding)}add(t){this.actions.push(t)}handle(t){for(const e of this.actions)e.handle(t)}dispose(){this.element.removeEventListener("key"+this.type,this.binding),this.actions=null}}class A{constructor(t,e,s,i){this.key=t,this.closure=e,this.preventDefault=!0===s,this.stopPropagation=!0===i}handle(t){t.keyCode===this.key&&(this.closure(t),this.preventDefault&&t.preventDefault(),this.stopPropagation&&t.stopPropagation())}}x.TAB=9,x.ESCAPE=27,x.END=35,x.HOME=36,x.LEFT=37,x.UP=38,x.RIGHT=39,x.DOWN=40;const S=e("collapse"),C=[],_={};class k extends v{constructor(t){super(t),C.push(this),this.requesting=this.request.bind(this),t.addEventListener("transitionend",this.transitionend.bind(this)),this.disclosed&&this.unbound()}gatherByAscendants(){if(!this.group)for(const t in _){let e=this.element.parentElement;for(;e;){if(e.classList.contains(t))return void("string"==typeof _[t]?b.groupByParent(this,b,_[t]):b.groupByParent(this,_[t]));e=e.parentElement}}}gather(){this.gatherByAscendants(),super.gather()}static get type(){return E.expand}static get selector(){return S}static register(t,e){_[t]=e;for(const t of C)t.gatherByAscendants()}transitionend(t){this.disclosed||(this.element.style.maxHeight="")}unbound(){this.element.style.maxHeight="none"}disclose(t){this.disclosed||(this.unbound(),this.adjust(),this.requested=()=>{super.disclose(t)},window.requestAnimationFrame(this.requesting))}conceal(t,e){this.disclosed&&(this.adjust(),this.requested=()=>{super.conceal(t,e)},window.requestAnimationFrame(this.requesting))}request(){this.requested&&this.requested(),this.requested=null}adjust(){this.element.style.setProperty("--collapser","none");const t=this.element.offsetHeight;this.element.style.setProperty("--collapse",-t+"px"),this.element.style.setProperty("--collapser","")}reset(){this.pristine||(this.disclosed=!1)}}t.core.ns=e,t.core.addClass=i,t.core.removeClass=n,t.core.engine=o,t.core.Instance=u,t.core.Initializer=h,t.core.Disclosure=v,t.core.DisclosureButton=g,t.core.DisclosuresGroup=b,t.core.DISCLOSURE_TYPES=E,t.KeyListener=x,t.Collapse=k,t.Equisized=class{constructor(t,e){this.selector=t,this.group=e,this.elements=this.group.querySelectorAll(this.selector),this.maxWidth=0,this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),window.addEventListener("load",this.changing)}change(){this.reset();for(let t=0;t<this.elements.length;t++){const e=this._getWidth(this.elements[t]);e>this.maxWidth&&(this.maxWidth=e)}this.apply()}apply(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width=this.maxWidth+1+"px"}reset(){for(let t=0;t<this.elements.length;t++)this.elements[t].style.width="auto";this.maxWidth=0}_getWidth(t){let e=t.offsetWidth;const s=getComputedStyle(t);return e+=parseInt(s.marginLeft)+parseInt(s.marginRight),e}};new h(`.${S}`,[()=>{k.build(document)}]);const q=t.core.ns("accordions-group"),I=t.core.ns("accordion");class z extends t.core.DisclosuresGroup{static get selector(){return q}}t.AccordionsGroup=z,t.Collapse.register(I,z);const D=`${t.core.ns.selector("breadcrumb")} ${t.core.ns.selector("collapse")}`;class H extends t.core.Instance{constructor(e){super(e),this.collapse=t.core.Instance.getInstances(e,t.Collapse)[0],this.links=[...this.element.querySelectorAll("a[href]")],this.count=0,this.links.length&&(this.listen(t.core.Disclosure.DISCLOSE_EVENT,this.focus.bind(this)),this.resizing=this.resize.bind(this),window.addEventListener("resize",this.resizing))}focus(){this.links[0].focus(),t.core.engine.renderer.next((()=>{this.verify()}))}verify(){this.count++,this.count>100||document.activeElement!==this.links[0]&&this.focus()}resize(){window.matchMedia("(min-width: 48em)").matches?this.collapse.buttons[0]===document.activeElement&&this.links.focus():this.links.indexOf(document.activeElement)>-1&&this.collapse.focus()}}new t.core.Initializer(D,[()=>{const t=[],e=document.querySelectorAll(D);for(let s=0;s<e.length;s++)t.push(new H(e[s]))}]);const P=t.core.ns.selector("btn"),O=t.core.ns.selector("btns-group"),T=t.core.ns.selector("btns-group--equisized");new t.core.Initializer(O,[()=>{const e=document.querySelectorAll(T),s=[];for(let i=0;i<e.length;i++)s.push(new t.Equisized(P,e[i]))}]);const B=t.core.ns.selector("modal"),N=t.core.ns("modal"),G=t.core.ns("no-scroll"),R=t.core.ns("scroll-shadow"),$=t.core.ns.selector("modal__body"),F=['[tabindex="0"]',"a[href]","button:not([disabled])","input:not([disabled])","select:not([disabled])","textarea:not([disabled])","audio[controls]","video[controls]",'[contenteditable]:not([contenteditable="false" i])',"details>summary:first-of-type","details"].join(),M=['[tabindex]:not([tabindex="-1"]):not([tabindex="0"])'].join(),W=(t,e)=>{if("hidden"===window.getComputedStyle(t).visibility)return!1;for(void 0===e&&(e=t);e.contains(t);){if("none"===window.getComputedStyle(t).display)return!1;t=t.parentElement}return!0};class K{constructor(t,e){this.element=null,this.activeElement=null,this.onTrap=t,this.onUntrap=e,this.waiting=this.wait.bind(this),this.handling=this.handle.bind(this),this.current=null}get trapped(){return null!==this.element}trap(t){this.trapped&&this.untrap(),this.element=t,this.isTrapping=!0,this.wait(),this.onTrap&&this.onTrap()}wait(){W(this.element)?this.trapping():t.core.engine.renderer.next(this.waiting)}trapping(){if(!this.isTrapping)return;this.isTrapping=!1;const t=this.focusables;t.length&&t[0].focus(),this.element.setAttribute("aria-modal",!0),window.addEventListener("keydown",this.handling),this.stunneds=[]}stun(t){for(const e of t.children)e!==this.element&&(e.contains(this.element)?this.stun(e):this.stunneds.push(new V(e)))}handle(t){if(9!==t.keyCode)return;const e=this.focusables;if(0===e.length)return;const s=e[0],i=e[e.length-1],n=e.indexOf(document.activeElement);t.shiftKey?!this.element.contains(document.activeElement)||n<1?(t.preventDefault(),i.focus()):(document.activeElement.tabIndex>0||e[n-1].tabIndex>0)&&(t.preventDefault(),e[n-1].focus()):this.element.contains(document.activeElement)&&n!==e.length-1&&-1!==n?document.activeElement.tabIndex>0&&(t.preventDefault(),e[n+1].focus()):(t.preventDefault(),s.focus())}get focusables(){let t=[...this.element.querySelectorAll(F)];const e=[...document.documentElement.querySelectorAll('input[type="radio"]')];if(e.length){const s={};for(const t of e){const e=t.getAttribute("name");void 0===s[e]&&(s[e]=new U(e)),s[e].push(t)}t=t.filter((t=>{if("input"!==t.tagName.toLowerCase()||"radio"!==t.getAttribute("type").toLowerCase())return!0;const e=t.getAttribute("name");return s[e].keep(t)}))}const s=[...this.element.querySelectorAll(M)];s.sort(((t,e)=>t.tabIndex-e.tabIndex));const i=t.filter((t=>-1===s.indexOf(t)));return s.concat(i).filter((t=>"-1"!==t.tabIndex&&W(t,this.element)))}untrap(){this.trapped&&(this.isTrapping=!1,this.element.removeAttribute("aria-modal"),window.removeEventListener("keydown",this.handling),this.element=null,this.onUntrap&&this.onUntrap())}}class V{constructor(t){this.element=t,this.hidden=t.getAttribute("aria-hidden"),this.inert=t.getAttribute("inert"),this.element.setAttribute("aria-hidden",!0),this.element.setAttribute("inert","")}unstun(){null===this.hidden?this.element.removeAttribute("aria-hidden"):this.element.setAttribute("aria-hidden",this.hidden),null===this.inert?this.element.removeAttribute("inert"):this.element.setAttribute("inert",this.inert)}}class U{constructor(t){this.name=t,this.buttons=[]}push(t){this.buttons.push(t),(t===document.activeElement||t.checked||void 0===this.selected)&&(this.selected=t)}keep(t){return this.selected===t}}class j extends t.core.DisclosuresGroup{constructor(){super(),this.trap=new K}apply(t,e){super.apply(t,e),null===this.current?this.trap.untrap():this.trap.trap(this.current.element)}}const Y=new j;class J extends t.core.Disclosure{constructor(t){super(t),this.body=this.element.querySelector($),this.scrollDistance=0,this.scrolling=this.resize.bind(this,!1),this.resizing=this.resize.bind(this,!0),this.init(),this.resize(!0)}init(){this.element.addEventListener("click",this.click.bind(this)),this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.ESCAPE,this.conceal.bind(this),!0,!0),this.body&&(this.body.addEventListener("scroll",this.scrolling),window.addEventListener("resize",this.resizing))}click(t){this.body&&this.body!==t.target&&!this.body.contains(t.target)&&this.conceal()}gather(){Y.add(this)}disclose(t){return!!super.disclose(t)&&(this.resize(!0),this.handleScroll(!1),!0)}conceal(t,e){return!!super.conceal(t,e)&&(this.handleScroll(!0),!0)}handleScroll(e){e?(t.core.removeClass(document.documentElement,G),document.body.style.top="",window.scroll(0,this.scrollDistance)):(document.documentElement.classList.contains(G)||(this.scrollDistance=window.scrollY),document.body.style.top=-1*this.scrollDistance+"px",t.core.addClass(document.documentElement,G))}resize(e,s){this.body&&(this.body.scrollHeight>this.body.clientHeight?this.body.offsetHeight+this.body.scrollTop>=this.body.scrollHeight?t.core.removeClass(this.body,R):t.core.addClass(this.body,R):t.core.removeClass(this.body,R),this.isMedium=window.matchMedia("(min-width: 48em)").matches,e&&(this.isMedium?this.body.style.removeProperty("max-height"):(this.body.style.maxHeight=window.innerHeight-32+"px",t.core.engine.renderer.next((()=>{this.body.style.maxHeight=window.innerHeight-32+"px"})))))}static get type(){return t.core.DISCLOSURE_TYPES.opened}static get selector(){return N}get GroupConstructor(){return j}}t.Modal=J,t.ModalsGroup=j,t.FocusTrap=K;new t.core.Initializer(B,[()=>{J.build(document)}]);const Q=t.core.ns("nav"),X=t.core.ns("nav__list"),Z=t.core.ns("nav__item"),tt=t.core.ns("nav__item--align-right"),et=t.core.ns("menu");class st extends t.core.DisclosuresGroup{constructor(t,e){super(t,e),this.menus=[],this.navList=e.querySelector(`.${X}`),document.addEventListener("focusout",this.focusOut.bind(this)),window.addEventListener("resize",this.resize.bind(this)),window.addEventListener("orientationchange",this.resize.bind(this)),this.resize()}static get selector(){return Q}add(t){super.add(t),t.element.classList.contains(et)&&this.menus.push(new it(t,this.navList.getBoundingClientRect().right))}focusOut(t){requestAnimationFrame((()=>{null===this.current||this.current.hasFocus||(this.index=-1)}))}get index(){return super.index}set index(t){-1===t&&null!==this.current&&this.current.hasFocus&&this.current.focus(),super.index=t}resize(){const t=this.navList.getBoundingClientRect().right;for(const e of this.menus)e.place(t)}}class it{constructor(t,e){this.initialize(t),this.place(e)}initialize(t){this.element=t.element;for(const e of t.buttons)if(e.hasAttribute){this.button=e.element;break}let e=this.element.parentElement;for(;e;){if(e.classList.contains(Z)){this.item=e;break}e=e.parentElement}}place(e){const s=getComputedStyle(this.element),i=parseFloat(s.width);this.button.getBoundingClientRect().left+i>e?t.core.addClass(this.item,tt):t.core.removeClass(this.item,tt)}}t.Navigation=st,t.Collapse.register(Q,st);const nt=t.core.ns.attr("theme"),rt=t.core.ns.attr("transition");class ot{constructor(){this.init()}init(){if(this.root=document.documentElement,this.scheme=localStorage.getItem("scheme")?localStorage.getItem("scheme"):null,null===this.scheme){const t=this.root.getAttribute(nt);"dark"===t||"light"===t?this.scheme=t:window.matchMedia("(prefers-color-scheme: dark)").matches?(this.scheme="dark",localStorage.setItem("scheme","dark")):this.scheme="light"}"dark"===this.scheme?this.root.hasAttribute(rt)?(this.root.removeAttribute(rt),this.root.setAttribute(nt,"dark"),setTimeout((()=>{this.root.setAttribute(rt,"")}),300)):this.root.setAttribute(nt,"dark"):this.root.setAttribute(nt,"light"),this.observer=new MutationObserver(this.mutate.bind(this)),this.observer.observe(this.root,{attributes:!0})}mutate(t){t.forEach((t=>{if("attributes"===t.type&&t.attributeName===nt){const t=this.root.getAttribute(nt);"dark"===t?localStorage.setItem("scheme","dark"):"light"===t&&localStorage.setItem("scheme","light")}}))}}t.Scheme=ot;const ht=`input[name="${t.core.ns.selector("radios-theme","")}"]`,lt=t.core.ns.selector("switch-theme","#"),ct=t.core.ns.attr("theme");class at{constructor(){this.attributeName=ct,this.theme=null,this.radios=document.querySelectorAll(ht);for(var t=0;t<this.radios.length;t++)this.radios[t].addEventListener("change",this.change.bind(this));this.observer=new MutationObserver(this.mutate.bind(this)),this.observe(),this.apply()}observe(){this.observer.observe(document.documentElement,{attributes:!0})}mutate(t){t.forEach((t=>{"attributes"===t.type&&t.attributeName===this.attributeName&&this.apply()}))}apply(){const t=document.documentElement.getAttribute(this.attributeName);this.isApplying=!0;for(var e=0;e<this.radios.length;e++)this.radios[e].checked=this.radios[e].value===t;this.isApplying=!1}change(){this.isApplying||(this.observer&&this.observer.disconnect(),this.theme=document.querySelector(ht+":checked"),this.theme?document.documentElement.setAttribute(this.attributeName,this.theme.value):document.documentElement.removeAttribute(this.attributeName),this.observer&&this.observe())}}new t.core.Initializer(`:root[${nt}]`,[()=>{new ot}]),new t.core.Initializer(`${lt}`,[()=>{new at}]);const dt=t.core.ns("sidemenu"),ut=t.core.ns("sidemenu__list");t.Collapse.register(dt,ut);const mt=t.core.ns.selector("table"),pt=`${t.core.ns.selector("table")}:not(${t.core.ns.selector("table--no-scroll")})`,bt=t.core.ns("table--shadow"),gt=t.core.ns("table--shadow-left"),ft=t.core.ns("table--shadow-right"),yt=t.core.ns("table__wrapper"),wt=t.core.ns("table--caption-bottom");class vt{constructor(t){this.init(t)}init(t){this.table=t,this.tableElem=this.table.querySelector("table"),this.tableContent=this.tableElem.querySelector("tbody"),this.isScrollable=this.tableContent.offsetWidth>this.tableElem.offsetWidth,this.caption=this.tableElem.querySelector("caption"),this.captionHeight=0,this.wrap();const e=this.change.bind(this);this.tableElem.addEventListener("scroll",e),this.change()}change(){const t=this.tableContent.offsetWidth>this.tableElem.offsetWidth;let e=this.tableElem.offsetWidth>this.table.offsetWidth;t||e?(this.scroll(),this.handleCaption()):t!==this.isScrollable&&this.delete(),this.isScrollable=t,e=!1}delete(){t.core.removeClass(this.table,ft),t.core.removeClass(this.table,gt),t.core.removeClass(this.table,bt),this.caption&&(this.tableElem.style.marginTop="",this.caption.style.top="",this.tableElem.style.marginBottom="",this.caption.style.bottom="")}scroll(){t.core.addClass(this.table,bt),this.setShadowPosition()}wrap(){const t=document.createElement("div");t.className=yt,this.table.insertBefore(t,this.tableElem),t.appendChild(this.tableElem),this.tableInnerWrapper=t}setShadowPosition(){const t=this.getScrollPosition("left"),e=this.getScrollPosition("right");"rtl"===document.documentElement.getAttribute("dir")?(this.setShadowVisibility("right",t),this.setShadowVisibility("left",e)):(this.setShadowVisibility("left",t),this.setShadowVisibility("right",e))}getScrollPosition(t){let e=1;switch("rtl"===document.documentElement.getAttribute("dir")&&(e=-1),t){case"left":return this.tableElem.scrollLeft*e;case"right":return this.tableContent.offsetWidth-this.tableElem.offsetWidth-this.tableElem.scrollLeft*e;default:return!1}}handleCaption(){if(this.caption){const t=getComputedStyle(this.caption),e=this.caption.offsetHeight+parseInt(t.marginTop)+parseInt(t.marginBottom);this.captionHeight=e,this.table.classList.contains(wt)?(this.tableElem.style.marginBottom=this.captionHeight+"px",this.caption.style.bottom=-this.captionHeight+"px"):(this.tableElem.style.marginTop=this.captionHeight+"px",this.caption.style.top=-this.captionHeight+"px")}}setShadowVisibility(e,s){s<=1?"left"===e?t.core.removeClass(this.table,gt):"right"===e&&t.core.removeClass(this.table,ft):"left"===e?t.core.addClass(this.table,gt):"right"===e&&t.core.addClass(this.table,ft)}}t.Table=vt;const Et=[],xt=()=>{for(let t=0;t<Et.length;t++)Et[t].change()};new t.core.Initializer(mt,[()=>{const t=document.querySelectorAll(pt);for(let e=0;e<t.length;e++)Et.push(new vt(t[e]));window.addEventListener("resize",xt),window.addEventListener("orientationchange",xt),xt()}]);class Lt extends t.core.DisclosureButton{apply(t){super.apply(t),this.hasAttribute&&this.element.setAttribute("tabindex",t?"0":"-1")}}const At=t.core.ns.selector("tabs"),St=t.core.ns("tabs"),Ct=t.core.ns("tabs__tab"),_t=t.core.ns("tabs__panel"),kt=t.core.ns("tabs__list");class qt extends t.core.DisclosuresGroup{constructor(e,s){super(e,s),this.list=s.querySelector(`.${kt}`),s.addEventListener("transitionend",this.transitionend.bind(this)),this.init(),t.core.engine.renderer.add(this.render.bind(this))}static get selector(){return St}transitionend(t){this.element.style.transition="none"}init(){this.keyListener=new t.KeyListener(this.element),this.keyListener.down(t.KeyListener.RIGHT,this.arrowRightPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.LEFT,this.arrowLeftPress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.HOME,this.homePress.bind(this),!0,!0),this.keyListener.down(t.KeyListener.END,this.endPress.bind(this),!0,!0)}arrowRightPress(){document.activeElement.classList.contains(Ct)&&(this.index<this.length-1?this.index++:this.index=0,this.focus())}arrowLeftPress(){document.activeElement.classList.contains(Ct)&&(this.index>0?this.index--:this.index=this.length-1,this.focus())}homePress(){document.activeElement.classList.contains(Ct)&&(this.index=0,this.focus())}endPress(){document.activeElement.classList.contains(Ct)&&(this.index=this.length-1,this.focus())}focus(){this.current&&this.current.focus()}apply(){for(let t=0;t<this._index;t++)this.members[t].translate(-1);this.current.element.style.transition="",this.current.element.style.transform="";for(let t=this._index+1;t<this.length;t++)this.members[t].translate(1);this.element.style.transition=""}add(t){if(super.add(t),1===this.length||t.disclosed)this.current=t;else{const e=this.members.indexOf(t);this._index>-1&&this._index!==e&&t.translate(e<this._index?-1:1,!0)}}render(){if(null===this.current)return;const t=Math.round(this.current.element.offsetHeight);this.panelHeight!==t&&(this.panelHeight=t,this.element.style.height=this.panelHeight+this.list.offsetHeight+"px")}}class It extends t.core.Disclosure{static get type(){return t.core.DISCLOSURE_TYPES.select}static get selector(){return _t}get GroupConstructor(){return qt}buttonFactory(t){return new Lt(t,this)}translate(t,e){this.element.style.transition=e?"none":"",this.element.style.transform=`translate(${100*t}%)`}reset(){this.group.index=0}}t.Tab=It,t.TabButton=Lt,t.TabsGroup=qt;new t.core.Initializer(At,[()=>{It.build(document)}]);const zt=t.core.ns.selector("header"),Dt=t.core.ns.selector("header__search"),Ht=t.core.ns.selector("header__menu"),Pt=t.core.ns.selector("header__tools-links"),Ot=t.core.ns.selector("header__menu-links"),Tt=`${Pt} ${t.core.ns.selector("links-group")}`;class Bt{constructor(t){this.header=t||document.querySelector(zt),this.modals=[],this.init()}getModal(e){const s=this.header.querySelector(e);if(!s)return;const i=t.core.Instance.getInstances(s,t.Modal);i&&i.length&&this.modals.push(new Nt(i[0]))}init(){this.getModal(Dt),this.getModal(Ht),this.linksGroup=this.header.querySelector(Tt),this.toolsLinks=this.header.querySelector(Pt),this.menuLinks=this.header.querySelector(Ot),this.changing=this.change.bind(this),window.addEventListener("resize",this.changing),this.change()}change(){this.isLarge=window.matchMedia("(min-width: 62em)").matches,this.isLarge?this.modals.forEach((t=>t.disable())):this.modals.forEach((t=>t.enable())),null!==this.linksGroup&&(this.isLarge?this.toolsLinks.appendChild(this.linksGroup):this.menuLinks.appendChild(this.linksGroup))}}class Nt{constructor(t){this.modal=t}enable(){this.modal.element.setAttribute("role","dialog"),this.modal.element.setAttribute("aria-labelledby",this.modal.primary.element.id)}disable(){this.modal.conceal(),this.modal.element.removeAttribute("role"),this.modal.element.removeAttribute("aria-labelledby")}}t.Header=Bt;new t.core.Initializer(zt,[()=>{const t=Array.prototype.slice.call(document.querySelectorAll(zt)),e=[];for(const s of t)e.push(new Bt(s))}</p>
  
### Reference
* http://blogs.wsj.com/cio/2013/10/08/adobe-source-code-leak-is-bad-news-for-u-s-government/

  
#### CWE Id : 540
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Cookie without SameSite Attribute
##### Low (Medium)
  
  
  
  
#### Description
<p>A cookie has been set without the SameSite attribute, which means that the cookie can be sent as a result of a 'cross-site' request. The SameSite attribute is an effective counter measure to cross-site request forgery, cross-site script inclusion, and timing attacks.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Parameter: `connect.sid`
  
  
  * Evidence: `Set-Cookie: connect.sid`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Parameter: `Cache-Control`
  
  
  
  
Instances: 10
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/matomo.js](https://www.psyenfantado.sante.gouv.fr/static/js/matomo.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
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
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Parameter: `X-Content-Type-Options`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  * Evidence: `2f57-pMsRUqZeaiByGMO6nCHk3wL/k5M`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/css/dsfr.min.css](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/css/dsfr.min.css)
  
  
  * Method: `GET`
  
  
  * Evidence: `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`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  * Evidence: `283a-2B/oKxX57GKUPAmFmDyNQdUBqso`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/documents/Guide-PsyEnfantAdo-Patients.pdf](https://www.psyenfantado.sante.gouv.fr/static/documents/Guide-PsyEnfantAdo-Patients.pdf)
  
  
  * Method: `GET`
  
  
  * Evidence: `160/Type/FontDescriptor/XHeight`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  * Evidence: `2f57-pMsRUqZeaiByGMO6nCHk3wL/k5M`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/sitemap.xml](https://www.psyenfantado.sante.gouv.fr/sitemap.xml)
  
  
  * Method: `GET`
  
  
  * Evidence: `3AI2DMujKkqTNiW8hYu05hlRwJKe8DJCS8`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  * Evidence: `3ArcOum1K8mkHVeVWtmn2QSX0h02vi_gc7`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  * Evidence: `29f6-FMigLsZAEfmnNPKuR4Rfx/58/II`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue](https://www.psyenfantado.sante.gouv.fr/trouver-un-psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `zNdXLfed6yt4HNp6wEpt4FSL-oABqiW0RJUSIspvaIU`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
  * Method: `GET`
  
  
  * Evidence: `2fce-ka/CGwTSLS0c8+h4czFK78l+kdo`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `3Aeig8dn76rDRrM_qg53LRzfVNJ4UXJAMY`
  
  
  
  
Instances: 11
  
### Solution
<p>Manually confirm that the Base64 data does not leak sensitive information, and that the data cannot be aggregated/used to exploit other vulnerabilities.</p>
  
### Other information
<p>��{��,EJ�y���c\x000e�p��|\x000b�NL</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3

  
  
  
  
### Information Disclosure - Suspicious Comments
##### Informational (Low)
  
  
  
  
#### Description
<p>The response appears to contain suspicious comments which may help an attacker. Note: Matches made within script blocks or files are against the entire content not only comments.</p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js](https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `user`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.module.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js](https://www.psyenfantado.sante.gouv.fr/static/js/build-psy-listing.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `query`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/tabulator-tables/js/tabulator.min.js](https://www.psyenfantado.sante.gouv.fr/static/tabulator-tables/js/tabulator.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.nomodule.min.js](https://www.psyenfantado.sante.gouv.fr/static/gouvfr/js/dsfr.nomodule.min.js)
  
  
  * Method: `GET`
  
  
  * Evidence: `select`
  
  
  
  
Instances: 5
  
### Solution
<p>Remove all comments that return information that may help an attacker and fix any underlying problems they refer to.</p>
  
### Other information
<p>The following pattern was used: \bUSER\b and was detected in the element starting with: "    // New filter : this is the first input into search field by user", see evidence field for the suspicious comment/snippet.</p>
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/psychologue](https://www.psyenfantado.sante.gouv.fr/psychologue)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/mentions-legales](https://www.psyenfantado.sante.gouv.fr/mentions-legales)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr](https://www.psyenfantado.sante.gouv.fr)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies](https://www.psyenfantado.sante.gouv.fr/donnees-personnelles-et-gestion-des-cookies)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/](https://www.psyenfantado.sante.gouv.fr/)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/faq](https://www.psyenfantado.sante.gouv.fr/faq)
  
  
  * Method: `GET`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
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

  
  
  
  
### Storable but Non-Cacheable Content
##### Informational (Medium)
  
  
  
  
#### Description
<p>The response contents are storable by caching components such as proxy servers, but will not be retrieved directly from the cache, without validating the request upstream, in response to similar requests from other users. </p>
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/robots.txt](https://www.psyenfantado.sante.gouv.fr/robots.txt)
  
  
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
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0240298529`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0609449882`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0658110164`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0623320109`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0626392501`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0476891916`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0679022078`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0678281795`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0621606044`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0662622458`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0679016233`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0670443876`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0664933223`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0686682865`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0788853955`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0749643923`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0477344030`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0677531475`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0632267816`
  
  
  
  
* URL: [https://www.psyenfantado.sante.gouv.fr/parent](https://www.psyenfantado.sante.gouv.fr/parent)
  
  
  * Method: `GET`
  
  
  * Evidence: `0676155594`
  
  
  
  
Instances: 482
  
### Solution
<p>Manually confirm that the timestamp data is not sensitive, and that the data cannot be aggregated to disclose exploitable patterns.</p>
  
### Other information
<p>0240298529, which evaluates to: 1977-08-13 05:35:29</p>
  
### Reference
* http://projects.webappsec.org/w/page/13246936/Information%20Leakage

  
#### CWE Id : 200
  
#### WASC Id : 13
  
#### Source ID : 3