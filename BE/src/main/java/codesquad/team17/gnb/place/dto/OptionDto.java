package codesquad.team17.gnb.place.dto;

import codesquad.team17.gnb.place.domain.Option;

public class OptionDto {
    private final String option;
    private final String additional;

    public OptionDto(Option option) {
        this.option = option.getOption();
        this.additional = option.getAdditional();
    }

    public String getOption() {
        return option;
    }

    public String getAdditional() {
        return additional;
    }
}
