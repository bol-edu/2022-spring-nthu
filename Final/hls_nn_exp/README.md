# HLS_final_project
# hls_nn_exp
This repository shows experiment on kernel integration of customized or off-shelf kernel, targeting NN classifier

Project content overview 
```
├── prototype/
│   └── pynq-z2/                          # prototyping for pynq-z2 FPGA board
│       ├── execute_cv2_video.ipynb       # jupyter notebook for the host program, used for demo
│       └── font_256.png                  # font image 
├── IPs/
│   ├── org_xf_resize_accel_stream.cpp    # official PYNQ resize example
│   ├── stream.hpp                        # common header of following code 
│   ├── stream8rto8.cpp                   # 8-raw to 8 stream conversion 
│   ├── stream8x2.cpp                     # 8x2-stream duplicator 
│   ├── windex.cpp                        # word generator Part-1: generate index-based string for a word
│   ├── wgen_raw.cpp                      # word generator Part-2: create word image based on index string 
│   └── wgen_mix.cpp                      # word generator Part-3: blend word image and background image

```
