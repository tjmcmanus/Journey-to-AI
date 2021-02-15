# **[Deploy]{.smallcaps}** 

## Lab overview

*Note: This lab requires that you have completed Lab 06 Analyze:
AutoAI.*

In the previous lab, you created a model from both a notebook and from
AutoAI. You will learn how to Deploy these models in this lab.

In our scenario, Trade Co. uses these steps to deploy their machine
learning models into production.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

## Persona represented in this lab

The Developer persona is the likely role to perform the various Deploy
tasks in this lab. However, the Data Scientist persona could perform
these tasks as well.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A close up of sunglasses       | Developers create and maintain   |
| Description generated with high  | the end-user applications that   |
| confide                          | utilize the output from all the  |
| nce](/Users/tjm/Documents/GitHub | other personas on the CPD        |
| /CPD-workshop/labs/deploy/images | platform.                        |
| /media/image2.png){width="0.4in" |                                  |
| height="0.4in"}                  |                                  |
|                                  |                                  |
| Developer                        |                                  |
+----------------------------------+----------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image3.png){width="0.7049179790026247in"
height="0.7958748906386701in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess
    for the *Username* and *Password* and click Sign in.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image4.png){width="1.5901629483814523in"
height="2.0904811898512685in"}

## Reviewing the notebook deployment space

Think of model deployment as the equivalent of writing a self-service
application that takes the model and makes it available through a REST
API interface. Application developers access and consume the model
through the same interface. While this is a manual process in most
organizations, Cloud Pak for Data can automate deploying and maintaining
models without writing a single line of code.

CPD eliminates the need for to do the following:

-   Writing code to perform the above capability and using a runtime to
    deploy it.

-   Creating a runtime on bare metal machines that require OS
    installation, network, storage, etc.

-   Creating a runtime on a virtual machine in VMware on Intel, or IBM
    POWER VM® on a POWER platform.

-   Creating a runtime in Docker or CRI-O requires someone to build the
    image and deploy it on one of the above platforms.

Each of the above requires manpower and machine resources. Using CPD,
you can bypass this and quickly harvest insight from your data in a
repetitive manner by integrating it with your CI/CD pipeline.

### **Associating a deployment space**

4.  In the CPD web client, click the Navigation Menu a Projects.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
height="1.1406058617672792in"}![A picture containing dark, clock, light,
meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image6.png){width="2.3114752843394575in"
height="1.1525885826771654in"}

5.  Select the project: CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image7.png){width="3.57376968503937in"
height="1.0968788276465442in"}

6.  Click section Settings.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image8.png){width="5.999305555555556in"
> height="0.9599825021872266in"}

7.  Scroll down to find Associated deployment space,

> Notice it says this project is currently not associated with a
> deployment space.
>
> Click Associate a deployment space,
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image9.png){width="5.999305555555556in"
> height="0.8919160104986876in"}
>
> Click section Existing,
>
> Click Deployment Space deployment-space-analytics-project-workshop,
>
> Click Associate,
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image10.png){width="5.999305555555556in"
> height="3.147522965879265in"}![A picture containing drawing
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image11.png){width="1.1565212160979879in"
> height="0.44683727034120735in"}

+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | Note: this deployment space was  |
| Description generated with high  | generated by running the         |
| confidence](/Users/tjm/          | notebook in the previous lab.    |
| Documents/GitHub/CPD-workshop/la |                                  |
| bs/deploy/images/media/image12.p | ![](/Users/tjm/                  |
| ng){width="0.4046237970253718in" | Documents/GitHub/CPD-workshop/la |
| height="0.4046237970253718in"}   | bs/deploy/images/media/image13.p |
|                                  | ng){width="3.5519488188976376in" |
| Developer                        | height="0.5947714348206474in"}   |
|                                  |                                  |
|                                  | ![](/Users/tjm/                  |
|                                  | Documents/GitHub/CPD-workshop/la |
|                                  | bs/deploy/images/media/image14.p |
|                                  | ng){width="3.5128871391076117in" |
|                                  | height="0.9150328083989502in"}   |
|                                  |                                  |
|                                  | However, you could have created  |
|                                  | a deployment space through the   |
|                                  | CPD web client as well.          |
+----------------------------------+----------------------------------+

8.  The project should now show that it is associated with this
    deployment space. (You may need to scroll down to see this.)

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image15.png){width="5.370555555555556in"
> height="3.8934426946631673in"}

9.  Scroll up and click Assets,

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image16.png){width="2.942622484689414in"
> height="1.3910104986876641in"}

10. If the data asset add screen is open, close it.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image17.png){width="1.3688517060367453in"
> height="1.5787981189851268in"}

11. Click + New data asset (This is how you open the data asset screen.)

> ![A close up of a logo Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image18.png){width="1.2868853893263341in"
> height="0.5410772090988626in"}

12. Click Files, then select the two files: model_batch_score.csv and
    model_eval.csv.

> *(Note: these files were created by the notebook),* then click
> ellipses![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
> height="0.16667541557305338in"} a Add as data asset and Apply.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image20.png){width="3.1652176290463694in"
> height="5.683881233595801in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image21.png){width="6.510807086614173in"
> height="1.9633027121609798in"}

13. Find the newly added data asset model_batch_score.csv, click on
    ellipses![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
    height="0.16667541557305338in"} and Promote.

> ![A screenshot of a computer screen Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image22.png){width="6.831185476815398in"
> height="3.477063648293963in"}

14. Click Promote to space.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image23.png){width="6.008734689413823in"
> height="1.5409722222222222in"}

15. The data asset is now promoted to the associated Deployment Space.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image24.png){width="2.450819116360455in"
> height="1.0046839457567804in"}

16. Repeat for the data asset model_eval.csv.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image25.png){width="6.761645888013998in"
> height="0.7889916885389326in"}

### **Working in the deployment space**

> Now you can go to the deployment space to work in it:

17. Click Navigation menu a Analyze a Analytics deployments

> ![A picture containing clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
> height="1.1406058617672792in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image26.png){width="1.5689206036745407in"
> height="1.8278685476815397in"}

18. In this screen, note that you could create a new deployment space if
    you wanted to. You will not need to, however, because the one we
    need was created by the notebook.

> Instead, click deployment-space-analytics-workshop.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image27.png){width="6.765174978127734in"
> height="1.3577985564304462in"}

19. In the Assets section, there is one Model: churn_risk_model (created
    by the notebook)

> and there are two Data Assets (the ones you just promoted).
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image28.png){width="6.7653947944007in"
> height="2.7064227909011374in"}

20. In the Deployments section, there is one deployment:
    churn_risk_model-deployment

> (which uses model churn_risk_model).
>
> ![A screenshot of a cell phone screen with text Description
> automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image29.png){width="6.0in"
> height="1.9049300087489063in"}

+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | The notebook created all of      |
| Description generated with high  | these CPD assets -- part of the  |
| confidence](/Users/tjm/          | code that did it is shown here.  |
| Documents/GitHub/CPD-workshop/la |                                  |
| bs/deploy/images/media/image12.p | ![](/Users/tjm                   |
| ng){width="0.4046237970253718in" | /Documents/GitHub/CPD-workshop/l |
| height="0.4046237970253718in"}   | abs/deploy/images/media/image30. |
|                                  | png){width="4.227380796150481in" |
| Developer                        | height="0.6843033683289589in"}   |
+----------------------------------+----------------------------------+

21. Return to section Assets (click on it).

> Click on the model: churn_risk_model.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image31.png){width="6.0in"
> height="1.571596675415573in"}

22. It shows one Online deployment (as seen previously in the
    Deployments section).

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image32.png){width="4.967320647419073in"
> height="1.0241699475065618in"}

23. Click Batch a Create Deployment

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image33.png){width="6.0in"
> height="1.3785214348206474in"}

24. Fill in name: churn-risk-model-deployment-batch.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image34.png){width="3.6967213473315836in"
> height="1.905488845144357in"}

25. Scroll down and find Select a Hardware definition. Select 1 standard
    CPU,4 GB RAM, and click Create.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image35.png){width="3.3394488188976377in"
> height="1.4485968941382328in"} ![A picture containing drawing
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image36.png){width="1.5077209098862643in"
> height="0.6229505686789152in"}

26. You will be taken to the Jobs screen. Click Create job +.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image37.png){width="6.0in"
> height="0.9419017935258093in"}

27. Fill in the Job Name: churn-risk-model-deployment-batch-run.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image38.png){width="4.345553368328959in"
> height="1.3524595363079615in"}

28. Click on sections for INPUT -- Specify input data.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image39.png){width="5.967209098862642in"
> height="0.9834459755030621in"}

29. Set the input value to model_batch_score.csv and Confirm.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image40.png){width="4.163888888888889in"
> height="1.8200721784776903in"}

30. Select the OUTPUT -- Specify output data asset.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image41.png){width="6.0in"
> height="0.9888495188101487in"}

31. In this case, we will output to a new dataset. Enter
    churn-risk-model-deployment-batch-run for name and Confirm.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image42.png){width="5.993347550306212in"
> height="3.3196719160104986in"}

32. Select Create and Run.

> ![A picture containing drawing Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image43.png){width="1.1967213473315836in"
> height="0.6198840769903762in"}

33. The job will queue, run, and complete.\
    *Note: You may need to refresh your browser to see the "Completed"
    result. You may have to wait around 5-10 minutes for the job to
    complete.*

> ![A picture containing object, clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image44.png){width="2.0555555555555554in"
> height="0.9305555555555556in"}

34. Click on the Start Time value when [Completed.]{.ul}

> ![A picture containing clock Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image45.png){width="5.008196631671041in"
> height="1.3142596237970254in"}

35. Review the job -- select Show More at bottom right.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image46.png){width="6.000052493438321in"
> height="3.2377045056867892in"}

36. After reviewing the job, click on the breadcrumb to return to the
    deployment space.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image47.png){width="6.0in"
> height="0.7265255905511812in"}

37. In the section Assets, find the new output file under Data Assets.

> The file name is churn-risk-model-deployment-batch-run.csv.

38. On that file line, click Hover to uncover the download (down arrow)
    icon
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
    height="0.16667541557305338in"}and Click it.

> ![A screenshot of a cell phone screen with text Description
> automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image48.png){width="6.0in"
> height="2.5991786964129484in"}

39. Save your File to the Documents folder and Save.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image49.png){width="6.620688976377953in"
> height="4.742754811898513in"}

40. Review the downloaded file by clicking on the download (down arrow)
    icon in your Firefox browser, then select the file.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image50.png){width="5.721377952755906in"
> height="2.836065179352581in"}
>
> *Note: this file is located on the operating system under
> **/home/ibmuser/Downloads.***

41. The batch run output is available for review.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image51.png){width="3.130718503937008in"
> height="1.475767716535433in"}

42. Close the file edit windows after reviewing.

43. Click Deployments.

> Click Online deployment: churn_risk_model_deployment.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image52.png){width="4.163933727034121in"
> height="2.2758278652668418in"}

44. Under section API reference, review the Endpoint for this model.
    This is what your applications can use to call this model.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image53.png){width="6.0in"
> height="1.4747648731408574in"}

45. Review the code snippets for each language that can aid a Developer
    to easily embed the model into an application.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image54.png){width="6.0in"
> height="1.2388495188101487in"}
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image55.png){width="5.522935258092739in"
> height="2.7614676290463693in"}
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image56.png){width="6.0in"
> height="2.2975349956255466in"}

## Deploying and testing the AutoAI model

### **Deploying the AutoAI model**

46. In the CPD web client, click the Navigation Menu a Projects.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
height="1.1406058617672792in"}![A picture containing meter Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image57.png){width="2.2049179790026248in"
height="0.862179571303587in"}

47. Select the project: CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image7.png){width="3.57376968503937in"
height="1.0968788276465442in"}

48. Under Assets, scroll down to Models.

On the model created from the AutoAI experiment (ChurnRisk AutoAI
experiment -- P4 RandomForestClassifierEstimator), click on
ellipses![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
height="0.16667541557305338in"} then Promote and Promote to space.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image16.png){width="2.9672123797025374in"
height="1.4026345144356955in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image58.png){width="6.0in"
height="1.6062204724409448in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image59.png){width="5.898611111111111in"
height="1.3702274715660543in"}

49. This promotes the model to the associated Deployment Space

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image60.png){width="6.004925634295713in"
height="1.852458442694663in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image61.png){width="3.045871609798775in"
height="1.3250754593175853in"}

50. Click Navigation menu a Analyze a Analytics deployments.

> ![A picture containing clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
> height="1.1406058617672792in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image26.png){width="2.3308858267716537in"
> height="2.715596019247594in"}

51. Click deployment-space-analytics-project-workshop.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image62.png){width="6.004861111111111in"
height="1.9417125984251968in"}

52. Under section Assets, find the model you just promoted from your
    project. (*Don't click on it.)*

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image63.png){width="6.0in"
height="2.561619641294838in"}

53. At the end of the row for this model, click Hover and click on the
    Deploy (rocket) icon.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image64.png){width="1.2950820209973752in"
height="1.0515627734033246in"}

54. Choose Online.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image65.png){width="3.7377045056867892in"
height="3.238830927384077in"}

55. Name: ChurnRisk AutoAI Experiment deployment a Create.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image66.png){width="3.22620406824147in"
height="3.0491797900262467in"}![A picture containing drawing Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image67.png){width="1.614753937007874in"
height="0.7616765091863517in"}

56. You will see the online model being deployed.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image68.png){width="5.21650699912511in"
height="1.393442694663167in"}

57. While you are waiting for it to deploy, review the model Schema.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image69.png){width="5.688523622047244in"
height="3.491342957130359in"}

58. Select Deployments. The Online model is now deployed in short time
    with zero coding.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image70.png){width="6.00625in"
height="1.9550863954505686in"}

59. Click on the deployment.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image71.png){width="5.004769247594051in"
height="1.5409831583552056in"}

### **Testing the AutoAI model**

60. Click on tab Test.

Fill in the first three input data fields as shown below.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image72.png){width="3.6173906386701664in"
height="2.6030063429571304in"}

61. Scroll down and click on Predict.

(Note: filling in more fields would make the prediction more accurate,
but we only did three fields to show you the process.)

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image73.png){width="0.8956517935258093in"
height="0.3873086176727909in"}

62. Your machine learning prediction and probability is returned.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image74.png){width="3.1071839457567805in"
height="4.049180883639545in"}

## Lab conclusion

Today, organizations need better, faster and more integrated methods for
model deployment that can include online, batch and virtual testing. The
Cloud Pak for Data deploy capabilities help serve this need so they can
more easily infuse AI into their applications.

In our scenario, the Trade Co. developer used the platform to easily
deploy and test models.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

**\*\* End of Lab 07 - Deploy**

Lab by Burt Vialpando and Kent Rubin, IBM

# **[Deploy]{.smallcaps}**  {#deploy}

## Lab overview {#lab-overview}

*Note: This lab requires that you have completed Lab 06 Analyze:
AutoAI.*

In the previous lab, you created a model from both a notebook and from
AutoAI. You will learn how to Deploy these models in this lab.

In our scenario, Trade Co. uses these steps to deploy their machine
learning models into production.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

## Persona represented in this lab {#persona-represented-in-this-lab}

The Developer persona is the likely role to perform the various Deploy
tasks in this lab. However, the Data Scientist persona could perform
these tasks as well.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A close up of sunglasses       | Developers create and maintain   |
| Description generated with high  | the end-user applications that   |
| confide                          | utilize the output from all the  |
| nce](/Users/tjm/Documents/GitHub | other personas on the CPD        |
| /CPD-workshop/labs/deploy/images | platform.                        |
| /media/image2.png){width="0.4in" |                                  |
| height="0.4in"}                  |                                  |
|                                  |                                  |
| Developer                        |                                  |
+----------------------------------+----------------------------------+

## Logging into the CPD web client (if you have not already done so) {#logging-into-the-cpd-web-client-if-you-have-not-already-done-so}

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image3.png){width="0.7049179790026247in"
height="0.7958748906386701in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess
    for the *Username* and *Password* and click Sign in.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image4.png){width="1.5901629483814523in"
height="2.0904811898512685in"}

## Reviewing the notebook deployment space {#reviewing-the-notebook-deployment-space}

Think of model deployment as the equivalent of writing a self-service
application that takes the model and makes it available through a REST
API interface. Application developers access and consume the model
through the same interface. While this is a manual process in most
organizations, Cloud Pak for Data can automate deploying and maintaining
models without writing a single line of code.

CPD eliminates the need for to do the following:

-   Writing code to perform the above capability and using a runtime to
    deploy it.

-   Creating a runtime on bare metal machines that require OS
    installation, network, storage, etc.

-   Creating a runtime on a virtual machine in VMware on Intel, or IBM
    POWER VM® on a POWER platform.

-   Creating a runtime in Docker or CRI-O requires someone to build the
    image and deploy it on one of the above platforms.

Each of the above requires manpower and machine resources. Using CPD,
you can bypass this and quickly harvest insight from your data in a
repetitive manner by integrating it with your CI/CD pipeline.

### **Associating a deployment space** {#associating-a-deployment-space}

4.  In the CPD web client, click the Navigation Menu a Projects.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
height="1.1406058617672792in"}![A picture containing dark, clock, light,
meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image6.png){width="2.3114752843394575in"
height="1.1525885826771654in"}

5.  Select the project: CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image7.png){width="3.57376968503937in"
height="1.0968788276465442in"}

6.  Click section Settings.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image8.png){width="5.999305555555556in"
> height="0.9599825021872266in"}

7.  Scroll down to find Associated deployment space,

> Notice it says this project is currently not associated with a
> deployment space.
>
> Click Associate a deployment space,
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image9.png){width="5.999305555555556in"
> height="0.8919160104986876in"}
>
> Click section Existing,
>
> Click Deployment Space deployment-space-analytics-project-workshop,
>
> Click Associate,
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image10.png){width="5.999305555555556in"
> height="3.147522965879265in"}![A picture containing drawing
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image11.png){width="1.1565212160979879in"
> height="0.44683727034120735in"}

+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | Note: this deployment space was  |
| Description generated with high  | generated by running the         |
| confidence](/Users/tjm/          | notebook in the previous lab.    |
| Documents/GitHub/CPD-workshop/la |                                  |
| bs/deploy/images/media/image12.p | ![](/Users/tjm/                  |
| ng){width="0.4046237970253718in" | Documents/GitHub/CPD-workshop/la |
| height="0.4046237970253718in"}   | bs/deploy/images/media/image13.p |
|                                  | ng){width="3.5519488188976376in" |
| Developer                        | height="0.5947714348206474in"}   |
|                                  |                                  |
|                                  | ![](/Users/tjm/                  |
|                                  | Documents/GitHub/CPD-workshop/la |
|                                  | bs/deploy/images/media/image14.p |
|                                  | ng){width="3.5128871391076117in" |
|                                  | height="0.9150328083989502in"}   |
|                                  |                                  |
|                                  | However, you could have created  |
|                                  | a deployment space through the   |
|                                  | CPD web client as well.          |
+----------------------------------+----------------------------------+

8.  The project should now show that it is associated with this
    deployment space. (You may need to scroll down to see this.)

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image15.png){width="5.370555555555556in"
> height="3.8934426946631673in"}

9.  Scroll up and click Assets,

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image16.png){width="2.942622484689414in"
> height="1.3910104986876641in"}

10. If the data asset add screen is open, close it.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image17.png){width="1.3688517060367453in"
> height="1.5787981189851268in"}

11. Click + New data asset (This is how you open the data asset screen.)

> ![A close up of a logo Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image18.png){width="1.2868853893263341in"
> height="0.5410772090988626in"}

12. Click Files, then select the two files: model_batch_score.csv and
    model_eval.csv.

> *(Note: these files were created by the notebook),* then click
> ellipses![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
> height="0.16667541557305338in"} a Add as data asset and Apply.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image20.png){width="3.1652176290463694in"
> height="5.683881233595801in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image21.png){width="6.510807086614173in"
> height="1.9633027121609798in"}

13. Find the newly added data asset model_batch_score.csv, click on
    ellipses![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
    height="0.16667541557305338in"} and Promote.

> ![A screenshot of a computer screen Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image22.png){width="6.831185476815398in"
> height="3.477063648293963in"}

14. Click Promote to space.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image23.png){width="6.008734689413823in"
> height="1.5409722222222222in"}

15. The data asset is now promoted to the associated Deployment Space.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image24.png){width="2.450819116360455in"
> height="1.0046839457567804in"}

16. Repeat for the data asset model_eval.csv.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image25.png){width="6.761645888013998in"
> height="0.7889916885389326in"}

### **Working in the deployment space** {#working-in-the-deployment-space}

> Now you can go to the deployment space to work in it:

17. Click Navigation menu a Analyze a Analytics deployments

> ![A picture containing clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
> height="1.1406058617672792in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image26.png){width="1.5689206036745407in"
> height="1.8278685476815397in"}

18. In this screen, note that you could create a new deployment space if
    you wanted to. You will not need to, however, because the one we
    need was created by the notebook.

> Instead, click deployment-space-analytics-workshop.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image27.png){width="6.765174978127734in"
> height="1.3577985564304462in"}

19. In the Assets section, there is one Model: churn_risk_model (created
    by the notebook)

> and there are two Data Assets (the ones you just promoted).
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image28.png){width="6.7653947944007in"
> height="2.7064227909011374in"}

20. In the Deployments section, there is one deployment:
    churn_risk_model-deployment

> (which uses model churn_risk_model).
>
> ![A screenshot of a cell phone screen with text Description
> automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image29.png){width="6.0in"
> height="1.9049300087489063in"}

+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | The notebook created all of      |
| Description generated with high  | these CPD assets -- part of the  |
| confidence](/Users/tjm/          | code that did it is shown here.  |
| Documents/GitHub/CPD-workshop/la |                                  |
| bs/deploy/images/media/image12.p | ![](/Users/tjm                   |
| ng){width="0.4046237970253718in" | /Documents/GitHub/CPD-workshop/l |
| height="0.4046237970253718in"}   | abs/deploy/images/media/image30. |
|                                  | png){width="4.227380796150481in" |
| Developer                        | height="0.6843033683289589in"}   |
+----------------------------------+----------------------------------+

21. Return to section Assets (click on it).

> Click on the model: churn_risk_model.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image31.png){width="6.0in"
> height="1.571596675415573in"}

22. It shows one Online deployment (as seen previously in the
    Deployments section).

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image32.png){width="4.967320647419073in"
> height="1.0241699475065618in"}

23. Click Batch a Create Deployment

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image33.png){width="6.0in"
> height="1.3785214348206474in"}

24. Fill in name: churn-risk-model-deployment-batch.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image34.png){width="3.6967213473315836in"
> height="1.905488845144357in"}

25. Scroll down and find Select a Hardware definition. Select 1 standard
    CPU,4 GB RAM, and click Create.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image35.png){width="3.3394488188976377in"
> height="1.4485968941382328in"} ![A picture containing drawing
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image36.png){width="1.5077209098862643in"
> height="0.6229505686789152in"}

26. You will be taken to the Jobs screen. Click Create job +.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image37.png){width="6.0in"
> height="0.9419017935258093in"}

27. Fill in the Job Name: churn-risk-model-deployment-batch-run.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image38.png){width="4.345553368328959in"
> height="1.3524595363079615in"}

28. Click on sections for INPUT -- Specify input data.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image39.png){width="5.967209098862642in"
> height="0.9834459755030621in"}

29. Set the input value to model_batch_score.csv and Confirm.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image40.png){width="4.163888888888889in"
> height="1.8200721784776903in"}

30. Select the OUTPUT -- Specify output data asset.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image41.png){width="6.0in"
> height="0.9888495188101487in"}

31. In this case, we will output to a new dataset. Enter
    churn-risk-model-deployment-batch-run for name and Confirm.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image42.png){width="5.993347550306212in"
> height="3.3196719160104986in"}

32. Select Create and Run.

> ![A picture containing drawing Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image43.png){width="1.1967213473315836in"
> height="0.6198840769903762in"}

33. The job will queue, run, and complete.\
    *Note: You may need to refresh your browser to see the "Completed"
    result. You may have to wait around 5-10 minutes for the job to
    complete.*

> ![A picture containing object, clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image44.png){width="2.0555555555555554in"
> height="0.9305555555555556in"}

34. Click on the Start Time value when [Completed.]{.ul}

> ![A picture containing clock Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image45.png){width="5.008196631671041in"
> height="1.3142596237970254in"}

35. Review the job -- select Show More at bottom right.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image46.png){width="6.000052493438321in"
> height="3.2377045056867892in"}

36. After reviewing the job, click on the breadcrumb to return to the
    deployment space.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image47.png){width="6.0in"
> height="0.7265255905511812in"}

37. In the section Assets, find the new output file under Data Assets.

> The file name is churn-risk-model-deployment-batch-run.csv.

38. On that file line, click Hover to uncover the download (down arrow)
    icon
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
    height="0.16667541557305338in"}and Click it.

> ![A screenshot of a cell phone screen with text Description
> automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image48.png){width="6.0in"
> height="2.5991786964129484in"}

39. Save your File to the Documents folder and Save.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image49.png){width="6.620688976377953in"
> height="4.742754811898513in"}

40. Review the downloaded file by clicking on the download (down arrow)
    icon in your Firefox browser, then select the file.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image50.png){width="5.721377952755906in"
> height="2.836065179352581in"}
>
> *Note: this file is located on the operating system under
> **/home/ibmuser/Downloads.***

41. The batch run output is available for review.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image51.png){width="3.130718503937008in"
> height="1.475767716535433in"}

42. Close the file edit windows after reviewing.

43. Click Deployments.

> Click Online deployment: churn_risk_model_deployment.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image52.png){width="4.163933727034121in"
> height="2.2758278652668418in"}

44. Under section API reference, review the Endpoint for this model.
    This is what your applications can use to call this model.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image53.png){width="6.0in"
> height="1.4747648731408574in"}

45. Review the code snippets for each language that can aid a Developer
    to easily embed the model into an application.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image54.png){width="6.0in"
> height="1.2388495188101487in"}
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image55.png){width="5.522935258092739in"
> height="2.7614676290463693in"}
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image56.png){width="6.0in"
> height="2.2975349956255466in"}

## Deploying and testing the AutoAI model {#deploying-and-testing-the-autoai-model}

### **Deploying the AutoAI model** {#deploying-the-autoai-model}

46. In the CPD web client, click the Navigation Menu a Projects.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
height="1.1406058617672792in"}![A picture containing meter Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image57.png){width="2.2049179790026248in"
height="0.862179571303587in"}

47. Select the project: CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image7.png){width="3.57376968503937in"
height="1.0968788276465442in"}

48. Under Assets, scroll down to Models.

On the model created from the AutoAI experiment (ChurnRisk AutoAI
experiment -- P4 RandomForestClassifierEstimator), click on
ellipses![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image19.png){width="0.11806211723534558in"
height="0.16667541557305338in"} then Promote and Promote to space.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image16.png){width="2.9672123797025374in"
height="1.4026345144356955in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image58.png){width="6.0in"
height="1.6062204724409448in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image59.png){width="5.898611111111111in"
height="1.3702274715660543in"}

49. This promotes the model to the associated Deployment Space

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image60.png){width="6.004925634295713in"
height="1.852458442694663in"}

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image61.png){width="3.045871609798775in"
height="1.3250754593175853in"}

50. Click Navigation menu a Analyze a Analytics deployments.

> ![A picture containing clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image5.png){width="1.327869641294838in"
> height="1.1406058617672792in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image26.png){width="2.3308858267716537in"
> height="2.715596019247594in"}

51. Click deployment-space-analytics-project-workshop.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image62.png){width="6.004861111111111in"
height="1.9417125984251968in"}

52. Under section Assets, find the model you just promoted from your
    project. (*Don't click on it.)*

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image63.png){width="6.0in"
height="2.561619641294838in"}

53. At the end of the row for this model, click Hover and click on the
    Deploy (rocket) icon.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image64.png){width="1.2950820209973752in"
height="1.0515627734033246in"}

54. Choose Online.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image65.png){width="3.7377045056867892in"
height="3.238830927384077in"}

55. Name: ChurnRisk AutoAI Experiment deployment a Create.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image66.png){width="3.22620406824147in"
height="3.0491797900262467in"}![A picture containing drawing Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image67.png){width="1.614753937007874in"
height="0.7616765091863517in"}

56. You will see the online model being deployed.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image68.png){width="5.21650699912511in"
height="1.393442694663167in"}

57. While you are waiting for it to deploy, review the model Schema.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image69.png){width="5.688523622047244in"
height="3.491342957130359in"}

58. Select Deployments. The Online model is now deployed in short time
    with zero coding.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image70.png){width="6.00625in"
height="1.9550863954505686in"}

59. Click on the deployment.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image71.png){width="5.004769247594051in"
height="1.5409831583552056in"}

### **Testing the AutoAI model** {#testing-the-autoai-model}

60. Click on tab Test.

Fill in the first three input data fields as shown below.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image72.png){width="3.6173906386701664in"
height="2.6030063429571304in"}

61. Scroll down and click on Predict.

(Note: filling in more fields would make the prediction more accurate,
but we only did three fields to show you the process.)

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image73.png){width="0.8956517935258093in"
height="0.3873086176727909in"}

62. Your machine learning prediction and probability is returned.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image74.png){width="3.1071839457567805in"
height="4.049180883639545in"}

## Lab conclusion {#lab-conclusion}

Today, organizations need better, faster and more integrated methods for
model deployment that can include online, batch and virtual testing. The
Cloud Pak for Data deploy capabilities help serve this need so they can
more easily infuse AI into their applications.

In our scenario, the Trade Co. developer used the platform to easily
deploy and test models.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/deploy/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

**\*\* End of Lab 07 - Deploy**

Lab by Burt Vialpando and Kent Rubin, IBM
