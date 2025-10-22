use unemployment_db;

#Overview
#============================================#
SELECT count(*) FROM unemploy;

Select sum(`Civilian_Noninst_Pop`) As `All Population`,
sum(`Labor_Force`) As `Labor Force`,
sum(`Employed`) As `Employed` , sum(`Unemployed`) As `Unemployed`,
avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy;

#top 10 States in unempolyment Rate
select `State/Area` As `State` , avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy
group by `State`
order by `Unemployment Rate` DESC
limit 10;

#Bottom 10 States in unempolyment Rate
select `State/Area` As `State` , avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy
group by `State`
order by `Unemployment Rate` ASC
limit 10;

# Unemployment Rate By Years
Select `Year` , avg(`Unemployment_Rate`) As `Unemployment Rate`
From unemploy 
Group By `Year`;

#=============================================================#

#Analysis from (1976 - 1990)
#overview

Select sum(`Civilian_Noninst_Pop`) As `All Population`,
sum(`Labor_Force`) As `Labor Force`,
sum(`Employed`) As `Employed` , sum(`Unemployed`) As `Unemployed`,
avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy
Where `Year` between 1976 and 1999;

#Unemployment rate by years
Select `Year`, AVG(`unemployment_Rate`) As `unemployment_Rate`
From unemploy
where `Year` between 1976 and 1999
group by `Year`;

# Lable force anong years
Select `Year`, Sum(`Labor_Force`) As `Labor Force`
From unemploy
where `Year` between 1976 and 1999
group by `Year`;

#================================================================================ 
# Analysis from (1991 - 2000)

#overview
Select sum(`Civilian_Noninst_Pop`) As `All Population`,
sum(`Labor_Force`) As `Labor Force`,
sum(`Employed`) As `Employed` , sum(`Unemployed`) As `Unemployed`,
avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy
Where `Year` between 1991 and 2000;

#Unemployment rate by years

Select `Year`, AVG(`unemployment_Rate`) As `unemployment_Rate`
From unemploy
where `Year` between 1991 and 2000
group by `Year`;

# Lable force anong years
Select `Year`, Sum(`Labor_Force`) As `Labor Force`
From unemploy
where `Year` between 1991 and 2000
group by `Year`;



# Analysis from (2001 - 2010)

#overview
Select sum(`Civilian_Noninst_Pop`) As `All Population`,
sum(`Labor_Force`) As `Labor Force`,
sum(`Employed`) As `Employed` , sum(`Unemployed`) As `Unemployed`,
avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy
Where `Year` between 2001 and 2010;

#Unemployment rate by years
Select `Year`, AVG(`unemployment_Rate`) As `unemployment_Rate`
From unemploy
where `Year` between 2001 and 2010
group by `Year`;

# Lable force anong years
Select `Year`, Sum(`Labor_Force`) As `Labor Force`
From unemploy
where `Year` between 2001 and 2010
group by `Year`;


# Analysis from (2011 - 2022)

#overview

Select sum(`Civilian_Noninst_Pop`) As `All Population`,
sum(`Labor_Force`) As `Labor Force`,
sum(`Employed`) As `Employed` , sum(`Unemployed`) As `Unemployed`,
avg(`Unemployment_Rate`) as `Unemployment Rate`
From unemploy
Where `Year` between 2011 and 2022;

#Unemployment rate by years
Select `Year`, AVG(`unemployment_Rate`) As `unemployment_Rate`
From unemploy
where `Year` between 2011 and 2022
group by `Year`;

# Lable force anong years
Select `Year`, Sum(`Labor_Force`) As `Labor Force`
From unemploy
where `Year` between 2011 and 2022
group by `Year`;