##Solution Template Overview:  Pivotal Cloud Foundry + Concourse + Apigee
Solution Templates provide customers with a highly automated process to launch enterprise ready first and 3rd party ISV solution stacks on Azure in a pre-production environment. The Solution Template effort is complimentary to the Azure Marketplace test drive program. These fully baked stacks enable customers to quickly stand up a PoC or Piloting environments and also integrate it with their systems and customization.
Customers benefit greatly from solution templates because of the ease with which they can stand up enterprise-grade, fully integrated stacks on Azure. The extensive automation and testing of these solutions will allow them to spin up pre-production environments with minimal manual steps and customization. Most importantly, customers now have the confidence to transition the solution into a fully production-ready environment with confidence.
This solution stack will allow users to quickly instantiate a Pivotal Cloud Foundry platform and bring their custom applications and deploy on cloud foundry. These are intended as pilot solutions and not production ready.
Please contact us if you need further info or support on this solution.

##Licenses & Costs
In its current state, solution templates come with licenses built-in – there may be a BYOL option included in the future. The solution template will be deployed in the Customer’s Azure subscription, and the Customer will incur Azure usage charges associated with running the solution stack.

##Target Audience
The target audience for these solution templates are:

Application Developers - Application developers seeking introductory understanding of Cloud Foundry and experience using it to deploy, manage, and scale applications.

Administrators & Operators - Administrators and Operators for those who require strong technical knowledge of the Pivotal Cloud Foundry platform and who are interested in deploying applications on Cloud Foundry and customizing the platform.

##Prerequisites
Azure user account with Contributor/Admin Role

Sufficiently high quota limits (Recommended: 100 cores) on your Azure account. Installing Pivotal Cloud Foundry® requires more than the default 20 cores. *Please see this link for instructions on requesting a core quota increase. *Install either the Azure CLI or Azure PowerShell on your machine, using the instructions here. Create an Azure Service Principal (TENANT-ID, CLIENT-ID, CLIENT-SECRET):
Use the Instructions here to generate Azure Service Principal file

Pivotal Network Account: If you do not already have an account, create one. You will need the API token located in your profile. Navigate to your name in the top right and select Edit Profile. The API token is located at the bottom of the page.

# Solution Summary


##Product Architecture
![Product Architecture](https://raw.githubusercontent.com/sysgain/pivotal/master/pivotal-P2P-Architecture.jpg)

##Solution contains the following
The diagram above provides the overall deployment architecture for this solution template.
As a part of deployment, the template launches the following:

Pivotal Cloud Foundry

Concourse Continuous Integration

Apigee Edge Gateway

Azure Meta Service Broker

###Pivotal Cloud Foundry
Pivotal cloud foundry offer developers a production-ready application container runtime and fully automated service deployments. Meanwhile, operations teams can sleep easier with the visibility and control made possible by platform-enforced policies and automated lifecycle management.
Cloud Foundry supports the full lifecycle, from initial development, through all testing stages, to deployment. It is therefore well-suited to the continuous delivery strategy. Users have access to one or more spaces, which typically correspond to a lifecycle stage. For example, an application ready for QA testing might be pushed (deployed) to its project's QA space. Different users can be restricted to different spaces with different access permissions in each.
###Concourse Continuous Integration
Concourse is a simple and scalable way to declare your continuous integration as code.
Concourse limits itself to three core concepts: tasks, resources, and the jobs that compose them. 

-A task is the execution of a script in an isolated environment with dependent resources available to it. A task can either be executed by a Job or executed manually with the Fly CLI.

-A resource is any entity that can be checked for new versions, pulled down at a specific version, and/or pushed up to idempotently create new versions.

-Jobs can be thought of as functions with inputs and outputs, that automatically run when new inputs are available. A job can depend on the outputs of upstream jobs, which is the root of pipeline functionality.

-Concourse “pipelines” are YAML files that declare resources to use, e.g. Git repos or Docker images, and contain a set of jobs to execute. In turn, jobs are sub-divided into tasks and each task runs in a container. 

-An instance of execution of a job's plan is called a build. Builds in Concourse are reproducible since their tasks run afresh in new containers. 

###Apigee Edge Gateway
Apigee Edge is a platform for developing and managing API proxies. The primary consumers of Edge API proxies are app developers who want to use your backend services. The API proxy isolates the app developer from your backend service. 
Rather than having app developers consume your services directly, they access an API proxy created on Edge. The API proxy functions as a mapping of a publicly available HTTP endpoint to your backend service.  By creating an API proxy you let Edge handle the security and authorization tasks required to protect your services, as well as to analyze, monitor, and monetize those services.
####Components of Apigee Edge

-Edge API Services - Apigee Edge API Services are all about creating and consuming APIs, whether you're building API proxies as a service provider or using APIs, SDKs, and other convenience services as an app developer.

-Edge Analytics Services - Apigee Edge Analytics Services provides powerful tools to see short- and long-term usage trends of your APIs.

-Edge Developer Services - Apigee Edge Developer Services provide the tools to manage the community of app developers using your services.

###Azure Meta Service Broker
A service broker to manage multiple Azure services in Cloud Foundry.
Azure Meta Service Brokers are available for the following services:

Azure Storage Blob Service - Azure Storage Service offers reliable, economical cloud storage for data big and small. This broker currently publishes a single service and plan for provisioning Azure Storage Blob Service.

Azure Redis Cache Service - Azure Redis Cache is based on the popular open-source Redis cache. It gives you access to a secure, dedicated Redis cache, managed by Microsoft and accessible from any application within Azure. This broker currently publishes a single service and plan for provisioning Azure Redis Cache.

Azure DocumentDB Service - Azure DocumentDB is a NoSQL document database service designed from the ground up to natively support JSON and JavaScript directly inside the database engine.

Azure Service Bus Service - Azure Service Bus keep apps and devices connected across private and public clouds. This broker currently publishes a single service and plan for provisioning Azure Service Bus Service.

Azure SQL Database Service - Azure SQL Database is a relational database service in the cloud based on the market-leading Microsoft SQL Server engine, with mission-critical capabilities.



###RESOURCES
56 Virtual Machines
Document DB
SQL Server
3 Public IP Addresses




