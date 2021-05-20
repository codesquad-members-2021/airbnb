package codesquad.team17.gnb.place;

public class Option {

    private final String option;
    private final String additional;

    public Option(String option, String additional) {
        this.option = option;
        this.additional = additional;
    }

    public String getOption() {
        return option;
    }

    public String getAdditional() {
        return additional;
    }
}
