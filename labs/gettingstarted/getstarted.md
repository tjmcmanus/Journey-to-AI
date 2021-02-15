# **[Getting Started]{.smallcaps}**

## IBM Journey to Cloud and AI: Analytics Modernization Workshop

This workshop provides hands-on experience with Cloud Pak for Data that
will show you how to modernize your microservices applications by
enriching them with Machine Learning (ML) and Artificial Intelligence
(AI).

The Journey to AI requires a strong information architecture (IA) that
supports self-service capabilities and balances the needs of both the
agility required by lines of business as well as the "Enterprise class"
delivery required by IT. This journey can move significantly faster and
with more efficiency when you use a single integrated platform like
Cloud Pak for Data. It is the world's leading platform that allows you
to Collect, Organize and Analyze data, and then Deploy the results to
Infuse your applications with AI.

## Cloud Pak for Data: defined

Cloud Pak for Data (CPD) is an integrated end-to-end data and analytics
platform designed to help make data more accessible and trusted, as well
as to provide access to many analytical tools to help your organization
gain insights from your data.

CPD provides the data platform that accelerates the journey up the "AI
Ladder." With it, you can quickly build, train, deploy, and manage
machine learning (ML) models to create applications with Artificial
intelligence (AI). CPD provides inventory and cataloging of your data
sources, self-service shopping for data, and data integration and
refinement capabilities. Thus, high quality and trusted data can be more
easily prepared, assembled and used in one modern, integrated,
collaborative and scalable platform.

Cloud Pak for Data is installed on the foundation of OpenShift for the
cluster this workshop uses.

## OpenShift: defined

[Red Hat OpenShift](https://www.openshift.com/) is an open, hybrid cloud
Kubernetes platform used to build, run, and scale container-based
applications. OpenShift itself is built upon a foundation of Red Hat
Enterprise Linux. OpenShift includes everything you need to manage your
development lifecycle, including standardized workflows, support for
multiple environments, continuous integration, and release management.

Cloud Pak for Data can be installed and managed on public cloud
platforms as well, including IBM Cloud, AWS, Microsoft and more.

## Lab workshop environment

> We are using a CPD cloud cluster for this workshop. This software
> environment was built with the following key software components:

-   Red Hat OpenShift Container Platform (RHOCP) 4.3.21 as the
    > foundational cloud-native technology platform of Kubernetes and
    > Docker, as well as other open-source tools.

-   Cloud Pak for Data v3.0.1 as the microservice-built, integrated data
    > and analytics platform with various add-ons installed and enabled.

## Audience for this IBM workshop

This IBM workshop is aimed at the line-of-business professionals who are
tasked to gain new insights from all available data -- regardless of its
type and origin. The following personas who will be represented in the
various labs will greatly benefit from this workshop:

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![](/Users/tjm/Documents         | Administrators set up and        |
| /GitHub/CPD-workshop/labs/images | maintain the CPD environment     |
| /media/image1.png){width="0.4in" | itself.                          |
| height="0.4in"}                  |                                  |
|                                  | Note: while some of the Admin    |
| Administrator                    | work can be done in the CPD web  |
|                                  | client, most of the Admin work   |
|                                  | on the cluster would be done in  |
|                                  | OpenShift which is outside the   |
|                                  | scope of this workshop.          |
|                                  |                                  |
|                                  | The exercises in this first lab  |
|                                  | represent some typical CPD       |
|                                  | Administrator activities.        |
+----------------------------------+----------------------------------+
| ![A close up of a logo           | Data Engineers build and         |
| Description generated with high  | optimize the systems to allow    |
| confidence](/Users/tjm/Documents | data scientists and business     |
| /GitHub/CPD-workshop/labs/images | analysts to perform their work.  |
| /media/image2.png){width="0.4in" | The Data Engineer ensures that   |
| height="0.4in"}                  | any data is properly received,   |
|                                  | transformed, stored, and made    |
| Data Engineer                    | accessible to other users.       |
+----------------------------------+----------------------------------+
| ![A picture containing cup       | Data Stewards bring integration  |
| Description generated with very  | and transformation of the data   |
| high                             | as well as providing governance, |
| confidence](/Users/tjm/Documents | lineage and classification of    |
| /GitHub/CPD-workshop/labs/images | the data.                        |
| /media/image3.png){width="0.4in" |                                  |
| height="0.4in"}                  |                                  |
|                                  |                                  |
| Data Steward                     |                                  |
+----------------------------------+----------------------------------+
| ![A person posing for the camera | Data Quality Analysts perform    |
| Description automatically        | advanced curation of the data    |
| generated](/Us                   | and analyze the quality of the   |
| ers/tjm/Documents/GitHub/CPD-wor | data.                            |
| kshop/labs/images/media/image4.p |                                  |
| ng){width="0.4166666666666667in" |                                  |
| height="0.4166666666666667in"}   |                                  |
|                                  |                                  |
| Data Quality Analyst             |                                  |
+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents         | Business Analysts deliver value  |
| /GitHub/CPD-workshop/labs/images | by analyzing data to answer      |
| /media/image5.png){width="0.4in" | questions and communicating the  |
| height="0.4in"}                  | results to help make better      |
|                                  | business decisions.              |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+
| ![](/Users/tjm/Documents         | Data Scientists bring expertise  |
| /GitHub/CPD-workshop/labs/images | in statistics and the process of |
| /media/image6.png){width="0.4in" | building ML/AI models to make    |
| height="0.4in"}                  | predictions and answer key       |
|                                  | business questions.              |
| Data Scientist                   |                                  |
+----------------------------------+----------------------------------+
| ![A close up of sunglasses       | Developers create and maintain   |
| Description generated with high  | the end-user applications that   |
| confidence](/Users/tjm/Documents | utilize the output from all the  |
| /GitHub/CPD-workshop/labs/images | other personas on the CPD        |
| /media/image7.png){width="0.4in" | platform.                        |
| height="0.4in"}                  |                                  |
|                                  |                                  |
| Developer                        |                                  |
+----------------------------------+----------------------------------+

## Getting started

1.  To launch your CPD cluster, you will select the virtual machine with
    the label Master1.

Click on this node (VM) to expand the image and then click on the
display option in the top bar and select Fullscreen.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image8.png){width="1.875in"
height="1.2573851706036745in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image9.png){width="3.4016393263342084in"
height="1.2446741032370954in"}

You are now in the first (headed) virtual machine image of a cluster of
virtual machines that comprise your Cloud Pak for Data cluster.
Everything you will be doing in the labs will be driven from this first
image.

+----------------------------------+----------------------------------+
| ![](/User                        | If a screensaver function has    |
| s/tjm/Documents/GitHub/CPD-works | locked the screen, hit \[Enter\] |
| hop/labs/images/media/image10.pn | to get to the desktop.           |
| g){width="0.36041666666666666in" |                                  |
| height="0.36041666666666666in"}  | ![](/Users/                      |
|                                  | tjm/Documents/GitHub/CPD-worksho |
| Admin                            | p/labs/images/media/image11.png) |
|                                  |                                  |
|                                  | If necessary, you can log back   |
|                                  | into the Linux OS with: User     |
|                                  | ibmdemo, Password passw0rd.      |
+----------------------------------+----------------------------------+

2.  In this VM, notice the lab desktop looks like this:

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image12.png){width="5.627040682414698in"
height="3.0694444444444446in"}

3.  Make sure to run in "Fullscreen" mode to make the most of your
    computer screen's real estate.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML14e02f92.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image13.png){width="1.1111111111111112in"
height="0.3916557305336833in"}

4.  Double-click the icon IBM Cloud Pak for Data.

![A picture containing object, clock Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image14.png){width="0.8688517060367454in"
height="0.9809612860892388in"}

5.  After launching, maximize the browser window.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image15.png){width="1.7289982502187227in"
height="1.0245909886264217in"}

6.  The CPD web client GUI displays as shown below.

Use cpduser and cpdaccess for the *Username* and *Password* and click
Sign in.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image16.png){width="2.6748086176727908in"
height="3.5163943569553804in"}

7.  You should now be at the Home Page.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image17.png){width="5.6621686351706035in"
height="2.1969695975503063in"}

8.  Scroll down to review the quick navigation and resources links on
    this page.

You will be exploring many of these in more detail in this workshop, so
don't follow these links right now.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image18.png){width="3.844261811023622in"
height="2.643305993000875in"}

9.  If you do happen leave this page by clicking on a link and you want
    to return to it, you can do so by clicking:

Navigation Menu ("hamburger" icon) Home

![A picture containing clock, drawing Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image19.png){width="1.8360651793525808in"
height="0.9339162292213473in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image20.png){width="1.1639337270341208in"
height="0.7797976815398076in"}

10. You can, of course, also use the browser back and forward arrow keys
    to navigate through main screens in the CPD web client.

+----------------------------------+----------------------------------+
| ![](/User                        | In this workshop, we will        |
| s/tjm/Documents/GitHub/CPD-works | demonstrate the Collect,         |
| hop/labs/images/media/image10.pn | Organize and Analyze             |
| g){width="0.36041666666666666in" | capabilities to create a machine |
| height="0.36041666666666666in"}  | learning model that you can      |
|                                  | Deploy and then Infuse into a    |
| Admin                            | microservices application.       |
+----------------------------------+----------------------------------+

## User management: Persona-based roles and teams

This section explores user authorizations for the various stages of the
data analytics pipeline.

11. Click on the Navigation Menu ("hamburger" icon) at the top left of
    the screen.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="1.327869641294838in"
height="1.1406058617672792in"}

12. Click on the Administer Group (to display the drop-down menu) then
    click Manage users.

![A picture containing computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image22.png){width="1.8606561679790026in"
height="1.3264676290463693in"}

13. Review the Users first, then click on the Roles section to review
    the various personas that can be represented by any given user. A
    user can be granted more than one role if needed.

Hover over the permissions of any role to see what individual
permissions exist for that role.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image23.png){width="6.5in"
height="2.8386636045494313in"}

+----------------------------------+----------------------------------+
| ![](/User                        | These existing roles can be      |
| s/tjm/Documents/GitHub/CPD-works | edited (customized) or new ones  |
| hop/labs/images/media/image10.pn | created, to suit your            |
| g){width="0.36041666666666666in" | organization's needs.            |
| height="0.36041666666666666in"}  |                                  |
|                                  | CPD is very much "persona        |
| Admin                            | driven" in that each user can    |
|                                  | play their particular part in    |
|                                  | your organization's journey to   |
|                                  | AI. Each user (acting as one or  |
|                                  | more personas) can hand off      |
|                                  | and/or share their work with     |
|                                  | other users/personas, for a      |
|                                  | totally collaborative            |
|                                  | environment.                     |
+----------------------------------+----------------------------------+

14. Click back to the Users section and then click on Configure LDAP.
    You can review the fields required to do this here.

![A picture containing screenshot Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image24.png){width="6.5in"
height="1.0051345144356956in"}

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image25.png){width="6.5in"
height="2.770637576552931in"}

+----------------------------------+----------------------------------+
| ![](/User                        | For the sake of simplicity, you  |
| s/tjm/Documents/GitHub/CPD-works | will remain logged into the CPD  |
| hop/labs/images/media/image10.pn | web client throughout this       |
| g){width="0.36041666666666666in" | workshop as the user cpduser,    |
| height="0.36041666666666666in"}  | which has been granted all       |
|                                  | persona roles. This was done so  |
| Admin                            | that you will not be required to |
|                                  | log off and log on again as      |
|                                  | different users to represent the |
|                                  | varying personas as you make     |
|                                  | your way through each lab.       |
|                                  |                                  |
|                                  | In your organization, however,   |
|                                  | it is likely that once you have  |
|                                  | a mature CPD environment set up, |
|                                  | separation of duties will be     |
|                                  | defined by persona where         |
|                                  | different users will be assigned |
|                                  | one or more personas to do their |
|                                  | particular tasks.                |
+----------------------------------+----------------------------------+

##  Managing platform options

You can view the underlying OpenShift services and pods by doing the
following:

15. Click Navigation Menu Administer Manage platform.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="1.327869641294838in"
height="1.1406058617672792in"} ![A close up of a sign Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image26.png){width="2.942622484689414in"
height="0.8615791776027997in"}

16. In the Search area, type db2.

17. Click the deployment link Db2 Advanced Edition.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image27.png){width="3.6639337270341206in"
height="2.3523140857392826in"}

18. Under the tab Fixed resources, notice the Deployment CPU and Memory
    usage.

Click on any Deployment to review the pods for it.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image28.png){width="6.569444444444445in"
height="3.147859798775153in"}

19. The next screen shows the underlying OpenShift/Kubernetes pods for
    this deployment. (Your pod names will differ.)

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image29.png){width="5.983605643044619in"
height="1.051111111111111in"}

20. Click on Fixed resources in the bread crumb line (or use the back
    arrow).

![A picture containing meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image30.png){width="6.098363954505687in"
height="0.7622954943132109in"}

21. Click on tab Service Instances.

This shows how many instances of the Db2 Advanced Edition have been
created using the Db2 Advanced Edition deployment. In our case, it is
only one.

We will review this instance in a different way later in this lab.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image31.png){width="5.991802274715661in"
height="1.8173490813648294in"}

## Reviewing the profile settings 

22. Click the top right circle of your web client screen that has your
    user icon on it. This provides a drop down.

Choose Profile and settings.

(Note: this is also the location where you can Log out of the web
client)

![A screen shot of a smart phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image32.png){width="1.7459011373578304in"
height="2.112325021872266in"}

23. Review the things you can change in your Profile, then review
    Permissions.

Note: in Permissions, your user has all permissions to allow you to do
anything required in the workshop lab exercises. In the real world, your
permissions would be more limited and controlled by an administrator.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image33.png){width="1.8196719160104986in"
height="1.3361231408573928in"}![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image34.png){width="3.5416666666666665in"
height="1.264880796150481in"}

24. Now review Git Integrations Generate API key and New token.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image35.png){width="5.998327865266842in"
height="1.4027777777777777in"}

These allow you to configure Git with CPD, which allows you to integrate
CPD projects with your current CI/CD (Continuous Integration and
Continuous Delivery) pipeline to automate delivery of the artifacts you
create in the CPD platform. You can use the capabilities from the
underlying OpenShift platform to build cloud native microservice
applications which are tied to the ML / AI model development with a
delivery pipeline.

## Reviewing CPD services

25. Click the Services icon (four little squares over one bigger square)
    on the top right corner of your screen.

![A screen shot of a person Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image36.png){width="1.9754090113735783in"
height="0.8357502187226596in"}

26. This will bring up all available services for Cloud Pak for Data.

Click through the various categories to see what services you can
install on CPD.

For example, click on category AI and notice what is available there.
Those with "Enabled" are accessible by this CPD cluster right now.

![A screenshot of a social media post Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image37.png){width="6.0in"
height="2.670774278215223in"}

27. Now, click on the Watson Machine Learning service tile to get more
    details on what this service can do.

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image38.png){width="6.0in"
> height="2.313966535433071in"}

28. Click the browser back arrow to return to the Services catalog
    screen.

(Or you can click on the Services catalog link in the breadcrumb trail
itself)

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image39.png){width="2.0473228346456693in"
> height="0.9607305336832895in"}

29. Another convenient way to review these Services is to filter them in
    the Services Catalog options.

Click through Pricing, Source and Status.

In Status, check Enabled

> ![A screenshot of a cell phone Description automatically
> generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image40.png){width="1.625in"
> height="2.3942825896762905in"}

30. This will show all the enabled services in your cluster (as long as
    you did not check a filter for Categories, Pricing or Source.)

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image41.png){width="5.680555555555555in"
height="3.2519827209098864in"}

31. Explore through this Services page to find a few capabilities that
    you might find useful for your organization.

+----------------------------------+----------------------------------+
| ![](/User                        | IBM continues to provide more    |
| s/tjm/Documents/GitHub/CPD-works | services with each release of    |
| hop/labs/images/media/image10.pn | Cloud Pak for Data. Some are     |
| g){width="0.36041666666666666in" | part of the base offering,       |
| height="0.36041666666666666in"}  | others are purchasable as IBM    |
|                                  | "cartridges," and still other    |
| Admin                            | are purchasable through a 3^rd^  |
|                                  | party vendor.                    |
+----------------------------------+----------------------------------+

## Reviewing instances

32. Click Navigation Menu My instances.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="1.327869641294838in"
height="1.1406058617672792in"}![A screenshot of a cell phone Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image42.png){width="2.0245898950131234in"
height="1.1099726596675417in"}

33. Click tab Provisioned Instances and then click the twistie to sort
    the instances that were provisioned for this workshop.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image43.png){width="6.5in"
height="1.8888396762904638in"}

+----------------------------------+----------------------------------+
| ![](/User                        | The term "instance" in this      |
| s/tjm/Documents/GitHub/CPD-works | context means a copy of a        |
| hop/labs/images/media/image10.pn | persistent data store within the |
| g){width="0.36041666666666666in" | CPD platform. These instances    |
| height="0.36041666666666666in"}  | are stateful Kubernetes services |
|                                  | like Db2, MongoDB, Streams, Data |
| Admin                            | Virtualization and even Cognos   |
|                                  | Analytics.                       |
+----------------------------------+----------------------------------+

34. Check the tabs for Environments and Jobs. Note: the cluster may not
    have any of these running at this time, so these pages could be
    empty.

+----------------------------------+----------------------------------+
| ![](/User                        | The term "environment" in this   |
| s/tjm/Documents/GitHub/CPD-works | context means a copy of an       |
| hop/labs/images/media/image10.pn | analytics runtime that is        |
| g){width="0.36041666666666666in" | running (taking up resources) on |
| height="0.36041666666666666in"}  | the cluster. These can be        |
|                                  | Jupyter/Python,                  |
| Admin                            | Zeppelin/Anaconda, R Studio,     |
|                                  | Decision Optimization, etc.      |
|                                  |                                  |
|                                  | The term "job" in this context   |
|                                  | means a task scheduled within    |
|                                  | the platform. These can be       |
|                                  | analytics related (like a        |
|                                  | scheduled batch scoring job) or  |
|                                  | they can be a scheduled ETL or   |
|                                  | Streams job, etc.                |
+----------------------------------+----------------------------------+

## Customizing branding

35. Click Navigation Menu Administer Customize branding.

![A picture containing clock, meter Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="1.327869641294838in"
height="1.1406058617672792in"} ![A picture containing clock, phone,
laptop, computer Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image44.png){width="2.0819674103237094in"
height="1.2412576552930883in"}

36. In section Product name, click Custom name, then fill in TradeCo.
    Platform Services.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image45.png){width="3.6043482064741905in"
height="1.1319444444444444in"}

37. In section Home page logo, check Use your own logo.

Click on the box: Drop your JPG or PNG file here or browse for a file to
upload.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image46.png){width="3.065574146981627in"
height="1.370573053368329in"}

38. For Browser Only: Download TradeCoLogo.png from
    <https://ibm.biz/BdqhHa>.\
    For Unified Desktop: Under directory Pictures, select file
    TradeCoLogo.png Open.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image47.png){width="4.301556211723534in"
height="2.9754101049868766in"}

39. Click button Apply.

![A screenshot of a cell phone Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image48.png){width="6.0in"
height="2.0809853455818024in"}

40. Click Navigation Menu Home.

    ![A picture containing clock, meter Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="1.327869641294838in"
    height="1.1406058617672792in"}![A picture containing object, meter,
    black, player Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image49.png){width="2.1885247156605425in"
    height="0.7072681539807524in"}

41. Notice the Navigation bar is customized, and the Home Page can have
    a company logo on it.\
    *Note: You may have to refresh your browser if it does not
    immediately show.*

![A close up of a computer screen Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image50.png){width="6.0in"
height="1.2670188101487314in"}

42. Let's reset this to the default setting so the rest of the lab
    workbooks will be consistent with your environment:

Click Navigation Menu Administer Customize branding, then Restore
defaults Restore defaults.

![A close up of a logo Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image51.png){width="3.139343832020997in"
height="0.6331496062992126in"} ![A screenshot of a cell phone
Description automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image52.png){width="2.7377045056867892in"
height="0.867849956255468in"}

## Lab conclusion

Cloud Pak for Data is useful in the following business macro use-case
scenarios:

1.  **Manage Your Data Anywhere**: Use data virtualization, streaming,
    cataloging, governance and more to prepare your data for analysis.

2.  **Operationalize Data Science & AI**: Build, deploy, manage & govern
    models and data at scale to improve business outcomes like
    controlling customer churn, cross selling and up selling, predictive
    maintenance and more.

3.  **Shift to Next-Gen workloads**: Shift to Cloud Native to be able to
    provision and scale in minutes, build once and deploy anywhere with
    multi-cloud support, and use built-in automation and collaboration
    to increase productivity.

4.  **Smarter Governance:** Enable self-service analytics with
    auto-discovery of meta data, implementing governance rules and
    policies, enforcement of privacy to mitigate risk and to ensure
    compliance for regulatory requirements like GDPR.

![C:\\Users\\BURTVI\~1\\AppData\\Local\\Temp\\SNAGHTML8245fda.PNG](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image53.png){width="6.657448600174978in"
height="1.2013888888888888in"}

Make Cloud Pak for Data your platform for data and analytics. Why?
Because IBM understands data and provides an integrated, end-to-end data
platform that enables enterprises to:

-   Collect relevant data and make it simple and accessible

-   Use federation, virtualization and/or transformation to combine and
    refine data sets

-   Organize data so it can be trusted

-   Analyze insights on demand

-   Infuse machine learning into your applications

All of the above and much more will be demonstrated in the following
workshop labs.

**\*\* End of Lab 01 -- Getting Started**

Lab by Burt Vialpando and Kent Rubin, IBM
