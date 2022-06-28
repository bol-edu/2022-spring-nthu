
################################################################
# This is a generated script based on design: StreamingDataflowPartition_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source StreamingDataflowPartition_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name StreamingDataflowPartition_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_8
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_8 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_8() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_8, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_8 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_8:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_8 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {1024} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_pti02s77/} \
   CONFIG.MEM_WIDTH {8} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {1024} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {8} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_7
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_7 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_7() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_7, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_7 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_7:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_7 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {32768} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_xs5d2uis/} \
   CONFIG.MEM_WIDTH {8} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {32768} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {8} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_6
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_6 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_6() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_6, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_6:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_6 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {32768} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_dl_v0rnd/} \
   CONFIG.MEM_WIDTH {8} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {32768} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {8} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_5
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_5 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_5() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_5, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_5:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_5 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {36864} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_xarv85n1/} \
   CONFIG.MEM_WIDTH {16} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {36864} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {16} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_4
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_4 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_4() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_4, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_4:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_4 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {4608} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_t3s34udo/} \
   CONFIG.MEM_WIDTH {64} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {4608} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {64} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_3
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_3 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_3() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_3, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_3:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_3 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {576} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_3__u8l5m1b/} \
   CONFIG.MEM_WIDTH {256} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {576} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {256} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_2
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_2 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_2() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_2, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_2:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_2 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {288} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_vsby_qo2/} \
   CONFIG.MEM_WIDTH {256} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {288} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {256} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_1
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_1, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_1:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_1 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {72} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_rlyb3f5l/} \
   CONFIG.MEM_WIDTH {512} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {72} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {512} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StreamingDataflowPartition_1_StreamingFCLayer_Batch_0
proc create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 in0_V_V

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 out_V_V


  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_0, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFCLayer_Batch_0:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_0 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm, and set properties
  set StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm [ create_bd_cell -type ip -vlnv xilinx.com:user:memstream:1.0 StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm ]
  set_property -dict [ list \
   CONFIG.MEM_DEPTH {36} \
   CONFIG.MEM_INIT {/mnt/HLSNAS/nthu02/FINN_vision/finn/build/dir/code_gen_ipgen_StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_kid44056/} \
   CONFIG.MEM_WIDTH {48} \
   CONFIG.NSTREAMS {1} \
   CONFIG.RAM_STYLE {auto} \
   CONFIG.STRM0_DEPTH {36} \
   CONFIG.STRM0_OFFSET {0} \
   CONFIG.STRM0_WIDTH {48} \
 ] $StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_out_V_V [get_bd_intf_pins out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm_m_axis_0 [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/weights_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm/m_axis_0]
  connect_bd_intf_net -intf_net in0_V_V_1 [get_bd_intf_pins in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_wstrm/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000.000000} \
   ] $m_axis_0

  set s_axis_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000.000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_0


  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk -freq_hz 100000000.000000 ap_clk ]
  set ap_rst_n [ create_bd_port -dir I -type rst ap_rst_n ]

  # Create instance: StreamingDataflowPartition_1_ConvolutionInputGenerator_0, and set properties
  set StreamingDataflowPartition_1_ConvolutionInputGenerator_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_ConvolutionInputGenerator_0:1.0 StreamingDataflowPartition_1_ConvolutionInputGenerator_0 ]

  # Create instance: StreamingDataflowPartition_1_ConvolutionInputGenerator_1, and set properties
  set StreamingDataflowPartition_1_ConvolutionInputGenerator_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_ConvolutionInputGenerator_1:1.0 StreamingDataflowPartition_1_ConvolutionInputGenerator_1 ]

  # Create instance: StreamingDataflowPartition_1_ConvolutionInputGenerator_2, and set properties
  set StreamingDataflowPartition_1_ConvolutionInputGenerator_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_ConvolutionInputGenerator_2:1.0 StreamingDataflowPartition_1_ConvolutionInputGenerator_2 ]

  # Create instance: StreamingDataflowPartition_1_ConvolutionInputGenerator_3, and set properties
  set StreamingDataflowPartition_1_ConvolutionInputGenerator_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_ConvolutionInputGenerator_3:1.0 StreamingDataflowPartition_1_ConvolutionInputGenerator_3 ]

  # Create instance: StreamingDataflowPartition_1_ConvolutionInputGenerator_4, and set properties
  set StreamingDataflowPartition_1_ConvolutionInputGenerator_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_ConvolutionInputGenerator_4:1.0 StreamingDataflowPartition_1_ConvolutionInputGenerator_4 ]

  # Create instance: StreamingDataflowPartition_1_ConvolutionInputGenerator_5, and set properties
  set StreamingDataflowPartition_1_ConvolutionInputGenerator_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_ConvolutionInputGenerator_5:1.0 StreamingDataflowPartition_1_ConvolutionInputGenerator_5 ]

  # Create instance: StreamingDataflowPartition_1_LabelSelect_Batch_0, and set properties
  set StreamingDataflowPartition_1_LabelSelect_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_LabelSelect_Batch_0:1.0 StreamingDataflowPartition_1_LabelSelect_Batch_0 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7 ]

  # Create instance: StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8, and set properties
  set StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8:1.0 StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_0
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_0 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_0

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_1
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_1 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_1

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_2
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_2 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_2

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_3
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_3 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_3

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_4
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_4 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_4

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_5
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_5 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_5

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_6
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_6 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_6

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_7
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_7 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_7

  # Create instance: StreamingDataflowPartition_1_StreamingFCLayer_Batch_8
  create_hier_cell_StreamingDataflowPartition_1_StreamingFCLayer_Batch_8 [current_bd_instance .] StreamingDataflowPartition_1_StreamingFCLayer_Batch_8

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_0, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_0:1.0 StreamingDataflowPartition_1_StreamingFIFO_0 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_1, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_1:1.0 StreamingDataflowPartition_1_StreamingFIFO_1 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_2, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_2:1.0 StreamingDataflowPartition_1_StreamingFIFO_2 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_3, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_3:1.0 StreamingDataflowPartition_1_StreamingFIFO_3 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_4, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_4 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_4:1.0 StreamingDataflowPartition_1_StreamingFIFO_4 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_5, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_5 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_5:1.0 StreamingDataflowPartition_1_StreamingFIFO_5 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_6, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_6 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_6:1.0 StreamingDataflowPartition_1_StreamingFIFO_6 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_7, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_7 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_7:1.0 StreamingDataflowPartition_1_StreamingFIFO_7 ]

  # Create instance: StreamingDataflowPartition_1_StreamingFIFO_8, and set properties
  set StreamingDataflowPartition_1_StreamingFIFO_8 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingFIFO_8:1.0 StreamingDataflowPartition_1_StreamingFIFO_8 ]

  # Create instance: StreamingDataflowPartition_1_StreamingMaxPool_Batch_0, and set properties
  set StreamingDataflowPartition_1_StreamingMaxPool_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingMaxPool_Batch_0:1.0 StreamingDataflowPartition_1_StreamingMaxPool_Batch_0 ]

  # Create instance: StreamingDataflowPartition_1_StreamingMaxPool_Batch_1, and set properties
  set StreamingDataflowPartition_1_StreamingMaxPool_Batch_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_StreamingMaxPool_Batch_1:1.0 StreamingDataflowPartition_1_StreamingMaxPool_Batch_1 ]

  # Create instance: StreamingDataflowPartition_1_Thresholding_Batch_0, and set properties
  set StreamingDataflowPartition_1_Thresholding_Batch_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingDataflowPartition_1_Thresholding_Batch_0:1.0 StreamingDataflowPartition_1_Thresholding_Batch_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_ConvolutionInputGenerator_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_0/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_1/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_ConvolutionInputGenerator_1_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_1/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_2/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_ConvolutionInputGenerator_2_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_2/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_3/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_ConvolutionInputGenerator_3_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_3/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_4/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_ConvolutionInputGenerator_4_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_4/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_5/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_ConvolutionInputGenerator_5_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_5/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_LabelSelect_Batch_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_LabelSelect_Batch_0/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_8/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_0/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_0/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_2/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_1/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_4/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_5/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_6/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_LabelSelect_Batch_0/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_1/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_1_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_2_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_3/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_3_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_4_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_5_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_6_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_7_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_7/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFCLayer_Batch_8_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_0/out_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_Thresholding_Batch_0/in0_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_1_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_2_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_2/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_3_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_3/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_4_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_4/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_5_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_5/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_6_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_6/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_7_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_7/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingFIFO_8_out_V_V [get_bd_intf_ports m_axis_0] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_8/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingMaxPool_Batch_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_StreamingMaxPool_Batch_1_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_1/out_V_V]
  connect_bd_intf_net -intf_net StreamingDataflowPartition_1_Thresholding_Batch_0_out_V_V [get_bd_intf_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/in0_V_V] [get_bd_intf_pins StreamingDataflowPartition_1_Thresholding_Batch_0/out_V_V]
  connect_bd_intf_net -intf_net in0_V_V_0_1 [get_bd_intf_ports s_axis_0] [get_bd_intf_pins StreamingDataflowPartition_1_StreamingFIFO_0/in0_V_V]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_1/ap_clk] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_2/ap_clk] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_3/ap_clk] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_4/ap_clk] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_5/ap_clk] [get_bd_pins StreamingDataflowPartition_1_LabelSelect_Batch_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_1/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_2/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_3/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_4/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_5/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_6/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_7/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_8/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_0/ap_clk] [get_bd_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_1/ap_clk] [get_bd_pins StreamingDataflowPartition_1_Thresholding_Batch_0/ap_clk]
  connect_bd_net -net ap_rst_n_0_1 [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_1/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_2/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_3/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_4/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_ConvolutionInputGenerator_5/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_LabelSelect_Batch_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_1/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_2/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_3/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_4/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_5/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_6/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_7/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingDataWidthConverter_Batch_8/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_1/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_2/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_3/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_4/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_5/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_6/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_7/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFCLayer_Batch_8/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_1/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_2/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_3/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_4/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_5/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_6/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_7/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingFIFO_8/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_0/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_StreamingMaxPool_Batch_1/ap_rst_n] [get_bd_pins StreamingDataflowPartition_1_Thresholding_Batch_0/ap_rst_n]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


