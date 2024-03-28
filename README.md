<h1><span style="color:#2d7eea">Google Cloud Cortex Framework for Salesforce Marketing Cloud (SFMC) </span></h1>


<h2><span style="color:#2d7eea">What does this Looker Block do for me?</span></h2>


Get a comprehensive overview of your email broadcast activities and performance of outbound emails for owned media campaigns in Salesforce Marketing cloud platform (SFMC).

Jumpstart your owned media marketing analytics for SFMC by ingesting your email broadcast activities data on SFMC into Google BigQuery with pre-packaged ingestion pipelines and connecting to reporting datasets provided by Google Cloud Cortex Framework Data Foundation for Salesforce Marketing Cloud.

Get out-of-the-box insights on open rate, Click Through Rate (CTR), unique opened mails,  Unsubscribe and Bounce rates for email broadcast campaigns in a specified timeframe. Compare and benchmark email broadcasts performance to understand which email communications your customers respond to the best.  Rapidly identify trends and patterns in your email broadcasts activities data to optimize your email broadcasts.

You can also extend to insights beyond Marketing with other datasets in Google Cloud Cortex data Foundation that provide reporting views for other enterprise data sources (like your enterprise CRM, ERP systems).



<h3><span style="color:#2d7eea"> What insights are possible? </span></h3>
<h4>Following insights are provided out-of-the-box:</h4>

- **Monthly Overview**
   Understand the monthly performance of email broadcasts by analyzing the delivered versus uniquely opened emails together with corresponding open rate.

- **Email Broadcast Performance Overview**
    Analyze open rate and click through rate (CTR) per email broadcast compared to the total number of emails delivered and corresponding uniquely opened emails.

- **Email Broadcast Opened Vs Clicked**
    Compare the number of uniquely opened emails to the number of email clicks per email broadcast.

- **Open Rate Vs Click Through Rate**
    Monitor email broadcasts Open rate and CTR on a weekly basis to understand how your customers are engaging with your email communication and whether the content in the emails is resonating with them.

- **Bounce Rate**
    Monitor email broadcast bounce rate -  percentage of emails that were rejected by the mail server.

- **Unsubscribe Rate**
    Monitor email broadcast monthly unsubscribe rate.

- **Email Broadcast Performance Details**
    Review performance metrics across all email broadcasts in a single visualization.


<h2><span style="color:#2d7eea">Required Data</span></h2>

Get the required BigQuery datasets for this block by following the installation instructions for [Google Cloud Cortex Framework](https://github.com/GoogleCloudPlatform/cortex-data-foundation).

<h2><span style="color:#2d7eea">Installation Instructions</span></h2>

Manually install this LookML Model following one of the options below.

<h4> Option A: Marketplace Install via Git </h4>

Refer to the Looker documentation for [Installing a Tool from Marketplace.](https://cloud.google.com/looker/docs/marketplace#installing_a_tool_from_a_git_url) Provide values for the required prompts as outlined in next section Required Parameters.

<h4> Option B: Manual Install via Fork of this Repository </h4>

- [Fork this GitHub repository](https://docs.github.com/en/get-started/quickstart/fork-a-repo#forking-a-repository)
- [Create a blank LookML project](https://cloud.google.com/looker/docs/create-projects#creating_a_blank_project) with any name (e.g., cortex_sap_operational)
- [Connect the new LookML project to the forked repository](https://cloud.google.com/looker/docs/setting-up-git-connection)
- Update the values of constants in the manifest.lkml file as described in the next section Required Parameters
- [Commit and deploy changes to production](https://cloud.google.com/looker/docs/version-control-and-deploying-changes#getting_your_changes_to_production)
With the Looker project based on your forked repository, you can customize the LookML to fit your unique business needs.



<h2><span style="color:#2d7eea">Required Customizations</span></h2>

Required Constant Values are configured during the Installation process.

- **Connection**: In the manifest.lkml file, update the value of the CONNECTION_NAME constant.
- **Google Project ID**: The Google Cloud project where the SFMC reporting dataset resides in BigQuery (i.e. Google Cloud  project id). [Identifying Project ID](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects).
- **Reporting Dataset**:  The deployed Cortex Data Foundation dataset where the SFMC reporting views reside within the Google Cloud BigQuery project. Depending on the deployment settings for the [Google Cloud Cortex Data Foundation](https://github.com/GoogleCloudPlatform/cortex-data-foundation) (see section Required Data), this dataset name would typically be of the pattern ending with  _REPORTING.
- **(Optional)**  Unhide additional dimensions and measure: Most dimensions and measures have been hidden to simplify reporting and data understanding. However should you find anything valuable missing, simply update the hidden parameters to No in the relevant views.


<h2><span style="color:#2d7eea">Additional Resources</span></h2>


To learn more about LookML and how to develop visit:
- [Looker Best Practices](https://cloud.google.com/looker/docs/best-practices/home)
- [Looker/Google Cloud Training](https://www.cloudskillsboost.google/catalog)
