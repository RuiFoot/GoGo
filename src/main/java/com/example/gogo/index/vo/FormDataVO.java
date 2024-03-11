package com.example.gogo.index.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FormDataVO {
    private String search;
    private String sido;
    private String sigungu;
    private List<String> checkboxes;
    private String pricefrom;
    private String priceto;

}
