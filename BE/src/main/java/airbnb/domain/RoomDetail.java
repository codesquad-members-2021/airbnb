package airbnb.domain;

public class RoomDetail {
    private boolean oneRoom;
    private int bedCount;
    private int bathCount;
    private boolean hairDryer;
    private boolean airConditioner;
    private boolean wiFi;


    public RoomDetail(Builder builder) {
        this.oneRoom = builder.oneRoom;
        this.bedCount = builder.bedCount;
        this.bathCount = builder.bathCount;
        this.hairDryer = builder.hairDryer;
        this.airConditioner = builder.airConditioner;
        this.wiFi = builder.wiFi;
    }

    public static class Builder {
        private boolean oneRoom;
        private int bedCount;
        private int bathCount;
        private boolean hairDryer;
        private boolean airConditioner;
        private boolean wiFi;


        public Builder oneRoom(boolean oneRoom) {
            this.oneRoom = oneRoom;
            return this;
        }

        public Builder bedCount(int bedCount) {
            this.bedCount = bedCount;
            return this;
        }

        public Builder bathCount(int bathCount) {
            this.bathCount = bathCount;
            return this;
        }

        public Builder hairDryer(boolean hairDryer) {
            this.hairDryer = hairDryer;
            return this;
        }

        public Builder airConditioner(boolean airConditioner) {
            this.airConditioner = airConditioner;
            return this;
        }

        public Builder wiFi(boolean wiFi) {
            this.wiFi = wiFi;
            return this;
        }

        public RoomDetail build() {
            return new RoomDetail(this);
        }

    }
}
