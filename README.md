# Pewlett-Hackard-Analysis

## Project Overview ##
#### Pewlett Hackard is a large company that has thousands of employees within their various departments. Pewlett Hackard acknowledges that many of its employees are likely to retire soon. So, to maintain a steady workflow, the human resources department has been tasked with analyzing the company’s data to find information about the employees retiring, the subsequent positions opening, and the mentoring possibilities for incoming staff. Several tables of data were collected to highlight these metrics and assist the various departments in strategizing for the future workforce.

## Resources ##
##### Software: PgAdmin 4; PostgreSQL 12; Visual Studio Code 1.65.0
##### Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv

## Entity Relationship Diagram
I used ERD to visualize the relationship among the data and stetch the structure of the Pewlett Hackard employee plan in order to analyze the data.

![ERD](https://user-images.githubusercontent.com/62758795/190259358-2f7b3330-e66b-4657-8c62-0a08084ebeff.png)

## Results
Several employees within the company held multiples positions through their career with Pewlett Hackard, which might indicate both vertical and lateral mobility for other employees in the company to fill the retiring positions.
Despite the number of positions opening up, only 1,549 current employees are eligible for the mentorship program. 
Additionally, there are only 7 titles that the retiring employees have within Pewlett Hackard. 
Hence, the majority of positions that will need to be filled are Senior Engineers and Senior Staff, which comprise almost 50,000 of the employees retiring.

## Retiring 
<img width="289" alt="Screen Shot 2022-09-15 at 3 25 57 PM" src="https://user-images.githubusercontent.com/62758795/190492059-dd649ff5-ec41-402c-961b-4d2a387d9c18.png">

## Total Employees

[all_employees.pdf](https://github.com/ea428815/Pewlett-Hackard-Analysis/files/9569836/all_employees.pdf)

## Mentorship 
[mentorship_eligible.pdf](https://github.com/ea428815/Pewlett-Hackard-Analysis/files/9569847/mentorship_eligible.pdf)

## Analysis
A total of 72,458 employees with be retiring in the near future from Pewlett Hackard, signifying over 72,000 positions that will need to be filled to maintain the current workflow of the company. As stated previously, only 1,549 employees are currently suited to participate in the mentorship program. Unless Pewlett Hackard changes the requirements for the mentorship program, there is an extreme lack of employees eligible to mentor the next generation of employees. To broaden the scope of the mentorship program, other factors could be considered to utilize other qualified employees such as experience, work performance, and title. As it stands, the only parameter examined for the mentorship program is age, which could be excluding a large number of valuable candidates.

The queries performed in this analysis only show a small insight into the retiring workforce of Pewlett Hackard. Another table that could assist the human resources department in filling the opening positions is a table of employees retiring by location or branch office. If positions are evenly spread through every location, the effect of the mass retirement would have less of an impact than if the positions were skewed to different locations. Another table that could further the analysis is a table constructed of employees in lower-level positions that could be promoted to the opening positions to evaluate for qualified internal candidates. To gain a better understanding, the human resources department will have to take a closer look at the different employee data of Pewlett Hackard.
