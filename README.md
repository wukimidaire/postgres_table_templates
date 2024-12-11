## Applications
   - **Data Ingestion**: Digital footprint data storage
   - **CRM Data Enrichment**
   - **Agentic Boilerplate**: Provides a solid structured database foundation
   - **Predictive Analytics**: Clustering customer data & Predictive GTM Strategies for Marketing and Sales
 - **Impact**: Client-agnostic template system for rapid deployment. Contribution to open-source community

## Step-by-Step Plan to Create a New PostgreSQL Instance on Google Cloud

## Table of Contents
1. [Set Up Google Cloud Project](#step-1-set-up-google-cloud-project)
2. [Enable Cloud SQL API](#step-2-enable-cloud-sql-api)
3. [Create a PostgreSQL Instance](#step-3-create-a-postgresql-instance)
4. [Configure Network and Security](#step-4-configure-network-and-security)
5. [Create a Database](#step-5-create-a-database)
6. [Connect to Your Instance](#step-6-connect-to-your-instance)
7. [Table Creation](#step-7-table-creation)
8. [Summary](#summary)
9. [Database Schema](#database-schema)

## Step 1: Set Up Google Cloud Project

### Create a Google Cloud Project:
1. Go to the [Google Cloud Console](https://console.cloud.google.com/).
2. Click on the project dropdown at the top of the page.
3. Click "New Project".
4. Enter a project name and select a billing account.
5. Click "Create".

## Step 2: Enable Cloud SQL API

### Enable the Cloud SQL API:
1. Go to the [API Library](https://console.cloud.google.com/apis/library).
2. Search for "Cloud SQL Admin API".
3. Click on "Cloud SQL Admin API".
4. Click "Enable".

## Step 3: Create a PostgreSQL Instance

### Open the Cloud SQL Instances Page:
1. Go to the [Cloud SQL Instances page](https://console.cloud.google.com/sql/instances).

### Create a New Instance:
1. Click on the "Create Instance" button.
2. Select "PostgreSQL" as the database engine.
3. Click "Next".

### Configure Your Instance:
- **Instance ID**: Enter a unique identifier for your instance.
- **Password**: Set a password for the default `postgres` user.
- **Region**: europe-west1 (Belgium)
- **Zone**: Optionally, choose a specific zone.
- **Database Version**: PostgreSQL 15.8
- **vCPUs**: 1 vCPU
- **RAM**: 628.74 MB
- **Data Cache**: Disabled
- **Storage**: 10 GB
- Click "Create".

## Step 4: Configure Network and Security

### Allow Connections:
1. After the instance is created, go to the "Connections" tab.
2. Click "Add Network".
3. Enter the IP addresses or ranges that are allowed to connect to your instance.
4. Click "Done".

### Why It Is Important to Add a Restricted List of IP Addresses:
Restricting access to your PostgreSQL instance by specifying a list of allowed IP addresses enhances the security of your database. By limiting connections to only trusted IP addresses, you reduce the risk of unauthorized access and potential attacks. This practice helps ensure that only known and trusted clients can connect to your database, thereby protecting sensitive data and maintaining the integrity of your database.

### Default List of IP Addresses to Add:
- **n8n (4.182.111.50)**
- **n8n (4.182.129.20)**
- **n8n (20.79.192.145)**
- **n8n (20.79.75.61)**
- **n8n (20.218.202.73)**
- **n8n (20.79.227.226)**
- **n8n (20.79.72.36)**
- **n8n (20.113.47.122)**
- **n8n (98.67.233.140)**
- **n8n (98.67.233.91)**
- **n8n (4.182.88.118)**
- **n8n (20.79.232.36)**
- **n8n (4.182.212.136)**

### Add Your Personal IP Address:
1. To ensure you have access to the database instance, add your own personal IP address to the list.
2. Find your IP address by visiting [What Is My IP Address](https://whatismyipaddress.com/).
3. Add your IP address to the list of allowed IP addresses.
4. If you do not add your personal IP address, you will not have access to the database instance.
5. If you are in a remote location, make sure to add your new IP address to the list; otherwise, you will not be able to load your database data.

## Step 5: Create a Database

### Create a Database:
1. Go to the "Databases" tab in your instance.
2. Click "Create Database".
3. Enter a name for your database and click "Create".

## Step 6: Connect to Your Instance

### Connect Using a SQL Client:

#### Download and Install TablePlus:
1. Go to the [TablePlus website](https://tableplus.com/).
2. Download the version of TablePlus suitable for your operating system (macOS, Windows, or Linux).
3. Install TablePlus by following the installation instructions for your operating system.

#### Configure TablePlus to Connect to Your PostgreSQL Instance:
1. Open TablePlus.
2. Click on the "Create a new connection" button.
3. Select "PostgreSQL" as the database type.
4. Enter the connection details from your Google Cloud PostgreSQL instance:
   - **Host**: The public IP address of your PostgreSQL instance.
   - **Port**: The default PostgreSQL port is 5432.
   - **User**: The username for your PostgreSQL instance (e.g., `postgres`).
   - **Password**: The password you set for the `postgres` user.
   - **Database**: The name of the database you created.
5. Click "Connect" to establish the connection.

### Get Connection Details:
1. Go to the "Overview" tab of your instance in the Google Cloud Console.
2. Note the connection name, IP address, and other connection details.

## Step 7: Table Creation

### Prepare SQL Script:
1. Copy all SQL scripts from the `create_tables.sql` file for all table reations into command.

2. Open your TablePlus sql editor and paste the sql statements that will create all tables.


## Summary

1. Set up a Google Cloud project.
2. Enable the Cloud SQL API.
3. Create a PostgreSQL instance using the Google Cloud Console.
4. Configure network and security settings.
5. Create a database within your instance.
6. Connect to your instance using a SQL client.
7. Automate table creation by preparing and executing a SQL script.

This plan should help you set up and manage a PostgreSQL instance on Google Cloud without using the terminal.


## Database Schema

### Table: cli
**Purpose**: Stores information about companies, including their details, headquarters, and various timestamps related to data enrichment and scraping.

- **url**: varchar - The URL of the company's website.
- **founded**: int8 - The year the company was founded.
- **type**: varchar - The type of company.
- **hq_city**: varchar - The city where the company's headquarters is located.
- **tagline**: varchar - The company's tagline.
- **website**: varchar - The company's website URL.
- **hq_line1**: varchar - The first line of the company's headquarters address.
- **hq_line2**: varchar - The second line of the company's headquarters address.
- **industry**: varchar - The industry the company operates in.
- **company_id**: int8 (Primary Key) - A unique identifier for the company.
- **hq_country**: varchar - The country where the company's headquarters is located.
- **vat_number**: varchar - The company's VAT number.
- **cover_image**: varchar - The URL of the company's cover image.
- **description**: varchar - A description of the company.
- **company_name**: varchar - The name of the company.
- **domain_valid**: bool - Indicates if the company's domain is valid.
- **followercount**: int8 - The number of followers the company has.
- **hq_postalcode**: varchar - The postal code of the company's headquarters.
- **links_on_page**: varchar - Links found on the company's webpage.
- **employee_count**: int8 - The number of employees in the company.
- **hq_description**: varchar - A description of the company's headquarters.
- **universal_name**: text - The universal name of the company.
- **logo_resolution**: varchar - The resolution of the company's logo.
- **hq_geographicalarea**: varchar - The geographical area of the company's headquarters.
- **employee_count_range**: varchar - The range of the number of employees.
- **enrichment_timestamp**: timestamp - Timestamp of the last data enrichment.
- **vat_scrape_timestamp**: timestamp - Timestamp of the last VAT scrape.
- **embed_website_timestamp**: timestamp - Timestamp of the last website embed.
- **post_enrichment_timestamp**: timestamp - Timestamp of the last post enrichment.
- **serper_addressscrape_timestamp**: timestamp - Timestamp of the last address scrape.
- **crunchbase_url**: text - The company's Crunchbase URL.
- **urls_on_website**: jsonb - URLs found on the company's website.
- **google_drive_id**: text - The company's Google Drive ID.
- **employee_scrape_timestamp**: timestamp - Timestamp of the last employee scrape.

### Table: github_profile
**Purpose**: Stores information about GitHub profiles associated with companies.

- **url**: text (Primary Key) - The URL of the GitHub profile.
- **timestamp_collected**: timestamp - The timestamp when the data was collected.
- **timestamp_scraped**: timestamp - The timestamp when the data was scraped.
- **email**: varchar - The email associated with the GitHub profile.
- **linkedin**: varchar - The LinkedIn profile associated with the GitHub profile.
- **company_id**: numeric - The ID of the company associated with the GitHub profile.

### Table: pli
**Purpose**: Stores information about professional LinkedIn profiles.

- **name**: varchar - The name of the individual.
- **vmid**: varchar (Primary Key) - A unique identifier for the LinkedIn profile.
- **query**: varchar - The query used to find the profile.
- **title**: varchar - The title of the individual.
- **summary**: varchar - A summary of the individual's profile.
- **fullname**: varchar - The full name of the individual.
- **industry**: varchar - The industry the individual works in.
- **lastname**: varchar - The last name of the individual.
- **location**: varchar - The location of the individual.
- **companyid**: varchar - The ID of the company the individual works for.
- **firstname**: varchar - The first name of the individual.
- **ispremium**: bool - Indicates if the profile is a premium account.
- **seniority**: varchar - The seniority level of the individual.
- **timestamp**: timestamp - The timestamp when the data was collected.
- **companyurl**: varchar - The URL of the company the individual works for.
- **department**: varchar - The department the individual works in.
- **isopenlink**: bool - Indicates if the profile is an open link.
- **profileurl**: varchar - The URL of the individual's LinkedIn profile.
- **companyname**: varchar - The name of the company the individual works for.
- **durationinrole**: varchar - The duration the individual has been in their current role.
- **companylocation**: varchar - The location of the company the individual works for.
- **profileimageurl**: varchar - The URL of the individual's profile image.
- **connectiondegree**: varchar - The degree of connection to the individual.
- **titledescription**: varchar - A description of the individual's title.
- **defaultprofileurl**: varchar - The default URL of the individual's profile.
- **durationincompany**: varchar - The duration the individual has been with the company.
- **months_in_company**: int8 - The number of months the individual has been with the company.
- **regularcompanyurl**: varchar - The regular URL of the company the individual works for.
- **linkedinprofileurl**: varchar - The LinkedIn profile URL of the individual.
- **pastexperiencedate**: varchar - The date of the individual's past experience.
- **pastexperienceduration**: varchar - The duration of the individual's past experience.
- **sharedconnectionscount**: int8 - The number of shared connections with the individual.
- **pastexperiencecompanyurl**: varchar - The URL of the company the individual previously worked for.
- **pastexperiencecompanyname**: varchar - The name of the company the individual previously worked for.
- **pastexperiencecompanytitle**: varchar - The title the individual held at their previous company.

### Table: cli_affiliated_org_employee
**Purpose**: Stores information about employees affiliated with organizations.

- **url**: varchar - The URL of the affiliated organization.
- **name**: varchar - The name of the employee.
- **industry**: varchar - The industry the employee works in.
- **company_id**: int8 - The ID of the company the employee is affiliated with.
- **followercount**: int8 - The number of followers the employee has.
- **industry_v2taxonomy**: varchar - The industry taxonomy.
- **affiliated_company_id**: int8 - The ID of the affiliated company.
- **logo_resolution_result**: varchar - The resolution of the company's logo.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: cli_affiliated_org_showcasepage
**Purpose**: Stores information about showcase pages affiliated with organizations.

- **url**: varchar - The URL of the showcase page.
- **name**: varchar - The name of the showcase page.
- **industry**: varchar - The industry the showcase page represents.
- **company_id**: int8 - The ID of the company the showcase page is affiliated with.
- **followercount**: int8 - The number of followers the showcase page has.
- **industry_v2taxonomy**: varchar - The industry taxonomy.
- **affiliated_company_id**: int8 - The ID of the affiliated company.
- **logo_resolution_result**: varchar - The resolution of the company's logo.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: cli_locations
**Purpose**: Stores information about the locations of companies.

- **city**: varchar - The city where the location is situated.
- **line1**: varchar - The first line of the address.
- **line2**: varchar - The second line of the address.
- **country**: varchar - The country where the location is situated.
- **latitude**: numeric - The latitude of the location.
- **longitude**: numeric - The longitude of the location.
- **company_id**: varchar - The ID of the company associated with the location.
- **description**: varchar - A description of the location.
- **headquarter**: bool - Indicates if the location is the company's headquarters.
- **postal_code**: varchar - The postal code of the location.
- **localized_name**: varchar - The localized name of the location.
- **geographic_area**: varchar - The geographic area of the location.
- **uuid**: text (Primary Key) - A unique identifier for the location.

### Table: cli_post_image
**Purpose**: Stores information about images in posts.

- **urn**: varchar - The URN of the post.
- **uuid**: varchar - A unique identifier for the image.
- **image_component**: varchar - The component of the image.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: cli_post_url
**Purpose**: Stores information about URLs in posts.

- **urn**: varchar - The URN of the post.
- **uuid**: varchar - A unique identifier for the URL.
- **url_component**: varchar - The component of the URL.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: cli_posts
**Purpose**: Stores information about posts made by companies.

- **urn**: varchar - The URN of the post.
- **actor**: varchar - The actor who made the post.
- **entry**: varchar - The entry of the post.
- **num_likes**: int8 - The number of likes the post received.
- **post_text**: varchar - The text of the post.
- **company_id**: varchar - The ID of the company that made the post.
- **num_shares**: int8 - The number of shares the post received.
- **posted_ago**: varchar - The time since the post was made.
- **repost_urn**: varchar - The URN of the repost.
- **is_reposted**: varchar - Indicates if the post is a repost.
- **comments_urn**: varchar - The URN of the comments.
- **num_comments**: int8 - The number of comments the post received.
- **reaction_like**: int8 - The number of likes the post received.
- **reactions_urn**: varchar - The URN of the reactions.
- **timestamp_added**: timestamp - The timestamp when the post was added.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: cli_speciality
**Purpose**: Stores information about the specialities of companies.

- **uuid**: varchar - A unique identifier for the speciality.
- **company_id**: varchar - The ID of the company associated with the speciality.
- **speciality**: varchar - The speciality of the company.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: competitor_followers
**Purpose**: Stores information about followers of competitors.

- **competitor**: text - The name of the competitor.
- **geo**: text - The geographic location of the follower.
- **linkedin_profile_url**: text - The LinkedIn profile URL of the follower.
- **full_name**: text - The full name of the follower.
- **first_name**: text - The first name of the follower.
- **last_name**: text - The last name of the follower.
- **company_name**: text - The name of the company the follower works for.
- **job_title**: text - The job title of the follower.
- **companyid**: int4 - The ID of the company the follower works for.
- **linkedin_url**: text - The LinkedIn URL of the follower.
- **industry**: text - The industry the follower works in.
- **company_hq**: text - The headquarters of the company the follower works for.
- **personal_location**: text - The personal location of the follower.
- **open_profile**: bool - Indicates if the follower's profile is open.

### Table: crunchbase_companies
**Purpose**: Stores information about companies listed on Crunchbase.

- **link**: varchar (Primary Key) - The Crunchbase link of the company.
- **name**: varchar - The name of the company.
- **type**: varchar - The type of company.
- **uuid**: varchar - A unique identifier for the company.
- **added**: timestamp - The timestamp when the company was added.
- **imageurl**: varchar - The URL of the company's image.
- **funding_stage**: varchar - The funding stage of the company.
- **website_value**: varchar - The website URL of the company.
- **linkedin_value**: varchar - The LinkedIn URL of the company.
- **identifier_uuid**: varchar - The UUID of the company's identifier.
- **investor_type_0**: varchar - The first type of investor.
- **investor_type_1**: varchar - The second type of investor.
- **last_funding_at**: timestamp - The timestamp of the last funding.
- **identifier_value**: varchar - The value of the company's identifier.
- **investor_stage_0**: varchar - The first stage of investment.
- **investor_stage_1**: varchar - The second stage of investment.
- **investor_stage_2**: varchar - The third stage of investment.
- **investor_stage_3**: varchar - The fourth stage of investment.
- **rank_org_company**: int8 - The rank of the company.
- **categories_0_uuid**: varchar - The UUID of the first category.
- **categories_1_uuid**: varchar - The UUID of the second category.
- **categories_2_uuid**: varchar - The UUID of the third category.
- **categories_3_uuid**: varchar - The UUID of the fourth category.
- **categories_4_uuid**: varchar - The UUID of the fifth category.
- **categories_5_uuid**: varchar - The UUID of the sixth category.
- **categories_6_uuid**: varchar - The UUID of the seventh category.
- **categories_7_uuid**: varchar - The UUID of the eighth category.
- **categories_8_uuid**: varchar - The UUID of the ninth category.
- **categories_9_uuid**: varchar - The UUID of the tenth category.
- **cb_account_scrape**: timestamp - The timestamp of the Crunchbase account scrape.
- **last_funding_type**: varchar - The type of the last funding.
- **short_description**: varchar - A short description of the company.
- **categories_0_value**: varchar - The value of the first category.
- **categories_10_uuid**: varchar - The UUID of the eleventh category.
- **categories_11_uuid**: varchar - The UUID of the twelfth category.
- **categories_1_value**: varchar - The value of the second category.
- **categories_2_value**: varchar - The value of the third category.
- **categories_3_value**: varchar - The value of the fourth category.
- **categories_4_value**: varchar - The value of the fifth category.
- **categories_5_value**: varchar - The value of the sixth category.
- **categories_6_value**: varchar - The value of the seventh category.
- **categories_7_value**: varchar - The value of the eighth category.
- **categories_8_value**: varchar - The value of the ninth category.
- **categories_9_value**: varchar - The value of the tenth category.
- **num_funding_rounds**: int8 - The number of funding rounds.
- **categories_10_value**: varchar - The value of the eleventh category.
- **categories_11_value**: varchar - The value of the twelfth category.
- **funding_total_value**: numeric - The total value of funding.
- **identifier_image_id**: varchar - The image ID of the company's identifier.
- **identifier_permalink**: varchar - The permalink of the company's identifier.
- **categories_0_permalink**: varchar - The permalink of the first category.
- **categories_1_permalink**: varchar - The permalink of the second category.
- **categories_2_permalink**: varchar - The permalink of the third category.
- **categories_3_permalink**: varchar - The permalink of the fourth category.
- **categories_4_permalink**: varchar - The permalink of the fifth category.
- **categories_5_permalink**: varchar - The permalink of the sixth category.
- **categories_6_permalink**: varchar - The permalink of the seventh category.
- **categories_7_permalink**: varchar - The permalink of the eighth category.
- **categories_8_permalink**: varchar - The permalink of the ninth category.
- **categories_9_permalink**: varchar - The permalink of the tenth category.
- **funding_total_currency**: varchar - The currency of the total funding.
- **categories_10_permalink**: varchar - The permalink of the varchar - The permalink of the tenth category.
- **funding_total_currency**: varchar - The currency of the total funding.
- **categories_10_permalink**: varchar - The permalink of the eleventh category.
- **categories_11_permalink**: varchar - The permalink of the twelfth category.
- **funding_total_value_usd**: numeric - The total value of funding in USD.
- **identifier_entity_def_id**: varchar - The entity definition ID of the company's identifier.
- **last_equity_funding_type**: varchar - The type of the last equity funding.
- **last_funding_total_value**: numeric - The total value of the last funding.
- **categories_0_entity_def_id**: varchar - The entity definition ID of the first category.
- **categories_1_entity_def_id**: varchar - The entity definition ID of the second category.
- **categories_2_entity_def_id**: varchar - The entity definition ID of the third category.
- **categories_3_entity_def_id**: varchar - The entity definition ID of the fourth category.
- **categories_4_entity_def_id**: varchar - The entity definition ID of the fifth category.
- **categories_5_entity_def_id**: varchar - The entity definition ID of the sixth category.
- **categories_6_entity_def_id**: varchar - The entity definition ID of the seventh category.
- **categories_7_entity_def_id**: varchar - The entity definition ID of the eighth category.
- **categories_8_entity_def_id**: varchar - The entity definition ID of the ninth category.
- **categories_9_entity_def_id**: varchar - The entity definition ID of the tenth category.
- **equity_funding_total_value**: numeric - The total value of equity funding.
- **categories_10_entity_def_id**: varchar - The entity definition ID of the eleventh category.
- **categories_11_entity_def_id**: varchar - The entity definition ID of the twelfth category.
- **last_funding_total_currency**: varchar - The currency of the last funding total.
- **li_account_scrape_timestamp**: timestamp - The timestamp of the LinkedIn account scrape.
- **location_identifiers_0_uuid**: varchar - The UUID of the first location identifier.
- **location_identifiers_1_uuid**: varchar - The UUID of the second location identifier.
- **location_identifiers_2_uuid**: varchar - The UUID of the third location identifier.
- **location_identifiers_3_uuid**: varchar - The UUID of the fourth location identifier.
- **last_funding_total_value_usd**: numeric - The total value of the last funding in USD.
- **location_identifiers_0_value**: varchar - The value of the first location identifier.
- **location_identifiers_1_value**: varchar - The value of the second location identifier.
- **location_identifiers_2_value**: varchar - The value of the third location identifier.
- **location_identifiers_3_value**: varchar - The value of the fourth location identifier.
- **equity_funding_total_currency**: varchar - The currency of the total equity funding.
- **equity_funding_total_value_usd**: numeric - The total value of equity funding in USD.
- **last_equity_funding_total_value**: numeric - The total value of the last equity funding.
- **location_identifiers_0_permalink**: varchar - The permalink of the first location identifier.
- **location_identifiers_1_permalink**: varchar - The permalink of the second location identifier.
- **location_identifiers_2_permalink**: varchar - The permalink of the third location identifier.
- **location_identifiers_3_permalink**: varchar - The permalink of the fourth location identifier.
- **last_equity_funding_total_currency**: varchar - The currency of the last equity funding total.
- **last_equity_funding_total_value_usd**: numeric - The total value of the last equity funding in USD.
- **location_identifiers_0_entity_def_id**: varchar - The entity definition ID of the first location identifier.
- **location_identifiers_0_location_type**: varchar - The location type of the first location identifier.
- **location_identifiers_1_entity_def_id**: varchar - The entity definition ID of the second location identifier.
- **location_identifiers_1_location_type**: varchar - The location type of the second location identifier.
- **location_identifiers_2_entity_def_id**: varchar - The entity definition ID of the third location identifier.
- **location_identifiers_2_location_type**: varchar - The location type of the third location identifier.
- **location_identifiers_3_entity_def_id**: varchar - The entity definition ID of the fourth location identifier.
- **location_identifiers_3_location_type**: varchar - The location type of the fourth location identifier.
- **enrichment_timestamp**: timestamp - The timestamp of the last data enrichment.
- **company_id**: int8 - The ID of the company.

### Table: financial_data
**Purpose**: Stores financial data of companies.

- **vat**: varchar - The VAT number of the company.
- **uuid**: varchar (Primary Key) - A unique identifier for the financial data.
- **year**: int8 - The year of the financial data.
- **equity**: numeric - The equity value of the company.
- **employees**: numeric - The number of employees in the company.
- **company_id**: int8 - The ID of the company.
- **profit_loss**: numeric - The profit or loss value of the company.
- **gross_margin**: numeric - The gross margin value of the company.
- **last_annual_account_submission**: varchar - The date of the last annual account submission.
- **update_timestamp**: timestamp - The timestamp of the last update.

### Table: google_my_business_locations
**Purpose**: Stores information about Google My Business locations.

- **cid**: varchar (Primary Key) - The CID of the location.
- **title**: varchar - The title of the location.
- **rating**: varchar - The rating of the location.
- **address**: varchar - The address of the location.
- **website**: varchar - The website of the location.
- **category**: varchar - The category of the location.
- **latitude**: varchar - The latitude of the location.
- **position**: int8 - The position of the location.
- **longitude**: varchar - The longitude of the location.
- **company_id**: int8 - The ID of the company associated with the location.
- **phone_number**: varchar - The phone number of the location.
- **rating_count**: int8 - The number of ratings the location has received.
- **timestamp_added**: timestamp DEFAULT CURRENT_TIMESTAMP - The timestamp when the location was added.


### Table: pli_certification
**Purpose**: Stores information about certifications listed on professional LinkedIn profiles.

- **urn**: varchar - The URN of the certification.
- **logo**: varchar - The logo of the certification.
- **uuid**: varchar (Primary Key) - A unique identifier for the certification.
- **title**: varchar - The title of the certification.
- **caption**: varchar - The caption of the certification.
- **metadata**: varchar - Metadata about the certification.
- **subtitle**: varchar - The subtitle of the certification.
- **breakdown**: bool - Indicates if the certification has a breakdown.
- **company_id**: int8 - The ID of the company associated with the certification.
- **company_urn**: varchar - The URN of the company associated with the certification.
- **company_link1**: varchar - A link to the company associated with the certification.

### Table: pli_education
**Purpose**: Stores information about educational qualifications listed on professional LinkedIn profiles.

- **urn**: varchar - The URN of the educational qualification.
- **logo**: varchar - The logo of the educational institution.
- **uuid**: varchar (Primary Key) - A unique identifier for the educational qualification.
- **title**: varchar - The title of the educational qualification.
- **caption**: varchar - The caption of the educational qualification.
- **subtitle**: varchar - The subtitle of the educational qualification.
- **breakdown**: bool - Indicates if the educational qualification has a breakdown.
- **company_id**: int8 - The ID of the company associated with the educational qualification.
- **company_urn**: varchar - The URN of the company associated with the educational qualification.
- **company_link1**: varchar - A link to the company associated with the educational qualification.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: pli_experiences
**Purpose**: Stores information about work experiences listed on professional LinkedIn profiles.

- **urn**: varchar - The URN of the work experience.
- **logo**: varchar - The logo of the company associated with the work experience.
- **uuid**: varchar (Primary Key) - A unique identifier for the work experience.
- **title**: varchar - The title of the work experience.
- **caption**: varchar - The caption of the work experience.
- **metadata**: varchar - Metadata about the work experience.
- **subtitle**: varchar - The subtitle of the work experience.
- **breakdown**: varchar - A breakdown of the work experience.
- **timestamp**: timestamptz - The timestamp of the work experience.
- **company_id**: int8 - The ID of the company associated with the work experience.
- **company_link1**: varchar - A link to the company associated with the work experience.
- **sub_components**: bool - Indicates if the work experience has sub-components.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: pli_posts
**Purpose**: Stores information about posts made by individuals on LinkedIn.

- **urn**: varchar - The URN of the post.
- **text**: varchar - The text of the post.
- **company**: varchar - The company associated with the post.
- **post_url**: varchar - The URL of the post.
- **posted_at**: varchar - The time when the post was made.
- **author_url**: varchar - The URL of the author of the post.
- **like_count**: int8 - The number of likes the post received.
- **posted_date**: timestamptz - The date when the post was made.
- **article_link**: varchar - The link to the article associated with the post.
- **praise_count**: int8 - The number of praises the post received.
- **article_title**: varchar - The title of the article associated with the post.
- **empathy_count**: int8 - The number of empathy reactions the post received.
- **reposts_count**: int8 - The number of reposts the post received.
- **comments_count**: int8 - The number of comments the post received.
- **interest_count**: int8 - The number of interest reactions the post received.
- **author_username**: varchar - The username of the author of the post.
- **article_subtitle**: varchar - The subtitle of the article associated with the post.
- **author_last_name**: varchar - The last name of the author of the post.
- **author_first_name**: varchar - The first name of the author of the post.
- **appreciation_count**: int8 - The number of appreciation reactions the post received.
- **total_reaction_count**: int8 - The total number of reactions the post received.
- **posted_date_timestamp**: int8 - The timestamp of the date when the post was made.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: pli_recommendations
**Purpose**: Stores information about recommendations listed on professional LinkedIn profiles.

- **urn**: varchar - The URN of the recommendation.
- **size**: varchar - The size of the recommendation.
- **uuid**: varchar - A unique identifier for the recommendation.
- **caption**: varchar - The caption of the recommendation.
- **titlev2**: varchar - The title of the recommendation.
- **subtitle**: varchar - The subtitle of the recommendation.
- **section_name**: varchar - The section name of the recommendation.
- **text_action_target**: varchar - The text action target of the recommendation.
- **_airbyte_raw_id**: varchar (Primary Key) - A unique identifier for the raw data.
- **_airbyte_extracted_at**: timestamptz - The timestamp when the data was extracted.
- **_airbyte_generation_id**: int8 - The generation ID of the data.
- **_airbyte_meta**: jsonb - Metadata about the data extraction.

### Table: pli_skills
**Purpose**: Stores information about skills listed on professional LinkedIn profiles.

- **urn**: varchar - The URN of the skill.
- **text**: varchar - The text of the skill.
- **type**: varchar - The type of the skill.
- **uuid**: varchar (Primary Key) - A unique identifier for the skill.
- **title**: varchar - The title of the skill.

### Table: website_content
**Purpose**: Stores information about the content of company websites.

- **company_id**: int8 (Primary Key) - The ID of the company.
- **url**: varchar - The URL of the website.
- **title**: varchar - The title of the website.
- **timestamp**: timestamp - The timestamp when the data was collected.
- **description**: text - The description of the website.
- **business_type**: varchar - The type of business.
- **hiring**: bool - Indicates if the company is hiring.
- **about_section**: text - The about section of the website.
- **pricing_mentioned**: bool - Indicates if pricing is mentioned on the website.
- **trial_available**: bool - Indicates if a trial is available.
- **keywords**: _text - Keywords associated with the website.
- **career_urls**: _text - Career URLs found on the website.
- **social_media**: _text - Social media links found on the website.
- **content_summary**: _text - A summary of the website content.
- **meta_tags**: _text - Meta tags found on the website.
- **open_positions**: _text - Open positions listed on the website.
- **ideal_customer_profile**: _text - The ideal customer profile described on the website.
- **case_studies**: _text - Case studies found on the website.
- **contact_info**: _text - Contact information found on the website.


## Table: ce_campaign
**Purpose**: Stores campaign configuration and settings for outbound marketing activities.

- **campaign_id**: int8 (Primary Key) - Unique identifier for the campaign.
- **user_id**: int8 - ID of the user who created the campaign.
- **created_at**: timestamptz - Timestamp when campaign was created.
- **updated_at**: timestamptz - Timestamp of last update.
- **status**: text - Current status of the campaign.
- **name**: text - Campaign name.
- **track_settings**: _text - Array of tracking configuration.
- **scheduler_cron_value**: jsonb - Scheduling settings in cron format.
- **min_time_btwn_emails**: int4 - Minimum time between email sends.
- **max_leads_per_day**: int4 - Daily lead processing limit.
- **stop_lead_settings**: text - Configuration for stopping lead processing.
- **enable_ai_esp_matching**: bool - AI ESP matching feature flag.
- **send_as_plain_text**: bool - Email format setting.
- **follow_up_percentage**: int4 - Follow-up rate configuration.
- **unsubscribe_text**: text - Custom unsubscribe message.
- **parent_campaign_id**: int8 - ID of parent campaign if applicable.
- **client_id**: int8 - Associated client identifier.
- **psg_last_update_timestamp**: timestamp - Last PSG update time.

##Table: ce_campaign_activity
**Purpose**: Tracks campaign activities and lead interactions.

- **id**: int8 (Primary Key) - Unique activity identifier.
- **campaign_lead_map_id**: int8 - Campaign-lead mapping reference.
- **status**: text - Activity status.
- **category**: text - Activity category.
- **is_interested**: bool - Lead interest indicator.
- **created_at**: timestamptz - Activity creation timestamp.
- **first_name**: text - Lead's first name.
- **last_name**: text - Lead's last name.
- **email**: text - Lead's email address.
- **phone_number**: text - Lead's phone number.
- **company_name**: text - Lead's company.
- **website**: text - Company website.
- **location**: text - Lead's location.
- **custom_fields**: jsonb - Additional custom data.
- **linkedin_profile**: text - LinkedIn profile URL.
- **company_url**: text - Company website URL.
- **is_unsubscribed**: bool - Unsubscription status.
- **unsubscribed_client_id_map**: jsonb - Unsubscribe tracking.
- **last_email_sequence_sent**: int4 - Last email sequence number.
- **open_count**: int4 - Email open count.
- **click_count**: int4 - Email click count.
- **reply_count**: int4 - Email reply count.
- **psg_last_update_timestmap**: timestamp - Last PSG update.
- **campaign_id**: int4 - Associated campaign ID.
- **hb_lifecyclestage_check_timestamp**: timestamp - HubSpot lifecycle check time.

##Table: hubspot
**Purpose: Stores HubSpot integration data and company information.

- **hubspot_company_id**: int8 (Primary Key) - HubSpot company identifier.
- **campaign_id**: int4 - Associated campaign ID.
- **lifecyclestage**: text - Company's lifecycle stage.
- **hs_num_open_deals**: int4 - Number of open deals.
- **last_engagement_date**: timestamp - Last engagement timestamp.
l- **ast_time_hb_check_timestamp**: timestamp - Last HubSpot check time.
