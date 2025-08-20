---
title: 'Place-based, culturally relevant indigenous environmental data science modules' 

tags:
  - R
  - ecology 
  - environmental science 
  - natural resources management 
  - tribal lands 
  - tribal colleges 
  - data visualization

authors:
  - name: 'Rachel Torres'
    affiliation: '1'
  - name: 'Georgia Smies'
    affiliation: '2'
  - name: 'Jason McLachlan'
    affiliation: '3'
  - name: 'Sean Dorr'
    affiliation: '4'

    
affiliations:
  - name: 'California State Polytechnic Humboldt'
    index: '1'
  - name: 'Salish Kootenai College'
    index: '2'
  - name: 'University of Notre Dame'
    index: '3'
  - name: 'University of Minnesota'
    index: '4'


date: "July 2025"
bibliography: references.bib
---

# Summary

Four modules were created for teaching and learning introductory environmental data science in R for a course at a tribal college in Montana. Each module is a community centered example of an environmental issue a tribal natural resource manager in that area might encounter. The content includes R markdown scripts that contain a combination of pre-written code, discussion questions, and prompts to write your own code. It is ready to be used for any self-learners, or for an instructor to modify and use in a course.

# Story

Salish Kootenai College is a tribal college located in Northwest Montana.  Over 63 tribes are represented among the student body and the data science needs of tribal Wildlife and Fisheries Managers are unique.  For instance, tribal managers collect environmental monitoring data in a manner identical to their State counterparts.  However, unlike State and Federal agencies, Tribes also manage their lands with respect to cultural interests.  These interests address Traditional Ecological Knowledge and Values (TEK/TEV) that can include native language, traditional hunting, gathering, and spiritual practices.  TEK data is held within the Tribe and is protected by data sovereignty.  Non TEK data can be shared with Federal agencies like the Environmental Protection Agency (EPA).  The analysis of Tribal data necessitates an understanding of both western science and TEK driven analysis. 

In 2021, the college's Wildlife and Fisheries Department began teaching an Introduction to R statistical analysis course to help tribal students use R software to evaluate datasets commonly managed by tribal environmental programs.  At the time, existing textbooks and online teaching tools did not include content that addressed the unique data science approaches needed by Tribes. To bridge the gap in instruction, data scientists at the University of Notre Dame partnered with SKC educators to develop R data analysis modules tailored to Tribal data management needs.Our collaboration required relationship building and communication above all, in order to fulfill the needs and desires for the course, with Native students as the core focus audience.

# Statement of Need:

This project was created to support Native American students in learning data analysis in R for environmental management. Despite tribal land taking up a significant amount of the nation’s land, and cultural and spiritual connections to land, Native Americans are severely underrepresented in natural resources and environmental fields [@alexiades_traditional_2021]. In addition, tribal data sovereignty includes the entire data science cycle, from collection to analysis, and the ‘right to use’ which includes the provision of necessary skills training [@hudson_indigenous_2023]. To support Indigenous data sovereignty, and prepare students for the growing career opportunities in tribal and governmental land management [@dockry_building_2018], there is a need to train more Native students in environmental data science. The modules are set up to solve problems and consider the implications of the data analysis using knowledge of the local environment and experiences in communities relating to the land. 

This content can be used by other instructors or learners that want an introduction to R with the context of tribal land and water management in the Western United States. It is an example of data science teaching material that is place-based and relating to local tribal communities. It  requires no prior knowledge of R or coding, however, it assumes a basic understanding of ecology.

# Experience of use

-   The story behind the fictional tribe used in the modules, and content on water quality data, was originally developed for day-long workshops at two conferences where the majority of students attending identified as Native American: The Geoscience Alliance in 2022 and the American Indian Higher Education Consortium (AIHEC) Annual Meeting in 2024.

-   Modules 1-3 were used as labs in a lower-division 'Introduction to R' Statistics course in the Wildlife and Fisheries Department at Salish Kootenai College, during Winter quarter 2024 and 2025. The class met for 2 hours a week over the course of a 10 quarter. At the beginning of each meeting there was instruction and discussion about the story in the module, followed by the second half of class where students worked collaboratively in R. At times, the beginning of sessions took an hour to support students in downloading files, importing data, and understanding the syntax of R. In 2025 they moved to JupyterHub which shortened the startup time. Students were also given weekly homework assignments relating to parts of the modules to provide more practice time. 

-   Module 4 has not been used for the lab in the SKC course, but was adjusted for use as a final exam. It is also being prepared for use in a workshop on Introduction to data visualization in R at Cal Poly Humboldt.

# Description of modules

This content is inspired by real-world experiences working with tribes on environmental data analysis for management decisions. Each module contains an environmental management case study related to the area and the community, a fictional tribe called the K’avi. They are fictional to avoid putting a focus on any Indigenous groups. The location is also fictional, but representative of a place with ample surface water and a high elevation stream network fed by glaciers. All data used is 'dummy' data created for learning R, based on available data in the area and empirical relationships. Students can use all the analyses conducted (summary statistics, scatter plots, and time series plots) to make recommendations about management of water resources, wildlife, and ecology on tribal lands. 

The material is scaffolded so that the content for each module repeats functions and builds on the previous module. It is set up like this to build student confidence with repetition, and to show a general workflow for data analysis with different examples of datasets. The steps in the workflow include: 

1.  Installing and loading R packages
2.  Loading CSV data into R, preview and inspect the data frame
3.  Functions for summary statistics (summary, mean, min, max)
4.  Creating exploratory plots with ggplot: including boxplots, scatter plots, time series
5.  Manipulating data to make it easier to work with and plot: 7. including ‘wrangling’, merging dataframes, grouping and aggregating
6.  Creating plots for sharing data and making decisions

There are four modules, each with learning objectives related to the case study:

1.  **Fisheries**: Fishery managers have collected data on fish length and mercury concentrations from local water bodies that the tribe have historically relied on for fishing. Concerned about community health, the goal of this module is to explore and summarize the data, create plots, and consider whether mercury concentrations are within safety thresholds.

2.  **Water quality**: Bull trout, a culturally important species native to the U.S. Northwest and Canadian Rockies, thrive in cold and clean water, but are threatened by warming temperatures and pollution. In this module, water quality data is explored for suitability of bull trout habitat, using stream temperature and dissolved oxygen (DO) from two stream sites.

3.  **Bison reintroduction**: Tribal agriculture managers are considering reintroducing bison to the lands for both ecological and cultural reasons. Reclaiming cattle grazing land as bison grazing land would create more sustainable agricultural practices for the region and ensure the preservation of native grasslands. Managers are considering three sites for bison reintroduction based on annual plant biomass, which are compared in this module.

4.  **Forest management**: Forest managers have collected data on forest productivity for a Douglas fir forest, and are considering which site is best suited for management and harvesting for lumber.

# Acknowledgements

This work is supported by funding from the Alfred P. Sloan Foundation.

-   Source code: <https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main>
-   Website: <https://indigenousenvdatasci.github.io/intro.html>

# References
