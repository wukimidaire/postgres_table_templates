-- To help you with your PostgreSQL table creation statements,
-- I'll provide a consolidated script that includes all the table definitions you provided. 

-- This script can be executed in a PostgreSQL environment to create the tables.
-- Here's the complete script:


-- CLI Table Definition
CREATE TABLE "public"."cli" (
    "url" varchar,
    "founded" int8,
    "type" varchar,
    "hq_city" varchar,
    "tagline" varchar,
    "website" varchar,
    "hq_line1" varchar,
    "hq_line2" varchar,
    "industry" varchar,
    "company_id" int8 NOT NULL,
    "hq_country" varchar,
    "vat_number" varchar,
    "cover_image" varchar,
    "description" varchar,
    "company_name" varchar,
    "domain_valid" bool,
    "followercount" int8,
    "hq_postalcode" varchar,
    "links_on_page" varchar,
    "employee_count" int8,
    "hq_description" varchar,
    "universal_name" text,
    "logo_resolution" varchar,
    "hq_geographicalarea" varchar,
    "employee_count_range" varchar,
    "enrichment_timestamp" timestamp,
    "vat_scrape_timestamp" timestamp,
    "embed_website_timestamp" timestamp,
    "post_enrichment_timestamp" timestamp,
    "serper_addressscrape_timestamp" timestamp,
    "crunchbase_url" text,
    "urls_on_website" jsonb,
    "google_drive_id" text,
    "employee_scrape_timestamp" timestamp,
    PRIMARY KEY ("company_id")
);

-- github_profile Table Definition
CREATE TABLE "public"."github_profile" (
    "url" text NOT NULL,
    "timestamp_collected" timestamp,
    "timestamp_scraped" timestamp,
    "email" varchar,
    "linkedin" varchar,
    "company_id" numeric,
    PRIMARY KEY ("url")
);

-- PLI Table Definition
CREATE TABLE "public"."pli" (
    "name" varchar,
    "vmid" varchar NOT NULL,
    "query" varchar,
    "title" varchar,
    "summary" varchar,
    "fullname" varchar,
    "industry" varchar,
    "lastname" varchar,
    "location" varchar,
    "companyid" varchar,
    "firstname" varchar,
    "ispremium" bool,
    "seniority" varchar,
    "timestamp" timestamp,
    "companyurl" varchar,
    "department" varchar,
    "isopenlink" bool,
    "profileurl" varchar,
    "companyname" varchar,
    "durationinrole" varchar,
    "companylocation" varchar,
    "profileimageurl" varchar,
    "connectiondegree" varchar,
    "titledescription" varchar,
    "defaultprofileurl" varchar,
    "durationincompany" varchar,
    "months_in_company" int8,
    "regularcompanyurl" varchar,
    "linkedinprofileurl" varchar,
    "pastexperiencedate" varchar,
    "pastexperienceduration" varchar,
    "sharedconnectionscount" int8,
    "pastexperiencecompanyurl" varchar,
    "pastexperiencecompanyname" varchar,
    "pastexperiencecompanytitle" varchar,
    PRIMARY KEY ("vmid")
);

-- cli_affiliated_org_employee Table Definition
CREATE TABLE "public"."cli_affiliated_org_employee" (
    "url" varchar,
    "name" varchar,
    "industry" varchar,
    "company_id" int8,
    "followercount" int8,
    "industry_v2taxonomy" varchar,
    "affiliated_company_id" int8,
    "logo_resolution_result" varchar,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- cli_affiliated_org_showcasepage Table Definition
CREATE TABLE "public"."cli_affiliated_org_showcasepage" (
    "url" varchar,
    "name" varchar,
    "industry" varchar,
    "company_id" int8,
    "followercount" int8,
    "industry_v2taxonomy" varchar,
    "affiliated_company_id" int8,
    "logo_resolution_result" varchar,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- cli_locations Table Definition
CREATE TABLE "public"."cli_locations" (
    "city" varchar,
    "line1" varchar,
    "line2" varchar,
    "country" varchar,
    "latitude" numeric,
    "longitude" numeric,
    "company_id" varchar,
    "description" varchar,
    "headquarter" bool,
    "postal_code" varchar,
    "localized_name" varchar,
    "geographic_area" varchar,
    "uuid" text NOT NULL,
    PRIMARY KEY ("uuid")
);

-- cli_post_image Table Definition
CREATE TABLE "public"."cli_post_image" (
    "urn" varchar,
    "uuid" varchar,
    "image_component" varchar,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- cli_post_url Table Definition
CREATE TABLE "public"."cli_post_url" (
    "urn" varchar,
    "uuid" varchar,
    "url_component" varchar,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- cli_posts Table Definition
CREATE TABLE "public"."cli_posts" (
    "urn" varchar,
    "actor" varchar,
    "entry" varchar,
    "num_likes" int8,
    "post_text" varchar,
    "company_id" varchar,
    "num_shares" int8,
    "posted_ago" varchar,
    "repost_urn" varchar,
    "is_reposted" varchar,
    "comments_urn" varchar,
    "num_comments" int8,
    "reaction_like" int8,
    "reactions_urn" varchar,
    "timestamp_added" timestamp,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- cli_speciality Table Definition
CREATE TABLE "public"."cli_speciality" (
    "uuid" varchar,
    "company_id" varchar,
    "speciality" varchar,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- competitor_followers Table Definition
CREATE TABLE "public"."competitor_followers" (
    "competitor" text,
    "geo" text,
    "linkedin_profile_url" text,
    "full_name" text,
    "first_name" text,
    "last_name" text,
    "company_name" text,
    "job_title" text,
    "companyid" int4,
    "linkedin_url" text,
    "industry" text,
    "company_hq" text,
    "personal_location" text,
    "open_profile" bool
);

-- crunchbase_companies Table Definition
CREATE TABLE "public"."crunchbase_companies" (
    "link" varchar NOT NULL,
    "name" varchar,
    "type" varchar,
    "uuid" varchar,
    "added" timestamp,
    "imageurl" varchar,
    "funding_stage" varchar,
    "website_value" varchar,
    "linkedin_value" varchar,
    "identifier_uuid" varchar,
    "investor_type_0" varchar,
    "investor_type_1" varchar,
    "last_funding_at" timestamp,
    "identifier_value" varchar,
    "investor_stage_0" varchar,
    "investor_stage_1" varchar,
    "investor_stage_2" varchar,
    "investor_stage_3" varchar,
    "rank_org_company" int8,
    "categories_0_uuid" varchar,
    "categories_1_uuid" varchar,
    "categories_2_uuid" varchar,
    "categories_3_uuid" varchar,
    "categories_4_uuid" varchar,
    "categories_5_uuid" varchar,
    "categories_6_uuid" varchar,
    "categories_7_uuid" varchar,
    "categories_8_uuid" varchar,
    "categories_9_uuid" varchar,
    "cb_account_scrape" timestamp,
    "last_funding_type" varchar,
    "short_description" varchar,
    "categories_0_value" varchar,
    "categories_10_uuid" varchar,
    "categories_11_uuid" varchar,
    "categories_1_value" varchar,
    "categories_2_value" varchar,
    "categories_3_value" varchar,
    "categories_4_value" varchar,
    "categories_5_value" varchar,
    "categories_6_value" varchar,
    "categories_7_value" varchar,
    "categories_8_value" varchar,
    "categories_9_value" varchar,
    "num_funding_rounds" int8,
    "categories_10_value" varchar,
    "categories_11_value" varchar,
    "funding_total_value" numeric,
    "identifier_image_id" varchar,
    "identifier_permalink" varchar,
    "categories_0_permalink" varchar,
    "categories_1_permalink" varchar,
    "categories_2_permalink" varchar,
    "categories_3_permalink" varchar,
    "categories_4_permalink" varchar,
    "categories_5_permalink" varchar,
    "categories_6_permalink" varchar,
    "categories_7_permalink" varchar,
    "categories_8_permalink" varchar,
    "categories_9_permalink" varchar,
    "funding_total_currency" varchar,
    "categories_10_permalink" varchar,
    "categories_11_permalink" varchar,
    "funding_total_value_usd" numeric,
    "identifier_entity_def_id" varchar,
    "last_equity_funding_type" varchar,
    "last_funding_total_value" numeric,
    "categories_0_entity_def_id" varchar,
    "categories_1_entity_def_id" varchar,
    "categories_2_entity_def_id" varchar,
    "categories_3_entity_def_id" varchar,
    "categories_4_entity_def_id" varchar,
    "categories_5_entity_def_id" varchar,
    "categories_6_entity_def_id" varchar,
    "categories_7_entity_def_id" varchar,
    "categories_8_entity_def_id" varchar,
    "categories_9_entity_def_id" varchar,
    "equity_funding_total_value" numeric,
    "categories_10_entity_def_id" varchar,
    "categories_11_entity_def_id" varchar,
    "last_funding_total_currency" varchar,
    "li_account_scrape_timestamp" timestamp,
    "location_identifiers_0_uuid" varchar,
    "location_identifiers_1_uuid" varchar,
    "location_identifiers_2_uuid" varchar,
    "location_identifiers_3_uuid" varchar,
    "last_funding_total_value_usd" numeric,
    "location_identifiers_0_value" varchar,
    "location_identifiers_1_value" varchar,
    "location_identifiers_2_value" varchar,
    "location_identifiers_3_value" varchar,
    "equity_funding_total_currency" varchar,
    "equity_funding_total_value_usd" numeric,
    "last_equity_funding_total_value" numeric,
    "location_identifiers_0_permalink" varchar,
    "location_identifiers_1_permalink" varchar,
    "location_identifiers_2_permalink" varchar,
    "location_identifiers_3_permalink" varchar,
    "last_equity_funding_total_currency" varchar,
    "last_equity_funding_total_value_usd" numeric,
    "location_identifiers_0_entity_def_id" varchar,
    "location_identifiers_0_location_type" varchar,
    "location_identifiers_1_entity_def_id" varchar,
    "location_identifiers_1_location_type" varchar,
    "location_identifiers_2_entity_def_id" varchar,
    "location_identifiers_2_location_type" varchar,
    "location_identifiers_3_entity_def_id" varchar,
    "location_identifiers_3_location_type" varchar,
    "enrichment_timestamp" timestamp,
    "company_id" int8,
    PRIMARY KEY ("link")
);

-- financial_data Table Definition
CREATE TABLE "public"."financial_data" (
    "vat" varchar,
    "uuid" varchar NOT NULL,
    "year" int8 NOT NULL,
    "equity" numeric,
    "employees" numeric,
    "company_id" int8,
    "profit_loss" numeric,
    "gross_margin" numeric,
    "last_annual_account_submission" varchar,
    "update_timestamp" timestamp,
    PRIMARY KEY ("uuid")
);

-- google_my_business_locations Table Definition
CREATE TABLE "public"."google_my_business_locations" (
    "cid" varchar NOT NULL,
    "title" varchar,
    "rating" varchar,
    "address" varchar,
    "website" varchar,
    "category" varchar,
    "latitude" varchar,
    "position" int8,
    "longitude" varchar,
    "company_id" int8,
    "phone_number" varchar,
    "rating_count" int8,
    "timestamp_added" timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("cid")
);

-- pli_certification Table Definition
CREATE TABLE "public"."pli_certification" (
    "urn" varchar,
    "logo" varchar,
    "uuid" varchar NOT NULL,
    "title" varchar,
    "caption" varchar,
    "metadata" varchar,
    "subtitle" varchar,
    "breakdown" bool,
    "company_id" int8,
    "company_urn" varchar,
    "company_link1" varchar,
    PRIMARY KEY ("uuid")
);

-- pli_education Table Definition
CREATE TABLE "public"."pli_education" (
    "urn" varchar,
    "logo" varchar,
    "uuid" varchar NOT NULL,
    "title" varchar,
    "caption" varchar,
    "subtitle" varchar,
    "breakdown" bool,
    "company_id" int8,
    "company_urn" varchar,
    "company_link1" varchar,
    "_airbyte_meta" jsonb NOT NULL,
    PRIMARY KEY ("uuid")
);

-- pli_experiences Table Definition
CREATE TABLE "public"."pli_experiences" (
    "urn" varchar,
    "logo" varchar,
    "uuid" varchar NOT NULL,
    "title" varchar,
    "caption" varchar,
    "metadata" varchar,
    "subtitle" varchar,
    "breakdown" varchar,
    "timestamp" timestamptz,
    "company_id" int8,
    "company_link1" varchar,
    "sub_components" bool,
    "_airbyte_meta" jsonb NOT NULL,
    PRIMARY KEY ("uuid")
);

-- pli_posts Table Definition
CREATE TABLE "public"."pli_posts" (
    "urn" varchar,
    "text" varchar,
    "company" varchar,
    "post_url" varchar,
    "posted_at" varchar,
    "author_url" varchar,
    "like_count" int8,
    "posted_date" timestamptz,
    "article_link" varchar,
    "praise_count" int8,
    "article_title" varchar,
    "empathy_count" int8,
    "reposts_count" int8,
    "comments_count" int8,
    "interest_count" int8,
    "author_username" varchar,
    "article_subtitle" varchar,
    "author_last_name" varchar,
    "author_first_name" varchar,
    "appreciation_count" int8,
    "total_reaction_count" int8,
    "posted_date_timestamp" int8,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- pli_recommendations Table Definition
CREATE TABLE "public"."pli_recommendations" (
    "urn" varchar,
    "size" varchar,
    "uuid" varchar,
    "caption" varchar,
    "titlev2" varchar,
    "subtitle" varchar,
    "section_name" varchar,
    "text_action_target" varchar,
    "_airbyte_raw_id" varchar NOT NULL,
    "_airbyte_extracted_at" timestamptz NOT NULL,
    "_airbyte_generation_id" int8,
    "_airbyte_meta" jsonb NOT NULL
);

-- pli_skills Table Definition
CREATE TABLE "public"."pli_skills" (
    "urn" varchar,
    "text" varchar,
    "type" varchar,
    "uuid" varchar NOT NULL,
    "title" varchar,
    PRIMARY KEY ("uuid")
);

-- website_content Table Definition
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."website_content" (
    "company_id" int8 NOT NULL,
    "url" varchar NOT NULL,
    "title" varchar NOT NULL,
    "timestamp" timestamp,
    "description" text,
    "business_type" varchar,
    "hiring" bool,
    "about_section" text,
    "pricing_mentioned" bool,
    "trial_available" bool,
    "keywords" _text,
    "career_urls" _text,
    "social_media" _text,
    "content_summary" _text,
    "meta_tags" _text,
    "open_positions" _text,
    "ideal_customer_profile" _text,
    "case_studies" _text,
    "contact_info" _text,
    PRIMARY KEY ("company_id")
);