# Fusion Pore Nucleation and Expansion with PLUMED CV

Installation:
- Clone the [PLUMED 2 Development Version](https://github.com/plumed/plumed2.git).
- [Install PLUMED](https://www.plumed.org/doc-v2.8/user-doc/html/_installation.html) with **membranefusion** module enabled. You can activate it at configure time using the keyword --enable-modules=membranefusion
- Download and install [GROMACS](https://manual.gromacs.org/documentation/).
- [Patch](https://www.plumed.org/doc-v2.8/user-doc/html/_installation.html#Patching) GROMACS with PLUMED.
- Reinstall the patched GROMACS.

Example folder contains all files needed for MD to nucleate and expand a fusion pore with two Syt1-C2B domain.
