package com.ino.jsp.dto;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
@Builder
public class BookDto {
    private int no;
    private String title;
    private String author;
}
