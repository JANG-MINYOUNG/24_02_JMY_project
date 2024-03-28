package com.example.demo.service;

import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.CSVRepository;
import com.example.demo.vo.ArtMuseum;
import com.example.demo.vo.Festival;
import com.example.demo.vo.Museum;
import com.example.demo.vo.Reply;
import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;
import com.opencsv.CSVReader;

@Service
public class CSVService {

	@Autowired
	private CSVRepository csvRepository;

	public String readAndSaveToDB() {
		try {
			List<parkPlace> parkPlaceList = new ArrayList<>();

			// 예시 파일들을 배열에 추가
			String[] fileNames = { "공원.csv" };

			for (String fileName : fileNames) {
				InputStreamReader is = new InputStreamReader(
						getClass().getClassLoader().getResourceAsStream("CSV/" + fileName), "EUC-KR");
				CSVReader reader = new CSVReader(is);

				// 첫 번째 줄(헤더) 건너뛰기
				reader.skip(1);

				List<String[]> list = reader.readAll();

				for (String[] csvRow : list) {
					parkPlace place = new parkPlace();
					// 엔터티의 필드에 CSV 데이터를 할당
					place.setParkName(csvRow[0]);
					place.setRegion(csvRow[1]);
					place.setBody(csvRow[2]);
					place.setRoadLocation(csvRow[3]);
					place.setLatitude(Double.parseDouble(csvRow[4])); // double 타입으로 변환
					place.setLongitude(Double.parseDouble(csvRow[5])); // double 타입으로 변환
					place.setParkArea(csvRow[6]);
					place.setFacility(csvRow[7]);
					place.setPrice(csvRow[8]);
					place.setPhoneNumber(csvRow[9]);
					place.setImgAdr(csvRow[10]);

					parkPlaceList.add(place);
				}
			}

			// CSV 데이터를 데이터베이스에 저장
			csvRepository.insertCSVList(parkPlaceList);

			return "CSV 데이터가 성공적으로 데이터베이스에 저장되었습니다.";

		} catch (Exception e) {
			e.printStackTrace();
			return "CSV 데이터를 데이터베이스에 저장하는 중 오류가 발생했습니다.";
		}
	}

	public String readAndSaveToDB1() {
		try {
			List<recreationalForest> recreationalForestList = new ArrayList<>();

			// 예시 파일들을 배열에 추가
			String[] fileNames = { "휴양림.csv" };

			for (String fileName : fileNames) {
				InputStreamReader is = new InputStreamReader(
						getClass().getClassLoader().getResourceAsStream("CSV/" + fileName), "EUC-KR");
				CSVReader reader = new CSVReader(is);

				// 첫 번째 줄(헤더) 건너뛰기
				reader.skip(1);

				List<String[]> list = reader.readAll();

				for (String[] csvRow : list) {
					recreationalForest place = new recreationalForest();
					// 엔터티의 필드에 CSV 데이터를 할당
					place.setName(csvRow[0]);
					place.setRegion(csvRow[1]);
					place.setRoadLocation(csvRow[2]);
					place.setLatitude(Double.parseDouble(csvRow[3]));
					place.setLongitude(Double.parseDouble(csvRow[4])); // double 타입으로 변환
					place.setPhoneNumber(csvRow[5]);
					place.setBody(csvRow[6]);
					place.setPrice(csvRow[7]);
					place.setImgAdr(csvRow[8]);

					recreationalForestList.add(place);
				}
			}

			// CSV 데이터를 데이터베이스에 저장
			csvRepository.insertCSVList1(recreationalForestList);

			return "CSV 데이터가 성공적으로 데이터베이스에 저장되었습니다.";

		} catch (Exception e) {
			e.printStackTrace();
			return "CSV 데이터를 데이터베이스에 저장하는 중 오류가 발생했습니다.";
		}
	}

	public String readAndSaveToDB2() {
		try {
			List<Festival> festivalList = new ArrayList<>();

			// 예시 파일들을 배열에 추가
			String[] fileNames = { "전국 축제.csv" };

			for (String fileName : fileNames) {
				InputStreamReader is = new InputStreamReader(
						getClass().getClassLoader().getResourceAsStream("CSV/" + fileName), "EUC-KR");
				CSVReader reader = new CSVReader(is);

				// 첫 번째 줄(헤더) 건너뛰기
				reader.skip(1);

				List<String[]> list = reader.readAll();

				for (String[] csvRow : list) {
					Festival place = new Festival();
					// 엔터티의 필드에 CSV 데이터를 할당
					place.setName(csvRow[0]);
					place.setPeriod(csvRow[1]);
					place.setRegion(csvRow[2]);
					place.setRoadLocation(csvRow[3]);
					place.setLatitude(Double.parseDouble(csvRow[4]));
					place.setLongitude(Double.parseDouble(csvRow[5])); // double 타입으로 변환
					place.setPhoneNumber(csvRow[6]);
					place.setBody(csvRow[7]);
					place.setPrice(csvRow[8]);
					place.setHomePage(csvRow[9]);
					place.setImgAdr(csvRow[10]);
					place.setImgAdrs(csvRow[11]);

					festivalList.add(place);
				}
			}

			// CSV 데이터를 데이터베이스에 저장
			csvRepository.insertCSVList2(festivalList);

			return "CSV 데이터가 성공적으로 데이터베이스에 저장되었습니다.";

		} catch (Exception e) {
			e.printStackTrace();
			return "CSV 데이터를 데이터베이스에 저장하는 중 오류가 발생했습니다.";
		}
	}
	
	public String readAndSaveToDB3() {
		try {
			List<Museum> museumList = new ArrayList<>();

			// 예시 파일들을 배열에 추가
			String[] fileNames = { "박물관.csv" };

			for (String fileName : fileNames) {
				InputStreamReader is = new InputStreamReader(
						getClass().getClassLoader().getResourceAsStream("CSV/" + fileName), "EUC-KR");
				CSVReader reader = new CSVReader(is);

				// 첫 번째 줄(헤더) 건너뛰기
				reader.skip(1);

				List<String[]> list = reader.readAll();

				for (String[] csvRow : list) {
					Museum place = new Museum();
					// 엔터티의 필드에 CSV 데이터를 할당
					place.setName(csvRow[0]);
					place.setRegion(csvRow[1]);
					place.setRoadLocation(csvRow[2]);
					place.setLatitude(Double.parseDouble(csvRow[3]));
					place.setLongitude(Double.parseDouble(csvRow[4])); // double 타입으로 변환
					place.setPhoneNumber(csvRow[5]);
					place.setBody(csvRow[6]);
					place.setPrice(csvRow[7]);
					place.setImgAdr(csvRow[8]);

					museumList.add(place);
				}
			}

			// CSV 데이터를 데이터베이스에 저장
			csvRepository.insertCSVList3(museumList);

			return "CSV 데이터가 성공적으로 데이터베이스에 저장되었습니다.";

		} catch (Exception e) {
			e.printStackTrace();
			return "CSV 데이터를 데이터베이스에 저장하는 중 오류가 발생했습니다.";
		}
	}

	public String readAndSaveToDB4() {
		try {
			List<ArtMuseum> artMuseumList = new ArrayList<>();

			// 예시 파일들을 배열에 추가
			String[] fileNames = { "미술관.csv" };

			for (String fileName : fileNames) {
				InputStreamReader is = new InputStreamReader(
						getClass().getClassLoader().getResourceAsStream("CSV/" + fileName), "EUC-KR");
				CSVReader reader = new CSVReader(is);

				// 첫 번째 줄(헤더) 건너뛰기
				reader.skip(1);

				List<String[]> list = reader.readAll();

				for (String[] csvRow : list) {
					ArtMuseum place = new ArtMuseum();
					// 엔터티의 필드에 CSV 데이터를 할당
					place.setName(csvRow[0]);
					place.setRegion(csvRow[1]);
					place.setRoadLocation(csvRow[2]);
					place.setLatitude(Double.parseDouble(csvRow[3]));
					place.setLongitude(Double.parseDouble(csvRow[4])); // double 타입으로 변환
					place.setPhoneNumber(csvRow[5]);
					place.setBody(csvRow[6]);
					place.setPrice(csvRow[7]);
					place.setImgAdr(csvRow[8]);
					place.setType(csvRow[9]);

					artMuseumList.add(place);
				}
			}

			// CSV 데이터를 데이터베이스에 저장
			csvRepository.insertCSVList4(artMuseumList);

			return "CSV 데이터가 성공적으로 데이터베이스에 저장되었습니다.";

		} catch (Exception e) {
			e.printStackTrace();
			return "CSV 데이터를 데이터베이스에 저장하는 중 오류가 발생했습니다.";
		}
	}
}