package com.jhon64.restaurant_example.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;


public class Usuario {
    @Getter
    @Setter
    @JsonProperty("username")
    public String username;
    @Getter
    @Setter
    @JsonProperty("password")
    public String password;

    @Override
    public String toString() {
        return "username: " + this.username + "/n"
                + "password: " + this.password;
    }
}
