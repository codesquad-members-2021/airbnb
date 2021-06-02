package com.example.airbnb.service;

import com.example.airbnb.domain.Accommodation;
import com.example.airbnb.dto.AccommodationDTO;
import com.example.airbnb.dto.AccommodationListDTO;
import com.example.airbnb.repository.AccommodationRepository;
import com.example.airbnb.utils.SearchConditions;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class AccommodationService {

    private final AccommodationRepository accommodationRepository;

    public AccommodationService(AccommodationRepository accommodationRepository) {
        this.accommodationRepository = accommodationRepository;
    }

    public AccommodationListDTO availableAccommodationsList(SearchConditions conditions) {
        List<Accommodation> accommodationList = accommodationRepository.findAll();
        return domainListToDTOList(conditionValidate(accommodationList, conditions),new SearchConditions());
    }

    private List<Accommodation> conditionValidate(List<Accommodation> accommodationList, SearchConditions conditions) {
        //if (isDateValidated(conditions)) {
        //    accommodationList = filterdDate(accommodationList);
        //}
        //if (isPeopleCountValidated(conditions)) {
        //    accommodationList = filterdPeopleCount(accommodationList);
        //}
        return accommodationList;
    }

    private boolean isPeopleCountValidated(SearchConditions conditions) {
        if (0 >= conditions.getAdults()) {
            return false;
        }
        if (0 >= conditions.getChildren()) {
            return false;
        }
        return 0 < conditions.getInfants();
    }

    private List<Accommodation> filterdPeopleCount(List<Accommodation> accommodationList) {
        return accommodationList;
    }

    private boolean isDateValidated(SearchConditions conditions) {
        LocalDate checkin = LocalDate.parse(conditions.getCheckin());
        LocalDate checkout = LocalDate.parse(conditions.getCheckin());
        return (checkin.isBefore(checkout) || checkin.isEqual(checkout));
    }

    private List<Accommodation> filterdDate(List<Accommodation> accommodationList) {
        return accommodationList;
    }

    private AccommodationListDTO domainListToDTOList(List<Accommodation> accommodationList,SearchConditions searchConditions) {
        List<AccommodationDTO> accommodationDTOList = new ArrayList<>();
        for (Accommodation accommodation : accommodationList) {
            accommodationDTOList.add(new AccommodationDTO(accommodation));
        }
        return new AccommodationListDTO(accommodationDTOList,searchConditions);
    }

    public AccommodationListDTO likeMarkredList() {
        List<Accommodation> markredList = accommodationRepository.findAllByLikeTrue();

        return domainListToDTOList(markredList, new SearchConditions());
    }

    public Accommodation findById(Long id) {
        return accommodationRepository.findById(id);
    }

    public String insert(String title) {
        Accommodation accommodation = new Accommodation();
        accommodation.setTitle(title);
        accommodationRepository.insert(accommodation);
        return "OK";
    }

    public String delete(String title) {
        Accommodation accommodation = new Accommodation();
        accommodation.setTitle(title);
        accommodationRepository.delete(accommodation);
        return "OK";
    }

}
