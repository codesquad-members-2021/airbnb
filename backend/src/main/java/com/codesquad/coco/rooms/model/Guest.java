package com.codesquad.coco.rooms.model;

public class Guest {

    private int adult;
    private int child;
    private int baby;

    public Guest(int adult, int child, int baby) {
        this.adult = adult;
        this.child = child;
        this.baby = baby;
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
