package org.vhmml.repository.readingroom;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.vhmml.entity.readingroom.ReadingRoomObjectSubject;
import org.vhmml.repository.BatchSaveRepository;

@Repository
public interface ReadingRoomObjectSubjectRepository extends CrudRepository<ReadingRoomObjectSubject, Long>, BatchSaveRepository<ReadingRoomObjectSubject> {

	public static final String DELETE_BY_IMPORT_SOURCE_QUERY = "delete from reading_room_object_subjects where reading_room_object_id in(select id from reading_room_objects where data_source = ?1)";
	
	public void deleteByReadingRoomObjectId(Long objectId);
	
	@Modifying
	@Query(value = DELETE_BY_IMPORT_SOURCE_QUERY, nativeQuery = true)
	public void deleteByImportSource(String importSource);
}
