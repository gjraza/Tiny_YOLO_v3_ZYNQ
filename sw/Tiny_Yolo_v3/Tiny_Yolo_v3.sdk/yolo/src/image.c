/*
 * image.c
 *
 *  Created on: Mar 28, 2019
 *      Author: xavier
 */

#include "image.h"
#include "input_image.h"

//#include "input_image.h"

image make_empty_image(int w, int h, int c)
{
    image out;
    out.data = 0;
    out.h = h;
    out.w = w;
    out.c = c;
    return out;
}

image make_image(int w, int h, int c)
{
    image out = make_empty_image(w,h,c);
    out.data = calloc(w*h*c, sizeof(float));
    return out;
}

//static float get_pixel(image m, int x, int y, int c)
//{
//    return m.data[c*m.h*m.w + y*m.w + x];
//}
//
//static void set_pixel(image m, int x, int y, int c, float val)
//{
//    if (x < 0 || y < 0 || c < 0 || x >= m.w || y >= m.h || c >= m.c) return;
//    m.data[c*m.h*m.w + y*m.w + x] = val;
//}
//static void add_pixel(image m, int x, int y, int c, float val)
//{
//    m.data[c*m.h*m.w + y*m.w + x] += val;
//}
//
//void fill_image(image m, float s)
//{
//    int i;
//    for(i = 0; i < m.h*m.w*m.c; ++i) m.data[i] = s;
//}
//
//void embed_image(image source, image dest, int dx, int dy)
//{
//    int x,y,k;
//    for(k = 0; k < source.c; ++k){
//        for(y = 0; y < source.h; ++y){
//            for(x = 0; x < source.w; ++x){
//                float val = get_pixel(source, x,y,k);
//                set_pixel(dest, dx+x, dy+y, k, val);
//            }
//        }
//    }
//}

void free_image(image m)
{
    if(m.data){
        free(m.data);
    }
}


//image load_image_stb(int channels)
//{
//    int w, h, c;
//    w = InputImage_w;
//    h = InputImage_h;
//    c = InputImage_c;
//
//    //unsigned char *data = stbi_load(filename, &w, &h, &c, channels);
//    //if (!data) {
//    //    fprintf(stderr, "Cannot load image \"%s\"\nSTB Reason: %s\n", filename, stbi_failure_reason());
//    //    exit(0);
//    //}
//    if(channels) c = channels;
//    int i,j,k;
//    image im = make_image(w, h, c);
//    for(k = 0; k < c; ++k){
//        for(j = 0; j < h; ++j){
//            for(i = 0; i < w; ++i){
//                int dst_index = i + w*j + w*h*k;
//                //int src_index = k + c*i + c*w*j;
//                im.data[dst_index] = InputImage[dst_index];
//            }
//        }
//    }
//    //free(data);
//    return im;
//}

//image load_image(int w, int h, int c)
//{
//    image out = load_image_stb(c);
//
//    //if((h && w) && (h != out.h || w != out.w)){
//    //    image resized = resize_image(out, w, h);
//    //    free_image(out);
//    //    out = resized;
//    //}
//    return out;
//}
//
//image load_image_color(int w, int h)
//{
//    return load_image(w, h, 3);
//}

//image resize_image(image im, int w, int h)
//{
//    image resized = make_image(w, h, im.c);
//    image part = make_image(w, im.h, im.c);
//    int r, c, k;
//    float w_scale = (float)(im.w - 1) / (w - 1);
//    float h_scale = (float)(im.h - 1) / (h - 1);
//    for(k = 0; k < im.c; ++k){
//        for(r = 0; r < im.h; ++r){
//            for(c = 0; c < w; ++c){
//                float val = 0;
//                if(c == w-1 || im.w == 1){
//                    val = get_pixel(im, im.w-1, r, k);
//                } else {
//                    float sx = c*w_scale;
//                    int ix = (int) sx;
//                    float dx = sx - ix;
//                    val = (1 - dx) * get_pixel(im, ix, r, k) + dx * get_pixel(im, ix+1, r, k);
//                }
//                set_pixel(part, c, r, k, val);
//            }
//        }
//    }
//    for(k = 0; k < im.c; ++k){
//        for(r = 0; r < h; ++r){
//            float sy = r*h_scale;
//            int iy = (int) sy;
//            float dy = sy - iy;
//            for(c = 0; c < w; ++c){
//                float val = (1-dy) * get_pixel(part, c, iy, k);
//                set_pixel(resized, c, r, k, val);
//            }
//            if(r == h-1 || im.h == 1) continue;
//            for(c = 0; c < w; ++c){
//                float val = dy * get_pixel(part, c, iy+1, k);
//                add_pixel(resized, c, r, k, val);
//            }
//        }
//    }
//
//    free_image(part);
//    return resized;
//}


//image letterbox_image(image im, int w, int h)
//{
//    int new_w = im.w;
//    int new_h = im.h;
//    if (((float)w/im.w) < ((float)h/im.h)) {
//        new_w = w;
//        new_h = (im.h * w)/im.w;
//    } else {
//        new_h = h;
//        new_w = (im.w * h)/im.h;
//    }
//    image resized = resize_image(im, new_w, new_h);
//    image boxed = make_image(w, h, im.c);
//    fill_image(boxed, .5);
//    //int i;
//    //for(i = 0; i < boxed.w*boxed.h*boxed.c; ++i) boxed.data[i] = 0;
//    embed_image(resized, boxed, (w-new_w)/2, (h-new_h)/2);
//    free_image(resized);
//    return boxed;
//}

void draw_detections(int w, int h, detection *dets, int num, float thresh, char **names, int classes)
{
    int i,j;

    for(i = 0; i < num; ++i){
        char labelstr[4096] = {0};
        int class = -1;
        for(j = 0; j < classes; ++j){
            if (dets[i].prob[j] > thresh){
                if (class < 0) {
                    strcat(labelstr, names[j]);
                    class = j;
                } else {
                    strcat(labelstr, ", ");
                    strcat(labelstr, names[j]);
                }
                fprintf(stderr, "%s: %.0f%%", names[j], dets[i].prob[j]*100);
            }
        }
        if(class >= 0){
            //int width = h * .006;

            /*
               if(0){
               width = pow(prob, 1./2.)*10+1;
               alphabet = 0;
               }
             */

            //printf("%d %s: %.0f%%\n", i, names[class], prob*100);
//            int offset = class*123457 % classes;
//            float red = get_color(2,offset,classes);
//            float green = get_color(1,offset,classes);
//            float blue = get_color(0,offset,classes);
//            float rgb[3];
//
//            //width = prob*20+2;
//
//            rgb[0] = red;
//            rgb[1] = green;
//            rgb[2] = blue;
            box b = dets[i].bbox;
            //printf("%f %f %f %f\n", b.x, b.y, b.w, b.h);

            int left  = (b.x-b.w/2.)*w;
            int right = (b.x+b.w/2.)*w;
            int top   = (b.y-b.h/2.)*h;
            int bot   = (b.y+b.h/2.)*h;

            if(left < 0) left = 0;
            if(right > w-1) right = w-1;
            if(top < 0) top = 0;
            if(bot > h-1) bot = h-1;

            fprintf(stderr, "  (l:%d,r:%d,t:%d,b:%d)\n", left,right,top,bot);

//            draw_box_width(im, left, top, right, bot, width, red, green, blue);
//            if (alphabet) {
//                image label = get_label(alphabet, labelstr, (im.h*.03));
//                draw_label(im, top + width, left, label, rgb);
//                free_image(label);
//            }
//            if (dets[i].mask){
//                image mask = float_to_image(14, 14, 1, dets[i].mask);
//                image resized_mask = resize_image(mask, b.w*im.w, b.h*im.h);
//                image tmask = threshold_image(resized_mask, .5);
//                embed_image(tmask, im, left, top);
//                free_image(mask);
//                free_image(resized_mask);
//                free_image(tmask);
//            }
        }
    }
}

image load_image_data(int *w, int *h)
{
	image im = make_image(sized_w, sized_h, 3);
	*w = im_w;
	*h = im_h;
	for(int k = 0; k < 3; ++k){
		for(int j = 0; j < sized_h; ++j){
		    	for(int i = 0; i < sized_w; ++i){
					int dst_index = i + sized_w*j + sized_w*sized_h*k;
					im.data[dst_index] = SizedData[dst_index];
			}
		}
	}
	return im;
}

