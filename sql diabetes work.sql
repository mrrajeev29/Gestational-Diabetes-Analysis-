create database NewProject2;
use NewProject2;
create table Diabetes(Pregnancies int,
					     Glucose int,
                         Bp int,
                         SkinThickness int,
                         Insulin int,
                         BMI float,
                         Diabetes_pedigree_function float,
                         Age int,
                         Outcome int);
select * from Diabetes;
select avg(Pregnancies) as Average_Number_of_times_women_get_pregnant from Diabetes;
select avg(Glucose) as Average_Glucose from Diabetes;
select avg(Bp) as Average_Blood_pressure from Diabetes;
select avg(SkinThickness) as Average_Skin_Thickness from Diabetes;
select avg(Insulin) as Insulin from Diabetes;
select avg(BMI) as Average_Body_Mass_Index from Diabetes;
select avg(Diabetes_pedigree_function) as Average_Diabetes_pedigree_function_value from Diabetes;
select avg(Age) as Average_Age from Diabetes;
select count(Outcome) as Number_of_People_suffering_from_Diabetes from Diabetes where Outcome=1;
select avg(Pregnancies) as Average_Number_of_times_women_get_pregnant_having_Diabetes from Diabetes where Outcome=1;
select avg(Pregnancies) as Average_Number_of_times_women_get_pregnant_With_No_Diabetes from Diabetes where Outcome=0;
select avg(Glucose) as Average_Amount_of_Glucose_in_women_With_Diabetes from Diabetes where Outcome=1;
select avg(Glucose) as Average_Amount_of_Glucose_in_women_With_no_Diabetes from Diabetes where Outcome=0;
select avg(Bp) as Average_Blood_Pressure_of_women_With_Diabetes from Diabetes where Outcome=1;
select avg(Bp) as Average_Blood_Pressure_of_women_With_no_Diabetes from Diabetes where Outcome=0;
select avg(BMI) as Average_BMI_of_women_With_no_Diabetes from Diabetes where Outcome=0;
select avg(BMI) as Average_BMI_of_women_With_Diabetes from Diabetes where Outcome=1;
select avg(Age) as Average_Age_of_women_With_no_Diabetes from Diabetes where Outcome=0;
select avg(Age) as Average_Age_of_women_With_Diabetes from Diabetes where Outcome=1;
select avg(SkinThickness) as Average_Skin_thickness_women_With_Diabetes from Diabetes where Outcome=1;
select avg(SkinThickness) as Average_Skin_thickness_women_With_no_Diabetes from Diabetes where Outcome=0;
select count(*) as Under_Weight_Women from Diabetes where BMI<18;
select count(*) as Healthy_Weight_Women from Diabetes where BMI>=18 and BMI<25;
select count(*) as Over_Weight_Women from Diabetes where BMI>=25 and BMI<30;
select count(*) as Obese_Women from Diabetes where BMI>=30 and BMI<35;
select count(*) as Severely_Obese_Women from Diabetes where BMI>=35 and BMI<40;
select count(*) as Morbidly_Obese_Women from Diabetes where BMI>=40;
select count(*) as Over_Weight_With_Diabetes from Diabetes where BMI>=25 and Outcome=1;
select avg(Diabetes_pedigree_function) as 
Average_Diabetes_Pedigree_function_Value_for_UnderWeight_Diabetes_Function
from Diabetes where BMI<25 and Outcome=1;
select avg(Diabetes_pedigree_function) as 
Average_Diabetes_Pedigree_function_Value_for_OverWeight_Diabetes_Function 
from Diabetes where BMI>=25 and Outcome=1;
select avg(Pregnancies),age from Diabetes group by age order by age asc;
select avg(Bp),age from Diabetes group by age order by age asc;
select avg(Outcome),age from Diabetes group by age order by age asc;
select count(*) as Women_more_than_2_child from Diabetes where Pregnancies>2;