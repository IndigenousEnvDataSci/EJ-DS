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
  - name: 'Victoria Thompson' 
    affiliation: '5'

    
affiliations:
  - name: 'California State Polytechnic Humboldt'
    index: '1'
  - name: 'Salish Kootenai College'
    index: '2'
  - name: 'University of Notre Dame'
    index: '3'
  - name: 'University of Minnesota'
    index: '4'
  - name: 'Albert Einstein Distinguished Educator Fellowship | USGS'
    index: '5' 


date: "July 2025"
bibliography: references.bib
---

# Summary

Four modules were created for teaching and learning introductory environmental data science in R for a course at a Tribal college in Montana. Each module is a community centered example of an environmental issue a Tribal natural resource manager in that area might encounter. The content includes R markdown scripts that contain a combination of pre-written code, discussion questions, and prompts to write your own code. It is ready to be used for any self-learners, or for an instructor to modify and use in a course.

# Story

The EPA is the single biggest funder of Tribal water quality programs and Tribes often hire consultants because they do not have staff trained in data analysis. As a result, funds that should stay on the Reservation often flow outward and at greatly inflated costs. These modules are based on a course at Salish-Kootenai College, and aim to bridge the gap to train students in environmental data analysis. 

## EPA Reporting Requirements
The EPA has been coordinating with Tribal programs since 1973 to strengthen environmental protection of Tribal water, air, and land. Most Tribes developed their natural resource programs by focusing upon water quality programs first. As a result, many Tribes have at least 30 years of long-term monitoring data of Tribal surface waters. Datasets include chemical, physical, and biological parameters of water quality. The EPA has strict protocols that dictate how samples are collected, analyzed, and assessed. These protocols are summarized in a Quality Assurance Action Plan or QAPP that must be approved before funding is provided for annual monitoring efforts. The QAPP also specifies how data is to be stored, validated, and provides a reporting schedule that Tribes must follow. At a minimum, Tribes must submit annual assessment reports that describe the statistical trends of all monitored parameters. For instance, for each long-term monitoring location, the discharge, water temperature, dissolved oxygen, pH, specific conductance, turbidity, total suspended solids etc. must be analyzed to determine the minimum, mean (or median), and maximum values throughout the annual monitoring period. Chemical and biological data are similarly described. Typically, programs have small annual sample sizes (n<9) so more complex analysis is not possible. The EPA reviews the annual report as part of the funding criteria and makes suggestions to the Tribe as needed.

## Current problems with data analysis and reporting
Today, many Tribes have not analyzed their long-term datasets for trends because they lack the analysis capacity. This is a serious limitation, as there may not be awareness of environmental changes occurring within streams. Often, water quality program employees have frequent staff turnovers and long-term familiarity with streams and rivers is not ‘baked’ into the program. Tribes with decades of natural resources monitoring experience may lack the ability to communicate what they intrinsically understand because they lack the data analysis training. For instance, consultants who had experience working with Tribal natural resource programs observed that water temperature had increased by an average 6 degrees Fahrenheit since 2000. This finding coupled with Tribal fisheries data indicated water quality effects on changes in the local fishery. This provided powerful information for management decisions.

Further, Tribes do not have tools that allow them to evaluate their surface waters based upon what is important to them culturally and spiritually. The EPA asks only for quantitative analysis of measured parameters. Sites that have ‘good’ water quality based upon these parameters are given priority from a management perspective. This analysis does not address what many consider to be the 5 pillars of Traditional Ecological Knowledge (native language preservation, traditional food gathering, traditional medicine, cultural practices, spiritual practices, and some would add food sovereignty). As a result, Tribes do not have a means to communicate to the EPA what is important to them and sites that are important culturally may not be given the same protection as those that are assessed using only quantitative assessment of physical variables. In short, western scientific approaches fail to embrace the native world view.

In 2021, Salish-Kootenai College's Wildlife and Fisheries Department began teaching an Introduction to R statistical analysis course to help Tribal students use R software to evaluate datasets commonly managed by Tribal environmental programs. At the time, existing textbooks and online teaching tools did not include content that addressed the unique data science approaches needed by Tribes. To bridge the gap in instruction, data scientists at the University of Notre Dame partnered with Salish-Kootenai College educators to develop R data analysis modules tailored to Tribal data management needs. The modules are based on a fictional tribe called the K’avi. We needed the tribe to be fictional because we did not want to focus on any singular indigenous groups. The location is also fictional, but representative of a place with ample surface water, a high elevation stream network fed by glaciers with wetlands and a lake. Data is similar to data that has been collected in Western Montana, but for the purpose of these activities, we use ‘dummy’ data created for these modules.



# Statement of Need:

This project was created to support Native American students in learning data analysis in R for environmental management. R is a free software for statistical computing and graphics [@Rcite] that is commonly used in ecology and environmental sciences. Native Americans are severely underrepresented in these research fields, despite Tribal land taking up a significant amount of the nation’s land, and cultural and spiritual connections to land through TEK [@alexiades_traditional_2021]. Environmental data science education is also important in the context of Indigenous Data Sovereignty, which recognizes the right for Indigenous people to govern the collection, ownership, and application of their own data, including data on the land, water, and natural resources [@carroll_indigenous_2019]. Indigenous Data Sovereignty includes the entire data science cycle, from collection to analysis, and the ‘right to use’ with provision of necessary skills training [@hudson_indigenous_2023]. To support Indigenous Data Sovereignty, and prepare students for the growing career opportunities in Tribal and governmental land management [@dockry_building_2018], there is a need to train more Native students in environmental data science. These modules are set up to solve land management problems and consider the implications of data analysis using knowledge of the local environment and experiences in communities relating to the land. 

This content can be used by other instructors or learners that want an introduction to the programming language R with the context of Tribal land and water management in the Western United States. It is an example of data science teaching material that is place-based and relating to local Tribal communities. It  requires no prior knowledge of R or coding, however, it assumes a basic understanding of ecology.

# Experience of use

-   The story behind the fictional tribe used in the modules, and content on water quality data, was originally developed for day-long workshops at two conferences where the majority of students attending identified as Native American: The Geoscience Alliance in 2022 and the American Indian Higher Education Consortium (AIHEC) Annual Meeting in 2024.

-   Modules 1-3 were used as labs in a lower-division 'Introduction to R' statistics course in the Wildlife and Fisheries Department at Salish Kootenai College, during Winter quarter 2024 and 2025. The class met for 2 hours a week over the course of a 10 quarter. At the beginning of each meeting there was instruction and discussion about the story in the module, followed by the second half of class where students worked collaboratively in R. At times, the beginning of sessions took an hour to support students in downloading files, importing data, and understanding the syntax of R. In 2025 they moved to JupyterHub which shortened the startup time. Students were also given weekly homework assignments relating to parts of the modules to provide more practice time. 

-   Module 4 has not been used for a lab in the statistics course, but was adjusted for use as an exam. It was used in a data visualization workshop in R for a small group of undergraduate STEM students at Cal Poly Humboldt.

# Description of modules

Each module contains an environmental management case study related to natural resources and community. Students can use analyses conducted (summary statistics, scatter plots, and time series plots) to make recommendations about management of water resources, wildlife, and ecology on Tribal lands. 
The material is scaffolded so that the content for each module repeats functions and builds on the previous module, to build student confidence with repetition. The workflow for data analysis is focused on using functions from the tidyverse package in R [@tidyverse_2019].

There are four modules, each with learning objectives related to the case study:

1.  **Fisheries**: Fishery managers have collected data on fish length and mercury concentrations from local water bodies that the tribe have historically relied on for fishing. Concerned about community health, the focus of this module is to consider whether mercury concentrations are within safety thresholds and how they've changed over time. Learning objectives include:

    - Understand how to interact with data in R, starting with bringing data into the computing environment to explore 
    - Calculate and interpret the middle values (mean, median) and extreme values (min, max) of a dataset
    - Create straightforward plots to visualize safety thresholds and communicate results with the community 
    - Apply both statistics and visuals to determine if local fish are safe for consumption

2.  **Water quality**: Bull trout, a culturally important species native to the U.S. Northwest and Canadian Rockies, thrive in cold and clean water, but are threatened by warming temperatures and pollution. In this module, water quality data is explored for suitability of bull trout habitat, using stream temperature and dissolved oxygen from two stream sites. Learning objectives include: 

    - Apply foundational exploration and plotting skills from module 1 to a new environmental dataset, and learn why structured "tidy" data is easier to work with
    - Practice troubleshooting errors and and dealing with missing information in real-world measurements
    - Create "time-series" plots to track environmental changes over multiple years
    - Explore how water quality data can help in decision making to protect culturally important species 

3.  **Bison reintroduction**: Tribal agriculture managers are considering reintroducing bison to the lands for both ecological and cultural reasons. Reclaiming cattle grazing land as bison grazing land would create more sustainable agricultural practices for the region and ensure the preservation of native grasslands. Managers are considering three sites for bison reintroduction based on annual plant biomass, which are compared in this module. Learning objectives include: 

    - Learn to combine separate data sources into a single, cohesive dataset
    - Group data by specific categories (in this case field sites) to summarize and explore side-by-side comparisons
    - Standardize and convert different units of measurement to make data easier to interpret and compare
    - Evaluate multiple environmental variables simultaneously for managing decisions on reintroducing native species to their habitats


4.  **Forest management**: Forest managers have collected data on forest productivity for a Douglas fir forest, and are considering which site is best suited for management and harvesting for lumber. Learning objectives include:

    - Evaluate both numeric trends and descriptive notes (quantitative and qualitative data) to form a holistic view of forest health
    - Learn to design professional data visualizations with labels, legends, and customized colors to make ready to present to diverse audiences
    - Apply data analysis and visualization to deliver clear, accessible recommendations to forest managers and community
    - Discover where to find helpful online resources to continue exploring data and creating data visualizations independently in the future


# Acknowledgements

This work is supported by funding from the Alfred P. Sloan Foundation.

-   Source code: <https://github.com/IndigenousEnvDataSci/EJ-DS/tree/main>
-   Website: <https://indigenousenvdatasci.github.io/intro.html>

# References
