package com.example.airbnb.service;

import com.example.airbnb.domain.Accommodation;
import com.example.airbnb.dto.AccommodationDTO;
import com.example.airbnb.dto.AccommodationListDTO;
import com.example.airbnb.repository.AccommodationDAO;
import com.example.airbnb.utils.SearchConditions;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class AccommodationService {

    private final AccommodationDAO accommodationDAO;

    public AccommodationService(AccommodationDAO accommodationDAO) {
        this.accommodationDAO = accommodationDAO;
    }

    public AccommodationListDTO availableAccommodationsList(SearchConditions conditions) {
        List<Accommodation> accommodationList = accommodationDAO.findAll();
        return domainListToDTOList(conditionValidate(accommodationList, conditions));
    }

    private List<Accommodation> conditionValidate(List<Accommodation> accommodationList, SearchConditions conditions) {
        if (isDateValidated(conditions)) {
            accommodationList = filterdDate(accommodationList);
        }
        if (isPeopleCountValidated(conditions)) {
            accommodationList = filterdPeopleCount(accommodationList);
        }
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

    private AccommodationListDTO domainListToDTOList(List<Accommodation> accommodationList) {
        List<AccommodationDTO> accommodationDTOList = new ArrayList<>();
        for (Accommodation accommodation : accommodationList) {
            accommodationDTOList.add(new AccommodationDTO(accommodation));
        }
        return new AccommodationListDTO(accommodationDTOList);
    }

    public AccommodationListDTO likeMarkredList() {
        List<Accommodation> markredList = accommodationDAO.findAllByLikeTrue();
        return domainListToDTOList(markredList);
    }

    public Accommodation findById(Long id) {
        return accommodationDAO.findById(id);
    }

    public String insert(String title) {
        Accommodation accommodation = new Accommodation();
        accommodation.setTitle(title);
        accommodationDAO.insert(accommodation);
        return "OK";
    }

    public String delete(String title) {
        Accommodation accommodation = new Accommodation();
        accommodation.setTitle(title);
        accommodationDAO.delete(accommodation);
        return "OK";
    }

}
