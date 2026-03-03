# DiscreteDatasets 0.2.0

* Added `impc2015_excerpt` dataset (partly contributed by Iqraa Meah).
* Replaced `airway` by former `airway_treat` and removed the latter due to
  package size restrictions. The removed ("full") data can easily be extracted
  from BioConductor's(!) `airway` package (via `as.data.frame(assay(airway))`).
* Use Markdown for documentation with `roxygen2` package.


# DiscreteDatasets 0.1.2

* Added `federalist` dataset (contributed by Lukas Klein).


# DiscreteDatasets 0.1.1

* Documentation corrections, no code changes.


# DiscreteDatasets 0.1.0

* Initial release.
* Added a `NEWS.md` file to track changes to the package.
* Added GitHub.
