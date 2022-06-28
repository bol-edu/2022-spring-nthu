#include <iostream>
#include "video_common.h"

rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH];
rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH];
void PixelIni(rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH]);
void PrintPixel(rgb_pixel pixel_print[MAX_HEIGHT][MAX_WIDTH]);

using namespace std;

int main()
{
	PixelIni(pixel_in);
	cout << "print pixel_in:\n";
	PrintPixel(pixel_in);
	video_filter_rescale (pixel_in, pixel_in, 30, 18);
	cout << "After rescale:\n";
	PrintPixel(pixel_in);
	video_2dfilter_linebuffer_extended_constant(pixel_in, pixel_out);
	cout << "pixel_out:\n";
	PrintPixel(pixel_out);
	return 0;
}

// Generate input pixel
void PixelIni(rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH])
{
	for(int i = 0; i < MAX_HEIGHT; i++) {
		for (int j = 0; j < MAX_WIDTH; j++) {
			pixel_in[i][j].R = (i+j) % 256;
			pixel_in[i][j].G = (i+j) % 256;
			pixel_in[i][j].B = (i+j) % 256;
		}
	}
}

void PrintPixel(rgb_pixel pixel_print[MAX_HEIGHT][MAX_WIDTH])
{
	for(int i = 0; i < MAX_HEIGHT; i++) {
		for (int j = 0; j < MAX_WIDTH; j++) {
			printf("%2X ", pixel_print[i][j].R);
		}
		cout << endl;
	}

	for(int i = 0; i < MAX_HEIGHT; i++) {
		for (int j = 0; j < MAX_WIDTH; j++) {
			printf("%2X ", pixel_print[i][j].G);
		}
		cout << endl;
	}

	for(int i = 0; i < MAX_HEIGHT; i++) {
		for (int j = 0; j < MAX_WIDTH; j++) {
			printf("%2X ", pixel_print[i][j].B);
		}
		cout << endl;
	}

}


