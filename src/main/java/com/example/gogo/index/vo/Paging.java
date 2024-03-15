package com.example.gogo.index.vo;


import lombok.Builder;
import lombok.Data;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.domain.Pageable;

@Builder
@Data
@Getter
@Setter
public class Paging<T> {
    private T data;
    private Pageable pageable;
}
