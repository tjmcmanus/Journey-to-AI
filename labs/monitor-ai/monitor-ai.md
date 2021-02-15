# Infuse: Watson OpenScale

## Lab overview

Business value is achieved when a model is infused into an application,
regularly monitored and updated. But most organizations need help with
that. They want to know when the accuracy of a model begins to decline
so it can automatically be corrected. They also want to know how their
models make decisions, and make sure they eliminate bias.

The first part of this lab will leave the Trade Co. use case to focus on
a Credit Risk use case demo that is built into Watson OpenScale. It
shows how OpenScale can detect and mitigate bias while providing
explainable output for the model's decision.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

In this Infuse lab you will learn how Watson OpenScale assists you in
this.

## Persona represented in this lab

The Developer persona is the likely role to perform the various Infuse
tasks in this lab. However, the Data Scientist persona could perform
these tasks as well.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A close up of sunglasses       | Developers create and maintain   |
| Description generated with high  | the end-user applications that   |
| confidence](/Users/tjm/Docu      | utilize the output from all the  |
| ments/GitHub/CPD-workshop/labs/m | other personas on the CPD        |
| onitor-ai/images/media/image2.pn | platform.                        |
| g){width="0.34640529308836393in" |                                  |
| height="0.34640529308836393in"}  |                                  |
|                                  |                                  |
| Developer                        |                                  |
+----------------------------------+----------------------------------+

## Logging into the CPD web client (if you have not already done so)

1.  If you are starting this lab stand-alone (without going through
    previous labs) do the following:

2.  Double-click the desktop icon: Cloud Pak for Data Web Client.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image3.png){width="0.5491797900262467in"
height="0.6200415573053368in"}

3.  The CPD web client GUI displays as shown. Use cpduser and cpdaccess
    for the *Username* and *Password* and click Sign in.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image4.png){width="1.450819116360455in"
height="1.9072954943132108in"}

## Credit Risk built-in demo

### **Run OpenScale Auto setup**

> Watson OpenScale provides a quick setup utility that will
> automatically set up a data mart, create a model, and record seven
> days' worth of measurements into the OpenScale monitors. This creates
> the Credit Risk demo that we will go through in this lab.

4.  Start by first retrieving the Db2 Advanced Edition connection
    information.

Click on the Navigation Menu ("hamburger" icon) at the top left of the
screen.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image5.png){width="1.3465912073490813in"
height="1.1306813210848643in"}

5.  Click Collect  My Data  Databases  Db2 Advanced Edition 
    ellipsis
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image6.png){width="0.11806211723534558in"
    height="0.16667541557305338in"}  Details.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image7.png){width="1.1557370953630797in"
height="1.2642060367454069in"}

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image8.png){width="2.578946850393701in"
> height="2.255569772528434in"}

6.  Scroll to find the Access Information. Notice Username, Password,
    Host, Port and Database.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image9.png){width="3.8541666666666665in"
height="1.4941262029746283in"}

7.  If you are using the remote desktop, click on the icon for Cloud Pak
    for Data Web Client; otherwise, duplicate your existing browser tab.

> ![A picture containing object, clock Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image3.png){width="0.5491797900262467in"
> height="0.6200415573053368in"} or ![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image10.png){width="1.4526323272090989in"
> height="0.6137882764654419in"}

8.  There should now be two web client browser tabs open. The first tab
    has the Details Screen for the Db2 Advanced Edition just reviewed.
    The second is the new web client browser page just launched.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image11.png){width="3.278687664041995in"
> height="0.9626979440069992in"}

9.  From the second (new) web client browser tab, click the icon for
    Services (at the top right corner of the screen)

> ![A picture containing dark, player, clock Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image12.png){width="2.065573053368329in"
> height="1.016522309711286in"}

10. In the search window, type openscale.

> Click on tile Watson OpenScale.
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image13.png){width="2.4842104111986in"
> height="2.122173009623797in"}

11. Click Open.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image14.png){width="2.5501115485564303in"
> height="1.5983606736657918in"}

12. Click Auto setup  Next.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image15.png){width="2.6967213473315836in"
> height="3.360200131233596in"} ![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image16.png){width="2.6664096675415574in"
> height="3.363135389326334in"}

13. Fill in the connection information here from the Db2 Advanced
    Edition Details screen you have opened in the other tab. (*Note:
    Your hostname may vary.*)

> When all filed in, click Prepare.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image17.png){width="3.2314807524059495in"
> height="4.488615485564305in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image18.png){width="1.3529494750656168in"
> height="0.8899081364829396in"}

14. The Auto setup will take 20 minutes or so to run. During this time,
    read about the OpenScale monitors and the Credit Risk scenario it is
    creating as it goes through the 27-step setup.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image19.png){width="1.4837882764654418in"
> height="1.4248359580052494in"}![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image20.png){width="1.5001126421697288in"
> height="1.5098042432195975in"}

+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | For this demo, you will be       |
| Description generated with high  | monitoring a model that attempts |
| confidence](/Users/tjm/Docu      | to predict credit risk based on  |
| ments/GitHub/CPD-workshop/labs/m | demographic data as well as      |
| onitor-ai/images/media/image21.p | credit history, residence        |
| ng){width="0.4046237970253718in" | information, age, employment     |
| height="0.4046237970253718in"}   | status, and more. The scenario   |
|                                  | and model use synthetic data     |
| Developer                        | based on the [UCI German Credit  |
|                                  | dataset](https:                  |
|                                  | //archive.ics.uci.edu/ml/dataset |
|                                  | s/Statlog+(German+Credit+Data)). |
|                                  |                                  |
|                                  | ![](/Users/tjm/Doc               |
|                                  | uments/GitHub/CPD-workshop/labs/ |
|                                  | monitor-ai/images/media/image22. |
|                                  | png){width="5.090791776027997in" |
|                                  | height="2.3472222222222223in"}   |
+----------------------------------+----------------------------------+

+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | Credit lenders can monitor risk  |
| Description generated with high  | models for performance, bias and |
| confidence](/Users/tjm/Docu      | explainability to limit risk     |
| ments/GitHub/CPD-workshop/labs/m | exposure from regulations and    |
| onitor-ai/images/media/image21.p | create more fair and explainable |
| ng){width="0.4046237970253718in" | outcomes for customers.          |
| height="0.4046237970253718in"}   |                                  |
|                                  | Traditional lenders are under    |
| Developer                        | pressure to expand their digital |
|                                  | portfolio of financial services  |
|                                  | to a larger and more diverse     |
|                                  | audience, which requires a new   |
|                                  | approach to credit risk          |
|                                  | modeling. Their data science     |
|                                  | teams currently rely on standard |
|                                  | modeling techniques - like       |
|                                  | decision trees and logistic      |
|                                  | regression - which work well for |
|                                  | moderate datasets and make       |
|                                  | recommendations that can be      |
|                                  | easily explained. This satisfies |
|                                  | regulatory requirements that     |
|                                  | credit lending decisions must be |
|                                  | transparent and explainable.     |
|                                  |                                  |
|                                  | To provide credit access to a    |
|                                  | wider and riskier population,    |
|                                  | applicant credit histories must  |
|                                  | expand beyond traditional        |
|                                  | credit, like mortgages and car   |
|                                  | loans, to alternate credit       |
|                                  | sources like utility and mobile  |
|                                  | phone plan payment histories,    |
|                                  | plus education and job titles.   |
|                                  | These new data sources offer     |
|                                  | promise, but also introduce risk |
|                                  | by increasing the likelihood of  |
|                                  | unexpected correlations which    |
|                                  | introduce bias based on an       |
|                                  | applicant's age, gender, or      |
|                                  | other personal traits.           |
|                                  |                                  |
|                                  | The data science techniques most |
|                                  | suited to these diverse          |
|                                  | datasets, such as gradient       |
|                                  | boosted trees and neural         |
|                                  | networks, can generate highly    |
|                                  | accurate risk models, but at a   |
|                                  | cost. Such \"black box\" models  |
|                                  | generate opaque predictions that |
|                                  | must somehow become transparent, |
|                                  | to ensure regulatory approval    |
|                                  | such as Article 22 of the        |
|                                  | General Data Protection          |
|                                  | Regulation (GDPR), or the        |
|                                  | federal Fair Credit Reporting    |
|                                  | Act (FCRA) managed by the        |
|                                  | Consumer Financial Protection    |
|                                  | Bureau.                          |
+----------------------------------+----------------------------------+

15. When the Auto setup has completed, click Let's go. You need not go
    through the Guided Tour, but you can if you have the time.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image23.png){width="2.438030402449694in"
> height="2.622950568678915in"}

### **Explore the fairness and quality monitors**

> Watson OpenScale provides two types of monitors: application monitors,
> and model monitors.
>
> We will begin with the model monitors. The model monitors section of
> the Insights Dashboard provides an overview of all the models being
> monitored by OpenScale.
>
> You can monitor models hosted with Watson Machine Learning on public
> or private clouds, Microsoft Azure, Amazon SageMaker, or custom models
> that provide JSON prediction output.

16. The dashboard shows how many deployments are currently being
    monitored, as well as an overview of the alerts from those models.
    Below, each model is represented by a tile showing the machine
    learning provider and alerts for that model. The left side of the
    screen shows all of the active monitors for the models, divided into
    sections for Fairness, Quality, and Drift.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image24.png){width="4.183486439195101in"
> height="3.0868766404199475in"}\
> ***NOTE: Your actual values may vary slightly from what is shown in
> these lab screen shots as the data source has some randomness built
> into it.\
> ***

17. Click on the tile GermanCreditRiskModelICP.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image25.png){width="1.545239501312336in"
> height="1.761467629046369in"}

18. You are presented with a dashboard of your model evaluations. Select
    the Fairness percentage value link in the Fairness tile.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image26.png){width="6.378136482939633in"
> height="3.4036701662292215in"}

19. In the Fairness section, you can see that we have chosen to model
    two features, Age and Sex, for fairness. Additionally, you can see
    that we have an alert for the Sex feature.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image27.png){width="5.931603237095363in"
> height="2.899082458442695in"}

20. Click on the fairness monitor Sex.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image28.png){width="2.743118985126859in"
> height="2.269912510936133in"}

21. Note the time frame above the graph. We are looking at hourly data
    from the past week, but the time frame can be adjusted as necessary.
    The graph shows the fairness score for females as a green line. The
    threshold we have set for an alert is shown by the red line.

> As you can see, the fairness score has dropped beneath the threshold
> consistently over the past week, alerting us to a potential unfair
> bias issue with the model. As you move your cursor inside that date
> range, values are updated to show the Fairness Score for that date and
> time.
>
> ![A screenshot of a computer screen Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image29.png){width="6.563888888888889in"
> height="3.2594739720034998in"}

22. Move your mouse on the chart to the point where fairness score was
    at its lowest (84%)

> ![A screenshot of a computer screen Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image30.png){width="6.564212598425197in"
> height="3.266055336832896in"}
>
> This screen shows us fairness details for this particular time period.
> OpenScale calculates its fairness score using a combination of actual
> predictions (payload data) and perturbed data, generated when the
> prediction probability is close to 50%. OpenScale will flip the
> monitored feature to see how it affects the prediction outcome.

23. Click on that lowest score line when it says: Click to view details.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image31.png){width="1.8990824584426946in"
> height="1.3565146544181976in"}

24. The fairness score is reached by dividing the percentage of positive
    outcomes for the monitored group (females, 67%) by the percentage of
    positive outcomes for the reference group (males, 80%).

> The graph shows the breakdown of positive and negative predictions for
> our two groups. You can use the radio button at the top to view
> payload and perturbed data, actual payload (prediction) data, and
> training data.
>
> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image32.png){width="6.09174321959755in"
> height="3.045871609798775in"}

25. Click data set (radio button) Training to view the training data
    breakdown.

> As you can see, our training data had significantly more records for
> males than for females, which may be a potential source of our unfair
> bias against females.
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image33.png){width="4.20183508311461in"
> height="2.1970855205599302in"}

26. Click the data set (button) Debiased.

> OpenScale can create a sort of "corrective lens" to reduce or remove
> unfair model bias. It does this by training another model to predict
> when an outcome of the production model is likely to be unfairly
> biased, flipping the feature value from the monitored group (female)
> to the reference group (male) and returning this prediction. On this
> screen, you can see how using this model will affect the fairness
> scores for other features.
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image34.png){width="6.587155511811024in"
> height="3.451427165354331in"}

27. Click the back arrow to return to the model dashboard.

> ![A picture containing bird, flower Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image35.png){width="3.366971784776903in"
> height="0.9925721784776903in"}

28. Click the monitor Area under ROC in the section Quality.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image36.png){width="2.7369028871391077in"
> height="2.4954122922134734in"}

29. OpenScale provides several different quality measurements. For our
    binary classification model, *Area under ROC* provides the best
    standard for model quality. These scores are generated by providing
    ground truth feedback data to the model, either via CSV upload or
    using a RESTful endpoint provided by OpenScale.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image37.png){width="6.568582677165354in"
> height="4.0in"}
>
> As with the fairness monitor, the chart in the middle of the screen
> shows model performance over an adjustable time window, with the
> relevant measurement shown as the green line and the alert threshold
> represented by the red line. As you can see, our model quality has
> consistently been above the threshold until the most recent
> measurement, represented by the right-most portion of the chart.

30. Click on the right-most portion of the chart, where Area under ROC
    drops to 0.73.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image38.png){width="3.899082458442695in"
> height="2.8987609361329834in"}

31. Here we can see a further breakdown of the feedback data and the
    various accuracy scores, and the number of feedback records
    evaluated.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image39.png){width="5.293577209098863in"
> height="2.2330982064741907in"}

32. Click on the Quality link to return to the GermanCreditRiskModelICP
    Dashboard.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image40.png){width="1.8073392388451444in"
> height="1.3144280402449693in"}

33. The OpenScale drift monitor is a separate linear regression drift
    model, trained to determine which types of data the production model
    struggles to correctly predict. This drift model allows OpenScale to
    forecast potentially costly drops in model accuracy without
    requiring additional feedback data.

> Additionally, the drift monitor compares incoming prediction requests
> with the training data to identify changes in data consistency that
> also may affect model output.
>
> These two measurements are shown on the drift monitor screen.
> Estimated drop in accuracy is represented by the black line, drop in
> data consistency by the green line, and alert threshold by the red
> line.

34. Select the Drop in accuracy link.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image41.png){width="6.361111111111111in"
> height="3.4057819335083113in"}

35. Click the chart where the drop in accuracy is at its greatest
    (8.4%).

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image42.png){width="6.361111111111111in"
> height="3.4001826334208225in"}

***NOTE: Your values may be slightly different than shown due to
randomness in data used for training.\
***

36. Here, we can get a detailed view of the transactions responsible for
    estimated drops in accuracy, data consistency, or both.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image43.png){width="6.499750656167979in"
> height="1.5340277777777778in"}

37. Click Transactions responsible for drop in accuracy.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image44.png){width="6.422017716535433in"
> height="3.4798490813648293in"}
>
> OpenScale divides transactions (predictions) that are affecting model
> accuracy into groups that share feature characteristics, providing a
> view of which feature values are causing our drift and how much
> influence each is having.

38. Click on one of the tiles for a transaction grouping.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image45.png){width="1.6422014435695538in"
> height="2.1235356517935258in"}

39. Here, OpenScale provides a detailed summary of how the values are
    affecting the model, as well as recommendations for how to address
    the issues with corrected training data.

> OpenScale lists the predictions and feature values for this grouping.
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image46.png){width="6.50625in"
> height="2.943213035870516in"}

### **Explain an individual prediction**

> Using a variety of open source algorithms, OpenScale can provide
> highly detailed explanations of the predictions your model has made.

40. Click the Explain prediction link in the Actions column of the
    transactions table.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image47.png){width="4.954132764654418in"
> height="3.220183727034121in"}

41. The OpenScale explanation feature works by slightly perturbing the
    feature values from the original prediction, sending these values to
    the production model, and measuring the impact the changes have on
    the outcome. By sending thousands of perturbed requests, OpenScale
    can gain a detailed picture of feature importance for not only
    relatively simple models like linear regression or decision tree
    classifiers, but also complex neural networks and image recognition
    models. (It can take a minute or two for the details to be
    calculated, so please be patient.)

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image48.png){width="6.4875in"
> height="1.0450820209973752in"}
>
> The upper portion of the screen shows information on the model and
> original prediction, as well as IBM's contrastive explanation
> technology. The Minimum changes for No Risk outcome show the Pertinent
> Negative values, or the least amount the feature values for the
> transaction can be changed to get a different outcome.
>
> The Maximum changes allowed for the same outcome show the Pertinent
> Positive values, or how much the feature values can change and still
> have the model make the same prediction.

42. Scroll down to see the factors that influenced the prediction.

> Here, you can see the confidence the model has in its prediction as
> well as a quick summary of the most important factors that led the
> model to make a prediction that this particular loan application
> represents a risky one.
>
> The chart at the bottom of the screen shows the feature values for
> this prediction, whether they contributed to a No Risk or Risk
> prediction, and how much they influenced the model.
>
> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image49.png){width="6.555555555555555in"
> height="3.543231627296588in"}
>
> This detailed information allows you to ensure that your models are
> making predictions grounded in reality, as well as providing full
> explainability for predictions in case of an external audit or
> internal review of the model.
>
> Finally, the data from this explanation is stored in the OpenScale
> data mart, where it, along with all other metrics, can be retrieved
> via API and surfaced to business users or even customers via
> dashboards or other applications.

43. Return to the Insights Dashboard  Model Monitors.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image50.png){width="2.5596325459317586in"
> height="1.194494750656168in"}

### **Comparing PreProduction Models**

44. You can also compare how pre-production models are performing. To do
    this, select the GermanCreditRiskModelChallengerICP box.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image51.png){width="2.7706419510061244in"
> height="4.6242782152230975in"}

45. Once opened, select Actions -- Compare options from the list.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image52.png){width="2.2752285651793525in"
> height="3.7313746719160106in"}

46. Select the other pre-production model
    GermanCreditRiskModelPreProdICP from the list.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image53.png){width="3.8256878827646545in"
> height="1.644925634295713in"}

47. Examine the comparative results of both models.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image54.png){width="3.2526323272090987in"
> height="4.015523840769903in"}

48. Select the X to close the comparison.

> ![A picture containing drawing Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image55.png){width="0.9288987314085739in"
> height="0.8807338145231846in"}

49. One final step you can do is to deliver everything you have
    generated in a single PDF report. From the Actions menu, select
    Download report PDF. It may take a minute to prepare.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image56.png){width="1.715596019247594in"
> height="2.6838035870516186in"}

50. If you are using the remote desktop experience, Select to Open the
    document with the default Document Viewer. If you are using a
    browser, simply download and open on your own machine.

> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image57.png){width="3.4403663604549433in"
> height="2.661940069991251in"}

51. Browse through the report you have created!

> ![A screenshot of a computer Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image58.png){width="6.218166010498687in"
> height="5.430555555555555in"}

##  Monitoring the AutoAI model in OpenScale

> Note: this section can only be completed as-is if you have previously
> completed the Analyze: AutoAI and Deploy labs.

### **Associate the model with the new deployment space**

> Before you can monitor the AutoAI model in OpenScale that you created
> in a previous lab, you need to do a bit of housekeeping first to
> associate that model to the OpenScale deployment.

52. Close the current browser tab and select your open IBM Cloud Pak for
    Data tab.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image59.png){width="4.788990594925634in"
> height="1.1176181102362204in"}

53. Click Navigation menu  Analyze  Analytics deployments,

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image60.png){width="1.5412839020122484in"
> height="2.296913823272091in"}

54. Select deployment space deployment-space-analytics-project-workshop.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image61.png){width="3.5836187664041996in"
height="2.94495406824147in"}

55. Select Deployments tab, then select the ellipses next to every
    deployment and delete them all.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image62.png){width="6.750832239720035in"
height="2.2568799212598427in"}

56. Return to Analytics deployment spaces (using the breadcrumb on the
    page).

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image63.png){width="2.8715594925634296in"
height="1.3342596237970255in"}

57. With no deployment in it, you can now delete the deployment space
    deployment-space-analytics-project-workshop.

Click on the deployment, then ellipses  Delete.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image64.png){width="6.447619203849519in"
height="1.9303772965879265in"}

58. Click Delete (to confirm). You should see the message as below.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image65.png){width="4.444444444444445in"
height="0.9889588801399825in"}![A screenshot of a cell phone Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image66.png){width="2.3425929571303588in"
height="0.7295275590551181in"}

59. Go to the Navigation Menu  Projects.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image67.png){width="2.619047462817148in"
height="2.3825645231846018in"}

60. Select the project: CPD Workshop Analytics Project.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image68.png){width="3.5142858705161855in"
height="2.614747375328084in"}

61. Click tab Settings.

> ![A picture containing monitor Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image69.png){width="4.763888888888889in"
> height="1.3712959317585303in"}

62. Scroll down to find Associated deployment space.

> Notice it says this project no longer is associated with a deployment
> space.
>
> Click Associate a deployment space.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image70.png){width="6.207638888888889in"
> height="0.9058880139982503in"}

63. Click section Existing.

> Click on Deployment Space openscale-fast-path  Associate.
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image71.png){width="3.4987521872265965in"
> height="2.6380949256342956in"} ![A picture containing drawing
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image72.png){width="2.114284776902887in"
> height="0.6801202974628171in"}

64. While remaining in this project, go the tab Assets,

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image73.png){width="4.095238407699037in"
> height="1.4944575678040244in"}

65. Scroll to find section Models.

66. Select the ellipses next to the model ChurnRisk AutoAI Experiment --
    P4 RandomForestClassifierEstimator -- then click Promote.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image74.png){width="5.276189851268591in"
> height="1.3845877077865267in"}

67. Choose Promote to space.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image75.png){width="5.118055555555555in"
> height="1.40165791776028in"}

68. The model is now promoted to the OpenScale deployment space the
    project is associated with.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image76.png){width="1.6851848206474191in"
> height="0.7697036307961505in"}

### **Deploy the model in the new deployment space**

> Now you can go to that deployment space to deploy the model.

69. Click Navigation menu  Analyze  Analytics deployments 
    openscale-fast-path.

> ![A picture containing clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image77.png){width="1.327869641294838in"
> height="1.1406058617672792in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image78.png){width="1.5689206036745407in"
> height="1.8278685476815397in"}
> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image79.png){width="1.75in"
> height="0.518073053368329in"}

70. Under the tab Assets, [hover]{.ul} on the launch (rocket) icon for
    the model ChurnRisk AutoAI experiment -- P4
    RandomForestClassifierEstimator.

Click Deploy.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image80.png){width="6.618055555555555in"
> height="1.4648534558180228in"}

71. Select Online.

> Fill in Name: ChurnRisk AutoAI Experiment Deployment.
>
> Click Create.
>
> ![A screenshot of a social media post Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image81.png){width="3.701143919510061in"
> height="3.9444444444444446in"}![A close up of a logo Description
> automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image82.png){width="1.2129636920384952in"
> height="0.548079615048119in"}

72. You will see it as an Online deployment that is first: In-progress.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image83.png){width="5.069444444444445in"
> height="1.6422134733158356in"}
>
> ...in a minute or two, it will show as: Deployed.
>
> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image84.png){width="4.959110892388451in"
> height="1.7083333333333333in"}

### **Monitor the model in OpenScale**

> Now you will be able configure the monitoring of that model in Watson
> OpenScale.

73. From the web client, click the icon for Services (at the top right
    corner of the screen).

> ![A picture containing object, clock Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image85.png){width="2.450819116360455in"
> height="0.8992924321959755in"}

74. Click Services Category  AI.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image86.png){width="2.951388888888889in"
> height="1.5694444444444444in"}

75. Find and click on tile Watson OpenScale.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image87.png){width="1.9930555555555556in"
> height="1.7578499562554681in"}

76. Click (top right corner) Open.

> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image88.png){width="1.0138888888888888in"
> height="0.5208333333333334in"}

77. Click (top right corner) Add to dashboard.

> ![A picture containing monitor, screen, blue, holding Description
> automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image89.png){width="1.675926290463692in"
> height="0.5017738407699037in"}

78. Select the Deployment: ChurnRisk AutoAI Experiment Deployment 
    Configure.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image90.png){width="6.014006999125109in"
> height="2.3240737095363078in"}

79. Click Configure monitors.

> ![A picture containing person, holding Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image91.png){width="2.185184820647419in"
> height="0.5325251531058618in"}

80. Next you will need to do at least one test (or payload log action)
    to activate the monitor.

> If you are using the remote desktop, click the Cloud Pak for Data web
> client to open a new browser tab or duplicate your browser tab. If you
> are using your browser, duplicate the tab.
>
> From that tab return to deployment spaces  openscale-fast-path.
>
> ![A picture containing clock, meter Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image77.png){width="1.327869641294838in"
> height="1.1406058617672792in"}![A screenshot of a cell phone
> Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image78.png){width="1.5689206036745407in"
> height="1.8278685476815397in"}
> ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image79.png){width="1.75in"
> height="0.518073053368329in"}

81. Choose deployment ChurnRisk AutoAI Experiment Deployment.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image92.png){width="4.618055555555555in"
> height="1.9183180227471566in"}

82. Under tab Test enter the information shown below Click Predict.

> (Note: you don't have to fill in all the features (input data) for
> this test, just the four values shown. This provides at least one
> payload log action... the prediction itself is not relevant here.)
>
> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image93.png){width="4.284722222222222in"
> height="3.235051399825022in"}

83. Return to the OpenScale browser tab and click the edit (pencil) icon
    in the tile Model Input.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image94.png){width="4.852174103237095in"
> height="0.9169017935258092in"}

84. Under Select data type, choose Numerical/categorical.

> ![A close up of a logo Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image95.png){width="4.416666666666667in"
> height="0.9642016622922135in"}

85. Under Select algorithm type, choose Multi-class classification.

> ![A close up of a logo Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image96.png){width="4.469564741907262in"
> height="1.06624343832021in"}

86. Click Save and continue.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image97.png){width="4.565217629046369in"
> height="3.1948490813648296in"}

87. Click Go to model summary.

> ![A close up of text on a white background Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image98.png){width="1.6521741032370953in"
> height="1.6857206911636045in"}
>
> For the remainder of the lab, try to complete the rest of the
> configuration tabs yourself.
>
> The purpose of this exercise was to show you how to get started with
> model monitoring in Watson OpenScale with your own model. How to
> configure all of the options is probably best suited for a future Deep
> Dive lab.

## Lab conclusion

Watson OpenScale is an enterprise-grade environment to help your
organization infuse your AI with trust and transparency at scale,
delivering a quick return on investment.

This Cloud Pak for Data service understands your models, detects and
mitigates drift, and delivers explainable outcomes that are free from
bias.

With this feature, Trade Co. is able to stay ahead of the curve.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image1.png){width="0.5833333333333334in"
height="0.4722222222222222in"}

\*\*

Read here about how Watson OpenScale won a 451 Firestarter award in Q2
2019.

<http://ibm.biz/openscale_award>

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML9b4f385.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/monitor-ai/images/media/image99.png){width="7.1in"
height="1.113888888888889in"}

**\*\* End of Lab 08 -- Infuse: Watson OpenScale**

Lab by Eric Martens, Burt Vialpando and Kent Rubin - IBM
