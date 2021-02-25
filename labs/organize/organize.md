# Organize

## Lab overview

Many organizations find it difficult to understand their own data because it originates from many sources, is dispersed across many silos, and is controlled by different teams.

This Organize lab will show you how to uncover the hidden value in your organization's data and how to build a lineage that is otherwise difficult to establish. Cloud Pak for Data helps your organization move from the manual processes required to establish relationships between data to an automated one aided by the platform's built-in machine learning capabilities.

## Persona represented in this lab

The Data Steward persona is the likely one to perform most of the Organize tasks shown in this lab.

 | **Persona (Role)** | **Capabilities**  |
 | :-: | :-- |
 | ![](./images/media/image1.png)<br/>Data Steward | Data Stewards integrate and transform data as well as provide governance, lineage and classification of the data. |

**Note:** this persona often works closely with the Data Engineer because they both work with the data to prepare it for analytics processing by other personas. For example, in this lab one of activities the Data Engineer will do is to create a Transformation job with the Db2 data. In the next lab, the Data Engineer will go on to use that output table to create a final virtualized view of all the data sources joined together.

**Note:** The Data Steward persona also works closely with the Data Quality Analyst persona.

![](./images/media/image2.png)
![](./images/media/image3.png)

Before we start transforming data, let's first explore the other crucial aspects of the CPD Organize capabilities.

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through previous labs) do the following:
1.  Double-click the desktop icon: Cloud Pak for Data Web Client.
  ![](./images/media/image4.png)
1.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess for the *Username* and *Password* and click Sign in.
  ![](./images/media/image5.png)

## Reviewing a data asset in the project

Some of the more interesting "Organize" capabilities can be done on a data asset that has been added to a project. In this Trade Co. scenario, the team has created a Project from which they will all collaborate and work from together.

### Data asset overview

1. In the CPD web client, click the Navigation Menu ("hamburger" icon) a Projects.
  ![](./images/media/image6.png)![](./images/media/image7.png)
1. Select the project: CPD Workshop Analytics Project.
  ![](./images/media/image8.png)
1. Under tab Assets a Data assets, click ***CPDUSER.CUSTOMER.DEMOGRAPHICS***.
  ![](./images/media/image9.png)
1. Close (x) the Information window on the top left.
  ![](./images/media/image10.png)
1. In the Preview section, general information about the data asset is displayed, as well as column specific information and sample data.
  ![](./images/media/image11.png)
1. Click on the down arrow for column TAXID to see how Profiling categorized the data.<br/>The identifier is: US Social Security Number.
  ![](./images/media/image12.png)
1. Click Profile to see more details on the profiling information. (It may take a minute or two to render -- be patient.)<br/>Notice column GENDER was assigned Identifier Gender, which has 2 of 2 values (M and F) and a displayed frequency for each.
  ![](./images/media/image13.png)![](./images/media/image14.png)
1. Scroll over to column TAXID and click the twisty to see how this data is profiled.
  ![](./images/media/image15.png)

### Refine visualizations

1. Click back to Preview then click Refine
  ![](./images/media/image16.png)
1. Click Visualizations a Map<br/>(Hint: you may have to select the double down arrow to see Map.)
  ![](./images/media/image17.png)
1. Fill in the Details as World, Scatter plot, LONGITUDE, LATITUDE, CITY,ESTINCOME and Income by City
  ![](./images/media/image18.png)
1. Use your mouse's wheel to Scroll up and center the United States on the visualization.<br/>Use the \[Ctrl\] -- and \[Ctrl\] + to zoom in and out to properly size the visualization.
1. Hover over any circle on the map to see the Estimated Income for that City.
  ![](./images/media/image19.png)
1. If the Data Scientist or Business Analyst wants to keep a visualization, they can download it by clicking on the image icon shown.<br/>They can save or review it by downloading it from the ACTIONS section and then using Open with Image Viewer.
  ![](./images/media/image20.png)![](./images/media/image21.png)
1. Close the Image viewer (if you have it open) and click on the breadcrumb back to the link for the CPD Workshop Analytics project a then Leave Page.<br/>![](./images/media/image22.png) ![](./images/media/image23.png)

### Data refinery flows

You should be back at the project CPD Workshop Analytics Project. If you are not there, navigate there as you did at the beginning of this lab.
1. Under Assets, scroll down to find Data Refinery flows
  - Click CPDUSER.CUSTOMER.DEMOGRAPHICS_flow<br/>![](./images/media/image24.png) ![](./images/media/image25.png)
1. This Refinery flow was pre-created for you to shorten this lab. It was created in the Refine screen you were in earlier. Click the Steps Box (1).
 - There is only one step in this job, which is a "Text" operation on the ZIP4 column.
 - Hover over the step to see the icons for it.
 - Click the edit (pencil) icon (2) to review the details of the step.<br/>![](./images/media/image26.png)
1. This step refines the ZIP4 column by padding 4 characters of "0" to the Right.

This means if the column is already filled in, it will not do anything. If it is empty or filled with 0, it will fill it in with 0000.
  - Click Cancel (the job is OK as it is, but you could have changed it here if you needed to).<br/>![](./images/media/image27.png)
1. Click on the Jobs (arrow by a clock) icon, then Save and create a job.<br/>![](./images/media/image28.png)
1. Give the job a name of Customer Demographics Flow Job then select Create and Run
1. The job takes about a minute to complete. You can see it Running on the screen.
 - Hit the refresh icon to see status more quickly.<br/>![](./images/media/image29.png) ![](./images/media/image30.png)
1. Once completed, you can check the logs of the job if you want to. This can be especially useful if the job is complex.
  - Click on it to review the details of the job.<br/>![](./images/media/image31.png)
  | **Persona (Role)** | **Capabilities**  |
  | :-: | :-- |
  | ![](./images/media/image32.png)<br/>Data Steward | If the job run fails, simply click the ellipses on that job run and delete it, then run it again. |
1. Click on the breadcrumb trail to return back to the project.<br/>![](./images/media/image33.png)
1. A new Data Asset was created as output from the Flow (refine job).
  - Scroll down to find and then click on Customer Demographics_shaped.csv<br/>![](./images/media/image34.png)
1. Scroll over to find the ZIP4 column.<br/><br/>Notice the data is padded with four zeroes if it was less than four zeroes. If the row already had a four-digit value, it was left alone.<br/>![](./images/media/image35.png)
  | **Persona (Role)** | **Capabilities**  |
  | :-: | :-- |
  | ![](./images/media/image32.png)<br/>Data Steward  | The power of Refine can be used by more than just the Data Steward because it is launched from a Project, which enables many more personas the ability to shape and refine data assets to which the Data Steward may have given them access. This gives anyone the ability to explore and shape data on their own with self-service capabilities.<br/>If the need is to make a permanent change to the data, for example, to write it back to a database from where it came, that is where Transform comes in. We will explore Transform later in this lab.|

## Reviewing a business glossary

> A business glossary consists of categories and terms.
>
> Categories provide the logical structure for the glossary so that you can browse and understand the relationships among terms and categories in the glossary. Categories can be organized in a hierarchy based on their meaning and relationships to one another.
>
> A Business term is a word or phrase that describes a characteristic of the enterprise. Business terms are the fundamental building blocks of the glossary. Each Business term has a parent Category, but it can also be referenced by other Categories. When you create a Business term, you need to provide a meaningful name. Business terms can be assigned to other Business terms, and to other asset types as well.

29. Click Navigation Menu a Organize a Data and AI governance a Categories.

![A screenshot of a cell phone Description automatically generated](./images/media/image36.png){width="1.8775382764654418in" height="1.221311242344707in"} ![A screenshot of a cell phone Description automatically generated](./images/media/image37.png){width="2.1721303587051617in" height="1.3099103237095364in"}

30. Review a category already created for you: Customer Churn Category.

![A screenshot of a cell phone Description automatically generated](./images/media/image38.png){width="3.470138888888889in" height="1.0742355643044619in"}

31. Review the Business terms and Policy for the Category.

![](./images/media/image39.png){width="6.411765091863517in" height="1.7666218285214348in"}

*Note: You can view more than 5 items per page.*\
\
![A screenshot of a cell phone Description automatically generated](./images/media/image40.png){width="2.898148512685914in" height="0.766071741032371in"}

32. Click Navigation Menu a Organize a Data and AI governance a Business terms.

    ![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"} ![A picture containing clock Description automatically generated](./images/media/image42.png){width="1.8278685476815397in" height="2.13251312335958in"}

33. Here you can edit or add new Business terms that are either in Published or Draft mode.

Click on one to review it in more detail.

![A screenshot of a cell phone Description automatically generated](./images/media/image43.png){width="3.4223720472440946in" height="2.605942694663167in"}

![A screenshot of a cell phone Description automatically generated](./images/media/image44.png){width="4.981481846019247in" height="2.6305774278215224in"}

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A picture containing cup Description generated with very high confidence](./images/media/image32.png){width="0.37572287839020124in" height="0.37572287839020124in"} | You can create your own Glossary with Categories and Business terms manually, or import them from a file. This workshop was prepared using .csv files in in the following directory on your OS: |
|                                                                                                                                                                                                                            |                                                                                                                                                                                                 |
| Data Steward                                                                                                                                                                                                               | ![](./images/media/image45.png){width="5.606104549431321in" height="1.629630358705162in"}                                                  |
|                                                                                                                                                                                                                            |                                                                                                                                                                                                 |
|                                                                                                                                                                                                                            | In addition, you can import Industry Models from IBM for industries such as finance, banking, healthcare, and insurance and import them into CPD.                                               |
|                                                                                                                                                                                                                            |                                                                                                                                                                                                 |
|                                                                                                                                                                                                                            | See the services screen ![](./images/media/image46.png){width="0.23161745406824147in" height="0.1875in"} then Industry Accelerators.       |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Reviewing a Governance Policy and a Rule

> An information governance Policy is a natural-language description of a governance subject area. It can contain multiple information governance sub-policies or reference one or more information Governance Rules. It must fulfill a business objective and be relevant and understandable to all users of the policy.
>
> An information Governance Rule is a natural-language description of the criteria that are used to determine whether information assets are compliant with business objectives. Generally, information governance rules are derived from information governance policies and are more specific. The Rules define the actions to take in specific situations to implement the Policy. An information Governance Rule can be referenced by one or more information Governance Policies.

34. Click Navigation Menu a Organize a Data and AI governance a Policies.

![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"} ![A picture containing clock Description automatically generated](./images/media/image47.png){width="1.5901640419947507in" height="1.8551891951006125in"}

Note: the first time using the page may take a minute or two to render -- be please patient.

35. Review the Published Policy that has been associated with our previously reviewed Category.

![A screenshot of a cell phone Description automatically generated](./images/media/image48.png){width="3.721311242344707in" height="3.6830938320209974in"}

36. Scroll down until you find the Rule that is associated with this Policy.

Notice you could add another rule to this policy here. (Don't do this now.)

Review the Rule by clicking on it.

![A screenshot of a cell phone Description automatically generated](./images/media/image49.png){width="6.5086187664042in" height="1.385246062992126in"}

![](./images/media/image50.png){width="4.006535433070866in" height="2.715683508311461in"}

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A picture containing cup Description generated with very high confidence](./images/media/image32.png){width="0.37572287839020124in" height="0.37572287839020124in"} | A Data Dictionary contains a Business Glossary (Categories and Business terms) as well as information Governance Policies and Rules to ensure data compliance with business objectives.                                                   |
|                                                                                                                                                                                                                            |                                                                                                                                                                                                                                           |
| Data Steward                                                                                                                                                                                                               | In this lab we have a beginning sample of these items, but in reality, a Data Dictionary for any organization is quite large and can and should be updated as frequently as new data sources, regulations, and other criteria require it. |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Reviewing Classifications, Data Classes, and Reference Data

### **Classifications**

A Classification describes the sensitivity level of data. In catalogs, a classification describes the sensitivity of a whole data asset to help catalog members understand the asset. You can use classifications to describe Business Terms, Data Classes, Reference Data Sets, and Governance Rules. In data protection Rules, you can include Classifications in conditions to identify the type of data to restrict.

37. Click Navigation Menu a Organize a Data and AI governance a Classifications.

![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"} ![A picture containing clock Description automatically generated](./images/media/image51.png){width="1.721311242344707in" height="2.008196631671041in"}

38. Scroll to find Classification Confidential and click on it

![A screenshot of a cell phone Description automatically generated](./images/media/image52.png){width="4.385244969378828in" height="2.0690944881889766in"}

39. The Classification is described here. You could also add the primary Category here, but there is no need to do so now.

![](./images/media/image53.png){width="3.3336778215223095in" height="2.1241830708661418in"}

### **Data classes**

Data classes describe the contents of data in a column in a relational or structured data set. Data classes are assigned to columns when profiling a structured data asset and shown on the Profile page in a Catalog or Project.

Watson Knowledge Catalog provides a predefined set of Data Classes. Some Data Classes are categorized into groups, for example:

-   If you select **Date**, it also includes **Date of Birth**.

-   If you select **Driver's License**, it also includes all driver licenses listed below.

40. Click Navigation Menu a Organize a Data and AI governance a Data classes.

![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"} ![A screenshot of a cell phone Description automatically generated](./images/media/image54.png){width="1.459015748031496in" height="1.7021839457567804in"}

41. Scroll to find Account Number and click on it.

![A screenshot of a cell phone Description automatically generated](./images/media/image55.png){width="1.8520833333333333in" height="1.804983595800525in"}

42. The Data Class is described here.

From here you could edit the description, examples or add the primary Category.

![](./images/media/image56.png){width="5.3856211723534555in" height="1.7804582239720035in"}

### **Reference Data Set**

Reference Data Sets define list of permissible values that are allowed for use within a data field and may be referenced by Business Terms, Policies, Rules and Data Classes in Watson Knowledge Catalog.

You can capture, manage, and socialize reference data --- setting it up once and re-using the reference data in other places.

43. Click Navigation Menu a Organize a Data and AI governance a Reference data.

    ![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"} ![A picture containing clock Description automatically generated](./images/media/image57.png){width="1.4402810586176729in" height="1.6803280839895014in"}

44. Scroll to find Reference Data Set State and Province Codes and click on it.

![A picture containing bird Description automatically generated](./images/media/image58.png){width="1.8288079615048118in" height="0.7786887576552931in"}

45. Scroll down to review the Reference Data Set rows (the data).

![A screenshot of a cell phone Description automatically generated](./images/media/image59.png){width="3.080627734033246in" height="2.9836067366579178in"}

46. Click Related content and review how you could relate Data classes and Rules to it.

![A picture containing tree Description automatically generated](./images/media/image60.png){width="2.2095461504811897in" height="0.7045308398950131in"}

## Searching for Data

The Data Scientist and Business Analyst personas may not always know what has been made available to them by the Data Engineers and Data Stewards in CPD. In fact, individual Data Engineers and Data Stewards may not always know what other users of the same persona have made available through their Collect and Organize activities.

This is remedied by the search functionality provided in CPD.

47. Start the search here: Navigation Menu a Home.

(Doing this gives your search a neutral context.)

![A close up of a sign Description automatically generated](./images/media/image61.png){width="1.5in" height="1.0012412510936133in"}

48. Click in the Search bar.

![](./images/media/image62.png){width="5.516393263342082in" height="0.3782272528433946in"}

49. Type churn and hit Enter.

![](./images/media/image63.png){width="6.483605643044619in" height="0.3804932195975503in"}

50. Notice in the absence of a filter (or context) that multiple kinds of assets related to the term churn are found.

51. Select from Any type -- Data Asset.

    ![A screenshot of a cell phone Description automatically generated](./images/media/image64.png){width="1.574073709536308in" height="1.2872101924759405in"} ![A screenshot of a cell phone Description automatically generated](./images/media/image65.png){width="4.888888888888889in" height="3.03212489063867in"}

Notice that one Data asset is in a catalog and another is in a project.

52. Click on the Data asset called CPDUSER.CUSTOMER.CHURN which is located in All projects \> CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically generated](./images/media/image66.png){width="4.865740376202974in" height="3.017767935258093in"}

53. Here you can review a sample of the data.

Next, click Lineage.

![A screenshot of a cell phone Description automatically generated](./images/media/image67.png){width="6.496929133858267in" height="3.0in"}

54. The Lineage shown here is relatively simple for this Data asset; however, this could show a more complex lineage should this Data asset have been the result of a Data Flow Design or refine job flow output from a virtualized view of a join of two tables in two different servers.

![](./images/media/image68.png){width="3.235294181977253in" height="1.9262040682414698in"}

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A picture containing cup Description generated with very high confidence](./images/media/image32.png){width="0.37572287839020124in" height="0.37572287839020124in"} | The results of this search and exploration of the Data asset tells us that we want to utilize this asset for a Data Flow Design job later in this lab.                                                                                                                                                                                                                                                                           |
|                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Data Steward                                                                                                                                                                                                               | At this point, we could go to the Overview page of the Catalog View and click Add to Project for easy access later. However, this has already been done, so there is no need to do so now.                                                                                                                                                                                                                                       |
|                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|                                                                                                                                                                                                                            | ![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1cd781ea.PNG](./images/media/image69.png){width="1.5416666666666667in" height="0.4404757217847769in"}![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1cd59378.PNG](./images/media/image70.png){width="0.7468438320209974in" height="0.5347222222222222in"} |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

55. Try the Search again, this time using the word demographics.

![](./images/media/image71.png){width="5.727083333333334in" height="0.6559481627296588in"}

56. Choose the second Data asset named CPDUSER.Customer_Demographics which is under All projects \> CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically generated](./images/media/image72.png){width="3.3425929571303588in" height="2.9966951006124236in"}

57. This takes us to the CPDUSER.Customer_Demographics Data asset we reviewed in an earlier exercise at the beginning of this lab.

![A screenshot of a social media post Description automatically generated](./images/media/image73.png){width="4.518055555555556in" height="1.9700207786526684in"}

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A picture containing cup Description generated with very high confidence](./images/media/image32.png){width="0.37572287839020124in" height="0.37572287839020124in"} | You will be using this data in the Data Flow Design exercise to follow.                                                                                            |
|                                                                                                                                                                                                                            |                                                                                                                                                                    |
| Data Steward                                                                                                                                                                                                               | To recap: you have searched for, found and selected two tables, from which you will build a job to join and transform this data to create another permanent table. |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Reviewing the catalog

58. Click Navigation Menu a Organize a All catalogs.

![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"}![A screenshot of a cell phone Description automatically generated](./images/media/image74.png){width="1.7377045056867892in" height="2.02371062992126in"}

59. You will see a catalog named CPD Workshop Catalog.

Review it by clicking ellipses ![](./images/media/image75.png){width="0.11806211723534558in" height="0.16667541557305338in"} a View. *(Tip: You can also click on the catalog name.)*

![A screenshot of a cell phone Description automatically generated](./images/media/image76.png){width="6.491802274715661in" height="1.8724890638670166in"}

60. Review each of the Catalog sections: Browse Assets, Access Control, and Settings.

![A screenshot of a cell phone Description automatically generated](./images/media/image77.png){width="6.4799398512685915in" height="2.680326990376203in"}

61. Return to Browse Assets.

62. Click the. ellipses to the right of the CPDUSER.Customer_Demographics tile.\
    *(Tip: You can either hover over the name for a flyout that shows the complete name or zoom out.)*

![](./images/media/image78.png){width="2.375in" height="3.4650459317585303in"}

63. Click the tab Review.

![A screenshot of a cell phone Description automatically generated](./images/media/image79.png){width="6.4464031058617675in" height="1.4836067366579178in"}

64. This is where you can find review ratings and comments for the data, which is another aid in helping you find the best data for your projects.

![](./images/media/image80.png){width="4.542483595800525in" height="2.059757217847769in"}

## Transforming Data

In this set of exercises, you will use the CPD built-in Data Flow Designer (DFD) to build a job that can transform your data. Note: it is the Data Engineer who would do this.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| **Persona (Role)**                                                                                                                                                                | **Capabilities**                                                                                                                                                                                                                           |
+===================================================================================================================================================================================+============================================================================================================================================================================================================================================+
| ![A close up of a logo Description generated with high confidence](./images/media/image81.png){width="0.4in" height="0.4in"} | Data Engineers build and optimize the systems to allow data scientists and business analysts to perform their work. The Data Engineer ensures that any data is properly received, transformed, stored, and made accessible to other users. |
|                                                                                                                                                                                   |                                                                                                                                                                                                                                            |
| Data Engineer                                                                                                                                                                     |                                                                                                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

65. Click Navigation Menu a Organize a Transform data.

![A close up of a sign Description automatically generated](./images/media/image41.png){width="2.713114610673666in" height="1.3333016185476816in"}![A screenshot of a cell phone Description automatically generated](./images/media/image82.png){width="1.9262292213473315in" height="1.9727559055118111in"}

66. Select the project: CPD_Workshop_Transform_Project.

![A screenshot of a cell phone Description automatically generated](./images/media/image83.png){width="4.061147200349956in" height="1.4836067366579178in"}

67. Select the job Transform_Job_Demo_Churn.

![A screenshot of a cell phone Description automatically generated](./images/media/image84.png){width="4.897148950131234in" height="1.1639348206474192in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](./images/media/image81.png){width="0.4in" height="0.4in"} | Note: if there is a lock icon next to this job ![](./images/media/image85.png){width="0.13889654418197725in" height="0.2222331583552056in"} then click on the lock icon to unlock the job, then you can select it. |
|                                                                                                                                                                                   |                                                                                                                                                                                                                                                                         |
| Data Engineer                                                                                                                                                                     | Just make sure you are not in two different web client sessions at the same time doing this because that might be causing your locked job issue.                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

68. Use the zoom icons to get the best view of the entire transform job on your screen.

![A screenshot of a cell phone Description automatically generated](./images/media/image86.png){width="2.16792760279965in" height="1.2592585301837271in"}

69. This job consists of four stages as shown below. Its purpose is to join two tables (represented by the Data assets you previously searched for) CUSTOMER_CHURN and CUSTOMER_DEMOGRAPHICS.

It then adds one new column called AGE_GROUP which is derived (transformed) from the column AGE.

Finally, it writes out the results to a single table CUSTOMER_DEMOCHURN.

![](./images/media/image87.png){width="6.347222222222222in" height="3.384689413823272in"}

70. Review the connection of CUSTOMER_CHURN (the top one) by double clicking on it.

![A picture containing game Description automatically generated](./images/media/image88.png){width="6.209393044619422in" height="2.163934820647419in"}

71. The Properties for this connection will appear. Review the connection and other properties.

![A screenshot of a cell phone Description automatically generated](./images/media/image89.png){width="2.0740737095363078in" height="3.0442082239720034in"}\
*(Note: if this does not appear, resize your browser zoom as shown below)*

![A screenshot of a cell phone Description automatically generated](./images/media/image90.png){width="2.2459011373578304in" height="2.309524278215223in"}

72. Review the tab Outputs to see the table columns being passed on to the next stage of the job. Then click OK.

![A screenshot of a cell phone Description automatically generated](./images/media/image91.png){width="3.2685181539807524in" height="2.534511154855643in"}![A picture containing drawing Description automatically generated](./images/media/image92.png){width="0.9805807086614173in" height="0.5901640419947507in"}

73. Do the same with the connection for CUSTOMER_DEMOGRAPHICS (the bottom one).

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1d3c72fb.PNG](./images/media/image93.png){width="1.1319444444444444in" height="0.8119597550306211in"}

74. Next, double click on the stage Join.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1d3d41a5.PNG](./images/media/image94.png){width="0.7301837270341207in" height="0.7569444444444444in"}

75. Notice in this stage's Properties, the two tables are joined by the column: ID.

![A screenshot of a cell phone Description automatically generated](./images/media/image95.png){width="2.1699278215223097in" height="2.057377515310586in"}![A picture containing drawing Description automatically generated](./images/media/image92.png){width="0.9805807086614173in" height="0.5901640419947507in"}

76. In this Join stage, select section: Outputs.

Notice that the columns now include both tables.

![A screenshot of a cell phone Description automatically generated](./images/media/image96.png){width="2.0737707786526682in" height="3.794983595800525in"}![A picture containing drawing Description automatically generated](./images/media/image92.png){width="0.9805807086614173in" height="0.5901640419947507in"}

77. Double click stage Transform.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1d440035.PNG](./images/media/image97.png){width="0.8917727471566054in" height="0.6944444444444444in"}

78. Select the section Inputs. These are simply the inputs from the Join stage.

![A screenshot of a cell phone Description automatically generated](./images/media/image98.png){width="6.459015748031496in" height="2.312205818022747in"}

79. Review the section Outputs. Notice each column from Inputs is given a coded "link" prefix before the column name.

![A screenshot of a cell phone Description automatically generated](./images/media/image99.png){width="6.501824146981627in" height="2.9590168416447944in"}

80. Scroll down the list of output columns (using both scroll bars) to find the last output column, which is a derived (transformed) column called AGE_GROUP.

Notice it is assigned a SQL type (data type) or VARCHAR, Length 11.

Click on this derived column to review its formula.

![A screenshot of a cell phone Description automatically generated](./images/media/image100.png){width="6.114753937007874in" height="2.3600174978127733in"}

81. The Derivation Builder screen shows how it transforms AGE into AGE_GROUP.

![](./images/media/image101.png){width="6.194444444444445in" height="1.3026268591426071in"}

82. Click Cancel and Cancel again to ensure you have not inadvertently changed something.

![A picture containing drawing Description automatically generated](./images/media/image102.png){width="1.0392661854768155in" height="0.4754090113735783in"}![A picture containing drawing Description automatically generated](./images/media/image102.png){width="0.8442618110236221in" height="0.38620516185476816in"}

83. Double click the last stage, DEMOCHURN

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML1d4e87d3.PNG](./images/media/image103.png){width="0.7708333333333334in" height="0.7408978565179353in"}

84. Scroll down in the Properties to find Table name and Table action.

This indicates that CPDUSER.CUSTOMER_DEMOCHURN will be replaced with each run of this job.

Close without changing anything in this stage by clicking Cancel.

![A screenshot of a cell phone Description automatically generated](./images/media/image104.png){width="1.5491797900262467in" height="1.358759842519685in"} ![A picture containing drawing Description automatically generated](./images/media/image102.png){width="1.0392661854768155in" height="0.4754090113735783in"}

85. Click on the Save then Compile (wrench) icon.

![](./images/media/image105.png){width="2.405524934383202in" height="1.1145833333333333in"}![A screenshot of a cell phone Description automatically generated](./images/media/image106.png){width="3.115301837270341in" height="1.296519028871391in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](./images/media/image81.png){width="0.4in" height="0.4in"} | The compile action does the following:                                                                                                                              |
|                                                                                                                                                                                   |                                                                                                                                                                     |
| Data Engineer                                                                                                                                                                     | -   *Primary Input**.*** If you have more than one input link to a Transformer stage, the compiler checks that one is defined as the primary input link.            |
|                                                                                                                                                                                   |                                                                                                                                                                     |
|                                                                                                                                                                                   | -   *Reference Input**.*** If you have reference inputs defined in a Transformer stage, the compiler checks that these are not from sequential files.               |
|                                                                                                                                                                                   |                                                                                                                                                                     |
|                                                                                                                                                                                   | -   *Key Expressions**.*** If you have key fields specified in your column definitions, the compiler checks that there are key expressions joining the data tables. |
|                                                                                                                                                                                   |                                                                                                                                                                     |
|                                                                                                                                                                                   | -   *Transforms**.*** If you have specified a transform, the compiler checks that this is a suitable transform for the data type.                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

86. The job should complete successfully.

![A screenshot of a cell phone Description automatically generated](./images/media/image107.png){width="5.1311472003499565in" height="2.9480008748906386in"}

87. Click the Run icon. When the Job run options box appears, select Run.

![](./images/media/image108.png){width="3.0954975940507437in" height="1.1372550306211724in"} ![A screenshot of a cell phone Description automatically generated](./images/media/image109.png){width="2.486528871391076in" height="1.1311472003499563in"}

88. Watch the job run...

When it completes, it should look like this:

![](./images/media/image110.png){width="4.575162948381452in" height="2.2933989501312335in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](./images/media/image81.png){width="0.4in" height="0.4in"} | -   You can select the Log to view any warnings or errors during this process. This is helpful when troubleshooting. In this case, you notice a warning that the script attempted to drop a table that didn't exist. No need to worry. |
|                                                                                                                                                                                   |                                                                                                                                                                                                                                        |
| Data Engineer                                                                                                                                                                     |                                                                                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

89. Review the data by opening the Data Server Manager (DSM) for the Db2 Warehouse.

Navigation Menu a Collect a My Data a Databases a Db2 Warehouse a ellipsis ![](./images/media/image75.png){width="0.11806211723534558in" height="0.16667541557305338in"} a Open database

![A screenshot of a cell phone Description automatically generated](./images/media/image111.png){width="4.399323053368329in" height="3.868772965879265in"}

90. At the top left of the Db2 DSM console, click on: Summary a Explore a Tables.

![A screenshot of a cell phone Description automatically generated](./images/media/image112.png){width="2.826120953630796in" height="2.286884295713036in"}

91. Select schema CPDUSER a table CUSTOMER_DEMOCHURN a View Data.

![A screenshot of a social media post Description automatically generated](./images/media/image113.png){width="6.510955818022747in" height="3.740741469816273in"}

92. The new column AGE_GROUP contains the derived data, and the output is also the join of the two tables in this schema.

![](./images/media/image114.png){width="2.9166666666666665in" height="1.762153324584427in"}

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A close up of a logo Description generated with high confidence](./images/media/image81.png){width="0.4in" height="0.4in"} | If you want to try your hand at building a transformation job from scratch, please see the Organize Deeper Dive lab, section "Transformation Data -- Creating a job." |
|                                                                                                                                                                                   |                                                                                                                                                                       |
| Data Engineer                                                                                                                                                                     |                                                                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

## Lab conclusion

We have seen the value in creating a Data Dictionary by creating a glossary of categories and terms, policies and rules, to make data searchable so that data scientist, data engineers and business analysts can "shop for data."

This lab showed you how data can be profiled, visualized, refined, searched and transformed.

![](./images/media/image2.png){width="0.5833333333333334in" height="0.4722222222222222in"}

![](./images/media/image3.png){width="6.5558923884514435in" height="2.340398075240595in"}

The steps covered here could normally take many weeks, months, and sometimes even years, to complete using traditional manual methods. Cloud Pak for Data automates these things so that you can accelerate the time to value of your organization's analytics projects.

**\*\* End of Lab 04 - Organize**

Lab by Burt Vialpando, Kent Rubin and John Van Buren, IBM
