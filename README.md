spec-db
=======

An open-source database of requirements specifications for research purposes


What should be included
=======================
* textual use-cases
* uml/emf models
* high-level requirements
* simple scripts
	* for generating simple reports
	* for running basic consistency checks


Directory structure
===================
* Top-level directories represent individual projects
* Each project contains "original", "derived" and "generated" subdirs
	* **original**  : contains original artefacts, such as PDF, ODT, DOC, HTML files ...
	* **derived**   : contains artefacts derived from the original artefacts, usually by hand. These can be used for further machine processing
	* **generated** : artefact created using automated processing. These can be various reports, tables, graphs ...


Future work
===========
* "build system" based on gradle or just a simple makefile
* more specifications (More POWER, Igor!)
