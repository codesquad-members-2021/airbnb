package com.codesquad.airbnb;

import com.codesquad.airbnb.dao.PropertyDao;
import com.codesquad.airbnb.dto.PropertiesResponseDto;
import com.codesquad.airbnb.dto.PropertyDto;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@RestController
@RequestMapping("/search")
public class SearchController {

    PropertyDao propertyDao;

    public SearchController(PropertyDao propertyDao) {
        this.propertyDao = propertyDao;
    }

    @GetMapping()
    public ResponseEntity<PropertiesResponseDto> search(
            @RequestParam(value = "locationId", required = false) Long locationId,
            @RequestParam(value = "checkIn" , required = false)LocalDate checkIn,
            @RequestParam(value = "checkOut" , required = false)LocalDate checkOut,
            @RequestParam(value = "minPrice" , required = false, defaultValue = "0")int minPrice,
            @RequestParam(value = "maxPrice" , required = false, defaultValue = "1000000")int maxPrice,
            @RequestParam(value = "adult" , required = false, defaultValue = "0")int adult,
            @RequestParam(value = "children" , required = false, defaultValue = "0")int children,
            @RequestParam(value = "infant" , required = false, defaultValue = "0")int infant
            ) {
        PropertiesResponseDto propertiesResponseDto = propertyDao.findBy(locationId,checkIn,checkOut,minPrice,maxPrice,adult,children,infant);
        return ResponseEntity.ok().body(propertiesResponseDto);
    }

}
