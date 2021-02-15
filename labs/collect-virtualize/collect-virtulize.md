# **[Collect: Virtualize]{.smallcaps}**

## Lab overview

In this lab, you will learn about Data Virtualization to complete the Collect tasks by creating a virtualized view of the transformed Db2 Demographics and Churn data, joined with the MongoDB Activity data.

The team from Trade Co. wants to use data virtualization to easily join the disparate data sources into one view for easier consumption in their analytics work.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image1.png){width="0.5833333333333334in" height="0.4722222222222222in"}

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image2.png){width="6.472222222222222in" height="2.257752624671916in"}

## Persona represented in this lab

The Data Engineer persona will be performing the various Collect tasks shown in this lab.

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Persona (Role)**                                                                                                                                                                         | **Capabilities**                                                                                                                                                                                                                           |
+============================================================================================================================================================================================+============================================================================================================================================================================================================================================+
| ![A close up of a logo Description generated with high confidence](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image3.png){width="0.4in" height="0.4in"} | Data Engineers build and optimize the systems to allow data scientists and business analysts to perform their work. The Data Engineer ensures that any data is properly received, transformed, stored, and made accessible to other users. |
|                                                                                                                                                                                            |                                                                                                                                                                                                                                            |
| Data Engineer                                                                                                                                                                              |                                                                                                                                                                                                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image4.png){width="0.7049179790026247in" height="0.7958748906386701in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess for the *Username* and *Password* and click Sign in.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image5.png){width="1.4945056867891513in" height="1.9647276902887139in"}

## Remove older Data Virtualization sources 

> *This step is needed to remove older data sources that are no longer required for this lab.*

4.  Start at the Navigation Menu ("hamburger" icon) a Collect a Data virtualization.

![A picture containing clock, meter Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image6.png){width="1.327869641294838in" height="1.1406058617672792in"}![Graphical user interface, text, application, website Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image7.png){width="2.78125in" height="1.0160608048993875in"}

5.  In the Data sources screen, click the ellipse on the MySQL Community Edition and Remove

![A picture containing graphical user interface Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image8.png){width="5.813186789151356in" height="2.1247922134733157in"} ![Text Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image9.png){width="2.0439555993000873in" height="0.3197594050743657in"}

## Adding Data Virtualization data sources

Let's explore the Data Virtualization process by adding new data sources to virtualize.

6.  Start at the Navigation Menu ("hamburger" icon) a Collect a Data virtualization.

![A picture containing clock, meter Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image6.png){width="2.238805774278215in" height="1.923076334208224in"}![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image7.png){width="3.7900885826771655in" height="1.3846150481189852in"}

7.  In the Data sources screen, click the Arrow next to 'Add new data source' a From existing connections.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image10.png){width="4.4835159667541555in" height="2.802198162729659in"}

8.  Select (click on) Db2 Advanced Edition a Next.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image11.png){width="5.651270778652669in" height="0.39335192475940506in"}

9.  You will notice a new Data source hostname created by Username user1001 (port 32030)

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image12.png){width="5.7666524496937885in" height="0.32786854768153983in"}

10. Repeat this again: Add new data source a From existing connections.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image13.png){width="3.3824343832020998in" height="1.6875in"}

11. Select (click on) MongoDB a Next.

![A screenshot of a social media post Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image14.png){width="6.395833333333333in" height="1.622729658792651in"}

12. You should now see the following Data virtualization Data sources.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image15.png){width="6.3524584426946635in" height="2.077099737532808in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image16.png){width="0.36041666666666666in" height="0.36041666666666666in"} | In this exercise, you used previously created connections to create Data sources in the Data virtualization instance. You could have created the connection dynamically on this screen as well. |
|                                                                                                                                                                                                                             |                                                                                                                                                                                                 |
| Data                                                                                                                                                                                                                        |                                                                                                                                                                                                 |
|                                                                                                                                                                                                                             |                                                                                                                                                                                                 |
| Engineer                                                                                                                                                                                                                    |                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Virtualizing the Db2 data

In the next exercise, you will virtualize the Db2 table CUSTOMER_DEMOCHURN.

13. At the top left of the screen, click Data sources a Virtualize.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image17.png){width="1.5052668416447943in" height="1.3114752843394575in"}

NOTE: If you experience an error message after a minute or two and see this message:

![Graphical user interface, application, Teams Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image18.png){width="4.8791207349081365in" height="2.843290682414698in"}

Simply wait 5 minutes then refresh the browser and the tables should appear.

14. Under Databases, check box Db2 Family.

Fill in the Search bar with CUSTOMER_DEMOCHURN.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image19.png){width="3.2314818460192476in" height="1.2775481189851268in"}

15. Check the able CPDUSER.CUSTOMER_DEMOCHURN from the CPDUSER schema.

If. You didn't do the Organize/Transform lab, choose SOLUTIONS.CUSTOMER_DEMOCHURN.

![A screenshot of a social media post Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image20.png){width="4.925926290463692in" height="2.679291338582677in"}\
Note: the above tables are identical, but the first one was only created if you did the Organize / Transform lab preceding this lab. The pre-created table is useful for jumping right into this lab.\
Also, use your browser functionality to zoom out if you cannot see the full table names clearly.

16. Click Add to Cart.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image21.png){width="2.122950568678915in" height="0.7456955380577428in"}

17. Click View cart.

![A picture containing drawing Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image22.png){width="1.6967213473315836in" height="0.4408147419072616in"}

18. Select *Project* CPD Workshop Analytics Project.

Click Virtualize

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image23.png){width="6.5in" height="1.9161778215223098in"}

19. You have now just created a virtualized table and placed it in a project.

Click Virtualize more data.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image24.png){width="6.5in" height="2.6625590551181104in"}

## Virtualizing the MongoDB data 

You should be at the Virtualize screen again, after clicking Virtualize more data from the previous step.

If you are not there, you can always get there by doing the following: Navigation menu a Collect a Data virtualization a Menu a Virtualize.

20. In the *Virtualize* screen Click the *Databases* box Mongo DB, select ACTIVITY01.

    ![A screenshot of a social media post Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image25.png){width="6.527777777777778in" height="1.8662653105861766in"}

21. Click Add to cart.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image21.png){width="2.122950568678915in" height="0.7456955380577428in"}

22. Click View cart.

![A picture containing drawing Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image22.png){width="1.6967213473315836in" height="0.4408147419072616in"}

23. Select *Project* CPD Workshop Analytics Project.

Click Virtualize.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image26.png){width="6.5in" height="1.8907469378827646in"}

24. You have now created a virtualized table of Mongo data in a project.

Click View my virtualized data.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image27.png){width="6.5in" height="2.6453937007874018in"}

## Joining the virtualized tables

You should be at the My Virtualize data screen, after clicking View my virtualized data in the previous exercise.

If you are not, you can always navigate there by doing the following: Navigation menu a Collect a Data virtualization a Menu a My Virtualized data.

25. Before joining any of the virtualized tables you have created, preview each of them to make sure they are working properly.

For each table, click on ellipses ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image28.png){width="0.11806211723534558in" height="0.16667541557305338in"} a Preview.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image29.png){width="6.516696194225722in" height="2.221311242344707in"}

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image30.png){width="5.967212379702537in" height="3.4143383639545055in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image16.png){width="0.36041666666666666in" height="0.36041666666666666in"} | Check for data in ACTIVITY01 and CUSTOMER_DEMOCHURN.                                                                                                                                                                                                                                                                                     |
|                                                                                                                                                                                                                             |                                                                                                                                                                                                                                                                                                                                          |
| Data                                                                                                                                                                                                                        | If any of these virtualized tables are not displaying data, you can fix it by performing a Remove action on the virtualized table (use the ellipses ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image28.png){width="0.11806211723534558in" height="0.16667541557305338in"}) and then re-create it. |
|                                                                                                                                                                                                                             |                                                                                                                                                                                                                                                                                                                                          |
| Engineer                                                                                                                                                                                                                    |                                                                                                                                                                                                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

26. Return to My virtualized data by selecting breadcrumb back.

![A picture containing black, man, white, woman Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image31.png){width="1.6707852143482065in" height="0.7777777777777778in"}

27. Choose tables ACTIVITY01 and CUSTOMER_DEMOCHURN, then click Join.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image32.png){width="6.49714457567804in" height="1.614753937007874in"}

28. Scroll down on the table CUSTOMER_DEMOCHURN until you can see the Column ID.

Join the virtualized tables by clicking on Column ID on the table ACTIVITY01 and dragging the cursor to the Column ID on the table CUSTOMER_DEMOCHURN.

If done correctly, you will see blue key icons next to each column in the virtualized tables.

![A screenshot of a social media post Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image33.png){width="6.496527777777778in" height="3.940870516185477in"}

29. On table ACTIVITY01 find the Column \_ID.

**This column is different** from the join column you just used called ID. The \_ID field is a Mongo generated column that is not useful for our Analytics processing.

Click on the box next to the Column Name to uncheck Column \_ID. This will indicate that you do not want this column included in the joined virtualized view of the two virtualized tables. You may have noticed that the arrow between ACTIVITY01 and CUSTOMER_DEMOCHURN disappeared. That's ok. The key still indicates a join relationship.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image34.png){width="3.1203707349081364in" height="3.598312554680665in"}

30. Click Preview.

![A picture containing drawing Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image35.png){width="1.2407403762029747in" height="0.37079615048118986in"}

31. Scroll to the right to make sure data columns from both tables are represented.

Click x to close.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image36.png){width="4.532354549431321in" height="2.537037401574803in"}

32. Click Next. Now you can Edit column names if you like.

33. Click Next again.

34. In the Assign and review screen, select Project CPD Workshop Analytics Project (1), then type view name: CUSTOMER_DEMOCHURN_ACTIVITY (2) and Click Create View (3)

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image37.png){width="6.5in" height="1.7769466316710412in"}

35. Click Go to project.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image38.png){width="6.513888888888889in" height="2.361794619422572in"}

36. You will be navigated to My Projects a CPD Workshop Analytics Project a Assets.

Find and click on your new virtualized view (of the two virtual tables) USER1001.CUSTOMER_DEMOCHURN_ACTIVITY.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image39.png){width="6.382608267716535in" height="2.5932469378827645in"}

37. Scroll through the data in the preview mode.

Notice at this point you could refine the data even further. (We will do that in another exercise.)

![A screenshot of a computer Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image40.png){width="6.3114752843394575in" height="3.945906605424322in"}

## Lab conclusion

In this lab, you learned about Data Virtualization to complete the Collect tasks by creating a virtualized view of the transformed Db2 Demographics and Db2 Churn data, joined with the MongoDB (JSON) Activity data.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image1.png){width="0.5833333333333334in" height="0.4722222222222222in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image2.png){width="6.5697823709536305in" height="2.291784776902887in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](/Users/tjm/Documents/GitHub/CPD-workshop/labs/collect-virtualize/images/media/image16.png){width="0.36041666666666666in" height="0.36041666666666666in"} | The SQL query runs on the remote data sources (Db2 and MongoDB) when you call the data set from the project. This capability provides the absolute latest "current state" information from the activity (i.e. transactional data store). If you want to learn even more about data virtualization, see: |
|                                                                                                                                                                                                                             |                                                                                                                                                                                                                                                                                                         |
| Data                                                                                                                                                                                                                        | (Deeper Dive) Data Virtualization (Caching)                                                                                                                                                                                                                                                             |
|                                                                                                                                                                                                                             |                                                                                                                                                                                                                                                                                                         |
| Engineer                                                                                                                                                                                                                    | Final note: Cloud Pak for Data refers to joins of individual virtualized tables as "virtualized views."                                                                                                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**\*\* End of Lab 05 - Collect: Virtualize**

Lab by Burt Vialpando and Kent Rubin, IBM
