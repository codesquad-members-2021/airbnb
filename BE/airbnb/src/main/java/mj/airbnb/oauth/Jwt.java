package mj.airbnb.oauth;

public class Jwt {
    private final String jwt;

    public Jwt(String jwt) {
        this.jwt = jwt;
    }

    public String getJwt() {
        return jwt;
    }
}
