This is modified version of HLS implementation for k-means clustering algorithm.
If you want to run the whole implementation,
    please make new directory inside Vitis_Libraries-master\data_analytics\L2\tests\clustering\

File description
K-means/
    kernel/
        config.hpp          - configuration file
        kernel.cpp          - k-means kernel
    host/
        dwtcoef1000.hpp     - input data
        eval.hpp            - support function
        main.cpp            - host program
    conn_u50.cfg
    conn_u250.cfg
    description.json
    Makefile
    utils.mk
    xrt.cfg
    xrt.ini
    summary.csv             - Resource/Timing report
    xrt.run_summary         - XRT report
    README                  - readme
