## Test environments
* local Manjaro KDE install, R 4.4.2
* R-hub (configurations: "linux", "macos", "macos-arm64", "windows")
* win-builder (release, oldrelease, devel)
* mac-builder


## R CMD check results

### local
0 errors | 0 warnings | 0 notes

### R-hub
0 errors | 0 warnings | 0 notes | 1 info
* checking Rd cross-references ... INFO
Packages unavailable to check Rd xrefs: ‘airway’, ‘fdrDiscreteNull’

These packages seem to be missing on rhub (first is from BioConductor, second
depends on a Bioconductor package).

### win-builder
0 errors | 0 warnings | 0 notes

### mac-builder
0 errors | 0 warnings | 1 note
* checking Rd cross-references ... NOTE
Package unavailable to check Rd xrefs: ‘airway’

This package seems to be missing on rhub (it is from BioConductor).
