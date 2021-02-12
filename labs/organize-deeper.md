# **[Organize -- Deeper Dive]{.smallcaps}**

## Lab overview

Many organizations find it difficult to understand their own data
because it originates from many sources, is dispersed across many silos,
and is controlled by different teams.

This Organize lab will show you how to uncover the hidden data in your
organization's data and how to build a lineage that is otherwise
difficult to establish. Cloud Pak for Data helps your organization move
from the manual processes required to establish relationships between
data to an automated one aided by the platform's built-in machine
learning capabilities.

## Personas represented in this lab

The Data Steward and Data Engineer personas are most likely to perform
most of the Organize tasks shown in this lab.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A picture containing cup       | Data Stewards integrate and      |
| Description generated with very  | transform the data, and provide  |
| high                             | governance, lineage and          |
| confidence](/Us                  | classification of the data.      |
| ers/tjm/Documents/GitHub/CPD-wor |                                  |
| kshop/labs/images/media/image1.p |                                  |
| ng){width="0.4583333333333333in" |                                  |
| height="0.4583333333333333in"}   |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+
| ![A close up of a logo           | Data Engineers build and         |
| Description generated with high  | optimize the systems to allow    |
| confidence](/Use                 | data scientists and business     |
| rs/tjm/Documents/GitHub/CPD-work | analysts to perform their work.  |
| shop/labs/images/media/image2.pn | The Data Engineer ensures that   |
| g){width="0.39652777777777776in" | any data is properly received,   |
| height="0.39652777777777776in"}  | transformed, stored, and made    |
|                                  | accessible to other users.       |
| Data Engineer                    |                                  |
+----------------------------------+----------------------------------+

The Data Steward and Data Engineer personas often work closely together
to prepare the data for analytics processing by other personas. For
example, in this lab one of the things the Data Steward will do is to
ensure Business Terms are assigned to data assets. In turn, the Data
Engineer will then use that information to find the appropriate data to
extract and transform to create a final table of the data sources joined
together.

The Data Steward persona also works closely with the Data Quality
Analyst persona.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image3.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image4.png){width="6.208333333333333in"
height="2.2163232720909884in"}

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image5.png){width="1.0078816710411198in"
height="1.137930883639545in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess
    for the *Username* and *Password* and click Sign In.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image6.png){width="3.2918580489938756in"
height="4.3275863954505684in"}

## Creating a connection to your data

> Data Connections are one of the primary ways that Cloud Pak for Data
> can access data both within the application and across various
> sources, including cloud, on-premises, application, semi-structured,
> etc. These connections can be created globally and then used by users
> within the different capabilities of the CPD platform.

4.  If you are starting this lab stand-alone (without going through
    previous labs) do the following: In the CPD web client, start at the
    Navigation Menu Click Connections.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image7.png){width="5.444724409448819in"
height="2.4792946194225722in"}

5.  Click New connection.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image8.png){width="2.8819444444444446in"
height="0.8660389326334208in"}

6.  Before creating a connection, you will need to know the credentials
    to the database. You can find this by clicking on Navigation Home,
    Collect, then right click on My data and Open Link in New Tab.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image9.png){width="2.7314807524059495in"
> height="2.345511811023622in"}

7.  Click on the tab Databases Click on the tile Db2 Advanced Edition
    Ellipse Details.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image10.png){width="4.265956911636046in"
height="3.3826399825021873in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | One of the advantages of using a |
| Description generated with very  | full platform that uses          |
| high                             | containers and microservices is  |
| confidence](/User                | that you can have a host of      |
| s/tjm/Documents/GitHub/CPD-works | capabilities that can be turned  |
| hop/labs/images/media/image11.pn | on, and with the correct user    |
| g){width="0.37572287839020124in" | privilege, instances of those    |
| height="0.37572287839020124in"}  | capabilities (like a new MongoDB |
|                                  | or Db2 instance) can be created  |
| Data Steward                     | with the click of a button --    |
|                                  | just as you would be able to do  |
|                                  | in a Public Cloud, but behind    |
|                                  | your firewall.                   |
+----------------------------------+----------------------------------+

8.  Page down to the bottom of the screen and you'll see the access
    information for our database. Copy down this information to enter in
    our Data Connections window.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image12.png){width="5.691489501312336in"
height="2.438255686789151in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image13.png){width="3.720138888888889in"
height="1.261334208223972in"}

9.  Now return to the previous tab.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image14.png){width="3.25in"
height="1.282541557305337in"}

10. Enter the parameters to create a connection to the internal Db2
    database used for this workshop. Below is a sample; Connection Name
    and Description can be whatever you choose, the rest of the
    credentials you can get from the previous step.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image15.png){width="5.124568022747156in"
height="5.404255249343832in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: You may copy and paste the |
| Description generated with very  | password as shown below. (if     |
| high                             | this doesn't work, then try      |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | highlighting the password and    |
| hop/labs/images/media/image11.pn | use \[CTL\]-c then \[CTL\]-v).   |
| g){width="0.37572287839020124in" |                                  |
| height="0.37572287839020124in"}  | ![](/Use                         |
|                                  | rs/tjm/Documents/GitHub/CPD-work |
| Data Steward                     | shop/labs/images/media/image16.p |
|                                  | ng){width="3.8191491688538934in" |
|                                  | height="1.54125656167979in"}     |
+----------------------------------+----------------------------------+

11. Click Test connection (to verify your credentials are correct).

12. That will return a successful message if the connection parameters
    are correct.

![A picture containing bird Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image17.png){width="4.721311242344707in"
height="0.711152668416448in"}

13. Click the Create button to add the connection to CPD. At this point
    it is a 'Global Connection'. We will later add it to different
    projects, catalogs, etc.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image18.png){width="3.5454549431321083in"
height="0.7935411198600175in"}

## Working in a project

> Working with Projects is an important part of the Cloud Pak for Data
> experience. Projects allow you to organize your work into specific
> areas to which you can control access, and once you are happy with the
> results, you can publish the assets and the findings to the Catalog
> for general user consumption.

14. Let's start by creating a project:

In the CPD web client, click the Navigation Menu Projects Click New
project.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image19.png){width="4.9655325896762905in"
height="2.5209623797025373in"}

15. There are three primary types of projects you can create.

Click Analytics project Next.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image20.png){width="6.332712160979877in"
height="2.0638298337707788in"}

16. You can create an empty project,create a project by importing
    existing assets from your file system, or from a Git repository.

Click tile Create an empty project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="5.031914916885389in"
height="2.954970472440945in"}

17. Add the Name and Description for your project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image22.png){width="5.145510717410324in"
height="3.7765955818022747in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: You can also integrate the |
| Description generated with very  | project to Git, which allows for |
| high                             | automatic saves to a Git         |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | repository -- we won't be doing  |
| hop/labs/images/media/image11.pn | that today.                      |
| g){width="0.37572287839020124in" |                                  |
| height="0.37572287839020124in"}  |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+

18. Click Create.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image23.png){width="2.1170209973753282in"
height="0.7938834208223972in"}

This will create a project and put you into the project overview screen.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image24.png){width="6.593909667541557in"
height="3.1382983377077864in"}

This screen shows summary information about who is a collaborator on
this project, what assets have been created or exist in this project,
etc. Along the top you see tabs for the different types of things we'll
do with this Project, for example, Assets, Environments, etc.

### **Adding a connection**

Next, we'll start to bring data into our project so we can start to
analyze, understand and enhance our data, to get it ready for publishing
to a Catalog for public use.

Click Add to project.

![A picture containing clock, large, person Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image25.png){width="3.2446806649168853in"
height="0.8382917760279965in"}

19. Choose Connection, and we will add the connection we created
    earlier.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image26.png){width="5.8936165791776025in"
height="2.679336176727909in"}

20. Here, you see a number of different choices for creating a
    connection. This is one of the strengths of CPD -- the breadth of
    different types of data you can access directly from the platform.
    As we said, we're going to add the connection we created earlier.

Choose From global Db2_Source_Local.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image27.png){width="4.9754090113735785in"
height="2.333926071741032in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: If this message appears,   |
| Description generated with very  | click the X                      |
| high                             |                                  |
| confidence](/User                | ![A screenshot of a cell phone   |
| s/tjm/Documents/GitHub/CPD-works | Description automatically        |
| hop/labs/images/media/image11.pn | generated](/Use                  |
| g){width="0.37572287839020124in" | rs/tjm/Documents/GitHub/CPD-work |
| height="0.37572287839020124in"}  | shop/labs/images/media/image28.p |
|                                  | ng){width="1.9869422572178477in" |
| Data Steward                     | height="0.6311472003499563in"}   |
+----------------------------------+----------------------------------+

21. Click Test (to validate we can connect to our data source),

then click Create.

![A picture containing knife Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image29.png){width="5.063829833770779in"
height="0.649323053368329in"}

### **Adding connected data**

22. You've now added your first asset to the project (a connection).
    Next we'll want to use that connection to bring in some data and
    start to analyze and understand it.

Once again, click Add to Project**.**

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image30.png){width="3.8278685476815397in"
height="1.142257217847769in"}

23. Notice you can also add files directly from your desktop, by either
    dragging or browsing your file system.

Now choose Connected data.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image31.png){width="6.148935914260718in"
height="2.7954079177602797in"}

24. Click Select source.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image32.png){width="4.614753937007874in"
height="3.0734798775153105in"}

25. Next, we'll choose our Connection, Schema, and Table(s). First,
    click Db2_Source_Local (or the name of your connection).

We are interested in two tables, that are in two different schemas.

Choose the schema CPDUSER CUSTOMER_DEMOGRAPHICS Select.\
![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image33.png){width="6.5531911636045495in"
height="2.751007217847769in"}

26. Now we'll give it a name to refer to it by in our project. Enter
    CUSTOMER_DEMOGRAPHICS for the Source name Create.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image34.png){width="6.4160706474190725in"
height="3.7765955818022747in"}

27. You've now added your first data asset to the project! Let's add a
    second table from another schema.

Once again, click Add to Project**.**

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image30.png){width="3.2798392388451445in"
height="0.9787226596675416in"}

28. Choose Connected data again.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image35.png){width="5.989361329833771in"
height="2.712318460192476in"}

29. Click Select source.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image32.png){width="4.404255249343832in"
    height="2.9332852143482064in"}

30. Now select -- Db2_Source_Local SOLUTIONS CUSTOMER_ACTIVITY then
    Select.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image36.png){width="6.513057742782152in"
height="3.223403324584427in"}

31. Name the asset CUSTOMER_ACTIVITY Create.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image37.png){width="6.509515529308836in"
height="4.1276596675415576in"}

32. When complete, your assets list for your project should contain 3
    assets; two tables and a connection.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image38.png){width="5.980243875765529in"
height="3.3307688101487316in"}

### **Exploring and Profiling data**

One of the most powerful capabilities of Cloud Pak for Data is its
ability to automatically create descriptive information, business
classifications, etc., about your data. This information will then be
exploited to do things such as determine where sensitive information is,
decide how we should handle such information, describe who can see it
and who cannot, assign business terminology to the data to make it easy
for business users to locate and understand, and a whole host of other
capabilities.

33. Next we'll start to get an understanding of our data; click on the
    CUSTOMER_DEMOGRAPHICS table.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image39.png){width="5.993421916010499in"
height="3.286885389326334in"}

34. This will bring up a preview window showing you a sample of our
    data, and a number of options to work with it. Take a minute to
    familiarize yourself with this screen.

![A screenshot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image40.png){width="6.015230752405949in"
height="3.3829790026246718in"}

35. The first thing we'll do is profile the data; profiling is a common
    practice of inspecting the data to understand basic characteristics
    of your columns such as frequency distributions, formats,
    completeness, etc. In Cloud Pak for Data, you will see that it goes
    a lot further than that...

36. Click the tab Profile.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image41.png){width="3.893616579177603in"
height="1.1222779965004375in"}

> This will open the profile launch window.

37. First, click Select Data Classes.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image42.png){width="6.002041776027997in"
height="3.057377515310586in"}

38. This will show a list of all "out of the box' data classes that can
    be assigned automatically during profiling to the different data
    columns. (Sometimes this does not populate -- if so, Cancel and
    reselect.)

This window allows you to de-select certain classes if they aren't
pertinent to your business or to this profiling exercise. For now, we
will leave them all active. In addition, custom data classes can be
defined for your business and added to this repository.

Click Cancel (to return to the profile launch screen).

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image43.png){width="6.0in"
height="5.31455271216098in"}

39. Now click Create Profile.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image44.png){width="5.985948162729659in"
height="3.0491797900262467in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: The profiling process will |
| Description generated with very  | launch. This will take a few     |
| high                             | moments to complete so feel free |
| confidence](/User                | to leave this screen and return, |
| s/tjm/Documents/GitHub/CPD-works | but it should only take between  |
| hop/labs/images/media/image11.pn | 2-3 minutes.                     |
| g){width="0.37572287839020124in" |                                  |
| height="0.37572287839020124in"}  | ![A screenshot of a cell phone   |
|                                  | Description automatically        |
| Data Steward                     | generated](/Use                  |
|                                  | rs/tjm/Documents/GitHub/CPD-work |
|                                  | shop/labs/images/media/image45.p |
|                                  | ng){width="3.6475404636920383in" |
|                                  | height="1.4463156167979003in"}   |
|                                  |                                  |
|                                  | Click refresh on the browser to  |
|                                  | see if it finished.              |
|                                  |                                  |
|                                  | ![A picture containing meter,    |
|                                  | clock Description automatically  |
|                                  | generated](/Us                   |
|                                  | ers/tjm/Documents/GitHub/CPD-wor |
|                                  | kshop/labs/images/media/image46. |
|                                  | png){width="1.385246062992126in" |
|                                  | height="0.7336876640419947in"}   |
+----------------------------------+----------------------------------+

40. When it is complete, you will see:

![A screenshot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image47.png){width="6.041426071741032in"
height="3.1702121609798777in"}

41. This is a bird's eye view of the results that have been generated by
    the profile run. Note that you can immediately determine frequencies
    and pay attention to the data classes that have been identified.
    Here we are looking at Gender, which was automatically determined
    during profiling based on the column metadata and the data itself.

Scroll right to see other columns, like TAXID...

![A screenshot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image48.png){width="6.002404855643045in"
height="4.329786745406824in"}

42. Click back to the section Preview.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image49.png){width="5.250917541557305in"
height="1.673267716535433in"}

43. Click on the down arrow for TAXID to see how Profiling found the
    identifier: US Social Security Number.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image50.png){width="5.249358048993876in"
height="4.049504593175853in"}

**\
**

### **Refining visualizations** 

The next steps will allow us to use visualization techniques to further
get an understanding of our data; visualization is a powerful way to get
quick insights and make decisions about what we want to do next.

44. Click Refine.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image51.png){width="1.8510640857392826in"
height="0.9527537182852144in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: If you receive this error, |
| Description generated with very  | back up in the browser and       |
| high                             | refresh to fix.                  |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | ![A screenshot of a cell phone   |
| hop/labs/images/media/image11.pn | Description automatically        |
| g){width="0.37572287839020124in" | generated](/Us                   |
| height="0.37572287839020124in"}  | ers/tjm/Documents/GitHub/CPD-wor |
|                                  | kshop/labs/images/media/image52. |
| Data Steward                     | png){width="5.721519028871391in" |
|                                  | height="1.5148818897637795in"}   |
+----------------------------------+----------------------------------+

45. Click Visualizations Map.

NOTE: You may need to click the double drop down arrow to expand the
list of visualizations to find Map.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image53.png){width="6.710497594050744in"
height="2.808510498687664in"}

46. Fill in the Details as shown below.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image54.png){width="2.6288156167979in"
height="4.478722659667541in"}

47. Use your mouse's wheel to zoom in and center the United States on
    the visualization.

Hover over any circle on the map, which indicates the Estimated Income
by that City.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1933d678.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image55.png){width="5.458333333333333in"
height="3.335648512685914in"}

48. If the Data Scientist or Business Analyst want to keep a
    visualization, they can download it by clicking on the image icon
    shown.

Then, they can either save it, or review it with Open with Image Viewer
(depending on browser and OS).

![A close up of text on a white background Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image56.png){width="6.638297244094488in"
height="2.5490955818022747in"}

49. Close the Image viewer (if you have it open) and click on the Data
    tab to return to your data view (you may see a popup asking if you
    want to leave the page after clicking Data. If so, choose yes).

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image57.png){width="3.2622944006999126in"
height="1.8662029746281714in"}

### **Data refinery flows** 

You should now be back at the data grid view page. (See below)

Data Refinery flows are a powerful way to make adjustments to your data,
in a visual, self-service environment. As you choose steps, it will
create a pipeline process; each step is reversible and editable as well
so that you may back up in case of error.

50. Click Refine if you are not already in the Data Refinery Flow
    Editor.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image51.png){width="1.8510640857392826in"
height="0.9527537182852144in"}

51. The screen will refresh with a slightly different look; you'll still
    have your data grid, but you'll also see some new options for
    'Operation', 'Steps', etc.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image58.png){width="6.52127624671916in"
height="3.958435039370079in"}

52. You have been working in what is known as the Data Refinery. This
    module gives you many different capabilities for transforming, or
    "shaping" your data, using an easy to understand spreadsheet and
    menu-driven function paradigm.

The first thing we want to do is scroll over to our two zip code fields,
ZIP and ZIP4. Note that the zip field sometimes contains only 4 digits
instead of 5. This commonly happens when the field at some point was
defined as numeric and the leading digit is a zero -- it automatically
gets dropped. Many east coast regions have zip codes that start with
zero -- we'll want to pad the field to get the 0 back. Secondly, we'll
want to pad all ZIP4 fields to have 4 zeros if there is a zero in the
field.

53. Click on the ellipses next to the ZIP4 field. This will bring up a
    floating menu with a number of actions, or what we call operations,
    that you can use to transform our zip field. Some commonly used
    functions are called out directly, but we want to pad, so...

Click on View All.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image59.png){width="3.297871828521435in"
height="3.4088582677165356in"}

*Tip: Use your browser zoom in/out feature to see the View All option.*

54. Now we see all of the shaping operations by category on the left,
    and the column we're concentrating on, ZIP4.

We're making a text transformation to pad missing numbers with zeros, so
click Text.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image60.png){width="4.52127624671916in"
height="1.6082392825896763in"}

55. Next, we choose the operation -- click the dropdown below Text
    Operation.

Choose Pad Characters.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image61.png){width="3.643138670166229in"
height="3.414893919510061in"}

56. This brings up a window where you put in the parameters for padding
    characters. This function takes 3 parameters -- Side to pad:
    (Right), what the length of the resulting field should be (4), and
    what pad string to use: (0).

Here are the parameters you should choose:

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image62.png){width="3.3154002624671914in"
height="4.1063834208223975in"}

57. After entering these parameters, click the Apply button. This will
    take you back to the data grid, and our field ZIP4 will now be
    padded if necessary.

![A close up of a sign Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image63.png){width="2.212765748031496in"
height="0.7409262904636921in"}

58. We're now going to do a similar thing to the ZIP field. We want to
    pad the zip field with a zero, if necessary, to make the field 5
    characters. *Don't look at the screenshot below!* Try it on your own
    first -- but if you're struggling, the screenshots below should
    help.

![A screen shot of a computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image64.png){width="5.8607086614173225in"
height="6.819149168853893in"}

59. When you click Apply you're returned to the data grid. Scroll over
    to ZIP and verify the leading zeros are in place:

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image65.png){width="4.605339020122485in"
height="0.5409831583552056in"}

60. What's also great about refinery is that as you add operations it
    keeps a list of those operations, in easy to understand English, not
    code -- and you can delete a step at any point by clicking the
    garbage can on that step -- the data will revert back to its state
    prior to the step.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image66.png){width="2.3114752843394575in"
height="2.8274300087489066in"}

61. Now that we've built a pipeline with two steps, we want to run it so
    we can persist the data somewhere. To do that, we save the pipeline
    as a "job".

Click the down arrow icon next to the clock and play arrow icons,

then click Save and Create a Job.

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image67.png){width="2.54255249343832in"
height="1.5472123797025372in"}

62. Next we need to name the job and then run it.

    Enter the name Clean-Zips Create and Run.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image68.png){width="6.180850831146107in"
    height="3.199847987751531in"}

63. The job takes about a minute to complete. You can see it running on
    the screen.

Hit the refresh icon to see the status more quickly.

![A drawing of a person Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image69.png){width="1.6702121609798775in"
height="0.9308300524934383in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: Due to an issue, the first |
| Description generated with very  | attempt to run the job may fail; |
| high                             | if so, just re-run and it should |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | be successful.                   |
| hop/labs/images/media/image11.pn |                                  |
| g){width="0.37572287839020124in" |                                  |
| height="0.37572287839020124in"}  |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+

64. When Completed, you can check the logs of the job if you wanted to.
    This can be especially useful if the job is complex. This job is
    only a simple two step job so we will not review it now.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image70.png){width="3.1170209973753282in"
height="0.9431332020997375in"}

65. Click on the breadcrumb trail to return back to the project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image71.png){width="3.4914391951006123in"
height="0.9787237532808399in"}

66. A new output was created from the Refine job.

Click on it: CUSTOMER_DEMOGRAPHICS_shaped.csv.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image72.png){width="6.004026684164479in"
height="3.5in"}

67. Scroll over to find the ZIP and ZIP4 columns. Notice the data is
    padded with four zeros when there was previously only one zero in
    ZIP4 and the ZIP field is left padded with a 0.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image73.png){width="2.1489359142607176in"
height="2.9901859142607172in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | The power of Refine can be used  |
| Description generated with very  | by more than just the Data       |
| high                             | Steward because it is launched   |
| confidence](/User                | from a Project, which enables    |
| s/tjm/Documents/GitHub/CPD-works | many more personas the ability   |
| hop/labs/images/media/image11.pn | to shape and refine data assets  |
| g){width="0.37572287839020124in" | that the Data Steward may have   |
| height="0.37572287839020124in"}  | given them access to. This gives |
|                                  | anyone the ability to explore    |
| Data Steward                     | and shape data on their own with |
|                                  | self-service capabilities.       |
|                                  |                                  |
|                                  | If you need to make a permanent  |
|                                  | change to the data, for example, |
|                                  | to write it back to a database   |
|                                  | from where it came, that is      |
|                                  | where Transform comes in. We     |
|                                  | will explore Transform later in  |
|                                  | this lab.                        |
+----------------------------------+----------------------------------+

## Reviewing the business glossary

> Business Glossaries have been around in various incarnations for about
> ten years. They have enjoyed varying degrees of success. The problem
> with glossaries, and with data governance in general, is that it's too
> costly and manually-intensive to maintain and enhance these
> glossaries, and the associated metadata, etc., over a long period of
> time. Today you'll see how Cloud Pak for Data's Automation
> capabilities finally make well-maintained, value-added governance
> solutions a reality.
>
> A business glossary consists of categories and terms.
>
> Categories provide the logical structure for the glossary so that you
> can browse and understand the relationships among terms and categories
> in the glossary. Categories can be organized in a hierarchy based on
> their meaning and relationships to one another.
>
> A Business Term is a word or phrase that describes a characteristic of
> the enterprise. Terms are the fundamental building blocks of the
> glossary. Each Business Term has a parent Category, but it can also be
> referenced by other Categories. When you create a Business Term, you
> need to provide a meaningful name. Business Terms can be assigned to
> other Business Terms, and to other asset types as well.\
> \
> Business Terms can be associated with a variety of different data
> assets in your organization, from tables and columns and files and
> fields to policies, ETL processes, data models, etc. This makes it
> easy for business users to find what they are looking for using
> terminology they understand.\
> \
> Let's explore some of the categories and terms that are pre-loaded
> into our environment.

68. Start at the Navigation Menu.

Click Organize Data and AI governance Categories.

![A screenshot of a cell phone screen with text Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image74.png){width="2.520767716535433in"
height="2.0744674103237095in"}

69. Review a category already created for you to review.

Click Customer Churn Category.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image75.png){width="3.6702121609798777in"
height="1.5432556867891514in"}

70. Review the Business Terms and Policy for the Category.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image76.png){width="6.560507436570429in"
height="2.188118985126859in"}

Notice that on this page you could create a new Category, but do not do
so. We will only be working with this one category.

71. Click Navigation Menu Organize Data and AI governance Business
    terms.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image77.png){width="2.5983300524934383in"
height="2.1382972440944883in"}

72. Here you can edit or add new Business terms that are either in
    Published or Draft mode.

Click on one to review it in more detail.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image78.png){width="5.085106080489939in"
height="3.141385608048994in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | You can create your own Glossary |
| Description generated with very  | with Categories and Business     |
| high                             | Terms manually or import them    |
| confidence](/User                | from a file. In addition, you    |
| s/tjm/Documents/GitHub/CPD-works | can import Industry Models from  |
| hop/labs/images/media/image11.pn | IBM for industries such as       |
| g){width="0.37572287839020124in" | finance, banking, healthcare,    |
| height="0.37572287839020124in"}  | and insurance, and import them   |
|                                  | into CPD.                        |
| Data Steward                     |                                  |
|                                  | See the services screen          |
|                                  | ![](/User                        |
|                                  | s/tjm/Documents/GitHub/CPD-works |
|                                  | hop/labs/images/media/image79.pn |
|                                  | g){width="0.23161745406824147in" |
|                                  | height="0.1875in"} then Industry |
|                                  | solutions.                       |
+----------------------------------+----------------------------------+

## Automation Capabilities -- Discovery, Classification, Term Assignment

As mentioned in the business glossary section, the key to successful
data governance lies in the use of automation and machine learning
techniques to make decisions, create relationships, and generally
enhance the value, timeliness and accuracy of your data governance
activities. What you'll be doing next is known as Auto Discovery. This
is a process that will crawl the data you point it at, and do several
things:

a.  *Classify the data* -- this is the process that will assign business
    classifications to your data elements.

b.  *Score the data* -- this will allow you to quickly understand how
    clean your data is.

c.  *Assign Terms to your data* -- this is where CPD will look at the
    data you're pointing to, take the business glossary terms, and based
    on both the data in the columns and the metadata and classifications
    already determined, assign a confidence rating to specific terms
    that it matches to the columns. You can set a threshold for when it
    automatically makes the connection between terms and columns, or you
    can use a workflow-driven review process to inspect the confidences
    and determine whether to assign or not.

```{=html}
<!-- -->
```
73. Let's get started. Go to the Navigation Menu.

Click Organize Curation Data discovery.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image80.png){width="2.589890638670166in"
height="4.148935914260718in"}

74. This will bring up a screen showing any past results and allow you
    to create a new discovery job. Click Automated discovery.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image81.png){width="4.7340419947506565in"
height="2.7105905511811024in"}

75. Next, we'll choose the connection that gets us to our data, and the
    options we want for this discovery run:

For Connection choose the connection we created earlier, i.e., Db2
Advanced Edition, then click Browse.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image82.png){width="6.0in"
height="2.630282152230971in"}

76. This will bring up a screen where we can choose which tables,
    schemas, or an entire database for which we want to run Discovery.
    We're going to choose two tables that will be our main tables for
    later transformation.

Click to expand BLUDB then CPDUSER CUSTOMER_DEMOGRAPHICS, and SOLUTIONS
CUSTOMER_ACTIVITY. Then Select .

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image83.png){width="3.5256878827646543in"
height="3.6595745844269465in"}

77. Next, click the checkboxes for Analyze Columns, Analyze Data Quality
    and Publish to Catalog. (Assign terms will automatically be
    checked.)

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image84.png){width="3.808510498687664in"
height="2.299484908136483in"}

78. Lastly, you need to choose where to place the results for further
    analysis or inspection -- these are called *Projects.*

Scroll down to find the Select a project dropdown.

Choose Add a project.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image85.png){width="5.851064085739282in"
height="0.9053587051618548in"}

79. This will bring up a screen where you can name the Project
    Organize-Workspace and create it.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image86.png){width="3.9680850831146106in"
height="3.3273075240594925in"}

80. Once the project is created you'll be taken back to the Discovery
    screen.

Now click Discover.

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image87.png){width="2.1489370078740158in"
height="0.8513101487314085in"}

81. This will bring up a screen where the status of the discovery job is
    shown; we see the Import portion is running; this imports the
    metadata from the tables into our workspace.

82. Click the refresh button on the right to update the status.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image88.png){width="1.4426224846894138in"
height="0.8992968066491689in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image89.png){width="3.7689884076990374in"
height="1.5in"}

The process will take a minute or two to complete -- when it's complete
you'll see the blue Running turn to green Finished.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image90.png){width="6.0in"
height="1.575117016622922in"}

83. We can now take a look at what the discovery process found.

    When finished, click the eye icon next to the CUSTOMER_DEMOGRAPHICS
    table entry.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image91.png){width="6.0in"
    height="1.5569247594050744in"}

84. This takes us into the view of our demographics table.

    Click the \> next to the table name to expand the columns.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image92.png){width="4.043739063867017in"
    height="1.3957097550306212in"}

85. You will then see that the discovery process has automatically
    determined data classes for many of the columns, as well as assigned
    Business Terms if the confidence of the term being a match is \>
    80%. This is incredibly powerful -- in the past this sort of work
    was done completely manually, and often the results were
    error-ridden. Research suggests this automation eliminates 85%-90%
    of the time it takes to do this manually.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image93.png){width="6.004861111111111in"
    height="4.335670384951881in"}

    *Note: Your Quality score may show numbers slightly different than
    above.*

86. So, what can we do with this information? Since we decided to
    automatically publish it to the catalog, we can look at some of the
    assets and see what we can find. First, let's check the information
    that's been collected in the workspace from the discovery.

    Click the back arrow to return to our main discovery listing.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image94.png){width="4.223404418197726in"
    height="1.7232283464566929in"}

87. Next, click the link to jump into the Organize-Workspace project.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image95.png){width="5.319149168853893in"
    height="2.1445166229221346in"}

88. We're now shown a dashboard with some highlighted information about
    our discovery. If you scroll down, you'll see the top data classes
    selected from the data that we ran discovery against, and also the
    quality score distribution across our data sets. The distribution
    shows that the data sets are pretty clean, scoring 90-100% on
    quality scores.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image96.png){width="6.0in"
    height="3.1420188101487314in"}

89. Next, let's look at some of the other characteristics of our data
    elements that have been discovered.

    Click the link that says Data assets.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image97.png){width="5.75386154855643in"
    height="1.393442694663167in"}

90. Next, click on the CUSTOMER_DEMOGRAPHICS tile.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image98.png){width="5.999075896762904in"
    height="2.942622484689414in"}

91. We are now looking at all the columns in the table, and different
    information about each column; Data Class, Business Term assigned,
    even the prevailing format and whether the field is unique. You can
    click on a column name to get even more detailed information.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image99.png){width="6.393771872265967in"
    height="3.787234251968504in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | A Data Dictionary contains a     |
| Description generated with very  | Business Glossary (Categories    |
| high                             | and Business Terms) as well as   |
| confidence](/User                | Information Governance Policies  |
| s/tjm/Documents/GitHub/CPD-works | and Rules to ensure data         |
| hop/labs/images/media/image11.pn | compliance with business         |
| g){width="0.37572287839020124in" | objectives, as well as data      |
| height="0.37572287839020124in"}  | security.                        |
|                                  |                                  |
| Data Steward                     | In this lab we have a beginning  |
|                                  | sample of these items, but in    |
|                                  | reality, a Data Dictionary for   |
|                                  | any organization is quite large  |
|                                  | and can and should be updated    |
|                                  | frequently as new data sources,  |
|                                  | regulations, and other criteria  |
|                                  | require it.                      |
+----------------------------------+----------------------------------+

## Reviewing Classifications, Data Classes, and Reference Data

### **Classifications**

A classification describes the sensitivity level of data. In catalogs, a
classification describes the sensitivity of a whole data asset to help
catalog members understand the asset. You can use classifications to
describe Business Terms, Data Classes, Reference Data Sets, and
Governance Rules. In data protection Rules, you can include
Classifications in conditions to identify the type of data to restrict.

92. Start at the Navigation Menu.

Click Organize Data and AI governance Classifications.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image100.png){width="2.4574464129483813in"
height="2.2423162729658794in"}

93. Scroll to find Classification Confidential and click on it.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image101.png){width="6.0000645231846015in"
height="2.7377055993000874in"}

94. The Classification is described here. You could also add the primary
    Category here, but there is no need to do so now.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image102.png){width="5.926229221347332in"
height="2.6877865266841643in"}

### **Data classes**

Data classes describe the contents of data in a column of a relational
or structured data set. Data classes are assigned to columns when
profiling a structured data asset and shown on the **Profile** page in a
Catalog or Project.

Watson Knowledge Catalog provides a predefined set of Data Classes. Some
Data Classes are categorized into groups, for example:

-   If you select **Date**, it also includes **Date of Birth**.

-   If you select **Driver's License**, it also includes all dependent
    driver licenses listed below.

95. Start at the Navigation Menu.

Click Organize Data and AI governance Data classes.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image103.png){width="2.3317891513560807in"
height="2.127659667541557in"}

96. Scroll to find Account Number and click on it.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image104.png){width="5.249931102362205in"
height="2.297871828521435in"}

97. The Data Class is described here. You could also add the primary
    Category here.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image105.png){width="6.298611111111111in"
height="3.870097331583552in"}

### **Reference Data Set**

Reference Data Sets define lists of permissible values that are allowed
for use within a data field and may be referenced by Business Terms,
Policies, Rules and Data Classes in Watson Knowledge Catalog.

You can capture, manage, and socialize reference data --- setting it up
once and re-using the reference data in other places.

98. Start at the Navigation Menu.

Click Organize Data and AI governance Reference data.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image106.png){width="2.3479757217847768in"
height="2.3404254155730535in"}

99. Scroll to find Reference data set State and Province Codes and click
    on it.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image107.png){width="6.004047462817148in"
height="2.5245898950131234in"}

100. Scroll down to review the Reference data set rows (the data).

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image108.png){width="4.213114610673665in"
height="3.7977373140857393in"}

101. Click section Related content and review how you can relate Rules
     or Data classes to it.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image109.png){width="5.999505686789151in"
height="3.368852799650044in"}

### **Data Protection & Masking**

Another challenging requirement in Data Governance is the ability to
ensure that only the correct users or roles see the correct data. Often,
this can get very granular, such that a particular role needs to view a
set of columns in a table, but other columns in the same table are off
limits. Like with Business Glossaries, the challenge is in how to ensure
data protection when there is an exploding volume of sources -- enter
automation.

Data Protection Rules are a unique and incredibly powerful capability in
Cloud Pak for Data. They allow you to set up masking or redaction
capabilities, on a columnar or tabular basis once, and any data that
subsequently gets added to the catalog, if it has the same
characteristics as the rule states, will automatically be masked or
redacted. This is another benefit of the automated data discovery and
classification process.

It works like this:

a.  You build a data protection rule stating that any column in the data
    catalog that is classified as 'Date of Birth' must be redacted from
    view when the user is a developer.

b.  You run data discovery on a new data source that you want to
    integrate into your catalog, data lake, etc.

c.  Data discovery automatically classifies any field it determines
    through ML and fuzzy logic to be DOB information with the data class
    "Date of Birth".

d.  You associate this data protection rule with a more general policy
    stating that certain data elements must be redacted.

e.  Immediately this data protection rule will be executed any time a
    developer tries to view a Date of Birth column.

Let's see how this works in practice. The first thing we will do is
create a policy around masking PII data.

102. Click Navigation menu Organize Data and AI Governance Policies.

![A close up of text on a black background Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image110.png){width="2.404255249343832in"
height="2.9448097112860894in"}

103. We'll create a new policy, so click New policy Create new policy.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image111.png){width="2.734041994750656in"
height="1.5647134733158354in"}

104. Now fill in the following information (Policy name = Mask PII Data)
     and click Save as draft.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image112.png){width="3.1595745844269465in"
height="3.766654636920385in"}\
We save this as a draft because Cloud Pak For Data has a built-in
workflow capability that ensures that all governance artifacts, rules,
policies, etc. need to be reviewed before being published.

105. Publish the policy -- click Publish -- Publish.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image113.png){width="2.893616579177603in"
height="0.8570538057742783in"}

106. Next, we'll create our data protection rule, and then link it to
     our policy.\
     Click Navigation menu Organize Data and AI Governance Rules.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image114.png){width="2.2142793088363955in"
height="2.7121216097987753in"}

107. Click Create new rule.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image115.png){width="2.3617016622922136in"
height="1.77127624671916in"}

108. Choose Data protection rule.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image116.png){width="3.674348206474191in"
height="3.2272725284339456in"}

109. Now we'll enter the criteria for our rule.

Fill out the form as shown here:

Name: Mask DOB for Developer user

Type: Access

Business definition: A rule to ensure that PII masks date of birth.

If Data class contains any 'Date of Birth'

and (+)

User name contains any Developer

Action

then mask data in columns containing Date of Birth

Redact

and click Create rule.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image117.png){width="2.2847222222222223in"
height="2.3640529308836395in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image118.png){width="1.9043066491688538in"
height="1.7013888888888888in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image119.png){width="1.4444444444444444in"
height="1.7777777777777777in"}![A screenshot of a social media post
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image120.png){width="5.794596456692913in"
height="3.1041666666666665in"}

110. Next, we want to associate this rule to the Policy we created
     earlier. For data protection rules to be enforced, they need to be
     associated with one or more policies; this ensures that there is a
     business-documented reason (the policy) for having the rule.

Click Navigation menu Organize Data and AI Governance Policies.

![A close up of text on a black background Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image121.png){width="2.6382972440944883in"
height="3.2314720034995625in"}

111. Click to open the policy called Mask PII Data.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image122.png){width="4.114753937007874in"
height="3.997638888888889in"}

112. Next, scroll down until you see the section of the page called Data
     Protection Rules and click Add Data Protection Rule.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image123.png){width="5.998134295713036in"
height="3.7459011373578304in"}

113. Click the checkbox next to our Data Protection Rule.

Then click Add.

Note: There's no need to hit save after adding the Rule; it's
automatically saved, and you will get a small indicator of that in the
upper right of the screen.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image124.png){width="3.780307305336833in"
height="3.8297878390201223in"}

114. The next thing we'll want to do is add a collaborator to our
     catalog -- catalogs can have collaborators with various roles; we
     will add our 'developer' user, and then we'll log in as that user
     to see the masking in action.

Go to Navigation Menu Organize All catalogs.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image125.png){width="2.0822878390201223in"
height="1.9in"}

115. Click on CPD Workshop Catalog.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image126.png){width="4.356198600174978in"
height="2.0in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note -- This is the catalog      |
| Description generated with very  | where our data assets were       |
| high                             | automatically published after    |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | running Auto Discovery.          |
| hop/labs/images/media/image11.pn |                                  |
| g){width="0.37572287839020124in" |                                  |
| height="0.37572287839020124in"}  |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+

116. This will bring you into the screen that shows the assets in the
     catalog, and tabs for different types of information. Click the tab
     Access Control.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image127.png){width="6.0in"
height="4.467723097112861in"}

117. Next, click the link on the right side of the screen that says Add
     Collaborator.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image128.png){width="1.9468088363954505in"
height="0.8459951881014873in"}

118. Next, start typing the word Developer and you will get a drop down
     of all the users in the system with that in their name.

Choose Developer from the list click Add. This will add the Developer as
a Viewer (default).

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image129.png){width="6.5125in"
height="3.7040485564304464in"}

119. We've now added the user as a collaborator to this project. Let's
     log in as that user.

First log out CPD User by clicking the User Icon in the upper right
corner Log out.

![A screen shot of a smart phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image130.png){width="2.489381014873141in"
height="2.9in"}

120. Then log back in as developer (password should be saved in the
     browser, but it is cpdaccess).

121. When the welcome window comes up, click Explore Catalogs, and on
     the next screen open the catalog CPD Workshop Catalog.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image131.png){width="1.7797922134733157in"
height="1.5737707786526685in"}
![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image132.png){width="0.650505249343832in"
height="0.7777777777777778in"}![A screenshot of a cell phone Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image126.png){width="3.6721314523184603in"
height="1.6859339457567803in"}

122. Next, we'll choose the table CPDUSER.CUSTOMER_DEMOGRAPHICS.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image133.png){width="3.0983606736657916in"
height="2.7904636920384953in"}

123. When the Table preview opens, you will see that the DOB field is
     all 'X's' and there is a padlock icon over the column.

. ![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image134.png){width="1.614753937007874in"
height="2.7404680664916885in"}

124. Now log out and then log back in as user cpduser with password of
     cpdaccess.

## Transforming Data

One of the basic capabilities necessary in a good information
architecture is the ability to implement sophisticated transformation
and data manipulation. This capability is traditionally known as
Extract/Transform/Load, or ETL. In Cloud Pak for Data, because of the
strong governance capabilities, the ETL process automatically creates a
documented data flow that enables data lineage. Data lineage is the
ability to see exactly what happens to data as it moves through your
organization's systems. This information is critical in today's world of
data privacy regulation, where the ability to document your
organization's data processing steps is a requirement for compliance.

### **Reviewing an existing job**

125. ETL processes, or 'jobs', are developed in a special type of
     project called a Transform Project. So, let's open our transform
     project and get started.

Click Navigation Menu Projects.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image135.png){width="2.7765955818022747in"
height="2.0932589676290463in"}

126. Open the project CPD_Workshop_Transform_Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image136.png){width="4.744680664916886in"
height="2.1096751968503935in"}

127. When you open the project, you are shown a list of any jobs that
     exist. There are also tabs along the top of the screen for the
     different types of artifacts that are typically used in developing
     jobs -- Connections, Table Definitions, Parameter Sets, and Jobs

Let's inspect the job that's there. Click on the name to open it:

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image137.png){width="4.510637576552931in"
height="1.87457895888014in"}

128. When we open the job, we see a graphical data flow moving left to
     right. This job actually joins two tables, then does some work to
     transform some of the columns, and finally writes out the joined
     data to a new table.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image138.png){width="3.9534886264216973in"
height="1.407354549431321in"}

129. Double click on the Transform stage -- this opens up a window that
     shows our transformation logic.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image139.png){width="2.5902777777777777in"
height="1.1810597112860892in"}

130. Click on Outputs.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image140.png){width="4.916666666666667in"
height="1.3472222222222223in"}

131. Now we see a grid with Columns for derivation, column name, etc.

Scroll all the way to the bottom and we see a row with a derivation, for
the column AGE_GROUP.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image141.png){width="5.04255249343832in"
height="1.2843121172353456in"}

132. Double click to see the full derivation; in this case we're
     creating a column to hold a value that describes the age group of
     each individual.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image142.png){width="5.097287839020122in"
height="1.5106386701662293in"}

133. Cancel out of the stages until you're back to the job flow diagram.

Then click the x in the upper right corner to close the job.

### **Creating a job**

We will next create our own Transformation job.

134. Click Jobs Tab, then Create Parallel job.

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image143.png){width="5.4468088363954505in"
height="1.8971128608923884in"}

135. This created a blank canvas we can use to develop our job. Before
     we begin, first ensure the settings are correct.

Click the gear icon for Settings.

![A close up of a device Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image144.png){width="4.748611111111111in"
height="0.9860433070866141in"}

136. Then ensure the list shows the same checked and unchecked options
     as below:

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image145.png){width="2.8524595363079617in"
height="3.937097550306212in"}

137. On the left you see all of the different stages available for
     connecting to data, transforming it, routing it, etc.

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: If the palette isn't       |
| Description generated with very  | showing, click the leftmost icon |
| high                             | on the button bar:               |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | ![A screenshot of a cell phone   |
| hop/labs/images/media/image11.pn | Description automatically        |
| g){width="0.37572287839020124in" | generated](/User                 |
| height="0.37572287839020124in"}  | s/tjm/Documents/GitHub/CPD-works |
|                                  | hop/labs/images/media/image146.p |
| Data Steward                     | ng){width="2.4180325896762906in" |
|                                  | height="1.63001312335958in"}     |
+----------------------------------+----------------------------------+

138. We're going to create a job that joins our two tables,
     CUSTOMER_DEMOGRAPHICS and CUSTOMER_ACTIVITY. Let's start by
     dropping two stages to represent these tables.

On the palette, find the Connection icon. It should be the first one on
the palette.

Left click the icon, drag it to the canvas, and left click again to
release it. This will open up a window where you'll be guided to fill
out the connection information for the database we'll be extracting
from.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image147.png){width="5.455561023622047in"
height="2.52127624671916in"}

139. The Connection asset browser appears. Click Db2 Advanced Edition to
     select our Db2 Advanced Edition connection, choose it from the list
     and then click Next.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image148.png){width="5.255319335083114in"
height="4.213919510061243in"}

140. On the next window, choose Schema CPDUSER, and click Next.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image149.png){width="5.260296369203849in"
height="4.212765748031496in"}

141. Next, it's time to choose our table -- we're going to choose
     CUSTOMER_DEMOGRAPHICS and then click Next.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image150.png){width="4.893939195100613in"
height="3.936595581802275in"}

142. Now we see a list of the columns in our table.

Click Add to job.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image151.png){width="5.691489501312336in"
height="4.563657042869641in"}

143. Now, we'll do the same process for our second table. Repeat the
     same steps you just did, but this time, change the schema you
     choose to 'SOLUTIONS' and the table name to 'CUSTOMER_ACTIVITY'.
     When finished, your canvas should look like this:

![A close up of text on a white background Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image152.png){width="3.243462379702537in"
height="2.7569444444444446in"}

144. Single click the CUSTOMER_DEMOGRAPHICS icon on the canvas.

145. Navigate to the palette on the left and do the following:

     -   Find the Join icon on the palette (in the Stages section.).

     -   Click it once.

     -   Hold your mouse button down and drag the stage to the canvas.

     -   This should draw a link from CUSTOMER_DEMOGRAPHICS to the join
         > stage. \[If you do not see the link being drawn, remove the
         > Join and make sure that you click CUSTOMER_DEMOGRAPHIC
         > first.\]

     -   Next, single click on the CUSTOMER_ACTIVITY stage.

     -   Click the small blue button on the stage, then drag a link to
         > the join stage.

     -   You should see the join between CUSTOMER_DEMOGRAPHIC and
         > CUSTOMER_ACTIVITY.

         ![A close up of a map Description automatically
         generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image153.png){width="3.606382327209099in"
         height="2.304714566929134in"}

146. If you do not get it right it the first time, delete the Join from
     canvas and try again.

147. Single click Join on the canvas to select it. (Make sure you select
     it before going to next step.)

148. Next, go to the palette, select the transformer stage, and drag it
     onto the screen.

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image154.png){width="4.597222222222222in"
     height="2.2906014873140856in"}

149. Lastly, we'll add our target stage. Single click on the Transform
     stage. Then select the Connector icon at the top of the palette,
     and drag it onto the canvas. This will pop up the connections
     configuration window.

150. Click the link at the bottom that says Add as Target. This should
     immediately link the target stage with the Transformer stage, but
     if not, draw the link from the transformer stage to the target.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image155.png){width="5.291747594050744in"
     height="4.244680664916886in"}

     You should see the following:

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image156.png){width="4.6875in"
     height="2.4716655730533685in"}

151. Next, double click the last connection icon.

     This will bring up the property sheet for our target table. We'll
     want to put in a table name, and we'll also want to create the
     table as part of the job run if it is not there.

152. First, under the Table name field, enter CPDUSER.JOINED_CUSTOMERS,
     and then under Table action choose Replace.

     This will attempt to drop and re-create the table, but if no table
     of the same name exists, it will just create the table.

     Click OK to save the properties.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image157.png){width="4.063829833770779in"
     height="2.201622922134733in"}

153. Your job should now look like this:

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image158.png){width="5.544363517060368in"
     height="2.3958333333333335in"}

154. Next, we'll save, compile and then run the job.

     First, click the diskette icon to save the job.

     Give it a name (or take the default Job_1) and click Save.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image159.png){width="4.663448162729659in"
     height="5.531914916885389in"}

155. Next, we'll compile the job by clicking the wrench icon.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image160.png){width="3.0in"
     height="1.9220056867891513in"}

156. Begin to run the job by clicking the run icon, then Run the job.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image161.png){width="5.70620406824147in"
     height="4.882979002624672in"}

157. When the job is done you'll see a green check mark and a run
     result.\
     *(Note: A Warning message may appear that may be safely ignored.)*

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image162.png){width="2.1170209973753282in"
     height="0.7154746281714786in"}

     Lastly, if you'd like to see the result, double-click on the target
     stage (the rightmost stage) and then click View link in the
     property sheet. This will show us our joined result.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image163.png){width="5.52127624671916in"
     height="2.010534776902887in"}

## Data Lineage

The last thing we will explore is Data Lineage. One of the main benefits
of a well governed Information Architecture is the ability to describe
and document how data flows through your organization, and what
transformations are executed on the data. This allows organizations to
better comply with regulations, understand the impact of changing
different components of their Information Architecture, and a host of
other benefits.

### **Preparing for Data Lineage**

158. Navigate to Information Asset Lineage

     ![A close up of text on a black background Description
     automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image164.png){width="2.682638888888889in"
     height="2.9863353018372703in"}

159. Click on Lineage Configuration

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image165.png){width="2.6831681977252844in"
     height="3.0627799650043745in"}

160. Change the polling interval to 1 minute Click save.

     ![A screenshot of a social media post Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image166.png){width="4.736826334208224in"
     height="2.6732677165354333in"}

161. Click on Include for Lineage

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image167.png){width="2.619494750656168in"
     height="2.990099518810149in"}

162. Drop down the check box column and choose All Items Change
     Inclusion State

     ![A close up of a sign Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image168.png){width="5.742574365704287in"
     height="1.5361832895888015in"}

163. Ensure the dropdown shows True Click Save

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image169.png){width="5.052797462817148in"
     height="3.4950492125984254in"}

164. Click Data Connection Mappings

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image170.png){width="2.7842979002624673in"
     height="3.1782174103237097in"}

165. Click to select the jdbc entry Click Edit

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image171.png){width="5.753110236220472in"
     height="3.3762379702537184in"}

166. Scroll to the bottom of the window that comes up, and choose BLUDB
     under Bound To Database Click Save

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image172.png){width="4.118811242344707in"
     height="3.9197998687664044in"}

### **Executing Data Lineage**

167. The job we have just built and run automatically documents our data
     flow and allows us to easily visualize what happened during this
     job run. Let's go see what this looks like:

     Navigate to Information Assets.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image173.png){width="2.6382972440944883in"
     height="2.6298140857392824in"}

168. This will bring up a screen that shows you recently accessed
     assets, and a search bar.

     Click on the table CUSTOMER_DEMOGRAPHICS. If the table is not
     there, search for it by typing DEMO into the search bar.

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image174.png){width="5.715277777777778in"
     height="3.551367016622922in"}

169. Once chosen, a window showing table details is displayed.

     Click the ellipses (3 vertical dots) in the upper right corner, and
     then click Data Lineage Viewer.

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image175.png){width="2.145650699912511in"
     height="1.8125in"}

170. Click Run Lineage.

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image176.png){width="3.2291666666666665in"
     height="1.4122101924759405in"}

171. You will then be brought to a visualization of the flow of the
     transform job we created.

     Notice that our source table, CUSTOMER_DEMOGRAPHICS, is actually a
     source for two separate jobs, and that those jobs write the data to
     two separate target tables.

     You can further explore and drill into these steps to see more
     detail. This is an incredibly powerful capability, which is
     automatically available by virtue of the Transform design process.

##  Lab conclusion

We have seen the value in creating a Data Dictionary by creating a
glossary of categories and terms to make data searchable so that data
scientists, data engineers and business analysts can shop for data. The
CPD platform reduces the time-consuming data organization task, making
it easier for the consumers of the data to access and analyze the
trusted data they need.

This lab has shown you how to automatically discover data sources,
automatically classify those sources with business classifications using
CPD machine learning methods, and automatically assign business terms to
those data sources.

This lab also showed you how to create data protection rules, and join
and move data to an analytics Advanced Edition in a Data Transformation
step for further use by the data consumers in the CPD workflow.\
\
**The steps covered here could normally take many weeks, months, and
sometimes even years, to complete using traditional manual methods.
Cloud Pak for Data automates these operations so that you can accelerate
the time to value of your organization's analytics projects.**

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image3.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image4.png){width="6.55357939632546in"
height="2.1944444444444446in"}

**\*\* End of Lab 13 -- Organize -- Deeper Dive**

Lab by John Van Buren, Burt Vialpando and Kent Rubin

## Additional Optional Activities

> There are many other capabilities within the 'Organize' section of
> Cloud Pak for Data. Here we will highlight one of these.
>
> **Using Data Virtualization sources in Organize**
>
> One of the strengths of an integrated platform is that you can use the
> various capabilities interchangeably, reuse previously designed
> components, and in general create a data fabric more quickly than with
> individual tools.
>
> In an earlier lab, we created a virtualized view that was a join of a
> Db2 warehouse table and a MongoDB document store. What if we wanted to
> run auto discovery on that view to understand the quality of the data
> in those two sources when joined together? Or what if we wanted to
> automatically document the attributes of the view with Business Terms
> from our Business Glossary? Let's go ahead and do it!
>
> First, we need to make sure we've got our virtualized view created.
>
> NOTE: *This view was created during the execution of Lab 3, document:\
> **LC03-CPD-3.0.1-Collect-Connections.docx***

172. You can verify it is there by doing the following:\
     From the main navigation menu, choose CollectMy data.

     ![A picture containing clock, meter Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image177.png){width="2.5531911636045495in"
     height="1.58415791776028in"}

173. This will bring up a list of virtualized tables and views. Look for
     the one with the name USER1001.CUSTOMER_DEMOCHURN**;** this is a
     view that represents the join of our DEMOGRAPHICS table, in Db2
     with our ACTIVITY table, in MongoDB:

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image178.png){width="6.45in"
     height="0.861765091863517in"}

174. If that asset is there, you can proceed to the next step.

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: If it's not there, please  |
| Description generated with very  | go back and run the Collect and  |
| high                             | Virtualize lab from our CORE.    |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works |                                  |
| hop/labs/images/media/image11.pn |                                  |
| g){width="0.37572287839020124in" |                                  |
| height="0.37572287839020124in"}  |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+

175. Once you've established that your virtualized view is there, we
     want to simply run some of the actions against it the way we would
     against any other table.

176. From the main navigation menu, choose Organize Curation Data
     discovery.

     ![Screen of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image179.png){width="4.97872375328084in"
     height="2.278992782152231in"}

177. Here, we'll want to run an automated discovery just like before --
     choose new discovery jobautomated discovery

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image180.png){width="3.734041994750656in"
     height="1.8337478127734033in"}

178. Next click the 'Select a Connection' dropdown, and choose 'Add a
     connection'

     ![A screenshot of a cell phone Description automatically
     generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image181.png){width="5.9468088363954505in"
     height="1.9334109798775152in"}

+----------------------------------+----------------------------------+
| ![A picture containing cup       | Note: if the connection          |
| Description generated with very  | 'DV-VIRTUAL-SOURCES' appears in  |
| high                             | the list, then you can skip      |
| confidence](/User                |                                  |
| s/tjm/Documents/GitHub/CPD-works | adding a connection. Simply      |
| hop/labs/images/media/image11.pn | choose 'DV-VIRTUAL-SOURCES' from |
| g){width="0.37572287839020124in" | the list.                        |
| height="0.37572287839020124in"}  |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+

179. The screen will change to a list of possible connections, choose
     'DV-VIRTUAL-SOURCES' and then click 'Next':

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image182.png){width="6.879486001749782in"
     height="1.7548611111111112in"}

180. This will send you back to the discovery window -- click the Browse
     button to take a look at the data available --

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image183.png){width="5.416666666666667in"
     height="1.8532370953630797in"}

181. This will bring up a tree view of the database (BigSQL) and the
     member schemas. Navigate down until you come to 'USER1001' and
     choose our virtual view, CUSTOMER_DEMOCHURN_ACTIVITY, and click
     Select

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image184.png){width="3.71330927384077in"
     height="3.7777777777777777in"}

182. Next, click the checkboxes for 'Analyze columns' and 'Analyze data
     quality', and then drop down the list of projects and choose
     'ORGANIZE-WORKSHOP':

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image185.png){width="5.720208880139983in"
     height="3.3194444444444446in"}

183. Click the 'Discover' button. This will start the discovery process
     and you will see a status window you can click the refresh icon
     periodically to see when it is finished. :

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image186.png){width="6.618055555555555in"
     height="2.4150984251968506in"}

184. It will first show a status of phase Analyze as 'running':

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image187.png){width="6.576388888888889in"
     height="1.2221380139982503in"}

185. Then, after about 60 seconds, click refresh again and the phase
     Analyze should change to 'Finished' Once you see that it has
     finished, you can click the Eye icon to see the results:

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image188.png){width="6.479166666666667in"
     height="1.2725120297462817in"}

186. This will bring up a screen showing the quality scores, data class
     choices made automatically, and business term assignments made
     automatically:

     ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image189.png){width="6.375in"
     height="3.2423709536307963in"}\
     \
     In conclusion: what we have accomplished here is that we can
     understand the quality, possible data classifications, and business
     terms of a virtual table, in this case containing both structured
     Db2 data and semi-structured MongoDB data, as we can for any normal
     table.\
     \
     The integrated nature of Cloud Pak for Data is what makes it
     possible to do so many of your tasks from one place.
