package airbnb.wrapper;

import airbnb.dto.MainPageResponse;

public class MainPageWrapper {

    private MainPageResponse mainPageResponse;

    public MainPageWrapper(MainPageResponse mainPageResponse) {
        this.mainPageResponse = mainPageResponse;
    }

    public MainPageResponse getMainPage() {
        return mainPageResponse;
    }
}
