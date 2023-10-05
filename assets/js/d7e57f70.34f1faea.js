"use strict";(self.webpackChunkkx_ow_o_manual_website=self.webpackChunkkx_ow_o_manual_website||[]).push([[541],{3905:(e,t,a)=>{a.d(t,{Zo:()=>d,kt:()=>u});var n=a(7294);function r(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function i(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function o(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?i(Object(a),!0).forEach((function(t){r(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):i(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function l(e,t){if(null==e)return{};var a,n,r=function(e,t){if(null==e)return{};var a,n,r={},i=Object.keys(e);for(n=0;n<i.length;n++)a=i[n],t.indexOf(a)>=0||(r[a]=e[a]);return r}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)a=i[n],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(r[a]=e[a])}return r}var s=n.createContext({}),h=function(e){var t=n.useContext(s),a=t;return e&&(a="function"==typeof e?e(t):o(o({},t),e)),a},d=function(e){var t=h(e.components);return n.createElement(s.Provider,{value:t},e.children)},m="mdxType",c={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},p=n.forwardRef((function(e,t){var a=e.components,r=e.mdxType,i=e.originalType,s=e.parentName,d=l(e,["components","mdxType","originalType","parentName"]),m=h(a),p=r,u=m["".concat(s,".").concat(p)]||m[p]||c[p]||i;return a?n.createElement(u,o(o({ref:t},d),{},{components:a})):n.createElement(u,o({ref:t},d))}));function u(e,t){var a=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var i=a.length,o=new Array(i);o[0]=p;var l={};for(var s in t)hasOwnProperty.call(t,s)&&(l[s]=t[s]);l.originalType=e,l[m]="string"==typeof e?e:r,o[1]=l;for(var h=2;h<i;h++)o[h]=a[h];return n.createElement.apply(null,o)}return n.createElement.apply(null,a)}p.displayName="MDXCreateElement"},5930:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>s,contentTitle:()=>o,default:()=>c,frontMatter:()=>i,metadata:()=>l,toc:()=>h});var n=a(7462),r=(a(7294),a(3905));const i={sidebar_position:1},o="Runtime Light Layer",l={unversionedId:"Fragment-Shader/ForwardAdd/RuntimeLight",id:"Fragment-Shader/ForwardAdd/RuntimeLight",title:"Runtime Light Layer",description:"here is where KXOwO controls how to interact with Realtime lights, and make things shiny (OwO)",source:"@site/docs/02_Fragment-Shader/02_ForwardAdd/01_RuntimeLight.md",sourceDirName:"02_Fragment-Shader/02_ForwardAdd",slug:"/Fragment-Shader/ForwardAdd/RuntimeLight",permalink:"/KwazyXhaderOwO-Manual/docs/Fragment-Shader/ForwardAdd/RuntimeLight",draft:!1,editUrl:"https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/docs/02_Fragment-Shader/02_ForwardAdd/01_RuntimeLight.md",tags:[],version:"current",sidebarPosition:1,frontMatter:{sidebar_position:1},sidebar:"tutorialSidebar",previous:{title:"FowardAdd Pass",permalink:"/KwazyXhaderOwO-Manual/docs/category/fowardadd-pass"},next:{title:"Vertex Shader Part",permalink:"/KwazyXhaderOwO-Manual/docs/category/vertex-shader-part"}},s={},h=[{value:"Diffuse Lightning",id:"diffuse-lightning",level:2},{value:"Specular Lightning",id:"specular-lightning",level:2},{value:"Normal Map",id:"normal-map",level:2}],d={toc:h},m="wrapper";function c(e){let{components:t,...i}=e;return(0,r.kt)(m,(0,n.Z)({},d,i,{components:t,mdxType:"MDXLayout"}),(0,r.kt)("h1",{id:"runtime-light-layer"},"Runtime Light Layer"),(0,r.kt)("p",null,"here is where KXOwO controls how to interact with Realtime lights, and make things shiny (OwO)"),(0,r.kt)("admonition",{title:"Example  ",type:"note"},(0,r.kt)("p",{parentName:"admonition"},"KXOwO can be used as a water shader and make shiny water surfaces  ")),(0,r.kt)("p",null,"Here's how it looks like in Unity :"),(0,r.kt)("p",null,(0,r.kt)("img",{alt:"image",src:a(7880).Z,width:"499",height:"650"})),(0,r.kt)("p",null,"In KXOwO-RuntimeLightLayer, we have 2 types of lighting, which is extremely common to other shaders as well:"),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},"Diffuse Lightning"),(0,r.kt)("li",{parentName:"ul"},"Specular Lightning")),(0,r.kt)("h2",{id:"diffuse-lightning"},"Diffuse Lightning"),(0,r.kt)("p",null,"basically, before hitting the mesh, the light rays bounces and scatters around the environment, then hit the mesh, then the camera, this kind of light rays are weaker."),(0,r.kt)("admonition",{title:"DEJA VU ?  ",type:"tip"},(0,r.kt)("p",{parentName:"admonition"},(0,r.kt)("inlineCode",{parentName:"p"},"External-VectorColor")," was added to fake lightnings, now Realitime Light is here to do the real thing, instead of having a static Light Vector set by the user, this time the light vector is the position of a light source relative to the face of a mesh")),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Diff Stwength")," : this will determine how much indirect lightning will this material accept. Most of the other shader don't have this parameter.")),(0,r.kt)("h2",{id:"specular-lightning"},"Specular Lightning"),(0,r.kt)("p",null,"in short, Light rays hit the mesh directly, then the camera, thus being extremy clear and pure and clean."),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Spek Stwength")," : this will determine how much direct lightning will this material accept."),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Gwos")," : this vector will decide how shiny/smooth the material should be, the ",(0,r.kt)("inlineCode",{parentName:"li"},"base")," parameter is linear, ",(0,r.kt)("inlineCode",{parentName:"li"},"power")," is exponential"),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("inlineCode",{parentName:"li"},"Spek Taip")," : Here we have 3 types of Algorithyms to calculate how high lights were drawn : ",(0,r.kt)("inlineCode",{parentName:"li"},"phong"),", ",(0,r.kt)("inlineCode",{parentName:"li"},"bwin phong 1"),", ",(0,r.kt)("inlineCode",{parentName:"li"},"bwin fong 2"))),(0,r.kt)("h2",{id:"normal-map"},"Normal Map"),(0,r.kt)("p",null,'KXOwO also accept normal maps to "fake" details, here we have 2 normal map layers, each of them can be UV Transformed Separately, the intensity of each normal map layer can be adjusted separately'),(0,r.kt)("admonition",{title:"WATER SHADER",type:"note"},(0,r.kt)("p",{parentName:"admonition"},"by using 2 normal maps, you can have KXOwO work as a water shader, by having 2 normal maps scrolling in different directions, you can also have both of the normal maps have different scales. "),(0,r.kt)("p",{parentName:"admonition"},(0,r.kt)("img",{alt:"image",src:a(4647).Z,width:"300",height:"300"}))))}c.isMDXComponent=!0},7880:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/Interface_10_RuntimeLight-d1d5bd572c98ef0674c7fbd038f37a80.png"},4647:(e,t,a)=>{a.d(t,{Z:()=>n});const n=a.p+"assets/images/VRC_NormalMap-b39679a22904957d79fd586dc9441e82.png"}}]);