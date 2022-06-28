# revise code from zynq_design_text.c into python form
# this target to test interrupt of HLS
# replace design flow from SDK (2020) to Overlay

# coding: utf-8

# system print function
from __future__ import print_function
import sys

sys.path.append('/home/xilinx/jupyter_notebooks')

import pynq
from pynq import Overlay
from pynq import allocate

from time import time
import asyncio                      # replace for interrupt
loop = asyncio.get_event_loop()     # create background thread

if __name__ == "__main__":
    print("Entry:", sys.argv[0])
    print("System argument(s):", len(sys.argv))

    print("Start of \"" + sys.argv[0] + "\"")
    # revised to my folder----- link bit file
    ol = Overlay("/home/xilinx/jupyter_notebooks/107012045/design_1_wrapper.bit")

    hls_maccIP = ol.hls_macc_0
    print("Interrupt:", hls_maccIP._interrupts)
    hls_maccINTRPT = hls_maccIP.interrupt

    # set up input
    a = 2
    b = 21

    hls_maccIP.write(0x10, a)                   # argument *a
    hls_maccIP.write(0x18, b)                   # argument *b
    hls_maccIP.write(0x30, 1)                   # argument *accum

    hls_maccIP.write(0x00, 0x01)

    async def waitForInterrupt():               # async fun. "coroutine" event
        timeWaitStart = time()                  # define start timer
        await hls_maccINTRPT.wait()
        timeWaitEnd = time()                    # set end time
        print("Wait time: " + str(timeWaitEnd - timeWaitStart) + " s")
        hls_maccINTRPT.clear()

    if False:                                   # use interrupt
        loop.run_until_complete(waitForInterrupt())

    res_hw = hls_maccIP.read(0x20)                  # out data
    print("Results: " + str(a) + " * " + str(b) + " = " + str(res_hw))

    res_sw = a * b
    if res_hw == res_sw:                        # co-sim compare RTL and C
        print("*** SW/HW MATCH ***")
    else:
        print("!!! MISMATCH !!!")