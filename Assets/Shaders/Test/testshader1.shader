// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33649,y:32521,varname:node_3138,prsc:2|emission-5904-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32905,y:32800,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5736,x:32092,y:32490,ptovrint:False,ptlb:Medium Shadow Pattern,ptin:_MediumShadowPattern,varname:node_5736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False|UVIN-2814-UVOUT;n:type:ShaderForge.SFN_LightVector,id:9819,x:31400,y:32576,varname:node_9819,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2631,x:31156,y:32766,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:6271,x:31690,y:32628,varname:node_6271,prsc:2,dt:0|A-9819-OUT,B-2631-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2814,x:31661,y:32332,varname:node_2814,prsc:2,sctp:1;n:type:ShaderForge.SFN_Vector1,id:5429,x:32204,y:32759,varname:node_5429,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:3474,x:32462,y:32683,varname:node_3474,prsc:2|A-7481-OUT,B-5429-OUT;n:type:ShaderForge.SFN_Multiply,id:1795,x:32821,y:32415,varname:node_1795,prsc:2|A-9888-OUT,B-5419-OUT;n:type:ShaderForge.SFN_Tex2d,id:6428,x:31156,y:32975,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_6428,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:976104fc05901514eb6b2ae826ba1cf1,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Dot,id:9946,x:31690,y:32814,varname:node_9946,prsc:2,dt:0|A-9819-OUT,B-6428-RGB;n:type:ShaderForge.SFN_Dot,id:7481,x:32013,y:32807,varname:node_7481,prsc:2,dt:0|A-6271-OUT,B-9946-OUT;n:type:ShaderForge.SFN_Tex2d,id:350,x:32092,y:32300,ptovrint:False,ptlb:Dark Shadow Pattern,ptin:_DarkShadowPattern,varname:node_350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1fd3cb429b9f97b4e8f7a582d08fed6a,ntxv:0,isnm:False|UVIN-2814-UVOUT;n:type:ShaderForge.SFN_Step,id:5707,x:32498,y:32311,varname:node_5707,prsc:2|A-7481-OUT,B-4492-OUT;n:type:ShaderForge.SFN_Vector1,id:4492,x:32092,y:32677,varname:node_4492,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:3417,x:32786,y:32195,varname:node_3417,prsc:2|A-4650-OUT,B-5707-OUT;n:type:ShaderForge.SFN_Step,id:9110,x:32462,y:32545,varname:node_9110,prsc:2|A-7481-OUT,B-4492-OUT;n:type:ShaderForge.SFN_Subtract,id:5419,x:32678,y:32574,varname:node_5419,prsc:2|A-3474-OUT,B-9110-OUT;n:type:ShaderForge.SFN_Subtract,id:8748,x:33196,y:32740,varname:node_8748,prsc:2|A-7241-RGB,B-6853-OUT;n:type:ShaderForge.SFN_OneMinus,id:4650,x:32422,y:32180,varname:node_4650,prsc:2|IN-350-RGB;n:type:ShaderForge.SFN_OneMinus,id:9888,x:32558,y:32436,varname:node_9888,prsc:2|IN-5736-RGB;n:type:ShaderForge.SFN_Add,id:6424,x:33016,y:32289,varname:node_6424,prsc:2|A-3417-OUT,B-1795-OUT;n:type:ShaderForge.SFN_Multiply,id:6853,x:32980,y:32634,varname:node_6853,prsc:2|A-5676-OUT,B-4596-OUT;n:type:ShaderForge.SFN_OneMinus,id:4596,x:32559,y:32821,varname:node_4596,prsc:2|IN-7481-OUT;n:type:ShaderForge.SFN_Step,id:160,x:32715,y:33055,varname:node_160,prsc:2|A-2885-OUT,B-6231-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:9637,x:31288,y:33160,varname:node_9637,prsc:2;n:type:ShaderForge.SFN_Dot,id:6695,x:31663,y:33025,varname:node_6695,prsc:2,dt:0|A-9637-OUT,B-2631-OUT;n:type:ShaderForge.SFN_OneMinus,id:6231,x:32188,y:32975,varname:node_6231,prsc:2|IN-6695-OUT;n:type:ShaderForge.SFN_Vector1,id:2694,x:33027,y:32215,varname:node_2694,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:5676,x:33275,y:32290,varname:node_5676,prsc:2|A-2694-OUT,B-6424-OUT;n:type:ShaderForge.SFN_Subtract,id:5904,x:33367,y:32893,varname:node_5904,prsc:2|A-8748-OUT,B-2862-OUT;n:type:ShaderForge.SFN_ViewVector,id:3173,x:31128,y:33292,varname:node_3173,prsc:2;n:type:ShaderForge.SFN_Depth,id:4783,x:32012,y:33241,varname:node_4783,prsc:2;n:type:ShaderForge.SFN_Vector1,id:646,x:32037,y:33146,varname:node_646,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:9719,x:32278,y:33180,varname:node_9719,prsc:2|A-646-OUT,B-4783-OUT;n:type:ShaderForge.SFN_OneMinus,id:2885,x:32478,y:33124,varname:node_2885,prsc:2|IN-9719-OUT;n:type:ShaderForge.SFN_Dot,id:7548,x:31598,y:33234,varname:node_7548,prsc:2,dt:0|A-6428-RGB,B-3173-OUT;n:type:ShaderForge.SFN_Dot,id:3207,x:31833,y:33102,varname:node_3207,prsc:2,dt:0|A-6695-OUT,B-7548-OUT;n:type:ShaderForge.SFN_Multiply,id:2862,x:32926,y:32970,varname:node_2862,prsc:2|A-643-OUT,B-160-OUT;n:type:ShaderForge.SFN_OneMinus,id:643,x:32522,y:32943,varname:node_643,prsc:2|IN-7481-OUT;proporder:7241-5736-350-6428;pass:END;sub:END;*/

Shader "Shader Forge/testshader1" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _MediumShadowPattern ("Medium Shadow Pattern", 2D) = "white" {}
        _DarkShadowPattern ("Dark Shadow Pattern", 2D) = "white" {}
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _DarkShadowPattern_var = tex2D(_DarkShadowPattern,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _DarkShadowPattern));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float node_7481 = dot(dot(lightDirection,i.normalDir),dot(lightDirection,_NormalMap_var.rgb));
                float node_4492 = 0.2;
                float4 _MediumShadowPattern_var = tex2D(_MediumShadowPattern,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _MediumShadowPattern));
                float node_6695 = dot(viewReflectDirection,i.normalDir);
                float3 emissive = ((_Color.rgb-((2.0*(((1.0 - _DarkShadowPattern_var.rgb)*step(node_7481,node_4492))+((1.0 - _MediumShadowPattern_var.rgb)*(step(node_7481,0.5)-step(node_7481,node_4492)))))*(1.0 - node_7481)))-((1.0 - node_7481)*step((1.0 - (1.0/partZ)),(1.0 - node_6695))));
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
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
