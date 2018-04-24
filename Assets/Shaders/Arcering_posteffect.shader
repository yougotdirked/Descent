// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33302,y:33314,varname:node_2865,prsc:2|emission-2900-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31662,y:33379,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32001,y:33393,varname:node_1672,prsc:2,ntxv:0,isnm:False|TEX-4430-TEX;n:type:ShaderForge.SFN_Tex2d,id:1295,x:32001,y:33671,varname:node_1295,prsc:2,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False|UVIN-4752-UVOUT,TEX-3049-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3049,x:31655,y:33773,ptovrint:False,ptlb:Pattern,ptin:_Pattern,varname:node_3049,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:1227,x:32179,y:33671,varname:node_1227,prsc:2|IN-1295-RGB;n:type:ShaderForge.SFN_Tex2d,id:8624,x:32001,y:33805,varname:node_8624,prsc:2,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False|UVIN-2014-UVOUT,TEX-3049-TEX;n:type:ShaderForge.SFN_ScreenPos,id:4752,x:31655,y:33587,varname:node_4752,prsc:2,sctp:0;n:type:ShaderForge.SFN_ValueProperty,id:7369,x:31655,y:33994,ptovrint:False,ptlb:Pattern offset,ptin:_Patternoffset,varname:node_7369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.25;n:type:ShaderForge.SFN_Panner,id:2014,x:31839,y:33891,varname:node_2014,prsc:2,spu:1,spv:0|UVIN-4752-UVOUT,DIST-7369-OUT;n:type:ShaderForge.SFN_OneMinus,id:6176,x:32179,y:33805,varname:node_6176,prsc:2|IN-8624-RGB;n:type:ShaderForge.SFN_Step,id:6908,x:32355,y:33582,varname:node_6908,prsc:2|A-7542-RGB,B-9537-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9537,x:32001,y:33574,ptovrint:False,ptlb:Pattern Threshhold,ptin:_PatternThreshhold,varname:node_9537,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Divide,id:2842,x:32179,y:33943,varname:node_2842,prsc:2|A-9537-OUT,B-9196-OUT;n:type:ShaderForge.SFN_Vector1,id:9196,x:32001,y:33960,varname:node_9196,prsc:2,v1:2;n:type:ShaderForge.SFN_Step,id:2843,x:32354,y:33875,varname:node_2843,prsc:2|A-7542-RGB,B-2842-OUT;n:type:ShaderForge.SFN_Add,id:8054,x:32546,y:33720,varname:node_8054,prsc:2|A-6908-OUT,B-2843-OUT;n:type:ShaderForge.SFN_Subtract,id:2900,x:32750,y:33528,varname:node_2900,prsc:2|A-7542-RGB,B-8054-OUT;proporder:4430-9537;pass:END;sub:END;*/

Shader "Shader Forge/Arcering_posteffect" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _PatternThreshhold ("Pattern Threshhold", Float ) = 0.3
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _PatternThreshhold;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (node_1672.rgb-(step(node_1672.rgb,_PatternThreshhold)+step(node_1672.rgb,(_PatternThreshhold/2.0))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
