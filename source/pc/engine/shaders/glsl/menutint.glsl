!!cvari r_menutint_inverse
!!cvarv r_menutint

#ifdef VERTEX_SHADER
		attribute vec2 v_texcoord;
		varying vec2 texcoord;
		uniform vec4 e_rendertexturescale;
		void main(void)
		{
			texcoord.x = v_texcoord.x*e_rendertexturescale.x;
			texcoord.y = (1.0-v_texcoord.y)*e_rendertexturescale.y;
			gl_Position = ftetransform();
		}
#endif
#ifdef FRAGMENT_SHADER

		varying vec2 texcoord;
		uniform vec3 cvar_r_menutint;
		uniform sampler2D s_t0;
		uniform int cvar_r_menutint_inverse;
		const vec3 lumfactors = vec3(0.299, 0.587, 0.114);
		const vec3 invertvec = vec3(1.0, 1.0, 1.0);
		void main(void)
		{
			vec3 texcolor = texture2D(s_t0, texcoord).rgb;
			float luminance = dot(lumfactors, texcolor);
			texcolor = vec3(luminance, luminance, luminance);
			texcolor *= cvar_r_menutint;
			texcolor = (cvar_r_menutint_inverse > 0) ? (invertvec - texcolor) : texcolor;
			gl_FragColor = vec4(texcolor, 1.0);
		}
#endif