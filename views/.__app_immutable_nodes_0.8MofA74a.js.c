
    #include <unistd.h>
    #include "../server/headers/network.h"
    #include "../server/headers/kernel.h"

    int ___app_immutable_nodes_0_8MofA74a_js() {
        char *page[] = {
        
		"import{s as l,c as r,u as i,g as u,a as f}from\"../chunks/scheduler.zMJaRgub.js\";import{S as _,i as c,t as p,f as m}from\"../chunks/index.ZLPrqq-8.js\";const d=!0,S=Object.freeze(Object.defineProperty({__proto__:null,prerender:d},Symbol.toStringTag,{value:\"Module\"}));function $(n){let s;const a=n[1].default,e=r(a,n,n[0],null);return{c(){e&&e.c()},l(t){e&&e.l(t)},m(t,o){e&&e.m(t,o),s=!0},p(t,[o]){e&&e.p&&(!s||o&1)&&i(e,a,t,t[0],s?f(a,t[0],o,null):u(t[0]),null)},i(t){s||(p(e,t),s=!0)},o(t){m(e,t),s=!1},d(t){e&&e.d(t)}}}function g(n,s,a){let{$$slots:e={},$$scope:t}=s;return n.$$set=o=>{\"$$scope\"in o&&a(0,t=o.$$scope)},[t,e]}class v extends _{constructor(s){super(),c(this,s,g,$,l,{})}}export{v as component,S as universal};",
	};
    for (int l=0; l<(sizeof(page)/sizeof(page[0])); l++) {
        put(page[l], peer);
    }
    return 0;
    }