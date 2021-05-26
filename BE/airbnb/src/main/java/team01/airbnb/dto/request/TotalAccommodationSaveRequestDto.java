package team01.airbnb.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@ToString
@Setter
@Getter
public class TotalAccommodationSaveRequestDto {

    private Long id;
    private AccommodationSaveRequestDto accommodationSaveRequestDto;
    private String address;
    private ConditionSaveRequestDto conditionSaveRequestDto;
    private List<String> amenities;
    private String photo;

}
