# EJ-DS Repository 


# Environmental Justice and Data Science Modules Collaboration - Introduction to Statistics in R 

This repository is currently the work space for a multi-institution environmental
data science collaboration.

Modules 1-3 were used as labs in a lower-division Introduction to R Statistics course in the Wildlife and Fisheries Department at Salish Kootenai College during Winter quarter 2024-2026. The class met once a week for 2 hours over 10 weeks. The format of the class was that the first hour included instruction and discussion, and the second hour students worked collaboratively through the lesson. Each module took up to three weeks (6 hour of class time) to complete, including time spent outside of class. 

## Jupyter Book version

These learning modules are also available as a Jupyter Book, at this link: https://indigenousenvdatasci.github.io/intro.html. This format may be easier to use if you are a self-learner, or if you don't have the ability to download R and RStudio. The pages in Jupyter Book can be ran in a browser using mybinder.org. Read more about options for opening notebooks [here](https://indigenousenvdatasci.github.io/getting_started.html).

## This GitHub repository

This repository is available for instructors who wish to easily fork or download content to modify for their own needs. The code and instruction is available as primarily R markdown files to be opened in RStudio. 

### Contents of each module in the EJ-DS Repository 

-   Rmarkdown file that includes all instruction, discussion questions, and code
-   knitted Rmarkdown as html and pdfs for example of completed code 
-   dataset (dummy dataset, but based on real data)
-   R script with code used to create dataset and any other supporting R files 

# Installation and Dependencies

These modules are in R, an open-source statistical programming language. R is commonly used alongside RStudio, an integrated development environment. If you do not already have R and Rstudio on your computer, you will need to download them by starting at step 1. If you do have them, start at step 2, install packages.

## 1. Download and install R and RStudio

Go to the R website. Then, under the Getting Started section, click on the link that says download R.

R software is downloaded from a CRAN (Comprehensive R Archive Network) mirror. For the fastest download, scroll to your country, then select the CRAN link that is closest to you, geographically. For example, in Humboldt Co, California, USA the closest CRAN would be https://ftp.osuosl.org/pub/cran/, hosted by Oregon State University in Corvallis, Oregon, USA.

From your local CRAN, select the download link (“Download R for”) that matches your computer operating system (Windows, Mac).

Windows: Click the link that says install R for the first time. Then, within the gray box, click the link that says Download R x.y.z for Windows, where x, y, and z are different numbers that designate the current version of R. This should start the file download. Proceed normally as with any new PC program, following the automated download instructions.

Mac: Under the section labeled “Files”, click on the first blue link that ends in .pkg. This is the most recent R binary file. This should start the file download. Proceed normally as with any new Mac application, following the automated download instructions.

Go to the RStudio website. Scroll to the bottom of the page.

Under Installers for Supported Platforms, select the link that matches your computer operating system (Windows, Mac) to download and install RStudio.

Windows: Double-click the .exe file and proceed normally as with any new PC program, following the automated install instructions.

Mac: Double-click the .dmg file; this will open a new window in your desktop. Drag the RStudio icon to the Applications folder to install it in your computer.

## 2. Install packages

Install packages used in these modules. Within R, researchers have developed “packages” that group together code and functions to allow you to easily perform different types of computing tasks. You’ll need to use multiple packages during the module activities, and it will be easiest to go ahead and install all of them ahead of time.

To install the packages, copy and paste the following lines of code to the right of the > in the Console, then press Enter. Note: You need to be connected to the internet to complete the package installation.

```
install.packages("tidyverse")
```

As you’re installing the packages, you might see a lot of red output messages. However, you can check that they downloaded successfully by then running the following scripts to load the packages:

```
library(tidyverse)
```

To check if the packages have installed correctly, navigate over to the “Packages” tab in the bottom right window of RStudio and see if there is a checked box next to tidyverse, janitor, and lubridate. Note that different workshops may require different packages, and you can always run install.packages() and library() to get new ones.

After loading tidyverse you may receive a message in your console about conflicts - this means that there are functions with the same name but from different packages. For these activities, it should not matter because we will mainly be using tidyverse. You will need to rerun loading the packages each time you restart RStudio, and you’ll find the first step in our workflows always start with that.

We are mainly working with `tidyverse` which is a collection of packages useful for working with data! Read more about it [here](https://tidyverse.org/).

# Worksheets

Along with code and instructions as R markdown and Jupyter Notebook files, the first module also includes a print-out worksheet to guide students along. Worksheets include text, doing checks on important steps, and ask students questions about the code they are running and the environmental and community contexts. These workshops have been used in two different 1-day workshops. The worksheets can be found in the `Worksheets/` folder: 

- Teachers_Guide_Setup_RStudio.pdf: step by step slides for setting up an RStudio Project with GitHub repository downloaded folder, and installing packages
- Teachers_Guide_Binder.pdf: step by step slides for setting up jupyter notebooks in mybinder.org 
- Teachers_Guide_Mod1.pdf: step by step slides with screenshots for module 1 
- Module 0_Download and Install R.pdf: check mark list for students to download R and RStudio, familiarize with the RStudio console, and install packages
- Module 1_Monitoring Fisheries for Heavy Metal Contaminants.pdf: Text following all steps in Module 1, including questions and space for students to handwrite answers. 
- Link to [Key for Module 1](https://docs.google.com/document/d/1BJuyTysceg3bvHxI8b8ZyJ7Ns6GSJpTikM3_xE1pkz0/edit?tab=t.0)

# Feedback 

We welcome feedback that could be about content, technical issues, or any questions you may have. [Opening an issue](https://github.com/IndigenousEnvDataSci/EJ-DS/issues) will start a conversation with the repository maintainers. 

## Adapting material 

The material is open source and available for you to adapt for your own educational needs. You can do this through a few different ways:

- [Fork the repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) to create a copy of all files that you can then make change sto on your own. 

- Download the repository to your desktop by clicking the green <>code button, then Download ZIP

- Start a [project](https://support.posit.co/hc/en-us/articles/200526207-Using-RStudio-Projects) in RStudio. Follow the steps in this [teacher's guide](https://github.com/IndigenousEnvDataSci/EJ-DS/blob/main/Worksheets/Teachers_Guide_Setup.pdf) to use the link to the GitHub repository to start an R Project. 

## Collaborations 

Interested in collaborating on place based modules for your course, or using this material for a workshop? Contact us! You can reach us through this repository by: 
- [Opening an issue](https://github.com/IndigenousEnvDataSci/EJ-DS/issues) with the 'Collaborations' template and tell us more about yourself. 
