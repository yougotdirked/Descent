// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33440,y:32696,varname:node_3138,prsc:2|emission-4702-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32433,y:32846,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_NormalVector,id:4757,x:31372,y:32886,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:8248,x:31372,y:32761,varname:node_8248,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9160,x:31372,y:33083,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b40ff45bb379581478be3b5ce25a3480,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Dot,id:8136,x:31605,y:32807,varname:node_8136,prsc:2,dt:0|A-8248-OUT,B-4757-OUT;n:type:ShaderForge.SFN_Dot,id:186,x:31605,y:32996,varname:node_186,prsc:2,dt:0|A-8248-OUT,B-9160-RGB;n:type:ShaderForge.SFN_Dot,id:25,x:31788,y:32898,varname:node_25,prsc:2,dt:0|A-8136-OUT,B-186-OUT;n:type:ShaderForge.SFN_Tex2d,id:931,x:31372,y:32615,varname:node_931,prsc:2,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False|UVIN-1336-UVOUT,TEX-2220-TEX;n:type:ShaderForge.SFN_OneMinus,id:2179,x:31546,y:32618,varname:node_2179,prsc:2|IN-931-RGB;n:type:ShaderForge.SFN_Step,id:8244,x:32023,y:32552,varname:node_8244,prsc:2|A-25-OUT,B-1675-OUT;n:type:ShaderForge.SFN_Step,id:8334,x:32064,y:32837,varname:node_8334,prsc:2|A-25-OUT,B-5577-OUT;n:type:ShaderForge.SFN_ScreenPos,id:1336,x:30919,y:32466,varname:node_1336,prsc:2,sctp:1;n:type:ShaderForge.SFN_Multiply,id:7438,x:32010,y:32685,varname:node_7438,prsc:2|A-2179-OUT,B-8334-OUT;n:type:ShaderForge.SFN_Multiply,id:8676,x:31885,y:32393,varname:node_8676,prsc:2|A-526-OUT,B-8244-OUT;n:type:ShaderForge.SFN_Subtract,id:7777,x:32728,y:32773,varname:node_7777,prsc:2|A-7241-RGB,B-968-OUT;n:type:ShaderForge.SFN_Tex2d,id:6794,x:31372,y:32480,varname:node_6794,prsc:2,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False|UVIN-2037-UVOUT,TEX-2220-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2220,x:31089,y:32659,ptovrint:False,ptlb:Pattern,ptin:_Pattern,varname:node_2220,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d435e3dd03ad47e4ea2ba4e213e6ce64,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:526,x:31549,y:32480,varname:node_526,prsc:2|IN-6794-RGB;n:type:ShaderForge.SFN_Add,id:9945,x:32274,y:32485,varname:node_9945,prsc:2|A-8676-OUT,B-7438-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2440,x:30863,y:32319,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_2440,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:5577,x:31663,y:32755,ptovrint:False,ptlb:Shadow Threshhold,ptin:_ShadowThreshhold,varname:_Offset_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Panner,id:2037,x:31112,y:32319,varname:node_2037,prsc:2,spu:0.5,spv:0|UVIN-1336-UVOUT,DIST-2440-OUT;n:type:ShaderForge.SFN_OneMinus,id:9673,x:32112,y:32967,varname:node_9673,prsc:2|IN-25-OUT;n:type:ShaderForge.SFN_Multiply,id:3962,x:32453,y:32644,varname:node_3962,prsc:2|A-9945-OUT,B-9673-OUT,C-9823-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9823,x:32240,y:32795,ptovrint:False,ptlb:Shadow Intensity,ptin:_ShadowIntensity,varname:node_9823,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:1430,x:31835,y:33268,ptovrint:False,ptlb:Highligh Intensity,ptin:_HighlighIntensity,varname:node_1430,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:5931,x:31590,y:33191,ptovrint:False,ptlb:Light Threshhold,ptin:_LightThreshhold,varname:_LightThreshhold2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.9;n:type:ShaderForge.SFN_Step,id:2076,x:31835,y:33106,varname:node_2076,prsc:2|A-5931-OUT,B-25-OUT;n:type:ShaderForge.SFN_Multiply,id:9454,x:32078,y:33204,varname:node_9454,prsc:2|A-2076-OUT,B-1430-OUT;n:type:ShaderForge.SFN_Divide,id:4702,x:32938,y:32869,varname:node_4702,prsc:2|A-7777-OUT,B-4541-OUT;n:type:ShaderForge.SFN_OneMinus,id:4541,x:32457,y:33196,varname:node_4541,prsc:2|IN-9454-OUT;n:type:ShaderForge.SFN_Vector1,id:8201,x:31663,y:32562,varname:node_8201,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1675,x:31810,y:32586,varname:node_1675,prsc:2|A-8201-OUT,B-5577-OUT;n:type:ShaderForge.SFN_Step,id:4569,x:32319,y:32320,varname:node_4569,prsc:2|A-25-OUT,B-7596-OUT;n:type:ShaderForge.SFN_Add,id:968,x:32770,y:32533,varname:node_968,prsc:2|A-3962-OUT,B-3148-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7325,x:32229,y:32678,ptovrint:False,ptlb:Black Spot Intensity,ptin:_BlackSpotIntensity,varname:node_7325,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3148,x:32546,y:32421,varname:node_3148,prsc:2|A-4569-OUT,B-9673-OUT,C-7325-OUT;n:type:ShaderForge.SFN_Multiply,id:7596,x:32084,y:32369,varname:node_7596,prsc:2|A-8201-OUT,B-1675-OUT;proporder:7241-9160-2220-2440-5577-9823-5931-1430-7325;pass:END;sub:END;*/

Shader "Shader Forge/Arcering" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _Pattern ("Pattern", 2D) = "white" {}
        _Offset ("Offset", Float ) = 0.5
        _ShadowThreshhold ("Shadow Threshhold", Float ) = 0.5
        _ShadowIntensity ("Shadow Intensity", Float ) = 1
        _LightThreshhold ("Light Threshhold", Float ) = 0.9
        _HighlighIntensity ("Highligh Intensity", Float ) = 0.5
        _BlackSpotIntensity ("Black Spot Intensity", Float ) = 0.5
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform float _Offset;
            uniform float _ShadowThreshhold;
            uniform float _ShadowIntensity;
            uniform float _HighlighIntensity;
            uniform float _LightThreshhold;
            uniform float _BlackSpotIntensity;
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
                float2 node_2037 = (float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg+_Offset*float2(0.5,0));
                float4 node_6794 = tex2D(_Pattern,TRANSFORM_TEX(node_2037, _Pattern));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float node_25 = dot(dot(lightDirection,i.normalDir),dot(lightDirection,_NormalMap_var.rgb));
                float node_8201 = 0.5;
                float node_1675 = (node_8201*_ShadowThreshhold);
                float4 node_931 = tex2D(_Pattern,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _Pattern));
                float node_9673 = (1.0 - node_25);
                float node_3148 = (step(node_25,(node_8201*node_1675))*node_9673*_BlackSpotIntensity);
                float3 emissive = ((_Color.rgb-(((((1.0 - node_6794.rgb)*step(node_25,node_1675))+((1.0 - node_931.rgb)*step(node_25,_ShadowThreshhold)))*node_9673*_ShadowIntensity)+node_3148))/(1.0 - (step(_LightThreshhold,node_25)*_HighlighIntensity)));
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
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform float _Offset;
            uniform float _ShadowThreshhold;
            uniform float _ShadowIntensity;
            uniform float _HighlighIntensity;
            uniform float _LightThreshhold;
            uniform float _BlackSpotIntensity;
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
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #include "UnityCG.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform float _Offset;
            uniform float _ShadowThreshhold;
            uniform float _ShadowIntensity;
            uniform float _HighlighIntensity;
            uniform float _LightThreshhold;
            uniform float _BlackSpotIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float2 node_2037 = (float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg+_Offset*float2(0.5,0));
                float4 node_6794 = tex2D(_Pattern,TRANSFORM_TEX(node_2037, _Pattern));
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float node_25 = dot(dot(lightDirection,i.normalDir),dot(lightDirection,_NormalMap_var.rgb));
                float node_8201 = 0.5;
                float node_1675 = (node_8201*_ShadowThreshhold);
                float4 node_931 = tex2D(_Pattern,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _Pattern));
                float node_9673 = (1.0 - node_25);
                float node_3148 = (step(node_25,(node_8201*node_1675))*node_9673*_BlackSpotIntensity);
                o.Emission = ((_Color.rgb-(((((1.0 - node_6794.rgb)*step(node_25,node_1675))+((1.0 - node_931.rgb)*step(node_25,_ShadowThreshhold)))*node_9673*_ShadowIntensity)+node_3148))/(1.0 - (step(_LightThreshhold,node_25)*_HighlighIntensity)));
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
