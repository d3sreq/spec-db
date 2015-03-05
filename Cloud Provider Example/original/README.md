Cloud Provider Example
======================

Directory contains case study of the hypothetical PaaS provider.

Contents:
* provider-model - domain model of the provider's system in ecore format. Download http://eclipse.org/downloads/packages/eclipse-modeling-tools/lunasr2 to open the project and view the model/diagram.
* provider-use-cases - use cases in format suitable for FOAM tool (https://github.com/d3sreq/foam-tool).
	* system-correct - provider's system before refactoring
	* error* - errors introduced during refactoring of the system.
* tadl-shared - TADL templates used for FOAM verification.

Running FOAM tool verification
==============================

1. Install NuSMV from http://nusmv.fbk.eu/. Make sure that the NuSMV binary is on the PATH (tested with version 2.5.4 without ZCHAFF).
2. Install graphviz (available at http://www.graphviz.org/, but most linux distributions have graphviz in their package repository; tested with the version 2.36.0).
3. run ```./gradlew``` (or ```gradlew.bat``` on Windows).
4. Directories ```provider-use-cases/*/out``` contain generated reports from FOAM tool.

The generated output is also saved in the ```../generated/``` directory.
