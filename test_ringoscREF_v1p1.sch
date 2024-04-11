v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -10 270 10 { lab=GND}
N 270 -70 360 -70 { lab=VDD}
N 40 -10 40 10 { lab=GND}
N 40 -70 130 -70 { lab=VSS}
N 990 -10 1050 -10 { lab=N1_R}
N 990 30 1050 30 { lab=N2}
N 930 -90 930 -50 { lab=VDD}
N 830 30 870 30 { lab=REF_IN}
N 790 -120 790 -80 { lab=VDD}
N 810 -120 810 -70 { lab=VDD}
N 790 -40 790 0 { lab=VSS}
N 850 -60 850 -10 { lab=#net1}
N 750 -60 790 -60 { lab=REF_IN}
N 750 30 830 30 { lab=REF_IN}
N 790 -120 810 -120 { lab=VDD}
N 830 -60 850 -60 { lab=#net1}
N 850 -10 870 -10 { lab=#net1}
N 930 70 930 110 { lab=VSS}
N 750 -60 750 30 { lab=REF_IN}
N 990 40 1050 40 { lab=N3_R}
N 710 30 750 30 { lab=REF_IN}
N 640 30 710 30 { lab=REF_IN}
N 640 110 810 110 { lab=N3_R}
N 640 10 640 30 { lab=REF_IN}
N 600 -20 620 -20 { lab=REF_IN}
N 600 -20 600 20 { lab=REF_IN}
N 600 20 640 20 { lab=REF_IN}
N 570 110 640 110 { lab=N3_R}
N 480 -50 480 110 { lab=N3_R}
N 570 -50 640 -50 { lab=N3_R}
N 480 110 570 110 { lab=N3_R}
N 480 -50 570 -50 { lab=N3_R}
C {devices/code_shown.sym} 50 -470 0 0 {name=SPICE only_toplevel=false value="*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param VDD = 1.6
.ic v(REF_IN) = 1.8
.option temp = 75
.save v(N2) v(N3_R)
.control
  tran 0.05n 10u
*plot tran1.v(N2) tran2.v(N2) tran3.v(N2) tran4.v(N2) tran5.v(N2) tran6.v(N2) tran7.v(N2) tran8.v(N2) tran9.v(N2) tran10.v(N2) tran11.v(N2)
wrdata data_ringoscREF_v1p1.txt tran1.v(N2) 
.endc"}
C {devices/vsource.sym} 270 -40 0 0 {name=V2 value=VDD}
C {devices/gnd.sym} 270 10 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 360 -70 2 0 {name=l9 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 40 -40 0 0 {name=V1 value=0}
C {devices/gnd.sym} 40 10 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 130 -70 2 0 {name=l4 sig_type=std_logic lab=VSS}
C {devices/code.sym} 1140 -500 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {OSC_v7p1.sym} 810 10 0 0 {name=XOSC_REF}
C {devices/lab_pin.sym} 1050 -10 2 0 {name=l11 sig_type=std_logic lab=N1_R}
C {devices/lab_pin.sym} 930 -90 0 0 {name=l14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 730 30 3 0 {name=l1 sig_type=std_logic lab=REF_IN}
C {PASSGATE_v1p2.sym} 790 -60 0 0 {name=XPG1}
C {devices/lab_pin.sym} 790 -120 0 0 {name=l2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 790 0 0 0 {name=l5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 930 110 0 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1050 40 2 0 {name=l13 sig_type=std_logic lab=N3_R}
C {sky130_fd_pr/res_high_po_5p73.sym} 640 -20 0 0 {name=R1
W=5.73
L=8
model=res_high_po_5p73
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 810 110 2 0 {name=l7 sig_type=std_logic lab=N3_R}
C {devices/lab_pin.sym} 1050 30 2 0 {name=l6 sig_type=std_logic lab=N2}
