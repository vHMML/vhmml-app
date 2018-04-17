drop table if exists manuscript_images;
drop table if exists manuscript_texts;
drop table if exists manuscript_parts;
drop table if exists manuscripts;
drop table if exists reading_room_images;
drop table if exists reading_room_texts;
drop table if exists reading_room_object_parts;
drop table if exists reading_room_objects;
drop table if exists countries;

create table `reading_room_objects` (
	`id` int(11) NOT NULL DEFAULT 0,
	`city` varchar(255) DEFAULT NULL,
	`processed_by` varchar(255) DEFAULT NULL,
	`repository` varchar(255) DEFAULT NULL,
	`shelfmark_inventory_no` varchar(255) NOT NULL,
	`nick_name` varchar(255) DEFAULT NULL,
	`composite` tinyint(1) DEFAULT 0,
	`extent` varchar(255) NOT NULL,
	`physical_notes` TEXT,
	`binding` TEXT,
	`provenance` TEXT,
	`bibliography` TEXT,
	`notes` TEXT,
	`hmml_project_number` varchar(255) DEFAULT NULL,
	`inputter_date` varchar(255) DEFAULT NULL,
	`reviser_date` varchar(255) DEFAULT NULL,
	`revisit` tinyint(1) DEFAULT 0,
	`reproduction_notes` varchar(500) DEFAULT NULL,
	`acknowledgments` varchar(255) DEFAULT NULL,
	`url3` TEXT,
	`url2` TEXT,
	`url` TEXT,
	`country_id` int(11),
	`colophon` TEXT,
	`surrogate_format` varchar(255) DEFAULT NULL,
	`online_access_permission` varchar(255) DEFAULT NULL,
	`object_type` varchar(255) DEFAULT NULL,
	`facs_cap_date` varchar(255) DEFAULT NULL,
	`holding_institution` varchar(255) DEFAULT NULL,
	`city_authority_uri` varchar(1000) DEFAULT NULL,
	`alternate_surrogate` varchar(255) DEFAULT NULL,
	`access_restriction` varchar(255) DEFAULT NULL,
	`online` tinyint(1) DEFAULT 0,
	`country_authority_uri` varchar(1000) DEFAULT NULL,
	`country_iso3166` varchar(20) DEFAULT NULL,
	`physical_manifestation` varchar(255) DEFAULT NULL,
	`collation` TEXT,
	`medium` varchar(255) DEFAULT NULL,
	`download` varchar(100) DEFAULT NULL,
	`uri` TEXT,
	`external_link_bib` TEXT,
	`external_link_facsimile` TEXT,
	`icon_name` varchar(255) DEFAULT NULL,				
	`cite_as` TEXT,
	`add_resources` TEXT,
	`associated_works` TEXT,	
	`archival_collection_fond` varchar(500) DEFAULT NULL,
	`archival_series` TEXT,
	`archival_sub_series` varchar(500) DEFAULT NULL,
	`archival_language` varchar(255) DEFAULT NULL,
	`archival_scope_content` TEXT,
	`archival_rec_type` varchar(255) DEFAULT NULL,
	`archival_custodial_history` TEXT,
	`archival_container_binding` varchar(255) DEFAULT NULL,
	`archival_binding_notes` TEXT,
	`archival_dimensions` varchar(255) DEFAULT NULL,
	`archival_support` varchar(255) DEFAULT NULL,
	`archival_date_range_object` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `reading_room_object_parts` (
	`id` int(11) NOT NULL DEFAULT 0,
	`reading_room_object_id` int(11) NOT NULL,	
	`part_number` varchar(4),
	`mss_part_folio` varchar(100),
	`item_dimensions` varchar(100),
	`country_of_origin_id` int(11),
	`cardinal_of_origin` varchar(100),
	`region_of_origin` varchar(100),
	`city_of_origin` varchar(100),
	`document` tinyint(1) DEFAULT 0,
	`dated_or_not` tinyint(1) DEFAULT 0,
	`date_century` varchar(255) NOT NULL,
	`date_precise` varchar(255),
	`layout` varchar(255),
	`script` varchar(255),
	`number_scribes` varchar(255),
	`scribe` varchar(255),
	`music` varchar(255),
	`support` varchar(255),
	`watermark` text,
	`representational_decoration` text,
	`other_decoration` text,
	`artist` varchar(255),
	`part_notes` text,
	`revisit` tinyint(1) DEFAULT 0,
	`begin_date` int,
	`end_date` int,
	`seq` int DEFAULT 0,
	`acknowledgments` varchar(255),
	`writing_system` varchar(255),
	`native_date_precise` varchar(255),
	`reviser` varchar(255),
	`catchwords` tinyint(1) DEFAULT 0,
	`foliation` varchar(255),
	`medium` varchar(255),
	`decoration` text,
	`colophon_part` text,
	`artist_uri` text,
	`arc_folder` varchar(100),
	`arc_item` varchar(100),
	`arc_content` text,
	`arc_content_ns` text,
	`arc_incipit` text,
	`arc_incipit_ns` text,
	`arc_item_total_folios` varchar(255),
	`arc_item_span_of_folios` varchar(255),
	`arc_country_of_origin` varchar(255),
	`arc_city_of_origin` varchar(255),
	`arc_city_of_origin_uri` varchar(255),
	`arc_item_language` varchar(255),
	`arc_item_status_of_text` varchar(255),
	`arc_item_notes` text,
	`arc_scribe_notary` varchar(255),
	`arc_music` varchar(255),
	`arc_seal` varchar(255),
	`arc_bibliography` text,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `reading_room_texts` (
	`id` int(11) NOT NULL DEFAULT 0,
	`reading_room_object_part_id` int(11) NOT NULL,	
	`folio_span` varchar(255),
	`author` varchar(255),
	`author_ns` varchar(255),
	`contributor` text,
	`title_in_ms` varchar(255),
	`devised_title` varchar(255),
	`devised_title_ns` varchar(255),
	`docket` varchar(255),
	`status_of_text` varchar(255),
	`rubric` varchar(255),
	`incipit_obsolete` varchar(255),
	`incipit` varchar(255),
	`explicit_obsolete` varchar(255),
	`explicit` varchar(255),
	`languages` varchar(255),
	`notes_to_text` text,
	`revisit` tinyint(1) DEFAULT 0,
	`seq` int DEFAULT 0,
	`acknowledgments` varchar(255),
	`music` varchar(255),
	`subject` varchar(255),
	`reviser` varchar(255),
	`colophon_text` text,
	`uniform_title` text,
	`uniform_title_ns` text,
	`uniform_title_uri` text,
	`text_bibliography` text,
	`author_uri` text,
	`genre_form` text,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `reading_room_images` (
	`id` int(11) NOT NULL DEFAULT 0,
	`reading_room_text_id` int(11) NOT NULL,	
	`img_id` int NOT NULL,
	`folio_number` varchar(25),
	`caption` text,
	`notes_to_photographer` varchar(50),
	`icon_class` varchar(100),
	`revisit` tinyint(1) DEFAULT 0,
	`seq` int DEFAULT 0,
	`url1` text,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--create table `archives` (
--	`id` INT(11) NOT NULL AUTO_INCREMENT,	
--	`reading_room_object_id` INT(11) NOT NULL,		
--	`collection_fond` varchar(500) DEFAULT NULL,
--	`archival_series` varchar(500) DEFAULT NULL,
--	`archival_sub_series` varchar(500) DEFAULT NULL,
--	`language` varchar(255) DEFAULT NULL,
--	`scope_content` TEXT,
--	`rec_type` varchar(255) DEFAULT NULL,
--	`custodial_history` TEXT,
--	`container_binding` varchar(255) DEFAULT NULL,
--	`binding_notes` TEXT,
--	`dimensions` varchar(255) DEFAULT NULL,
--	`support` varchar(255) DEFAULT NULL,
--	`date_range_object` varchar(255) DEFAULT NULL,
--	PRIMARY KEY (`id`)
--) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table `countries` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,	
	`name` varchar(255) NOT NULL,	
	PRIMARY KEY (`id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE INDEX reading_room_parts_idx1 ON reading_room_object_parts(reading_room_object_id);
CREATE INDEX reading_room_texts_idx1 ON reading_room_texts(reading_room_object_part_id);
CREATE INDEX reading_room_images_idx1 ON reading_room_images(reading_room_text_id);

/* ADD INDEXES AND ADD SCRIPT TO ALTER KEYS TO AUTOINCREMENT AFTER IMPORTING THE DATA */
