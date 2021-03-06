# Instructions for running this project
This application has been developed using Visual Studio’s Python Support.
## Requirements for this Project:
1. Visual Studio Community edition 2019.
2. Python support in Visual Studio
## Steps for Installation
If you do not have visual studio installed before hand, follow these steps:
1.	Download visual studio community edition from here: Visual Studio Installation
If python support is not configured:
1. Open Visual Studio
2. Under Tools dropdown, click on ‘Get tools and features’ to open the Visual Studio Installer.
3. The installer presents you with a list of workloads, which are groups of related options for specific development areas. For Python, select the Python development workload and select Install:

![alt text](https://github.com/Fizza-Rubab/ClubElectionPortal/blob/master/Python%20Requirements.png)

 
## Steps for Running the Project
1. Download the zip file from Github.
2. Open the solution (.sln) file in Visual Studio.
3. Before running the project, use the script provided in the repository to create the [Club Elections] database on MS-SQL server.
4. Open the file views.py from solution explorer and change the conx string variable and set the name of your local server in place of the server written. Change the following:

```bash
conx_string = "driver={SQL SERVER}; server=DESKTOP-E9RIB71\SQLEXPRESS; database=Club Elections; trusted_connection=YES;"
```
to
```bash
conx_string = "driver={SQL SERVER}; server={Your Server on SSMS}; database=Club Elections; trusted_connection=YES;"
```
5. Save the file and click on the run Web Server button to run the project.
