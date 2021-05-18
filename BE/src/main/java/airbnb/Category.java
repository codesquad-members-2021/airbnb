package airbnb;

public class Category {

    private String category;
    private String image;

    public Category(String category, String image) {
        this.category = category;
        this.image = image;
    }

    public String getCategory() {
        return category;
    }

    public String getImage() {
        return image;
    }
}
