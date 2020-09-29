# ZedBoard Software Repository

This repository contains Vitis workspaces for all software demos for the ZedBoard.

For more information about the ZedBoard, visit its [Resource Center](https://reference.digilentinc.com/reference/programmable-logic/ZedBoard/start) on the Digilent Wiki.

Each demo contained in this repository is documented on the Digilent Wiki, links in the table below.

| Name and Wiki Link | Description |
|--------------------|-------------|
| [ZedBoard OLED](https://reference.digilentinc.com/learn/programmable-logic/tutorials/zedboard-oled-demo) | Demonstrates the usage of the Zedboard's OLED Display. |
| [ZedBoard FMC Pcam Adapter](https://reference.digilentinc.com/learn/programmable-logic/tutorials/zedboard-fmc-pcam-adapter-demo) | Demonstrates the usage of the FMC Pcam Adapter as an interface from one up to four different Pcam cameras and the ZedBoard platform. |
| [ZedBoard Pmod DA1]() | Demonstrates the usage of the PmodDA1 module in linux together with a ZedBoard. |
| [ZedBoard Pmod OLEDrgb]() | Demonstrates the usage of the PmodOLEDrgb module in linux together with a ZedBoard. |

## Repository Description

This repository contains the Vitis workspace and software sources for all of the software demos that we provide for the ZedBoard. As each of these demos also requires a hardware design contained in a Vivado project, this repository should not be used directly. The [ZedBoard](https://github.com/Digilent/ZedBoard) repository contains all sources for these demos across all tools, and pulls in all of this repository's sources by using it as a submodule.

For instructions on how to use this repository with git, and for additional documentation on the submodule and branch structures used, please visit [Digilent FPGA Demo Git Repositories](https://reference.digilentinc.com/reference/programmable-logic/documents/git) on the Digilent Wiki. Note that use of git is not required to use this demo. Digilent recommends the use of project releases, for which instructions can be found in each demo wiki page, linked in the table of demos, above.

Demos were moved into this repository during 2020.1 updates. History of these demos prior to these updates can be found in their old repositories, linked below:
* https://github.com/Digilent/Zedboard-OLED
* https://github.com/Digilent/ZedBoard-FMC-Pcam-Adapter-DEMO

