# **[SPSS using NPS -- Deeper Dive]{.smallcaps}**

## Lab overview

In this lab you will use SPSS Modeler (premium cartridge) to build a churn model using training data stored in Netezza Performance Server (NPS). You will also use a Jupyter notebook to build a churn model using training data stored in NPS.

These two methods for building models are distinctly different: SPSS uses a clickable paradigm, where Jupyter notebooks use coding. After building the models you will deploy them in a Cloud Pak for Data deployment space.

You will then create two types of deployments: batch and online. Finally, you will execute the deployments to complete an end-to-end example of training, deploying and using predictive models via the Cloud Pak for Data platform with NPS data.

## Persona represented in this lab

The Data Scientist persona is the likely role to perform all the tasks shown in this lab.

+-------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| **Persona (Role)**                                                                                                | **Capabilities**                                                                                                                              |
+===================================================================================================================+===============================================================================================================================================+
| ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image1.png){width="0.4in" height="0.4in"} | Data Scientists bring expertise in statistics and the process of building ML/AI models to make predictions and answer key business questions. |
|                                                                                                                   |                                                                                                                                               |
| Data Scientist                                                                                                    |                                                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through previous labs) do the following:

2.  Click the desktop icon: Cloud Pak for Data Web Client.

> ![A picture containing object, clock Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image2.png){width="0.5720242782152231in" height="0.6458333333333334in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpduser for the *Username* and *Password* and click Sign In.

> ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image3.png){width="1.9583333333333333in" height="2.5744903762029745in"}

## Working with NPS Data in SPSS

4.  Click Navigation Menu Projects NPS Analytics Project.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image4.png){width="4.8723403324584424in" height="2.652528433945757in"}

5.  Click Assets.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image5.png){width="2.893616579177603in" height="1.7282239720034995in"}

6.  Scroll down to the Modeler flows Section and click Churn Prediction Flow.

    ![A close up of a logo Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image6.png){width="5.808510498687664in" height="1.5862051618547681in"}

+-------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image1.png){width="0.4in" height="0.4in"} | Note: This SPSS Modeler flow performs data preparation, model building, and model evaluation, all without requiring coding, by using a graphical user interface. |
|                                                                                                                   |                                                                                                                                                                  |
| Data Scientist                                                                                                    |                                                                                                                                                                  |
+-------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

### **Importing data**

7.  You'll need to connect to three tables stored in NPS. To connect to the first table, do the following:

    Mouse over the Data Asset Import Node Right click (or click the ellipsis) Open.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image7.png){width="1.875in" height="1.2076268591426071in"}

8.  On the right side of the screen a pop-up will appear.

    Select Change data asset.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image8.png){width="1.9351848206474191in" height="1.473581583552056in"}

9.  Click Connections NPS_Database ADMIN CUSTOMER_ACTIVTY OK.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image9.png){width="5.787037401574803in" height="1.6103412073490813in"}

10. Click Save in the lower right to finish setting up the Data Asset Import node to the first table in NPS.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image10.png){width="3.397222222222222in" height="2.212646544181977in"}

11. Hover over the node on the canvas and notice it has changed its name to NPS_Database:/ADMIN/CUSTOMER_ACTIVITY.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image11.png){width="1.9089523184601924in" height="1.2708333333333333in"}

12. Mouse over the Data Asset Import node you are working with until an arrow in a circle appears.

    Click and hold the arrow while dragging to the Merge node located just to the right. Release the mouse button to connect the two nodes.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image12.png){width="6.416666666666667in" height="2.052279090113736in"}

13. Now create and connect to the remaining two tables by clicking the dropdown menu Import, then click and hold Data Asset and drag and drop it onto the canvas to the right. Follow the Importing Data steps above to create connection for CUSTOMER_CHURN and CUSTOMER\_\_DEMOGRAPHICS.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image13.png){width="2.7865977690288712in" height="1.5625in"}

    When done, you will have three Data Asset Import nodes connected to these tables in NPS CUSTOMER_ACTIVTY, CUSTOMER_CHURN, CUSTOMER_DEMOGRAPHICS.

    Tip: Hover over each node to make sure you have three different tables represented by the three nodes you just created and subsequently merged.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image14.png){width="3.1041666666666665in" height="2.2411034558180227in"}

### **Testing the merged data**

14. To test your work, do a preview of the merged data.

    On the Merge node click the ellipsis Preview.

    At this point you have merged all the training data needed to train and test the churn model.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image15.png){width="1.9513888888888888in" height="1.0463965441819774in"} ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image16.png){width="4.381944444444445in" height="1.011910542432196in"}

    Click the X in the upper right of the Data preview to close the window.

## Building, evaluating, and saving the SPSS model

In this section you will retrain the SPSS model using the training data from NPS. Then, you will evaluate the goodness of the model. Finally, you will deploy the model and save a batch of data for testing the deployed model.

### **Rebuild the model**

15. Rebuild the model by first finding the green CHURNRISK model building node.

    Click green CHURNRISK (node) ellipsis Run.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image17.png){width="1.641220472440945in" height="1.7638888888888888in"}

16. You will see the flow running\...

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image18.png){width="2.2916666666666665in" height="0.49577646544181975in"}

17. Evaluate the goodness of the model by hovering over the ellipsis on the Analysis node.

    Click Analysis (node) Ellipsis Run.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image19.png){width="2.1458333333333335in" height="1.7790912073490814in"}

18. In the pop up box Outputs section, click Analysis Open.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image20.png){width="1.6458333333333333in" height="1.6345866141732284in"}

19. Review the information in View Output: Analysis.

    When finished, click Return to Flow.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image21.png){width="3.111111111111111in" height="2.094982502187227in"}

### **Prepare test data**

The portion of an SPSS flow that is to be deployed to Cloud Pak for Data will receive its input data from a CSV file. You will prepare for this by creating a small sample file in CSV format.

You will save this file for use by the portion of the flow to be deployed as a model.

20. Find the All_Customer_Data node Click the ellipsis Run.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image22.png){width="1.9752066929133858in" height="1.6597222222222223in"}

21. The node to the immediate right of the Data Asset Export node that you just ran reads the CSV file you created and provides it as input to a copy of the Churn model you built earlier.

    Hover over the Table node Click on the ellipsis Save branch as a model

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image23.png){width="3.576388888888889in" height="1.9534897200349957in"}

22. Leave the Saving mode as Scoring branch.

    Name the model Churn.

    Save Close.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image24.png){width="4.802864173228347in" height="3.8055555555555554in"}

## Creating and testing an online model deployment

Now you will create and test an online deployment using the model you just saved.

### **Create the model deployment**

23. Click on NPS Analytics Project.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image25.png){width="2.8680555555555554in" height="2.1228127734033246in"}

24. Scroll down to the Models Section and click on the ellipsis for the Churn model Promote Promote to space.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image26.png){width="5.944444444444445in" height="1.900663823272091in"} ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image27.png){width="6.069444444444445in" height="1.6432152230971129in"}

    You will see a message near the top of your screen indicating success.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image28.png){width="2.287037401574803in" height="0.799663167104112in"}

25. Scroll to the top of the screen and click Settings.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image29.png){width="5.798611111111111in" height="0.8756900699912511in"}

26. Scroll down to find section Associated deployment space.

    Click NPS Analytics Deployment Space.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image30.png){width="2.9444444444444446in" height="1.1186318897637795in"}

27. Locate the model Churn and hover at the end of the line.

    Click Deploy.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image31.png){width="6.076388888888889in" height="1.4620417760279965in"}

28. Create an online deployment.

    Select Online Name it Churn online Deployment Create.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image32.png){width="5.979166666666667in" height="2.704776902887139in"}

29. Wait for the Status to change to Deployed.

### **Test the online model deployment**

30. Click Churn online Deployment.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image33.png){width="4.951388888888889in" height="1.4262368766404199in"}

31. Select tab Test.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image34.png){width="2.6319444444444446in" height="1.0247944006999126in"}

32. Enter input data by first scrolling down until you can see the ESTINCOME and AGE fields, enter 60000 for ESTINCOME and 25 for AGE.

    Click Predict

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image35.png){width="4.16100612423447in" height="3.1875in"}

33. Scroll down in the Results window and you'll see the churn prediction along with the confidence in the prediction.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image36.png){width="3.8194444444444446in" height="1.0737182852143483in"}

## Working with NPS Data in Jupyter Notebooks

In this section you will use a Jupyter notebook to train and deploy a predictive model. This is a coding approach and this notebook is written in Python.

The notebook is complete except for the connections to the three tables containing training data stored in NPS. You need to add the code to accomplish this. However, you'll find that the code will be automatically generated for you.

### **Launch the notebook**

34. Click Navigation Menu Projects NPS Analytics Project.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image4.png){width="4.7962620297462815in" height="2.611111111111111in"}

35. Click Assets.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image37.png){width="2.138888888888889in" height="1.4605555555555556in"}

36. Scroll down to the Notebooks Section.

    Click the Pencil icon next to the Notebook named NPS - Churn Model Notebook.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image38.png){width="6.689701443569554in" height="1.0416666666666667in"}

37. You will start by selecting the first cell by clicking on it Read the contents of the cell then click Run.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image39.png){width="4.458333333333333in" height="1.744699256342957in"}

    You can tell when the notebook is running a cell by observing a solid black circle in the upper right-hand corner of the screen. It turns to an open circle when the notebook has completed its run. After any individual cell has run, any output from the code is displayed immediately after that cell, and the next cell is automatically selected for you.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image40.png){width="3.345662729658793in" height="0.4236111111111111in"}

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A picture containing clothing, hat, white, light Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image1.png){width="0.4in" height="0.4in"} | If you receive a 403: Forbidden error restart the notebook by finding the information icon at the top right of the screen and clicking as shown below. |
|                                                                                                                                                                                                       |                                                                                                                                                        |
| Data Scientist                                                                                                                                                                                        | ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image41.png){width="4.666666666666667in" height="2.405074365704287in"}         |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------+

### **Load data into the notebook**

38. Continue reading and running each cell until you reach the three cells containing the text.

    \# Load data from NPS Performance Server

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image42.png){width="4.472222222222222in" height="0.9859536307961505in"}

39. Position and Click your cursor on the last blank line inside the first of the three data cells under the notebook Section named "Load and explore the data." Then, Click Data (the 0100 Icon) Connections Insert to code Insert pandas DataFrame.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image43.png){width="5.7447101924759405in" height="2.4166666666666665in"}

40. In the pop-up to Select schema and table, Click ADMIN CUSTOMER_CHURN Select. This will insert the code needed to load the data table from NPS into the notebook.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image44.png){width="4.7034722222222225in" height="3.390972222222222in"}

41. Near the end of the inserted code there are two lines of code that start with data_df\_\#, where the \# is a number. If the number is not equal to 1, then change it to 1 in both lines of code.

    data_df_4 data_df_1

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image45.png){width="3.9568602362204723in" height="2.212962598425197in"}

42. Click Run to load the table into the notebook and display the first few rows.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image46.png){width="4.368055555555555in" height="1.4931889763779527in"}

43. Now you should be on the cell that loads the CUSTOMER_DEMOGRAPHICS table from NPS. To do so, repeat steps from the top of this sub-section Loading data into the Notebook.

    Be sure to select the CUSTOMER_DEMOGRAPICS table and use data_df_2 as the DataFrame variable name. Note that the code to load this table is shorter than the code to load the first table. This is because the code for the first table included loading the database credentials, which is only required once.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image47.png){width="5.597222222222222in" height="2.758099300087489in"}

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ![A picture containing clothing, hat, white, light Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image1.png){width="0.4in" height="0.4in"} | Note: The code to load this table is shorter than the code to load the first table. This is because the code for the first table included loading the database credentials, which is only required once. |
|                                                                                                                                                                                                       |                                                                                                                                                                                                          |
| Data Scientist                                                                                                                                                                                        |                                                                                                                                                                                                          |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

44. Now you should be on the cell that loads the third and final table, CUSTOMER_ACTIVITY, from NPS. To do so repeat the steps again from sub-section Loading data into the notebook.

    The only changes are to make sure to select the CUSTOMER_ACTIVTY table and use data_df_3 as the DataFrame variable name.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image48.png){width="6.388888888888889in" height="2.993853893263342in"}

45. Continue running the notebook one cell at a time until you reach the end. Near the end of the notebook a new deployment space will be created and the model that you've trained will be deployed as an online deployment. You'll work with that deployed model in the next Section.

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image49.png){width="5.5625in" height="2.6533956692913385in"}

## Working with Batch Deployments

In this section we'll work with the model you saved from the Jupyter notebook.

46. Click Navigation Menu Analyze Analytics deployments.

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image50.png){width="2.314815179352581in" height="1.9302220034995625in"}

47. Click Deployment-Space-Created-From-Notebook Churn-Model Create deployment Batch name it Churn Batch Deployment select One Standard CPU Click Create![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image51.png){width="5.135319335083115in" height="3.388888888888889in"}

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image52.png){width="5.768518153980753in" height="1.8032261592300962in"}

48. Before creating the batch job, we need to get some input data.

    Click Navigation Menu Click Projects Click NPS Analytics Project Under Data assets click Payload to test deployment.json Carefully copy the entire contents of the json file (making sure to highlight everything).

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image53.png){width="5.027777777777778in" height="1.7314949693788277in"}

![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image54.png){width="3.3333333333333335in" height="1.8480489938757656in"}![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image55.png){width="2.3510739282589674in" height="1.1388888888888888in"}

49. Click Navigation Menu Analyze Analytics deployments Deployment-Space-Created-From-Notebook Deployments Churn Batch Deployment.![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image56.png){width="5.027777777777778in" height="1.7423140857392825in"}

    ![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image57.png){width="4.224350393700788in" height="1.898147419072616in"}

50. Click Create Job name the job Churn Batch Job Specify input data Click Inline input data Paste the JSON data you copied in the previous step Confirm Create and Run.

    ![A close up of a logo Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image58.png){width="2.898148512685914in" height="0.9333016185476816in"}![A screenshot of a cell phone Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image59.png){width="5.583333333333333in" height="1.5629396325459317in"}

    ![A screenshot of a social media post Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image60.png){width="5.99579615048119in" height="3.85in"}

51. Let the job complete (takes about 20 seconds).

    Click the start time for the job run.

    Click Show More scroll to the bottom of the log to view the prediction and probability.

    ![A close up of a logo Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image61.png){width="4.4625in" height="1.112133639545057in"} ![A close up of a logo Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image62.png){width="0.9891480752405949in" height="0.4907403762029746in"}

    ![A screenshot of text Description automatically generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/spss-nps/images/media/image63.png){width="3.1917683727034123in" height="3.75in"}

## Lab Conclusion

In this lab, you used tables stored in NPS as a source of training data for building churn models.

Using SPSS Modeler, part of the SPSS Modeler Premium Cartridge in Cloud Pak for Data, you built a churn model using the clickable paradigm for modeling. You deployed the model for online use and tested the deployment.

Using a Jupyter notebook written in Python you built another churn model using the coding paradigm for modeling. You deployed this model programmatically from the notebook and manually from the deployment space. You then tested the batch deployment using a JSON payload.

**\*\* End of Lab 15 -- SPSS using NPS -- Deeper Dive**

Lab by Tom Konchan, Edited by Burt Vialpando, John Lucas and Kent Rubin
