# **[IBM Watson Assistant -- Deeper Dive]{.smallcaps}**

## Lab overview

In this lab, we will use the power of the IBM Cloud Pak for Data
platform and the AI enabled virtual assistant service IBM Watson
Assistant to design and customize an engaging conversation that can be
leveraged by your customers. The narrative of the Virtual Assistant is
around providing a self-service channel to customers of Trade Co. that
will help streamline certain tasks and improve the quality of service
provided by Trade Co. currently.

The installation of IBM Watson Assistant service has already been done
for you. We will begin by showing you how to provision an instance and
get started.

## Persona represented in this lab

The Developer persona is the likely role to perform the various Infuse
tasks in this lab and to further integrate the virtual assistant to
multiple channels. However, the Data Scientist / Business Analyst
persona could perform the training tasks as well.

+----------------------------------+----------------------------------+
| **Persona (Role)**               | **Capabilities**                 |
+==================================+==================================+
| ![A close up of sunglasses       | Developers create and maintain   |
| Description generated with high  | the end-user applications that   |
| confidence](/Use                 | utilize the output from all the  |
| rs/tjm/Documents/GitHub/CPD-work | other personas on the CPD        |
| shop/labs/images/media/image1.pn | platform.                        |
| g){width="0.34640529308836393in" |                                  |
| height="0.34640529308836393in"}  |                                  |
|                                  |                                  |
| Developer                        |                                  |
+----------------------------------+----------------------------------+
| ![A picture containing clothing  | Business Analysts deliver value  |
| Description automatically        | by taking data, using it to      |
| generated](/Users/tjm/Documents  | answer questions, and            |
| /GitHub/CPD-workshop/labs/images | communicating the results to     |
| /media/image2.png){width="0.4in" | help make better business        |
| height="0.4in"}                  | decisions.                       |
|                                  |                                  |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+

+----------------------------------+----------------------------------+
| ![A picture containing clothing  | **Caution!**                     |
| Description automatically        |                                  |
| generated](/Users/tjm/Documents  | This lab requires that you to    |
| /GitHub/CPD-workshop/labs/images | log into a ***different*** Cloud |
| /media/image2.png){width="0.4in" | Pak for Data web client than     |
| height="0.4in"}                  | what is utilized by the other    |
|                                  | labs in this workshop.           |
| Business Analyst                 |                                  |
|                                  | *Please pay special attention to |
|                                  | the next section.* Don't assume  |
|                                  | it is the same login information |
|                                  | as what you have seen in the     |
|                                  | rest of the labs in this         |
|                                  | workshop. Don't skip it.         |
+----------------------------------+----------------------------------+

## Logging into the Watson Assistant CPD web client 

1.  If you are in a CPD web client for any other lab in this workshop,
    log out and close the browser.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image3.png){width="1.457458442694663in"
height="1.5625in"}

2.  Double-click the desktop icon: Watson Assistant -- Discovery.

![A picture containing sitting, computer, holding, computer Description
automatically
generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image4.png){width="0.9375in"
height="0.9316786964129484in"}

+----------------------------------+----------------------------------+
| ![A picture containing clothing  | **Note:** Again, this lab        |
| Description automatically        | requires that you log into the   |
| generated](/Users/tjm/Documents  | Watson Assistant and Watson      |
| /GitHub/CPD-workshop/labs/images | Discovery web client by clicking |
| /media/image2.png){width="0.4in" | on the above icon.               |
| height="0.4in"}                  |                                  |
|                                  | This web client points to a      |
| Business Analyst                 | different namespace (project) in |
|                                  | OpenShift than what the rest of  |
|                                  | the services for this workshop   |
|                                  | utilize, which only houses       |
|                                  | Watson Assistant and Watson      |
|                                  | Discovery.                       |
+----------------------------------+----------------------------------+

3.  The Watson Assistant and Watson Discovery CPD web client login GUI
    displays as shown.

    Use cpduser and cpdaccess for the *Username* and *Password* and
    click Sign in.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image5.png){width="2.3591622922134734in"
    height="3.101437007874016in"}

## Provisioning a new IBM Watson Assistant instance

Before you continue, please check the top left of your screen. It should
say IBM Cloud Pak for Data with Watson.

If it does not say that, then return to the previous section in this
workbook and follow the instructions.

![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image6.png){width="4.055555555555555in"
height="0.9513888888888888in"}

1.  Select the Services Menu icon at the top right of the screen.

    ![A picture containing ball, racket, player, person Description
    automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image7.png){width="1.5638298337707786in"
    height="0.6940069991251093in"}

2.  In the search window, type Watson Assistant.

    Click on the tile Watson Assistant.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image8.png){width="3.3958333333333335in"
    height="2.432256124234471in"}

3.  On the top right of the screen click ellipsis
    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image9.png){width="0.11806211723534558in"
    height="0.16667541557305338in"} Provision instance.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image10.png){width="1.6527777777777777in"
    height="1.3361745406824146in"}

4.  In Create service instance, fill in *Instance name*:
    assistant--TradeCo

    Select Deployment as watson--assistant Create.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image11.png){width="4.127280183727034in"
    height="2.984849081364829in"}

+----------------------------------+----------------------------------+
| ![A picture containing clothing  | Note: You will need to do this   |
| Description automatically        | step once for every new instance |
| generated](/Users/tjm/Documents  | you need to create. After which, |
| /GitHub/CPD-workshop/labs/images | you can simply access your       |
| /media/image2.png){width="0.4in" | provisioned instance from the    |
| height="0.4in"}                  | list of available options.       |
|                                  |                                  |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+

5.  Once your instance is provisioned you will see a detailed screen
    outlining the details on your instance and access information that
    can be shared via the "Download" button with your team for
    customization purposes.

    Click the Launch tool button to access Watson Assistant.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image12.png){width="4.2699628171478565in"
    height="2.5in"}

## Creating your first Virtual Assistant with IBM Watson Assistant 

6.  We will now create our first virtual assistant on the newly
    provisioned instance.

    Click Create assistant.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image13.png){width="3.9583333333333335in"
    height="1.543079615048119in"}

7.  Type assistant name as TradeCo Assistant

    Leave the Description blank Click Create assistant.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image14.png){width="5.262472659667542in"
    height="3.24375in"}

+----------------------------------+----------------------------------+
| ![A picture containing clothing  | Note: You will need to only do   |
| Description automatically        | this once for any new assistant  |
| generated](/Users/tjm/Documents  | created.                         |
| /GitHub/CPD-workshop/labs/images |                                  |
| /media/image2.png){width="0.4in" |                                  |
| height="0.4in"}                  |                                  |
|                                  |                                  |
| Business Analyst                 |                                  |
+----------------------------------+----------------------------------+

### **Dialog and Search skills overview**

You can train your virtual assistant to handle both short tail and long
tail responses using the skills feature. There are two types of skills
that you should be aware of: Dialog Skill and Search Skill. A *dialog*
skill provides specific responses you\'ve created. You can use a
*search* skill to provide answers from linked documents or web pages.
You can choose one or both skills for your assistant. Watson Assistant
can be later deployed to a channel of your choice which can be a voice
agent or a custom application specific to your organization.

Dialog skill: Uses Watson natural language processing and machine
learning technologies to understand user questions and requests and
respond to them with answers that are authored by you.

Search skill: For a given user query, uses the IBM Watson Discovery
service (out of scope for this lab) to search a data source of your
self-service content and return an answer.

### **Loading the file to add a dialog skill**

8.  Use this link to download the JSON File which will be used in the
    next step. <http://ibm.biz/Trader-JSON>

    (If you are using a digital copy of this workbook, click on the
    link. Otherwise, you can open another browser tab and paste the
    link.)

    Alternately, if you are using the Unified Desktop, the file is
    available for you in directory:
    /home/ibmdemo/Downloads/skill-IBM-Stock-Trader.json.

9.  Click Add dialog skill.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image15.png){width="6.652777777777778in"
    height="1.1810247156605425in"}

10. Select Import skill Choose JSON File.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image16.png){width="3.951388888888889in"
    height="2.2158464566929132in"}

11. If you are using the Unified Desktop, navigate to

    Downloads skill-IBM-Stock-Trader.json Open.

    If you are accessing this workshop via your own desktop browser,
    then select the file from the location of where you downloaded the
    file.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image17.png){width="6.630353237095363in"
    height="1.5in"}

12. With your JSON file chosen, click Import.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image18.png){width="3.1666666666666665in"
    height="1.4256310148731408in"}

13. Upon a successful Import you should see "IBM Stock Trader" card
    under Dialog as shown below.

    Click in the dialog box IBM Stock Trader.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image19.png){width="5.770833333333333in"
    height="2.380807086614173in"}

### **Reviewing the dialog skill**

14. When we imported the Dialog skill, it brought the intents & entities
    which were created previously (This is an easy way to transfer your
    virtual assistant's skills from one Assistant to another). You are
    first positioned t the Intents screen of the Development view.

    After you click the Dialog skill IBM Stock Trader, you will see the
    Development view.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image20.png){width="5.048611111111111in"
    height="2.3998326771653544in"}

    In this view you can add new intents / entities and modify existing
    ones. You can also use the Content Catalog which is updated
    regularly to add common intents to your Watson Assistant dialog
    skill based on the various available categories.

15. Click on Content Catalog Customer Care.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image21.png){width="6.409722222222222in"
    height="1.9384645669291338in"}

    Navigate through the different intents already available and review
    the examples that have been provided. Using them is as easy as
    clicking the Add to skill button the top right-hand corner. (No need
    to do that now.)

16. Return to the Development view.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image22.png){width="1.7847222222222223in"
    height="0.5471412948381452in"}

17. You will now go through the process of creating a new intent.

    Click on Intents.

    Select intent \#add_stock Delete (trash can) icon Delete.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image23.png){width="6.194444444444445in"
    height="2.2181003937007873in"}

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image24.png){width="3.9583333333333335in"
    height="1.3740419947506561in"}

18. Click Create intent Intent name: \#add_stock Description: add stock
    to my portfolio Create intent.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image25.png){width="4.694444444444445in"
    height="2.198540026246719in"}

19. Under User example add the following:

    add some stock

    add stock

    add new stock to my portfolio

    new stocks add

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image26.png){width="3.138261154855643in"
    height="3.5277777777777777in"}

    You can add or import more examples in natural language if you wish.
    The goal of Intents is to understand the purpose of your customer's
    input so that Watson Assistant can choose the correct dialog flow
    for responding to it.

20. Return to your IBM Stock Trader page main development screen.

    ![A screenshot of a cell phone Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image27.png){width="1.425926290463692in"
    height="0.5681430446194226in"}

21. Similar to Intents you can create Entities. Entities represent
    information in the user input that is relevant to the user\'s
    purpose.

    Navigate back to the main development screen, click on Entities My
    entities \@issue.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image28.png){width="5.305555555555555in"
    height="1.5266972878390201in"}

22. Observe the various values that have been provided for this entity.
    When a user mentions any of these values it is associated to the
    \@issue entity. The virtual agent is instructed to proceed and
    communicate with the end user according to the intent detected and
    the specified dialog flow created to handle that intent.

    Watson Assistant also provides some prebuilt entities to recognize
    references to things like numbers/dates in user input. You can also
    import/export your entities between virtual assistants.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image29.png){width="6.597222222222222in"
    height="1.688021653543307in"}

23. Navigate back to main development screen, click on Entities System
    entities.

    View the options available. You can toggle them on/off based on your
    need.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image30.png){width="6.1875in"
    height="2.3735695538057744in"}

24. Click Dialog.

    This view shows you the existing dialog flows and the workspace
    where you can construct new dialogs using the intents and entities
    created earlier.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image31.png){width="5.291666666666667in"
    height="1.569798775153106in"}

## Testing your Virtual Assistant 

25. In the IBM Watson Assistant development workspace shown below you
    can test your virtual assistant before deployment.

    Click on the Try it button to reveal a chat interface.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image32.png){width="4.598458005249344in"
    height="1.5152777777777777in"}

26. We will use the built-in chat interface to test our virtual
    assistant with a sample conversation designed for Trade Co.
    customers. (Note: Deploying the Virtual Assistant is out of scope
    for this lab).

    When you type the text commands below observe how the assistant
    promptly identifies your intent and intelligently navigates you
    through the appropriate dialog flow.

    Click the button Try it (to access the chat interface).

> Select: Update my portfolio.
>
> Type: Add a new stock
>
> Type: IBM
>
> Type: What are your hours of operation? \[Digression\]
>
> Type: 1000 shares
>
> Type: What are my current offers?
>
> Type: I am having issues with my account
>
> Type: My personal portfolio view keeps on freezing
>
> Type: Today
>
> Type: Show me my new offer
>
> Type: Schedule an appointment
>
> Type: Tomorrow at 2 pm
>
> Type: End
>
> Notice how the *Add new stock* text picked up the intent you created
> earlier and navigated you through the dialog flow. The hours of
> operation question was a digression to which the assistant responded
> and returned to the original conversation. You can further use this
> interface to train your assistant and improve its accuracy prior to
> deployment.

27. Close the chat interface and exit the development workspace by
    clicking the dialog icon.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image33.png){width="0.8055555555555556in"
    height="0.7792880577427822in"}

## Integrating your Virtual Assistant 

28. Click on Assistants, then the tile TradeCo. Assistant.

    ![A close up of a logo Description automatically
    generated](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image34.png){width="1.4351848206474191in"
    height="0.7964031058617673in"}

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image35.png){width="5.770833333333333in"
    height="2.361052055993001in"}

29. On the top right side of the screen you will see the Integrations
    pane which lists the various channels you can deploy your assistant
    to once it's ready to be put into production. Instructions on how to
    integrate your Assistant into a custom application can be found
    here.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image36.png){width="5.390667104111986in"
    height="3.8194444444444446in"}

## Log out of the Watson Assistant web client

30. To finish up this lab, log out of the web client.

    At the top left, choose the user icon Log out.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image37.png){width="2.4930555555555554in"
    height="1.9227482502187228in"}

31. Close the browser.

    ![](/Users/tjm/Documents/GitHub/CPD-workshop/labs/images/media/image38.png){width="1.3991108923884514in"
    height="0.9652777777777778in"}

## Lab conclusion

The Lab gives us a good overview of the power of the IBM Cloud Pak for
Data platform and the AI enabled virtual assistant service, IBM Watson
Assistant, which we used to design and customize an engaging
conversation around providing a self-service channel to customers of
Trade Co.

This is a snapshot of the many advanced capabilities available within
this virtual assistant service which assists your setup of an AI
assistant with practically no code required. The rich user interface
makes it easy for any business professional to start building a virtual
assistant tailored to their business and to. leverage the AI
capabilities of Watson out of the box.

*For a more detailed information on IBM Watson Assistant, please see:*
<https://www.ibm.com/support/producthub/icpdata/docs/content/SSQNUZ_current/svc-welcome/watsonassist.html>.

**\*\* End of Lab 17 -- Infuse: Watson Assistant - Deeper Dive**

Lab by Owais Hashmi, Edited by Burt Vialpando and Kent Rubin - IBM
