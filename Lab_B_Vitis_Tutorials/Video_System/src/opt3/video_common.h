#define MAX_HEIGHT 20
#define MAX_WIDTH 20
// #define OPT1
//#define OPT2
#define OPT3
//#define OPT4

typedef struct rgb_pixel {
	unsigned char R;
	unsigned char G;
	unsigned char B;
} rgb_pixel;

rgb_pixel filter(rgb_pixel window[3][3]);
unsigned char rescale(unsigned char val, unsigned char offset, unsigned char scale);
rgb_pixel rescale_pixel(rgb_pixel p, unsigned char offset, unsigned char scale);
void video_filter_rescale(rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH],
						rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH],
						unsigned char min, unsigned char max);
                     

#ifdef OPT1
void video_2dfilter(rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH],
					rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH]);
#endif

#ifdef OPT2
void video_2dfilter_linebuffer(rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH],
								rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH]);
#endif

#ifdef OPT3
void video_2dfilter_linebuffer_extended(
				rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH],
				rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH]);
#endif

#ifdef OPT4
void video_2dfilter_linebuffer_extended_constant(
	rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH], rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH]);
 #endif
 
 
 
