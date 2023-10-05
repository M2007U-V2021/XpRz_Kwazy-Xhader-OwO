"use strict";(self.webpackChunkkx_ow_o_manual_website=self.webpackChunkkx_ow_o_manual_website||[]).push([[405],{3905:(e,t,a)=>{a.d(t,{Zo:()=>p,kt:()=>c});var n=a(7294);function r(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function i(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function o(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?i(Object(a),!0).forEach((function(t){r(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):i(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function l(e,t){if(null==e)return{};var a,n,r=function(e,t){if(null==e)return{};var a,n,r={},i=Object.keys(e);for(n=0;n<i.length;n++)a=i[n],t.indexOf(a)>=0||(r[a]=e[a]);return r}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)a=i[n],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(r[a]=e[a])}return r}var d=n.createContext({}),s=function(e){var t=n.useContext(d),a=t;return e&&(a="function"==typeof e?e(t):o(o({},t),e)),a},p=function(e){var t=s(e.components);return n.createElement(d.Provider,{value:t},e.children)},m="mdxType",h={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},u=n.forwardRef((function(e,t){var a=e.components,r=e.mdxType,i=e.originalType,d=e.parentName,p=l(e,["components","mdxType","originalType","parentName"]),m=s(a),u=r,c=m["".concat(d,".").concat(u)]||m[u]||h[u]||i;return a?n.createElement(c,o(o({ref:t},p),{},{components:a})):n.createElement(c,o({ref:t},p))}));function c(e,t){var a=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var i=a.length,o=new Array(i);o[0]=u;var l={};for(var d in t)hasOwnProperty.call(t,d)&&(l[d]=t[d]);l.originalType=e,l[m]="string"==typeof e?e:r,o[1]=l;for(var s=2;s<i;s++)o[s]=a[s];return n.createElement.apply(null,o)}return n.createElement.apply(null,a)}u.displayName="MDXCreateElement"},7391:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>d,contentTitle:()=>o,default:()=>h,frontMatter:()=>i,metadata:()=>l,toc:()=>s});var n=a(7462),r=(a(7294),a(3905));const i={sidebar_position:0},o="Fragment Shader Concept",l={unversionedId:"Fragment-Shader/ForwardBass-And-FowardAdd",id:"Fragment-Shader/ForwardBass-And-FowardAdd",title:"Fragment Shader Concept",description:"This shader uses both the ForwardBase Pass and ForwardAdd Pass",source:"@site/docs/02_Fragment-Shader/ForwardBass-And-FowardAdd.md",sourceDirName:"02_Fragment-Shader",slug:"/Fragment-Shader/ForwardBass-And-FowardAdd",permalink:"/KwazyXhaderOwO-Manual/docs/Fragment-Shader/ForwardBass-And-FowardAdd",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/02_Fragment-Shader/ForwardBass-And-FowardAdd.md",tags:[],version:"current",sidebarPosition:0,frontMatter:{sidebar_position:0},sidebar:"tutorialSidebar",previous:{title:"Fragment Shader Part",permalink:"/KwazyXhaderOwO-Manual/docs/category/fragment-shader-part"},next:{title:"FowardBase Pass",permalink:"/KwazyXhaderOwO-Manual/docs/category/fowardbase-pass"}},d={},s=[],p={toc:s},m="wrapper";function h(e){let{components:t,...i}=e;return(0,r.kt)(m,(0,n.Z)({},p,i,{components:t,mdxType:"MDXLayout"}),(0,r.kt)("h1",{id:"fragment-shader-concept"},"Fragment Shader Concept"),(0,r.kt)("p",null,"This shader uses both the ",(0,r.kt)("inlineCode",{parentName:"p"},"ForwardBase")," Pass and ",(0,r.kt)("inlineCode",{parentName:"p"},"ForwardAdd")," Pass"),(0,r.kt)("admonition",{title:"what is a Pass ?",type:"note"},(0,r.kt)("p",{parentName:"admonition"},"Imagine we have the following setup : an empty canvas and 3 robots\nEach robot is designed to paint differently on the same canvas based on some different algotrithyms and trigger conditions"),(0,r.kt)("p",{parentName:"admonition"},"Each Robot in this example is a Pass\nEach Pass is designed to do something specifically.\nIt acts like the layers in Photoshop")),(0,r.kt)("admonition",{title:"what is ForwardBass  ?",type:"note"},(0,r.kt)("p",{parentName:"admonition"},"ForwardBass is a Pass in Unity, which is the first Pass that Unity will run, and it holds the base color of the material.\nForwardBass can also control how a single realtime directional light can affect a mesh with the material")),(0,r.kt)("admonition",{title:"what is ForwardAdd ?  ",type:"note"},(0,r.kt)("p",{parentName:"admonition"},"ForwardAdd is a another Pass in Unity, which will be trigger/called for every realtime light that is in range to shine the mesh with the material")),(0,r.kt)("h1",{id:"layers-in-kxowo"},"Layers in KXOwO"),(0,r.kt)("p",null,"in KXOwO, we have 5 layers, that each has its own purpose"),(0,r.kt)("table",null,(0,r.kt)("thead",{parentName:"table"},(0,r.kt)("tr",{parentName:"thead"},(0,r.kt)("th",{parentName:"tr",align:null},"Layer Name"),(0,r.kt)("th",{parentName:"tr",align:null},"Pass"),(0,r.kt)("th",{parentName:"tr",align:null},"Desc"))),(0,r.kt)("tbody",{parentName:"table"},(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Texture Layer 1"),(0,r.kt)("td",{parentName:"tr",align:null},"ForwardBase"),(0,r.kt)("td",{parentName:"tr",align:null},"Provide texture colors, the main albedo of the shader, can be shader animated")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Texture Layer 2"),(0,r.kt)("td",{parentName:"tr",align:null},"ForwardBase"),(0,r.kt)("td",{parentName:"tr",align:null},"The same as Texture Layer 1. Both ",(0,r.kt)("inlineCode",{parentName:"td"},"Texture Layer 1")," and ",(0,r.kt)("inlineCode",{parentName:"td"},"Texture Layer 2")," will be blended together with different blend types")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Glitter Layer"),(0,r.kt)("td",{parentName:"tr",align:null},"ForwardBase"),(0,r.kt)("td",{parentName:"tr",align:null},"Adds a glitter effect on top of the stack, can be shader animated")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Lightmap Layer"),(0,r.kt)("td",{parentName:"tr",align:null},"ForwardBase"),(0,r.kt)("td",{parentName:"tr",align:null},"Adds a layer of Unity Baked Lightmap, texture needs to be added manually")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Runtime Light"),(0,r.kt)("td",{parentName:"tr",align:null},"ForwardAdd"),(0,r.kt)("td",{parentName:"tr",align:null},"Adding runtime shades and color when illuminated by realtime point lights")))),(0,r.kt)("admonition",{type:"caution"},(0,r.kt)("p",{parentName:"admonition"},"the ",(0,r.kt)("inlineCode",{parentName:"p"},"Lightmap Layer")," will only work for 2D meshes  ")),(0,r.kt)("p",null,"To controll how intense each layer is, the ",(0,r.kt)("inlineCode",{parentName:"p"},"Kontrol Panel")," has the sliders for each Layers"),(0,r.kt)("p",null,(0,r.kt)("img",{alt:"image",src:a(818).Z,width:"497",height:"362"})),(0,r.kt)("admonition",{title:"POWAH!!!  ",type:"caution"},(0,r.kt)("p",{parentName:"admonition"},"when a layer is to intense, it might cause Color Flipping, make sure the strength adds up to 1 (idealy) or below 2, Unless you want that intensive color flip effect  ")),(0,r.kt)("h1",{id:"layer-bwend-mode"},"Layer Bwend Mode"),(0,r.kt)("p",null,"this is the option to choose how to combine both ",(0,r.kt)("inlineCode",{parentName:"p"},"Texture Layer 1")," an ",(0,r.kt)("inlineCode",{parentName:"p"},"Texture Layer 2"),"  "),(0,r.kt)("table",null,(0,r.kt)("thead",{parentName:"table"},(0,r.kt)("tr",{parentName:"thead"},(0,r.kt)("th",{parentName:"tr",align:null},"Mode"),(0,r.kt)("th",{parentName:"tr",align:null},"Desc"))),(0,r.kt)("tbody",{parentName:"table"},(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Additive"),(0,r.kt)("td",{parentName:"tr",align:null},"adding both layers together Channel by Channel")),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"First on Top"),(0,r.kt)("td",{parentName:"tr",align:null},"Just like photoshop layers, ",(0,r.kt)("inlineCode",{parentName:"td"},"Texture Layer 1")," is on top of ",(0,r.kt)("inlineCode",{parentName:"td"},"Texture Layer 2"))),(0,r.kt)("tr",{parentName:"tbody"},(0,r.kt)("td",{parentName:"tr",align:null},"Second on Top"),(0,r.kt)("td",{parentName:"tr",align:null},"Similiar to ",(0,r.kt)("inlineCode",{parentName:"td"},"First on Top"),", but it is ",(0,r.kt)("inlineCode",{parentName:"td"},"Texture Layer 2")," on Top instead")))),(0,r.kt)("h1",{id:"blend-mode"},"Blend Mode"),(0,r.kt)("p",null,"This is where you can adjust how Unity will blend this KXOwO Passes with other External Shaders"),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Bwend Mode Sos"),' : the "Source" in blending'),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Bwend Mode Beehind"),' : the "Destination" in blending'),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Bwend Mode Opewation"),' : the "Operation" in blending')),(0,r.kt)("admonition",{title:"Example  ",type:"note"},(0,r.kt)("p",{parentName:"admonition"},"most of the time we usually use the blending method : SrcAlpha OneMinusAlpha with the operation Add")),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Kull Taip"),' : basically "Cull Type"')),(0,r.kt)("admonition",{title:"Cull Type  ",type:"tip"},(0,r.kt)("p",{parentName:"admonition"},"If you have ever tried to import an FBX from Blender into Unity, You might have came to the situation that some faces are missing, most of the time, the faces are not missing, they are just facing the wrong way."),(0,r.kt)("p",{parentName:"admonition"},"In this case, Cull Type take cares for that."),(0,r.kt)("ul",{parentName:"admonition"},(0,r.kt)("li",{parentName:"ul"},"Off : Render Both sides"),(0,r.kt)("li",{parentName:"ul"},"Front : Render Front faces only"),(0,r.kt)("li",{parentName:"ul"},"Back : Render Back faces only  "))))}h.isMDXComponent=!0},818:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/Interface_00_KontrolPanel-f964600291ad80dec22a5c358ad11f80.png"}}]);