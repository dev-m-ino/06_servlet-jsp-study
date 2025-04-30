package com.ino.jsp.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
@Builder
public class PersonDto {
    private String name;
    private int age;
    private String gender;
}
