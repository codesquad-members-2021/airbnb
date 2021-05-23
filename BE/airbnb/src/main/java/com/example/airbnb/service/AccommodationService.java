package com.example.airbnb.service;

import com.example.airbnb.domain.Accommodation;
import com.example.airbnb.domain.SearchConditions;
import com.example.airbnb.dto.AccommodationDTO;
import com.example.airbnb.dto.AccommodationListDTO;
import com.example.airbnb.repository.AccommodationDAO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AccommodationService {

    private AccommodationDAO accommodationDAO;

    public AccommodationService(AccommodationDAO accommodationDAO) {
        this.accommodationDAO = accommodationDAO;
    }

// w <<<<<<< BE/feature/45/likeAcmdOnly
    public static AccommodationListDTO availableAccommodationsList() {
        List<Accommodation> accommodationList = accommodationDAO.findAll();
        return domainListToDTOList(accommodationList);

    }

    private static AccommodationListDTO domainListToDTOList(List<Accommodation> accommodationList) {
        List<AccommodationDTO> accommodationDTOList = new ArrayList<>();
        for(Accommodation accommodation : accommodationList) {
            accommodationDTOList.add(new AccommodationDTO(accommodation));
        }
        return new AccommodationListDTO(accommodationDTOList);
=======
    public AccommodationListDTO availableAccommodationsList(SearchConditions conditions) {

        List<Accommodation> accommodationList = accommodationDAO.findAll();
        List<AccommodationDTO> accommodationDTOList = new ArrayList<>();

        for(Accommodation accommodation : accommodationList) {
            accommodationDTOList.add(new AccommodationDTO(accommodation));
        }

        // @todo : DB가 준비되면 SearchConditions 을 통해 전달된 데이터를 통해서 조건에 맞는 숙소만 전달해준다
        
        return (new AccommodationListDTO(accommodationDTOList, conditions));
// w >>>>>>> dev-BE
    }

    public static AccommodationListDTO likeMarkredList() {
        List<Accommodation> markredList = accommodationDAO.findAllByLikeTrue();
        return domainListToDTOList(markredList);
    }

    public Integer countAccommodation(){
        return accommodationDAO.countAllAccommodation();
    }

    public Accommodation findById(Long id){
        return accommodationDAO.findById(id);
    }

    public String insert(String title){
        Accommodation accommodation = new Accommodation();
        accommodation.setTitle(title);
        accommodationDAO.insert(accommodation);
        return "OK";
    }

    public String delete(String title){
        Accommodation accommodation = new Accommodation();
        accommodation.setTitle(title);
        accommodationDAO.delete(accommodation);
        return "OK";
    }

}
