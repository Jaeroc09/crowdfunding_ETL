create table contacts (
	contact_id int primary key not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	email varchar(100) not null
);

create table category (
	category_id varchar(4) primary key not null,
	category varchar(20) not null
);

create table subcategory (
	subcategory_id varchar(8) primary key not null,
	subcategory varchar(30) not null
);

create table campaign (
	cf_id int primary key not null,
	contact_id int not null,
	foreign key (contact_id) references contacts(contact_id),
	company_name varchar(40) not null,
	description varchar(100) not null,
	goal numeric (10,2) not null,
	pledged numeric (10,2) not null,
	outcome varchar(20) not null,
	backers_count int not null,
	country varchar(2) not null,
	currency varchar(3) not null,
	launch_date date not null,
	end_date date not null,
	category_id varchar(4) not null,
	foreign key (category_id) references category(category_id),
	subcategory_id varchar(8) not null,
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

copy contacts from 'C:\Users\jason\Documents\da_bootcamp\repositories\crowdfunding_ETL\Resources\contacts.csv' delimiter ',' csv header;
copy category from 'C:\Users\jason\Documents\da_bootcamp\repositories\crowdfunding_ETL\Resources\category.csv' delimiter ',' csv header;
copy subcategory from 'C:\Users\jason\Documents\da_bootcamp\repositories\crowdfunding_ETL\Resources\subcategory.csv' delimiter ',' csv header;
copy campaign from 'C:\Users\jason\Documents\da_bootcamp\repositories\crowdfunding_ETL\Resources\campaign.csv' delimiter ',' csv header;

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;