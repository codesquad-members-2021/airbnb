package mj.airbnb.oauth;

public class GitHubUser {

    private String id;
    private String name;

    public GitHubUser() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "GitHubUser{" +
                "login='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
