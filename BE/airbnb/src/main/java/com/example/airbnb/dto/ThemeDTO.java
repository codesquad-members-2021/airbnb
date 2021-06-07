package com.example.airbnb.dto;

public class ThemeDTO {
    String title;
    String image;

    public ThemeDTO(String title, String image) {
        this.title = title;
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ThemeDTO{" +
                "title='" + title + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
