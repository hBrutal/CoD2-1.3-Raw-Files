#define HALF_TAP_COUNT 8

#include "lib/globals.hlsl"

sampler skySampler;

struct VertexInput
{
	float4 position : POSITION;
	float2 texCoords : TEXCOORD0;
};


struct PixelInput
{
	float4 position : POSITION;
	float2 texCoords : TEXCOORD0;
};


struct PixelOutput
{
	float4 color : COLOR;
};


#include "lib/transform.hlsl"


PixelInput vs_main( const VertexInput vertex )
{
	PixelInput pixel;

	pixel.position = Transform_ObjectToClip( vertex.position );
	pixel.texCoords = vertex.texCoords;

	return pixel;
}


PixelOutput ps_main( const PixelInput pixel )
{
	PixelOutput fragment;

	fragment.color = tex2D( colorMapSampler, pixel.texCoords );
	fragment.color.rgb *= glowApply[GLOW_APPLY_BLOOM_INTENSITY];

	return fragment;
}