# **[Cognos Dashboard Embedded - Deeper Dive]{.smallcaps}**

## Lab overview

When embarking on machine learning projects, many organizations engage
Business Analysts to help gain insight into their data. This persona can
use tools like Analytics Dashboards (part of the CPD offering) or the
more capable cartridge from which this service is derived: Cognos
Analytics.

In this lab, you will use the Analytics Dashboards to build
visualizations to help the organization understand why their customer
use is declining.

In our scenario, the Trade Co. Business Analyst used this service to
provide the company executives and the data scientists the information
they needed to understand their problem as well as to access the
effectiveness of the solution.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

## Persona represented in this lab

The Business Analyst persona is likely to perform the exercises in this
lab, and that is to create visualizations to make sense of the problems
the organization is facing.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![                               | Business Analysts deliver value  |
| ](/Users/tjm/Documents/GitHub/CP | by taking data, using it to      |
| D-workshop/labs/cde-embed/images | answer questions, and            |
| /media/image2.png){width="0.4in" | communicating the results to     |
| height="0.4in"}                  | help make better business        |
|                                  | decisions.                       |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Click the desktop icon: Cloud Pak for Data Web Client.

> ![A picture containing object, clock Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image3.png){width="0.8668689851268592in"
> height="0.9787226596675416in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpduser
    for the *Username* and *Password* and click Sign In.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image4.png){width="2.9893613298337707in"
> height="3.9299136045494314in"}

## Reviewing the dashboard: Monthly Metrics - Trade Co. 

In the dashboard Monthly Metrics -- Trade Co., the business analyst for
Trading Co. has painted a picture of how the business was initially
doing. The dashboard shows a relatively flat shares sold per month, and
a declining number of traders per month, which the business analyst
provides to the Trade Co. executives.

![A screen shot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image5.png){width="6.4972484689413825in"
height="2.7446806649168853in"}

## Building the dashboard: Monthly Metrics - Trade Co. 

The business analyst began by analyzing current trends of customer
visits and daily trades in the Trade Co. Stock Trader application. He
requested the data engineers to provide a file with historical totals of
visits and trades for the past year (TraderData.csv) which was deposited
into the project where everyone on the team could collaborate.

Build the dashboard with that data to see the trends the business
analyst discovered.

### **Starting the dashboard**

1.  From the top left Navigation Menu Projects CPD Workshop Analytics
    Project.

2.  Under Assets click Data Assets.

Notice TraderData.csv available in our project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image6.png){width="4.486205161854768in"
height="2.4361701662292212in"}

3.  Click Add to project + Dashboard.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image7.png){width="5.297871828521435in"
height="2.927717629046369in"}

4.  In the Blank tab, fill in the Name and Description as shown below,
    then click Create\
    - for the name*,* use initials-Monthly Metrics -- Trade Co.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image8.png){width="5.297871828521435in"
height="3.27593394575678in"}

5.  You are now presented with a choice of canvas templates. Select the
    one that looks as shown Click OK.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image9.png){width="5.191489501312336in"
height="2.370800524934383in"}

6.  From the Selected sources area near the top left of your screen,
    click
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image10.png){width="0.1889938757655293in"
    height="0.1889938757655293in"}.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image11.png){width="4.251784776902887in"
height="1.7021270778652668in"}

7.  Expand arrow next to Data assets and choose: TraderData.csv Select.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image12.png){width="2.888300524934383in"
height="2.297871828521435in"}![A close up of a sign Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image13.png){width="1.8936165791776027in"
height="0.5661975065616798in"}

8.  Click on TraderData.csv once it is in the Selected sources. This
    will allow you to expand it.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image14.png){width="3.9975885826771655in"
height="2.1885247156605425in"}

9.  Now expand TraderData.csv.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image15.png){width="3.3510640857392824in"
height="3.142551399825022in"}

10. Next. ensure the properties of the column data are what you want to
    be represented correctly within the dashboard.

Click the MonthNum ellipsis, then select Properties from the flyout
menu.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image16.png){width="4.10655949256343in"
height="3.393616579177603in"}

11. MonthNum is an attribute on which we sort our months. Change
    MonthNum usage to be Attribute and Aggregate to be None, Represents
    Default, then click Close.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image17.png){width="3.9255314960629923in"
height="3.5722944006999127in"}

12. Select the Properties of Month by selecting the ellipses next to
    Month.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image18.png){width="3.994329615048119in"
height="2.950819116360455in"}

13. Change Aggregate to None.

Change Members to Enabled.

Select Sort by -- MonthNum.

Click Close.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image19.png){width="4.3625in"
height="4.299776902887139in"}

14. Next, set the aggregation of our measures for totaling.

Hold the shift key down and click SharesSold and DailyTraders to select
both.

Click the ellipsis and then click Properties.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image20.png){width="3.834002624671916in"
height="3.2021270778652666in"}

15. Make sure *Aggregate* is Total in the drop-down menu.

Click Close.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image21.png){width="5.031914916885389in"
height="2.7674551618547683in"}

### **Building the first visualizations**

16. Drag SharesSold to the top left box, hovering over the *Drop here to
    maximize* area when it turns blue, then releasing the mouse. This
    gives us a total of Shares sold over all time.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTMLa1f3e46.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image22.png){width="6.402777777777778in"
height="1.6395220909886263in"}

17. If you did not drop at the right place it won't fill the template
    area. You can still adjust the guide to match with the outline of
    the left box. It should look as below.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image23.png){width="4.221311242344707in"
height="1.5734951881014874in"}

18. Drag DailyTraders to the top right box, hovering over the *Drop here
    to maximize* area when it turns blue as well. This maximizes this
    metric in this box. This gives us a total of trades over all time.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTMLa221f85.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image24.png){width="3.013888888888889in"
height="0.8707972440944882in"}

19. After you complete both top boxes, the dashboard should display as
    shown:

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image25.png){width="6.314000437445319in"
height="1.35in"}

### **Building the line charts**

20. Hold the \[Ctrl\] key down *(or Control-Option on Mac),* click Month
    and SharesSold and drag the two onto the lower left canvas area.
    This time [do not]{.ul} drop in the *Drop here to maximize* area.

21. When finished, it will automatically format like this. (Stretch the
    visualization wider if needed.)

![A close up of a map Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image26.png){width="6.402136920384952in"
height="4.840425415573053in"}

22. Cognos Analytics uses augmented intelligence to automatically
    provide you with a chart and appearance that would most likely be
    represented by the data you select from your data source. You are
    not limited by this and can select other charts and graphs to
    represent your data. To see all the available visualizations
    available at your fingertips, simply select the chart selector
    (Line, in this case), and view all the visualizations available.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image27.png){width="5.95454615048119in"
height="4.686059711286089in"}

23. Click the X to close the Change visualization screen.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image28.png){width="5.538445975503062in"
height="2.595744750656168in"}

24. Hold Control key down, click Month and DailyTraders and drag the two
    onto the lower canvas area. Again, [do not]{.ul} drop in the *Drop
    here to maximize* area.

![A close up of a map Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image29.png){width="6.403792650918636in"
height="3.45744750656168in"}

25. Adjust the top, bottom, left and right of the chart boundaries so
    that all the boxes are aligned.

26. The dashboard should display as below.

![A close up of a map Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image30.png){width="6.2888724846894135in"
height="2.3484853455818024in"}

27. Click the Save icon at the top of the screen to save your work.

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image31.png){width="2.778688757655293in"
height="1.1920909886264217in"}

### **Making the finishing touches**

28. Select (by clicking on) the bottom left chart visualization, then
    select the Properties button at the top of the screen to format that
    visualization.

![A close up of a map Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image32.png){width="6.4554133858267715in"
height="3.095744750656168in"}

29. Expand Appearance, then from the General tab, check Show title.

![A screenshot of a cell phone screen with text Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image33.png){width="2.9159186351706037in"
height="4.148935914260718in"}

30. In the bottom left visualization itself you can now type in a title
    for it.

Enter Shares sold per month.

![A picture containing man, sign Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image34.png){width="4.980005468066492in"
height="1.5245898950131234in"}

31. Click the bottom right visualization, select Properties *(if not
    selected)*, Appearance, General tab, Show title, and enter Number of
    Traders per month.

![A screenshot of a cell phone screen with text Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image33.png){width="2.4972222222222222in"
height="3.5531911636045495in"}![A close up of a map Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image35.png){width="3.991803368328959in"
height="3.1379221347331585in"}

32. From the Visualization tab, expand Chart, then check Show Value
    Labels.

![A close up of a map Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image36.png){width="4.8936165791776025in"
height="4.59255249343832in"}

33. Select the Shares sold per Month chart then check Show Value Labels.

34. On the left side of the canvas, click the Widgets menu and drag a
    Text box between the top two visualizations.

Title it Stock Trades. Adjust the box so the title is large and
readable.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image37.png){width="5.985945975503062in"
height="2.4590157480314963in"}

35. Format the properties of the title Stock Trades. Make the text font
    size 48, bold, choose light teal text color and center aligned.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image38.png){width="5.7575765529308836in"
height="2.8810411198600177in"}

36. Close the Widgets panel.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image39.png){width="0.5453718285214348in"
height="1.2868853893263341in"}

37. Next, let's change the overall look of the dashboard to match our
    desired look and feel. Select somewhere outside the boxes to select
    the overall dashboard itself. For example, click to the left of the
    top left visualization as shown:

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image40.png){width="3.009854549431321in"
height="3.015152012248469in"}

38. This selects the entire dashboard. Select Properties again, expand
    Color and theme and choose Dark.

39. Close Properties by selecting Properties.

40. Select tab at top left and choose the Pencil icon to Edit the title.
    Give it a title of Stock Trades.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image41.png){width="1.606557305336833in"
height="1.1216951006124234in"}

41. The final results should look something like this:

![A screen shot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/cde-embed/images/media/image42.png){width="5.986805555555556in"
height="2.808950131233596in"}

42. Click Save again to mark your progress.

You will notice from examining the charts that Shares sold is relatively
flat and daily trades are falling off. We need to use CPD to discover
the WHY behind this trend.

## Lab conclusion

Dashboard creation and analysis is just one part of the Analyze phase,
but a business analyst can do this relatively quickly and simply so that
they can get information from your organization's data without relying
on data scientists for everything.

However, the Data Scientist can take this information and create machine
learning models from the knowledge gained by this kind of analysis.

**\*\* End of Lab 14 - Cognos Dashboard Embedded -- Deeper Dive**

Lab by Burt Vialpando and Kent Rubin
