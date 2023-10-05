"use strict";(self.webpackChunkkx_ow_o_manual_website=self.webpackChunkkx_ow_o_manual_website||[]).push([[952],{3905:(e,t,r)=>{r.d(t,{Zo:()=>d,kt:()=>f});var o=r(7294);function n(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function a(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);t&&(o=o.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,o)}return r}function l(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?a(Object(r),!0).forEach((function(t){n(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):a(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function i(e,t){if(null==e)return{};var r,o,n=function(e,t){if(null==e)return{};var r,o,n={},a=Object.keys(e);for(o=0;o<a.length;o++)r=a[o],t.indexOf(r)>=0||(n[r]=e[r]);return n}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(o=0;o<a.length;o++)r=a[o],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(n[r]=e[r])}return n}var s=o.createContext({}),h=function(e){var t=o.useContext(s),r=t;return e&&(r="function"==typeof e?e(t):l(l({},t),e)),r},d=function(e){var t=h(e.components);return o.createElement(s.Provider,{value:t},e.children)},A="mdxType",c={inlineCode:"code",wrapper:function(e){var t=e.children;return o.createElement(o.Fragment,{},t)}},u=o.forwardRef((function(e,t){var r=e.components,n=e.mdxType,a=e.originalType,s=e.parentName,d=i(e,["components","mdxType","originalType","parentName"]),A=h(r),u=n,f=A["".concat(s,".").concat(u)]||A[u]||c[u]||a;return r?o.createElement(f,l(l({ref:t},d),{},{components:r})):o.createElement(f,l({ref:t},d))}));function f(e,t){var r=arguments,n=t&&t.mdxType;if("string"==typeof e||n){var a=r.length,l=new Array(a);l[0]=u;var i={};for(var s in t)hasOwnProperty.call(t,s)&&(i[s]=t[s]);i.originalType=e,i[A]="string"==typeof e?e:n,l[1]=i;for(var h=2;h<a;h++)l[h]=r[h];return o.createElement.apply(null,l)}return o.createElement.apply(null,r)}u.displayName="MDXCreateElement"},5239:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>s,contentTitle:()=>l,default:()=>c,frontMatter:()=>a,metadata:()=>i,toc:()=>h});var o=r(7462),n=(r(7294),r(3905));const a={sidebar_position:6},l="Glitter Layer",i={unversionedId:"Fragment-Shader/ForwardBase/Glitter",id:"Fragment-Shader/ForwardBase/Glitter",title:"Glitter Layer",description:'in KXOwO, you can add a layer of Glitters to make your meshes go "blink blink OwO <3"',source:"@site/docs/02_Fragment-Shader/01_ForwardBase/06_Glitter.md",sourceDirName:"02_Fragment-Shader/01_ForwardBase",slug:"/Fragment-Shader/ForwardBase/Glitter",permalink:"/KwazyXhaderOwO-Manual/docs/Fragment-Shader/ForwardBase/Glitter",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/02_Fragment-Shader/01_ForwardBase/06_Glitter.md",tags:[],version:"current",sidebarPosition:6,frontMatter:{sidebar_position:6},sidebar:"tutorialSidebar",previous:{title:"Externel - Vector Color",permalink:"/KwazyXhaderOwO-Manual/docs/Fragment-Shader/ForwardBase/External-VectorColor"},next:{title:"Lightmap Layer",permalink:"/KwazyXhaderOwO-Manual/docs/Fragment-Shader/ForwardBase/Lightmap"}},s={},h=[{value:"Noise Teksture Hue Scwoll / Noise Texture Hue Scroll",id:"noise-teksture-hue-scwoll--noise-texture-hue-scroll",level:2},{value:"Gwitter Thweshhold / Glitter Threshhold",id:"gwitter-thweshhold--glitter-threshhold",level:2}],d={toc:h},A="wrapper";function c(e){let{components:t,...a}=e;return(0,n.kt)(A,(0,o.Z)({},d,a,{components:t,mdxType:"MDXLayout"}),(0,n.kt)("h1",{id:"glitter-layer"},"Glitter Layer"),(0,n.kt)("p",null,'in KXOwO, you can add a layer of Glitters to make your meshes go "blink blink OwO <3"'),(0,n.kt)("p",null,(0,n.kt)("img",{alt:"image",src:r(809).Z,width:"301",height:"301"})),(0,n.kt)("p",null,"And here's how it looks like in Unity :"),(0,n.kt)("p",null,(0,n.kt)("img",{alt:"image",src:r(9850).Z,width:"601",height:"539"})),(0,n.kt)("admonition",{type:"caution"},(0,n.kt)("p",{parentName:"admonition"},"if you are looking for a perfect glitter effect, what you need here is a noise texture.\n",(0,n.kt)("img",{alt:"image",src:r(7206).Z,width:"256",height:"256"}),(0,n.kt)("br",{parentName:"p"}),"\n","In this case, to generate a good noise texture for this situation, the algorythym is to have the channels be a random number between 0-255 for each pixel\n, here's an example of a noise texture that is a suitable texture to be used for the Glitter layer")),(0,n.kt)("h2",{id:"noise-teksture-hue-scwoll--noise-texture-hue-scroll"},"Noise Teksture Hue Scwoll / Noise Texture Hue Scroll"),(0,n.kt)("p",null,'Basically the rate for the "Blinking" effect, the higher the number, the faster it sparkles'),(0,n.kt)("h2",{id:"gwitter-thweshhold--glitter-threshhold"},"Gwitter Thweshhold / Glitter Threshhold"),(0,n.kt)("p",null,"First we need to know how a glitter to pixel is made :"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-C#"},"/*\nnote that\nGwitterThresholdRwed,\nGwitterThresholdGwin,\nGwitterThresholdBwoo,\nGwitterThresholdAfwa \nare all user adjustable parameters\n*/\n\n\nbool boolRed;\nbool boolGreen;\nbool boolBlue;\nbool boolAlpha;\n\nboolReed = HueShift(ColorFromNoiseTexture.r) > GwitterThresholdRwed;\nboolGwin = HueShift(ColorFromNoiseTexture.g) > GwitterThresholdGwin;\nboolBwoo = HueShift(ColorFromNoiseTexture.b) > GwitterThresholdBwoo;\nboolAfwa = HueShift(ColorFromNoiseTexture.a) > GwitterThresholdAfwa;\n\nif(boolRwed && boolGwin && boolBwoo && boolAfwa)\n{\n    //this pixel passes the test\n    //this pixel will be colored with the Glitter color\n}\nelse\n{\n    //this pixel did NOT pass the test,\n    //this pixel will not be colored with the Glitter Color\n}\n")),(0,n.kt)("admonition",{title:"Why it is not Glittering ?  ",type:"caution"},(0,n.kt)("p",{parentName:"admonition"},"If all the threshhold sliders are the same, then there is not going to be any glittering animation, in order to let it work, all threshold sliders must have different values  ")))}c.isMDXComponent=!0},7206:(e,t,r)=>{r.d(t,{Z:()=>o});const o=r.p+"assets/images/IMG_NSE-7167a820a7f38bdf64103e99fe7ff8a4.png"},9850:(e,t,r)=>{r.d(t,{Z:()=>o});const o=r.p+"assets/images/Interface_Glitter-f2da889a5894dac248bb02df12477bdd.png"},809:(e,t,r)=>{r.d(t,{Z:()=>o});const o="data:image/png;base64,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"}}]);