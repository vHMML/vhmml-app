CREATE TABLE folio_objects (
	id INT(11) NOT NULL AUTO_INCREMENT,
	created_by varchar(100),
	created_date timestamp,
	last_updated_by varchar(100),
	last_update timestamp,
	folio_object_number varchar(255),
	icon_name varchar(255),
	country varchar(255),
	city varchar(255),
	repository varchar(255),
	shelf_mark varchar(255),
	common_name varchar(255),
	provenance text,
	bibliography text,
	external_url text,
	permanent_link varchar(1000),
	acknowledgements varchar(500),
	place_of_origin varchar(255),
	date_precise varchar(255),
	begin_date int,
	end_date int,
	date_century varchar(255),
	language varchar(255),
	writing_system varchar(255),
	script varchar(255),
	title varchar(500),
	text varchar(500),
	description text,	
	special_features text,
	transcription text,
	active boolean,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
