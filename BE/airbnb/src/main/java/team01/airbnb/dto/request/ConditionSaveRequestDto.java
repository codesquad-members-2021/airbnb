package team01.airbnb.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class ConditionSaveRequestDto {

    private int guests;
    private int bedroomCount;
    private int bedCount;
    private int bathroomCount;

}
