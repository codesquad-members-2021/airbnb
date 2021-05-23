package com.codesquad.coco.room.model;

public class Guest {

    private final int adult;
    private final int child;
    private final int baby;

    public Guest(int adult, int child, int baby) {
        this.adult = adult;
        this.child = child;
        this.baby = baby;
    }

    public static Guest guestInfo(Integer adult, Integer child, Integer baby) {
        adult = adult != null ? adult : 0;
        child = child != null ? child : 0;
        baby = baby != null ? baby : 0;
        return new Guest(adult, child, baby);
    }

    public int getAdult() {
        return adult;
    }

    public int getChild() {
        return child;
    }

    public int getBaby() {
        return baby;
    }

    @Override
    public String toString() {
        return "Guest{" +
                "adult=" + adult +
                ", child=" + child +
                ", baby=" + baby +
                '}';
    }
}
