# **[Infuse: Cognos Analytics - Introduction]{.smallcaps}**

## Lab overview

In this lab, we will upload a CSV file given to us by our IT department
to see if there is any interesting information and if we can use this
information to better target market our potential high-risk churn
customers.

For this lab, we will use the power of the IBM Cloud Pak for Data
platform and the IBM Cognos Analytics cartridge. Installation of the IBM
Cognos Analytics cartridge has already been done for you.

## Persona represented in this lab

For this lab, we will assume the roles of both a Data Engineer and a
Business Analyst.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A picture containing clothing  | Business Analysts deliver value  |
| Description automatically        | by taking data, using it to      |
| generated](/Users/tjm/Documents  | answer questions, and            |
| /GitHub/CPD-workshop/labs/images | communicating the results to     |
| /media/image1.png){width="0.4in" | help make better business        |
| height="0.4in"}                  | decisions.                       |
|                                  |                                  |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image2.png){width="0.7049179790026247in"
height="0.7958748906386701in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess
    for the *Username* and *Password* and click Sign In.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image3.png){width="1.8032786526684164in"
height="2.370650699912511in"}

## Logging into the IBM Cognos provisioned instance

4.  Select the Navigation Menu icon at the top of the screen.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image4.png){width="0.2930675853018373in"
    height="0.2647058180227472in"}

5.  Select My Instances from the menu.

6.  Select Provisioned instances from the tab at the top.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image5.png){width="3.5409831583552056in"
    height="1.4411220472440944in"}

> Here you will see a list of instances that have been provisioned for
> you already.

7.  Select the ellipses at the end of the cognos-analytics-app and
    select Open.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image6.png){width="4.683739063867017in"
    height="2.361111111111111in"}

> You will now be automatically directed and logged into the IBM Cognos
> Analytics instance on your IBM Cloud Pak for Data platform.

## The IBM Cognos Analytics User Interface

**The purpose of the User Interface (UI) is to provide Users with a
streamlined way to get started using Cognos Analytics and view content
and activities pertinent to them.**

The User Experience brings you directly into the completely redesigned
IBM Cognos Analytics User Interface (UI).

All IBM Cognos Analytics Users begin their navigation here at the
Welcome Screen.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image7.png){width="7.052724190726159in"
height="3.4652777777777777in"}

+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents         | TECH TIP: Not all Welcome Screen |
| /GitHub/CPD-workshop/labs/images | Getting Started tiles may be     |
| /media/image1.png){width="0.4in" | available in your workshop       |
| height="0.4in"}                  | instance. The Welcome screen     |
|                                  | getting started tiles presented  |
| Business Analyst                 | are based on which have been     |
|                                  | configured to run in the         |
|                                  | environment[.]{.smallcaps}       |
+----------------------------------+----------------------------------+

8.  Click on the Welcome Screen toggle button on the upper left of the
    canvas to collapse the Welcome Screen's Getting Started content.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image8.png){width="2.588105861767279in"
    height="1.7428576115485563in"}

9.  The canvas now shows the Recently used files, if any, in the
    **Recent** section, along with **the File drop zone** where users
    can easily upload their data files.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image9.png){width="6.721786964129484in"
    height="2.841666666666667in"}

10. Once you begin working with content, the canvas will update with
    your recently used items.  In your Cognos Analytics instance, you
    may see recent content on the canvas.

> Now that we are in the IBM Cognos Analytics user interface, let's make
> a connection to the IBM Cloud Pak for Data -- Virtualized Data.
> Remember, our business use case here is to analyze and create a
> dashboard quickly from this new set of data we virtualized. We did not
> have to wait for a Data Warehouse or Data Lake to be completed. Let's
> do some analytics at the speed of thought!

## Importing the CSV file as an Exploration

11. From your Cognos Analytics Home screen, select New -- Upload.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image10.png){width="1.2295078740157481in"
    height="2.610599300087489in"}

12. Select CustomerChurnDemographics-CA_Lab.csv from
    /home/ibmdemo/Downloads if you are accessing via remote desktop. If
    you are accessing via browser, you may download the file from
    <http://ibm.biz/Churn-Demographics>.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image11.png){width="4.729507874015748in"
    height="2.9388265529308835in"}

13. Cognos Analytics will then begin to import and analyze the data in
    the CSV file.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image12.png){width="6.819444444444445in"
    height="1.3166655730533683in"}

14. In the Recent area, in the upper left corner of the CustomerChurn
    CSV card, select ellipses Create exploration.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image13.png){width="3.9454363517060367in"
    height="2.074981408573928in"}

## Cleaning up the data

When IBM Cognos Analytics imports CSV files, it does its best to
understand the data type, usage and aggregation from reading your data.
Depending upon the data you import, you may need to help IBM Cognos
Analytics out by defining some data properties.

15. From the left-hand menu, select the icon for the Data tab.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image14.png){width="1.9333333333333333in"
    height="2.042253937007874in"}

    Note: You will notice icons next to each field showing a
    representation of the data items usage as recognized by IBM Cognos
    Analytics. Measures are represented by a ruler, numeric values as a
    hash, text values as ABC, time values as a clock and geographic
    points as a pin.

16. Because this data is a snapshot total of values for a given date,
    you will need to change the aggregation properties of your measures,
    so they roll up correctly and do not give you misleading or false
    information.

+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents         | TIP: If you cannot read the full |
| /GitHub/CPD-workshop/labs/images | name of the data item shown on   |
| /media/image1.png){width="0.4in" | your screen, simply hover over   |
| height="0.4in"}                  | the name and a fly out will      |
|                                  | display the full name. Another   |
| Business Analyst                 | option is to use the zoom out    |
|                                  | feature of your browser.         |
+----------------------------------+----------------------------------+

17. For the following measures, change the Properties of the Data Item
    by selecting the ellipses at the end of each item and choosing
    Properties from the menu.

    For example, the following displays the properties for Average
    Dollar per Unit traded:

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image15.png){width="3.9255435258092737in"
    height="3.752380796150481in"}

18. You will be presented with the Properties of that measure.

    Change the Aggregate of Average Dollar per Unit traded measure to
    None, then Close.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image16.png){width="4.670431977252844in"
    height="2.8285717410323707in"}

19. Change the other Data Items with the following property values by
    following the previous steps.

  **Data Item**                    **Usage**   **Aggregate**
  -------------------------------- ----------- ----------------
  Average Dollar per Unit traded   Measure     None
  Net realized gains YTD           Measure     None
  Net realized losses YTD          Measure     None
  Days since last login            Attribute   Count Distinct
  Days since last trade            Attribute   Count Distinct
  Age                              Attribute   Count Distinct
  Children                         Attribute   Count Distinct
  Estimated Income                 Attribute   None

20. Because there are a lot of Estimated Income values, it would be
    better to group this data in buckets for easier understanding.

    By Estimated income, select ellipses Create data group.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image17.png){width="3.1480653980752407in"
    height="2.0571423884514437in"}

21. Choose Create a data group (numeric style).

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image18.png){width="4.459027777777778in"
    height="1.6292596237970254in"}

22. You will be presented with the following auto grouping:

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image19.png){width="4.459494750656168in"
    height="4.018518153980753in"}

23. Change the number of Groups to 4.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image20.png){width="5.457142388451444in"
    height="3.393099300087489in"}\
    *Note: You could manually enter group values or use Cognos to
    automatically do it for you!*

24. Select Create.

    You will notice you have created a new grouping at the top of your
    Data Items list.

    ![A close up of a screen Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="1.342856517935258in"
    height="0.5432928696412949in"}![A screenshot of a cell phone
    Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image22.png){width="2.354543963254593in"
    height="3.190476815398075in"}

25. When you are finished, return to the Exploration canvas by selecting
    the Exploration tab.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image23.png){width="1.1523807961504813in"
    height="1.6078455818022748in"}

    IBM Cognos Analytics Exploration asks you: Where do you want to
    start?

    You can see that IBM Cognos Analytics suggests starting with some of
    the measures it found in your Data Module. This is helpful in
    discovering what are the possible drivers behind each of your
    metrics. IBM Cognos Analytics uses a powerful AI engine to assist
    you in discovering possible drivers between measures and dimensions,
    strength of relationships between dimensions, and also possible ways
    of examining this data for you by suggesting highly visual graphs of
    this data by dimension.

    When IBM Cognos Analytics suggests: Try starting with one of
    these... it is providing you an easy way to begin discovering and
    exploring what it finds as potentially important (what is driving
    our metrics?) based on a measure or dimension.

    We are not limited to these options, though.

26. Select the area where it asks you to Enter data column and you will
    see that all of your Data Module Data Items are presented.

    ![A screenshot of a social media post Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image24.png){width="3.3142858705161853in"
    height="3.145071084864392in"}

+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents         | TIP: If you're really            |
| /GitHub/CPD-workshop/labs/images | adventurous, or do not know the  |
| /media/image1.png){width="0.4in" | data you are exploring very      |
| height="0.4in"}                  | well, you could select the Skip  |
|                                  | -- show me anything link and IBM |
| Business Analyst                 | Cognos Analytics will select any |
|                                  | measure as a starting point.     |
|                                  |                                  |
|                                  | [Do not do this for this         |
|                                  | Workshop]{.ul}! It's good to     |
|                                  | know you can use the AI help     |
|                                  | from IBM Cognos Analytics when   |
|                                  | you need.                        |
+----------------------------------+----------------------------------+

## Exploring Data Relationships

For this workshop, let's have IBM Cognos Analytics help us understand
our customers better from this data set.

Let's first find out which customers are spending the most on trades
with us.

27. From the dropdown, type Churn, then select Churn Risk.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image25.png){width="4.209523184601925in"
    height="2.8346008311461066in"}

28. By hovering over each of my measures associated with Churn Risk, I
    can get a quick understanding of relationship strength that is
    driving Churn Risk.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image26.png){width="5.117020997375328in"
    height="3.845272309711286in"}

> For example, there seems to be a 73% relationship strength between Net
> realized losses YTD and Churn Risk.

29. Hover over other measures to see how they relate as well.

> You can see that IBM Cognos Analytics has selected the scope of fields
> to show relationship strength between. You are not limited to this,
> however. You can change the scope of this relationship examination to
> remove fields that you know may interfere with getting a proper
> result.

30. Select the drop-down menu to Edit diagram and select Edit scope.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image27.png){width="2.131932414698163in"
    height="1.6857141294838145in"}

    Fields such as DOB, Longitude and Latitude are probably Data Items
    that do not bring any value when examining your data relationships
    and [may cause static]{.ul} when exploring your data.

31. You can remove those by hovering over, then selecting the
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image28.png){width="0.20699037620297464in"
    height="0.19444444444444445in"} next to DOB, Longitude and Latitude,
    then OK.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image29.png){width="4.97872375328084in"
    height="4.372452974628171in"}

> IBM Cognos Analytics gives you the flexibility to remove fields that
> you may not require when exploring your data and may interfere
> (static) with your analysis.

32. You can also investigate secondary relationships to see the strength
    of the relationship between all fields.

    Select Edit diagram Secondary relationships.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image30.png){width="3.066666666666667in"
    height="2.2460094050743655in"}

33. Hover around each of the fields to see view the relationship
    strength IBM Cognos Analytics discovered between them. ![A close up
    of a map Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image31.png){width="6.681781496062992in"
    height="3.2761909448818898in"}

## Creating Exploration Cards

When IBM Cognos Analytics examines relationships, the powerful AI engine
will begin to surface charts and graphs that may be of interest to you.
This is especially helpful if you are unfamiliar with the data you are
working with.

Scroll down on the far-right portion of your screen, then notice that
IBM Cognos Analytics has presented you with three visualizations. You
can begin with one of these info graphs or 'Cards' or see more Cards.

34. Select link See more.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image32.png){width="2.3510640857392824in"
    height="4.113092738407699in"}

35. You are now able to see more auto-generated cards via the power of
    IBM Cognos Analytics AI.

> IBM Cognos Analytics is using its powerful AI engine to discover new
> possible drivers or interesting information from your data source.

36. Select inside the card: Total dollar value traded by Churn Risk and
    Status.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image33.png){width="2.5179582239720033in"
    height="2.009524278215223in"}

37. Notice that it has added the Card to the left side in the
    Exploration Cards area.

    ![A screenshot of a social media post Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image34.png){width="4.26176290463692in"
    height="2.8761898512685913in"}

38. We can see that our High and Medium Churn Risk customers are mostly
    married.\
    You can view more interesting discoveries by viewing the Details
    tab.\
    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image35.png){width="1.9809525371828522in"
    height="3.475919728783902in"}\
    Let's now see if Gender plays a role in how much money they trade
    with us.

39. Select the Data slots tab at the top next to Details.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image36.png){width="3.4952384076990377in"
    height="2.3270188101487315in"}

40. Cognos Analytics provides you interesting insight to your data
    automatically, but you can take control, too. Select the data tab on
    the far-right side.

    ![A close up of a logo Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image37.png){width="0.5762084426946632in"
    height="1.8761898512685915in"}

41. From here, drag Gender over to on top of Status.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image38.png){width="6.457142388451444in"
    height="2.799737532808399in"}

42. This chart is showing that our high-risk customers who trade the
    most dollars with us are Female and Married. Cognos Analytics also
    provides hints at other data points which seem to be related. Cognos
    Analytics found 5 other points of interest for you. Select the 5 at
    the top and choose Correlated with Net realized losses YTD, Net
    realized gains YTD and Age (89%).

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image39.png){width="5.885714129483815in"
    height="2.608964348206474in"}

43. Next to the title for the fly out, select the 5 Correlated with Net
    realized

    losses YTD, Net realized gains YTD and Age (89%).

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image40.png){width="6.024501312335958in"
    height="1.9545450568678915in"}\\

44. Choose the Explorations tab on the left ![A picture containing
    drawing Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image41.png){width="0.33928477690288716in"
    height="0.3571423884514436in"} and you will now see the following:

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image42.png){width="6.418772965879265in"
    height="3.625in"}

45. Notice the strength of the predictor is higher when a combination of
    drivers is applied.

46. Examine the Decision Tree at the bottom provided by IBM Cognos
    Analytics.

47. At the bottom right, select Add button (to add this Decision Tree as
    a new Exploration card).

    ![A picture containing clock, drawing Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image43.png){width="1.361903980752406in"
    height="0.8642847769028872in"}

48. Select the Decision Tree card at the left.

    ![A screenshot of a social media post Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image44.png){width="3.2095231846019248in"
    height="2.2424146981627295in"}

49. Now you are easily seeing combinations of drivers and their
    relationship strength in terms of Total dollar value traded. Select
    the Top 5 Nodes to show your top 5 nodes in the tree.

    ![A screenshot of a social media post Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image45.png){width="6.212962598425197in"
    height="3.66919728783902in"}

50. But you are not limited there. You can view other ways of looking at
    this data.

    Choose Tree sunburst from the top tab.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image46.png){width="3.6476192038495188in"
    height="1.6049529746281714in"}

51. You will now be presented with the Sunburst diagram.

    ![A close up of a logo Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image47.png){width="4.561917104111986in"
    height="3.0555555555555554in"}

52. So far, IBM Cognos Analytics has been guiding us and creating charts
    based upon a metric we were looking for. We also have the ability to
    create exploration cards on our own.

53. From the top menu, select New card Single -- Choose a Type.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image48.png){width="1.9809525371828522in"
    height="1.8757141294838144in"}![A picture containing person
    Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image49.png){width="1.8333989501312336in"
    height="1.3428576115485564in"}

54. Choose Map under the group Geospatial.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image50.png){width="3.2037029746281713in"
    height="1.6100656167979002in"}

55. Select the Data Tab![A picture containing drawing Description
    automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image51.png){width="0.4571434820647419in"
    height="0.3975164041994751in"}, then under Data slots, expand
    Regions.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image52.png){width="1.9809525371828522in"
    height="1.7243832020997376in"}

    Drag Total dollar value traded to Location color.

    Drag State to Locations.

    ![A close up of a map Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image53.png){width="6.423657042869642in"
    height="2.8285706474190726in"}

56. Select the Details tab to get more information on this map.

    It looks like most of our big spenders are in Texas and New York.

    Zoom in on the U.S. and center it to focus.

57. Let's create one more Exploration card.

    From the top tab, select New card Single Choose a type.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image48.png){width="1.9809525371828522in"
    height="1.8757141294838144in"} ![A picture containing person
    Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image49.png){width="2.5047615923009623in"
    height="1.8345909886264218in"}

58. This time let's choose a heat map from the Relationships group.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image54.png){width="1.390475721784777in"
    height="1.221933508311461in"}

59. Drag Estimated income (Group) to Rows.

    Drag Total dollar value traded to Columns.

    Drag Total units traded to Heat.

    ![A close up of a map Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image55.png){width="4.310558836395451in"
    height="3.922253937007874in"}

60. That looks really noisy! Let's now group that Total dollar value
    traded. Lucky for us, IBM Cognos Analytics allows you to Auto-group
    on the fly.

    Select the ellipses next to Total dollar traded Auto-group.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image56.png){width="3.20919072615923in"
    height="3.4736832895888012in"}

61. Turn on Auto-group and set Number of groups to 5.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image57.png){width="3.7289654418197724in"
    height="4.021053149606299in"}

62. That's easier to read! Visualizing that sweet spot is now so much
    easier.

63. Now we will have IBM Cognos Analytics Assistant create a Dashboard
    for us.

    Select the Assistant link on the left, then choose the suggestion of
    create dashboard.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image58.png){width="2.6736843832020996in"
    height="4.928310367454068in"}

64. You should now see the following:

    ![A screenshot of a social media post Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image59.png){width="6.506284995625546in"
    height="2.754861111111111in"}

    IBM Cognos Analytics Assistant created a dashboard for you!

65. You can investigate this dashboard by selecting the tabs at the top
    or hover over any of the charts and graphs. We wish to focus in on
    our high churn customers. So, let's filter this dashboard.

    From the Data tab ![A picture containing drawing Description
    automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image51.png){width="0.4571434820647419in"
    height="0.3975164041994751in"}, drag Churn Risk to the Filter All
    tabs location OK.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image60.png){width="5.377396106736658in"
    height="4.472222222222222in"}

66. Close the Data items tab by selecting it again and you should see
    all of your charts and tabs filtered on just your high churn risk
    customers. Building dashboards is easy in Cognos Analytics!

    ![A screenshot of a social media post Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image61.png){width="6.368421916010499in"
    height="2.8173293963254595in"}

67. Save your Auto-created Dashboard in your Personal Folder as Your
    name -- Dashboard from Exploration Lab.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image62.png){width="1.8631583552055992in"
    height="1.3464840332458443in"}![A screenshot of a cell phone
    Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image63.png){width="4.663158355205599in"
    height="3.140242782152231in"}

## Embedding Cognos Content

68. Now that you have created and saved your dashboard, you can Share
    your information to others. There are two options when sharing a
    link. You can either provide an HTML link to your dashboard or you
    can view the embedded code. You can also export your dashboard to a
    PDF file. To view all these options, choose the Share button at the
    top left.

    ![A picture containing clock, ball Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image64.png){width="4.410527121609799in"
    height="1.8404418197725285in"}

69. You will then see the Link options in the flyout

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image65.png){width="2.3993832020997377in"
    height="4.6in"}

70. Use this information to embed and link your Cognos Analytics
    dashboard.

##  

## Lab conclusion

The results of this Exploration and Dashboard give us a good
understanding of our high churn risk customers, how much they spend and
where they are located. I can make marketing decisions in these areas to
ensure my business is not at risk of losing these customers.

You have now witnessed the ease at which IBM Cognos Analytics can create
highly visual dashboards for greater business insight...all without need
to code any expressions in a secure, governed manner.

You're off to a good start. Keep in mind, IBM Cognos Analytics offers
insight and infused AI using several governed, easy to use components.
Through this lab, you have experienced working with Data Modules,
Explorations and Dashboards. But IBM Cognos Analytics offers other areas
of insight as well, such as Reports and other areas of analysis that
could not fit in this lab.

We encourage you to delve deeper into all these other avenues of insight
by taking on other online IBM Cognos Analytics workshops available to
you.

*TIP: For a more detailed workshop on IBM Cognos Analytics Dashboards,
please see: <http://ibm.biz/Cognos-Dashboards>\
TIP: For a more detailed workshop on IBM Cognos Analytics Reporting,
please see: <http://ibm.biz/Cognos-Reporting>*

**\*\* End of Lab 09 -- Infuse: Cognos Analytics - Introduction**

Lab by Kent Rubin, IBM
