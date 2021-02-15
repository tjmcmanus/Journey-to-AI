# **[Collect: Connections]{.smallcaps}**

## Lab overview

The Collect capability of CPD means accessing your organization's data
regardless of where it resides, whether that be an in-cluster data
source (e.g. the Db2 Advanced Edition) or a native connection to a
remote data source. You can even use the Db2 Event Store or Streams
services to provide streaming access that is best suited for Internet of
Things (IoT) processing.

Additionally, Data Virtualization and Data Transformation are available
to streamline the access, performance, and formatting of the data for
use in later steps of the CPD analytics workflow.

In this lab you will explore Connections for the Collect process. In
later labs you will explore Data Transformation and Data Virtualization.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image1.png){width="6.590616797900262in"
> height="2.2640048118985128in"}

## Persona represented in this lab

The Data Engineer persona is the likely role to perform the various
Collect tasks shown in this lab.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A close up of a logo           | Data Engineers build and         |
| Description generated with high  | optimize the systems to allow    |
| confide                          | data scientists and business     |
| nce](/Users/tjm/Documents/GitHub | analysts to perform their work.  |
| /CPD-workshop/labs/autoai/images | The Data Engineer ensures that   |
| /media/image2.png){width="0.4in" | any data is properly received,   |
| height="0.4in"}                  | transformed, stored, and made    |
|                                  | accessible to other users.       |
| Data Engineer                    |                                  |
+----------------------------------+----------------------------------+

## Db2 data overview -- Transforming for analytics

The Db2 data in our Trade Co. scenario (Demographics and Churn) have two
key factors that make an appropriate scenario for Data Transformation:

-   The data only changes once a month (it is relatively static). Thus,
    copying it and/or changing it for downstream processing in our CPD
    analytics workflow is OK because we are not required to have the
    latest data to get the results we need.

-   The data must be changed before it can be processed in our CPD
    analytics workflow.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image3.png){width="0.5819728783902012in"
> height="0.47515529308836396in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image4.png){width="3.5765726159230096in"
height="1.1389479440069992in"}

Although you will be doing the actual Data Transformation in the next
lab, you will prepare for it in this one by reviewing some steps in this
Connections lab.

### **Logging into the CPD web client (if you have not already done so)**

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image5.png){width="0.7049179790026247in"
height="0.7958748906386701in"}

3.  The CPD web client GUI displays as shown.

> Use cpduser and cpdaccess for the *Username* and *Password* and click
> Sign in.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image6.png){width="1.57376968503937in"
height="2.0689304461942255in"}

### **Reviewing the Db2 Advanced Edition data**

4.  To review this data, you will be launching the *Db2 Advanced Edition
    Data Management* *Console*.

In the CPD web client, click the Navigation Menu ("hamburger" icon).

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image7.png){width="1.221434820647419in"
height="1.049180883639545in"}

5.  Click Collect a My Data a Databases a Db2 Advanced Edition a
    ellipsis
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image8.png){width="0.11806211723534558in"
    height="0.16667541557305338in"} a Open database *(Note: Please wait
    for the green check to appear next to Db2 Advanced Edition first.)*

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image9.png){width="1.4918022747156605in"
height="0.6571030183727035in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image10.png){width="2.729507874015748in"
height="2.19876968503937in"}

6.  At the top left of the Db2 Advanced Edition console, click on:
    Summary a Explore a Tables.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image11.png){width="2.629452099737533in"
height="3.229507874015748in"}

7.  Select schema CPDUSER.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image12.png){width="1.8688517060367453in"
height="1.0956856955380578in"}

8.  Click CUSTOMER_CHURN and click on it to bring up the table
    definitions view.

Click on View Data.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image13.png){width="5.508196631671041in"
height="1.5451399825021872in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image14.png){width="2.7622944006999126in"
height="1.170949256342957in"}

*This data represents churn risk that was determined through a manual
methodology by Trade Co. It will be enhanced by a machine learning
methodology created in this workshop.*

9.  Click on the Back icon, then table CUSTOMER_DEMOGRAPHICS a view
    Data.

![A picture containing object, clock, drawing, meter Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image15.png){width="1.0819663167104112in"
height="0.4262292213473316in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image16.png){width="4.8688527996500435in"
height="1.4910389326334208in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image17.png){width="3.4016393263342084in"
height="1.2323622047244094in"}

*This data represents the known characteristics of the Trade Co.
customers themselves. The machine learning methodology of this workshop
will take advantage of this data to determine churn risk more
accurately.*

### **Reviewing the Db2 connection**

10. In order to create a connection to a CPD data source, you would
    first need the connection information. To review what that looks
    like for the in-cluster Db2 Advanced Edition, click:

> Navigation Menu a Collect a My Data a Databases a Db2 Advanced Edition
> a ellipsis
> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image8.png){width="0.11806211723534558in"
> height="0.16667541557305338in"} a Details
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image18.png){width="3.8278685476815397in"
> height="3.0835608048993874in"}

11. This takes you to the details page for this data source.

On the right you will find the Access Information section which gives
you the information you need to create a connection.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image19.png){width="3.921527777777778in"
height="1.6447090988626423in"}

Note: Username and Password are explicitly shown (and easily copied
using the icons) while the JDBC Connection URL string tells us the
Host:Port/Database.

12. Now you can review the connection to the Db2 Advanced Edition that
    was already created for this workshop.

Go to: Navigation Menu a Connections a Db2 Advanced Edition

![A close up of a sign Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image20.png){width="1.5573764216972878in"
height="0.6166491688538933in"}
![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image21.png){width="4.859562554680665in"
height="0.5081966316710411in"}

13. Hover over the left part of the connection and click the Edit
    (pencil) icon.

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image22.png){width="0.6557381889763779in"
height="0.45658792650918634in"}

14. The Db2 Advanced Edition Connection edit screen looks like this:

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image23.png){width="3.57376968503937in"
height="3.341321084864392in"}

Each data source type (Db2, Mongo, Hive, S3, Drop Box, and so on) has
their own connection page format. Many of the relational database
sources are similar to this one, while others require different
credentials altogether.

15. At the bottom of the screen, click Test connection.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image24.png){width="2.7840277777777778in"
height="1.0450995188101488in"}

16. At the top left of the screen, you should see this Success message.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image25.png){width="5.058823272090988in"
height="0.9198304899387576in"}

17. To exit the edit screen, click Cancel. DO NOT SAVE this connection.

+----------------------------------+----------------------------------+
| ![A close up of a logo           | Note: if you do NOT have a       |
| Description generated with high  | successful connection test as    |
| confidence](/Users/tjm/D         | shown above, you should fix this |
| ocuments/GitHub/CPD-workshop/lab | by launching another CPD web     |
| s/autoai/images/media/image26.pn | client from the desktop and use  |
| g){width="0.36041666666666666in" | the second web client to return  |
| height="0.36041666666666666in"}  | to the Details screen of the Db2 |
|                                  | Advanced Edition. Use both       |
| Data Engineer                    | screens to make sure all the     |
|                                  | credentials match between the    |
|                                  | Details screen and the           |
|                                  | Connection screen, especially    |
|                                  | Username/Password.               |
+----------------------------------+----------------------------------+

## MongoDB data overview -- Virtualizing for analytics

The Mongo data in our scenario (Activity) has two key factors that makes
for an appropriate scenario for Data Virtualization:

-   The data is constantly changing (it is dynamic)

-   Our analytics processing requires the latest data

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image3.png){width="0.5819728783902012in"
> height="0.47515529308836396in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image27.png){width="3.416842738407699in"
height="0.9931069553805775in"}

We have chosen semi-structured data in this scenario to demonstrate the
power of CPD Data Virtualization -- it even works with JSON documents.
But we could just have easily chosen a structured database source for
it, like Db2, Informix, SQL Server, and so on.

Semi-structured (and even unstructured) data is commonly used in many
systems of engagement applications (like Trade Co.'s Stock Trader) so
this was another reason we chose this as an example data source type.

Our scenario presumes that this data comes from a mobile application
that will be constantly changing the data, and that we would require the
latest data for our analytics workflow.

### **Reviewing the MongoDB data**

The MongoDB database was provisioned after the MongoDB Enterprise
service was installed, which is also located in My data.

18. Start at the Navigation Menu.

19. Click Collect a My data a Databases a MongoDB-1 a ellipsis
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image8.png){width="0.11806211723534558in"
    height="0.16667541557305338in"} a Details.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image7.png){width="1.221434820647419in"
height="1.049180883639545in"}![A picture containing clock Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image9.png){width="1.4918022747156605in"
height="0.6571030183727035in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image28.png){width="2.360655074365704in"
height="1.9616721347331583in"}

20. Examine the section MongoDB Ops Manager on the right.

Here you can review the username for the Ops Manager (which is cpduser).

Copy the Password using the icon.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image29.png){width="4.635416666666667in"
height="1.7199278215223097in"}

21. Now return to the My data screen and choose Databases a MongoDB-1 a
    ellipsis
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image8.png){width="0.11806211723534558in"
    height="0.16667541557305338in"} a Open Database.

![A picture containing clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image9.png){width="1.4918022747156605in"
height="0.6571030183727035in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image30.png){width="2.9690201224846895in"
height="2.4672134733158355in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image31.png){width="2.2493175853018372in"
height="2.4287839020122486in"}

+----------------------------------+----------------------------------+
| ![A close up of a logo           | The very first time you log into |
| Description generated with high  | this *MongoDB Ops Manager*       |
| confidence](/Users/tjm/D         | console it may not ask you for   |
| ocuments/GitHub/CPD-workshop/lab | user and password credentials.   |
| s/autoai/images/media/image26.pn | We have saved these for you in a |
| g){width="0.36041666666666666in" | browser setting.                 |
| height="0.36041666666666666in"}  |                                  |
|                                  | However, if the credentials were |
| Data Engineer                    | not saved and should you         |
|                                  | encounter this Login screen (as  |
|                                  | above) you can use the password  |
|                                  | copied from the Details screen.  |
|                                  |                                  |
|                                  | Note: if the copy/paste of the   |
|                                  | password does not work for you   |
|                                  | using Details screen icon, then  |
|                                  | try this technique:              |
|                                  |                                  |
|                                  | 1.  In the Details screen,       |
|                                  |     perform the "copy" by        |
|                                  |     highlighting the password    |
|                                  |     and right-click a copy.      |
|                                  |                                  |
|                                  | 2.  In the Ops Manager login     |
|                                  |     screen use right-click a     |
|                                  |     paste.                       |
+----------------------------------+----------------------------------+

22. In the *MongoDB Ops Manager* console tab, click Deployment on the
    top left of the screen.

In the Processes tab, click on the Replica Set link,

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image32.png){width="5.6375in"
height="1.8946062992125985in"}

23. Click on the Data tab to review the JSON documents in database
    mongodb.activity01.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image33.png){width="6.55172353455818in"
height="4.318472222222222in"}

24. When finished, close the tab Data \| MongoDB Ops Manager.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image34.png){width="2.6224529746281715in"
height="0.7459011373578303in"}

### **Reviewing the MongoDB connection**

25. Go to Navigation Menu a Connections

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image35.png){width="1.7131146106736659in"
height="1.3969356955380579in"}

26. Click on connection MongoDB line and choose the Edit icon.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image36.png){width="5.9375in"
height="1.2816961942257217in"}

27. Note that the credentials information is taken from the Details
    screen you reviewed earlier.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image37.png){width="4.7826093613298335in"
height="4.441127515310586in"}

## Lab conclusion

In this Collect: Connections lab, you reviewed connections for the Db2
Advanced Edition and MongoDB data. This prepares you for the Organize
and Collect: Virtualize labs in this workshop.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image3.png){width="0.5819728783902012in"
height="0.47515529308836396in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/autoai/images/media/image38.png){width="6.527777777777778in"
height="2.408174759405074in"}

In the Organize lab coming up, we will be transforming the Db2 data sets
into one.

After that, we will finish up the Collect processing by virtualizing the
results from both the Db2 Transformation output and the MongoDB data
together.

**\*\* End of Lab 03 - Collect: Connections**

Lab by Burt Vialpando and Kent Rubin, IBM
