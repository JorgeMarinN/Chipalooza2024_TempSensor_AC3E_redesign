v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2950 -290 2950 -270 { lab=GND}
N 2950 -400 2950 -350 { lab=#net1}
N 2950 -400 3060 -400 {
lab=#net1}
N 3060 -340 3060 -280 {
lab=GND}
N 2950 -280 3060 -280 {
lab=GND}
N 3020 -370 3040 -370 {
lab=GND}
N 3020 -370 3020 -330 {
lab=GND}
N 3020 -330 3060 -330 {
lab=GND}
C {sky130_fd_pr/res_iso_pw.sym} 3060 -370 0 0 {name=R3
rho=3050
W=180
L=30.5
model=res_iso_pw
spiceprefix=X
mult=1}
C {devices/vsource.sym} 2950 -320 0 0 {name=V1 value=1}
C {devices/gnd.sym} 2950 -270 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 3220 -440 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/combined/sky130.lib.spice tt
.control
save all
dc v1 0 1.8 0.01
plot i(v1)
.endc
"}
