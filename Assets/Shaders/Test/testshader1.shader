// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33561,y:32750,varname:node_3138,prsc:2|emission-3869-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32395,y:33082,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5736,x:32092,y:32490,ptovrint:False,ptlb:Medium Shadow Pattern,ptin:_MediumShadowPattern,varname:node_5736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:1,isnm:False|UVIN-2814-UVOUT;n:type:ShaderForge.SFN_LightVector,id:9819,x:31527,y:32686,varname:node_9819,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2631,x:31527,y:32840,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:6271,x:31711,y:32738,varname:node_6271,prsc:2,dt:0|A-9819-OUT,B-2631-OUT;n:type:ShaderForge.SFN_Step,id:5680,x:32438,y:32885,varname:node_5680,prsc:2|A-5579-OUT,B-7481-OUT;n:type:ShaderForge.SFN_Vector1,id:5579,x:32218,y:32933,varname:node_5579,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4843,x:32755,y:33000,varname:node_4843,prsc:2|A-5680-OUT,B-7241-RGB;n:type:ShaderForge.SFN_ScreenPos,id:2814,x:31661,y:32332,varname:node_2814,prsc:2,sctp:1;n:type:ShaderForge.SFN_Vector1,id:5429,x:32218,y:32770,varname:node_5429,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:3474,x:32382,y:32687,varname:node_3474,prsc:2|A-7481-OUT,B-5429-OUT;n:type:ShaderForge.SFN_Multiply,id:1795,x:32646,y:32435,varname:node_1795,prsc:2|A-5736-RGB,B-7930-OUT;n:type:ShaderForge.SFN_Depth,id:8453,x:31661,y:32519,varname:node_8453,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7803,x:31868,y:32410,varname:node_7803,prsc:2|A-2814-UVOUT,B-8453-OUT;n:type:ShaderForge.SFN_Tex2d,id:6428,x:31513,y:33067,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_6428,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:976104fc05901514eb6b2ae826ba1cf1,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Dot,id:9946,x:31711,y:32931,varname:node_9946,prsc:2,dt:0|A-9819-OUT,B-6428-RGB;n:type:ShaderForge.SFN_Dot,id:7481,x:31929,y:32832,varname:node_7481,prsc:2,dt:0|A-6271-OUT,B-9946-OUT;n:type:ShaderForge.SFN_Tex2d,id:350,x:32092,y:32300,ptovrint:False,ptlb:Dark Shadow Pattern,ptin:_DarkShadowPattern,varname:node_350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1fd3cb429b9f97b4e8f7a582d08fed6a,ntxv:1,isnm:False|UVIN-2814-UVOUT;n:type:ShaderForge.SFN_Step,id:5707,x:32340,y:32352,varname:node_5707,prsc:2|A-7481-OUT,B-4492-OUT;n:type:ShaderForge.SFN_Vector1,id:4492,x:32092,y:32666,varname:node_4492,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:3417,x:32504,y:32280,varname:node_3417,prsc:2|A-350-RGB,B-5707-OUT;n:type:ShaderForge.SFN_Multiply,id:7157,x:32837,y:32799,varname:node_7157,prsc:2|A-6835-OUT,B-7241-RGB;n:type:ShaderForge.SFN_Add,id:3869,x:33019,y:32981,varname:node_3869,prsc:2|A-7157-OUT,B-4843-OUT;n:type:ShaderForge.SFN_Add,id:6835,x:32884,y:32335,varname:node_6835,prsc:2|A-3417-OUT,B-1795-OUT;n:type:ShaderForge.SFN_Step,id:9110,x:32364,y:32531,varname:node_9110,prsc:2|A-7481-OUT,B-4492-OUT;n:type:ShaderForge.SFN_Subtract,id:7930,x:32539,y:32589,varname:node_7930,prsc:2|A-3474-OUT,B-9110-OUT;proporder:7241-5736-350-6428;pass:END;sub:END;*/

Shader "Shader Forge/testshader1" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _MediumShadowPattern ("Medium Shadow Pattern", 2D) = "gray" {}
        _DarkShadowPattern ("Dark Shadow Pattern", 2D) = "gray" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MediumShadowPattern; uniform float4 _MediumShadowPattern_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _DarkShadowPattern; uniform float4 _DarkShadowPattern_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _DarkShadowPattern_var = tex2D(_DarkShadowPattern,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _DarkShadowPattern));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float node_7481 = dot(dot(lightDirection,i.normalDir),dot(lightDirection,_NormalMap_var.rgb));
                float node_4492 = 0.2;
                float4 _MediumShadowPattern_var = tex2D(_MediumShadowPattern,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _MediumShadowPattern));
                float3 emissive = ((((_DarkShadowPattern_var.rgb*step(node_7481,node_4492))+(_MediumShadowPattern_var.rgb*(step(node_7481,0.5)-step(node_7481,node_4492))))*_Color.rgb)+(step(0.5,node_7481)*_Color.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MediumShadowPattern; uniform float4 _MediumShadowPattern_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _DarkShadowPattern; uniform float4 _DarkShadowPattern_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
