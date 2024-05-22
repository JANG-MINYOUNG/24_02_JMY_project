package com.example.demo.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.vo.GenFile;

@Mapper
public interface GenFileRepository {
	void saveMeta(Map<String, Object> param);

	GenFile getGenFile(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId,
			@Param("typeCode") String typeCode, @Param("type2Code") String type2Code, @Param("fileNo") int fileNo);

	GenFile getGenFileById(@Param("id") int id);

	void changeRelId(@Param("id") int id, @Param("relId") int relId);

	void deleteFiles(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId);

	List<GenFile> getGenFiles(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId,
			@Param("typeCode") String typeCode, @Param("type2Code") String type2Code);

	List<GenFile> getGenFilesByRelTypeCodeAndRelId(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId);

	void deleteFile(@Param("id") int id);

	List<GenFile> getGenFilesRelTypeCodeAndRelIdsAndTypeCodeAndType2Code(@Param("relTypeCode") String relTypeCode,
			@Param("relIds") List<Integer> relIds, @Param("typeCode") String typeCode,
			@Param("type2Code") String type2Code);
	
	public static void save(MultipartFile file, String relType, String relId) {
	    // 파일을 저장하는 로직을 구현합니다.
	    // relType과 relId를 이용하여 파일의 저장 경로를 결정합니다.
	    // 예를 들어, /images/member/{relId}/{파일이름} 와 같은 경로에 파일을 저장할 수 있습니다.
	    // 예시 코드:
	    String filePath = "/images/member/" + relId + "/" + file.getOriginalFilename();
	    // 실제로는 파일 저장 로직이 들어가야 합니다.
	}
}