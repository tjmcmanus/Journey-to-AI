# **[Business Use Case: Customer Churn]{.smallcaps}**

## Lab overview

Trade Co. is experiencing a decline in review, which appears to be due
to losing customers. The current process of predicting customer churn
seems to be ineffective as well. The company's executives have asked
their senior Business Analyst to help them understand why and to help
find a solution.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image1.png){width="0.5819728783902012in"
height="0.47515529308836396in"}

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML14f33b3e.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image2.png){width="6.381944444444445in"
height="3.4856003937007873in"}

## Persona represented in this lab

When embarking on machine learning projects, many organizations engage
Business Analysts to help gain insight into their data. This persona can
use tools like Analytics Dashboards to build visualizations to help the
organization more clearly understand their business challenges.

The Business Analyst persona is the likely role to perform the exercises
in this lab.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![](/Users/tjm/Documents/GitHub/ | Business Analysts deliver value  |
| CPD-workshop/labs/usecase/images | by taking data, using it to      |
| /media/image3.png){width="0.4in" | answer questions, and            |
| height="0.4in"}                  | communicating the results to     |
|                                  | help make better business        |
| Business Analyst                 | decisions.                       |
+----------------------------------+----------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image4.png){width="0.7049179790026247in"
height="0.7958748906386701in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess
    for the *Username* and *Password* and click Sign in.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image5.png){width="1.57376968503937in"
height="2.0689304461942255in"}

## Reviewing the dashboard: Monthly Metrics

The Business Analyst has used the Cloud Pak for Data Analytics
Dashboarding service to analyze Trade Co. issues. He has come up with a
Monthly Metrics dashboard that demonstrates the company's concerns.

This first dashboard was built with the recent trading information
delivered to him for the year. It was placed into a CSV file in the
project the Business Analyst shares with his team.

4.  In the CPD web client, click the Navigation Menu ("hamburger" icon)
    Projects.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image6.png){width="1.327869641294838in"
height="1.1406058617672792in"}![A picture containing dark, clock, light,
meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image7.png){width="2.3114752843394575in"
height="1.1525885826771654in"}

5.  Select the project: CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image8.png){width="3.57376968503937in"
height="1.0968788276465442in"}

6.  Under tab Assets, scroll down until you find Dashboards.

Click Monthly Metrics -- Trade Co.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image9.png){width="3.0163932633420822in"
height="1.0860083114610675in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image10.png){width="3.5in"
height="1.888986220472441in"}

+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents/GitHub/ | Use \[Ctrl\] -- and \[Ctrl\] +   |
| CPD-workshop/labs/usecase/images | keys to adjust the zoom on the   |
| /media/image3.png){width="0.4in" | dashboard to best suit your      |
| height="0.4in"}                  | screen.                          |
|                                  |                                  |
| Business Analyst                 | You can also use \[Ctrl\]        |
|                                  | \[Mouse-Scroll-Button\].         |
+----------------------------------+----------------------------------+

7.  Notice that from January to September, Shares sold per month remains
    flat while Number of Traders per month are declining.

This verifies that customer churn is in fact occurring, even though the
remaining traders are trading more each month, keeping shares sold
nearly even.

If Trade Co. could somehow find a way to retain their customers, shares
sold per month would go up, thus driving revenue up.

![A screen shot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image11.png){width="5.793722659667542in"
height="2.770492125984252in"}

8.  Leave this dashboard by clicking on the breadcrumb trail to navigate
    to the project again.

![A picture containing meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image12.png){width="3.7708333333333335in"
height="0.7055555555555556in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image13.png){width="4.478472222222222in"
height="0.9684962817147856in"}

+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents/GitHub/ | If you would like to see how     |
| CPD-workshop/labs/usecase/images | this dashboard was built, you    |
| /media/image3.png){width="0.4in" | can build it yourself by doing   |
| height="0.4in"}                  | the following lab: (Deeper Dive) |
|                                  | -- Cognos Dashboard Embedded     |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+

## Reviewing the dashboard: Demographics Discovery

The Business Analyst next asked for the company's customer demographics
data, joined together with the customer churn data, and joined again
with the recent activity data.

This data (representing three different data sets together) was placed
in the team project and the Business Analyst created the following
dashboard to better understand the situation.

9.  Under tab Assets find Dashboards.

Click Demographics Discovery -- Trade Co.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image9.png){width="3.0163932633420822in"
height="1.0860083114610675in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image14.png){width="4.723236001749782in"
height="2.5491797900262467in"}

10. Notice there are two tabs in this dashboard; you are currently
    positioned at tab:

Risk Demographics -- Trade Co.

The top visualizations give Total Units Traded and Dollar Value Traded.
You will see later that these are interactive with the rest of the
dashboard.

![A screen shot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image15.png){width="5.991666666666666in"
height="1.1058562992125984in"}

11. Review the top left filter (funnel) icon and notice that a filter
    has been set to only see information for those considered High in
    Churn Risk.

![A close up of a sign Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image16.png){width="2.22in"
height="0.6769783464566929in"}

12. Click on the aqua blue portion of the pie chart (which represents
    Female customers).

Notice the top visualizations change in value. For example, the new
number displayed in the Total Units Traded visualization would now
indicate High Risk Females.

Click again on the aqua portion of the pie chart to deselect the values
for Female.

![A close up of a sign Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image17.png){width="2.221311242344707in"
height="2.586097987751531in"} ![A picture containing sitting, clock
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image18.png){width="2.1967213473315836in"
height="2.5811056430446193in"}

13. The next visualization is also filtered by High Risk, and then
    sub-divides the data into two charts between Females (on the left)
    and Males (on the right).

Further, each chart shows bars (Dollars) and lines (Units) for the
Marital Status of Divorced(D), Married(M) and Single(S) customers.

This is a complex visualization, but from it you can see that Married
Females are the largest group.

![A screen shot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image19.png){width="6.013074146981627in"
height="4.179861111111111in"}

14. In the top filters section, click on the filter for CHURNRISK.

Deselect the filter for High and click \[OK\].

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image20.png){width="1.8934416010498687in"
height="2.522924321959755in"}

15. With no filters in place for this tab on the dashboard, scroll down
    to the bottom visualization.

16. The bottom visualization on this dashboard is a Heat Map of many
    different demographics data points along with ChurnRisk. On this
    map, the darker the square, the more the risk.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image21.png){width="6.0in"
height="1.3703051181102361in"}

17. Hover over darker purple square on the top left of the Heat Map.
    Notice it represents Married Females with zero children, who are not
    homeowners and are 20 years of age.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image22.png){width="2.221311242344707in"
height="1.6097298775153106in"}

18. Click on the second tab in this dashboard called Risk to Business --
    Trade Co.

This analyzes Dollars and Units traded on the top, filtered by the
demographics you found in the first tab visualization that appear to be
the higher risk. (Note: these filters can be changed at any time in Edit
mode to give flexibility to the user.)

This tab also has bottom visualizations that demonstrate that even
though this demographic appears to be high risk, they are still fairly
active.

![A screenshot of a computer screen Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image23.png){width="5.581453412073491in"
height="3.368852799650044in"}

19. Leave this dashboard by clicking on the breadcrumb trail to navigate
    to the project again.

![A picture containing meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image24.png){width="4.478472222222222in"
height="0.7578007436570429in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image13.png){width="4.478472222222222in"
height="0.9684962817147856in"}

## Devising a plan

Armed with his findings, the Business Analyst brings this to the Data
Scientists on the team. Together they come up with a plan to fix their
current Rules Based system of predicting churn.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image25.png){width="6.354166666666667in"
height="3.3442650918635173in"}

The intent is to use a better approach: Leverage Cloud Pak for Data to
build a data driven Machine Learning model to infuse into their Stock
Trader application.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image26.png){width="6.305555555555555in"
height="3.3433508311461066in"}

With this better model that more accurately predicts churn, the
developers will infuse it into their Stock Trader application that will
act upon this information in real time. Once a customer (trader) logs
into the application, the new ML model will predict the risk of churn
for this customer and will then make one of three offers designed to
retain them.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image27.png){width="6.402777777777778in"
height="3.388011811023622in"}

In this case, infusing the new ML model into the Stock Trader
application will be as simple as writing one extra microservice that is
invoked upon sign in. It will be called the "Predictive Analysis"
service (indicated by the green arrow below) and will make the offer
after sign in.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image28.png){width="5.486393263342082in"
height="3.2362773403324585in"}

## Reviewing the dashboard: Monthly Metrics After AI

The model was created and infused into the Stock Trader application,
which ran for three months. New activity data was captured for this
period. The Business Analyst created another dashboard similar to the
first that displays the results.

20. Still in the same project, under Assets, scroll down until you find
    Dashboards.

Click Monthly Metrics - After AI Trade Co.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image9.png){width="3.0163932633420822in"
height="1.0860083114610675in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image29.png){width="3.1721303587051617in"
height="1.7120319335083114in"}

21. This dashboard is similar to the first one in the two
    visualizations:

Shares sold per month and Number of Traders per month

Notice however, new data is present for October, November, and December.

![A screen shot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image30.png){width="6.488926071741032in"
height="2.791304680664917in"}

**The data is very encouraging: both data points have gone up!**

Trade Co. is back in business with their successful customer retention
offer driven by a smarter application infused with a machine learning
model that was built and maintained on Cloud Pak for Data.

## Lab conclusion

This workshop will walk you through how Trade Co. was able to pull off
their business success using the Cloud Pak for Data platform.

Each subsequent lab will walk you through one of the steps (Collect,
Organize, Analyze, Deploy, Infuse) taken by Trade Co. in their Journey
to Cloud and AI using this amazing, industry leading Analytics
Modernization platform called Cloud Pak for Data. You will also take on
the roles of the various personas involved along the way. The steps in
the journey are depicted in the illustration
below.![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/usecase/images/media/image31.png){width="6.339130577427822in"
height="3.488257874015748in"}

**\*\* End of Lab 02 -- Business Use Case: Customer Churn**

Lab by Burt Vialpando and Kent Rubin, IBM
